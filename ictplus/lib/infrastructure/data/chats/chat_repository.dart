import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:ictplus/domain/core/value_objects.dart';
import 'package:ictplus/domain/data/chats/chat.dart';
import 'package:ictplus/domain/data/chats/chat_message/chat_message.dart';
import 'package:ictplus/domain/data/chats/i_chat_repository.dart';
import 'package:ictplus/domain/data/chats/location_chat.dart';
import 'package:ictplus/domain/data/chats/location_failure.dart';
import 'package:ictplus/domain/data/chats/value_objects.dart';
import 'package:ictplus/domain/data/data_failure.dart';
import 'package:ictplus/domain/data/profile/profile.dart';
import 'package:ictplus/infrastructure/core/firestore_helpers.dart';
import 'package:ictplus/infrastructure/data/chats/chat_dtos.dart';
import 'package:ictplus/infrastructure/data/chats/chat_message/chat_message_dtos.dart';
import 'package:ictplus/infrastructure/data/chats/location_chat/location_chat_dtos.dart';
import 'package:ictplus/infrastructure/data/profile/profile_dtos.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:sortedmap/sortedmap.dart';
import 'package:sortedmap/sortedmap.dart' as sortedMap;

@LazySingleton(as: IChatRepository)
class ChatRepository implements IChatRepository {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _firebaseStorage;

  ChatRepository(this._firestore, this._firebaseStorage);

  @override
  Future<String> getOwnId() async {
    final userDoc = await _firestore.userDocument();
    return userDoc.id;
  }

  @override
  Stream<Either<DataFailure, List<Chat>>> retrieveUserChats(
      String userId) async* {
    final chatsRef = await _firestore.chatsRef();
    yield* chatsRef
        .where('userIds', arrayContains: userId)
        .orderBy('timestamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<DataFailure, List<Chat>>(
            snapshot.docs
                .map((doc) => ChatDto.fromFirestore(doc).toDomain())
                .toList(),
          ),
        )
        .handleError((e) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        print(e);
        return left(const DataFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<DataFailure, Profile>> searchProfileByUuid(String uuid) async {
    try {
      final usersRef = await _firestore.usersRef();
      return usersRef.doc(uuid).get().then((DocumentSnapshot doc) =>
          right(ProfileDto.fromFirestore(doc).toDomain()));
    } on FirebaseException catch (e) {
      print(e);
      return left(const DataFailure.unexpected());
    }
  }

  @override
  Future<Either<DataFailure, Unit>> createMessage(
      {required String receiverId,
      required String convoId,
      required String messageId,
      required ChatMessage chatMessage}) async {
    try {
      final chatMessageDto = ChatMessageDto.fromDomain(chatMessage);
      final convoMessagesRef = await _firestore.convoMessagesRef(convoId);

      await convoMessagesRef.doc(messageId).set(chatMessageDto.toJson());
      await _firestore.runTransaction((transaction) async {
        final chatDoc = await _firestore.chatDocumentById(convoId);
        transaction.set(
          chatDoc,
          {
            'lastMessage': chatMessageDto.photoUrl == ''
                ? chatMessageDto.messageBody
                : '(Photo) ${chatMessageDto.messageBody}',
            'lastSenderId': chatMessageDto.senderId,
            'lastMessageRead': false,
            'userIdsCombined': convoId,
            'userIds': [chatMessageDto.senderId, receiverId],
            'timestamp': chatMessageDto.timeSent,
          },
        );
      }); //create chat if doesn't exist, update last message in chat
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DataFailure, String>> uploadPhoto(
      File photo, String convoId, String messageId) async {
    UploadTask storageUploadTask;
    storageUploadTask = _firebaseStorage
        .ref()
        .child('chatPictures')
        .child(convoId)
        .child(messageId)
        .putFile(photo);

    try {
      final String url = await storageUploadTask.then((ref) async {
        return ref.ref.getDownloadURL();
      });
      return right(url);
    } on FirebaseException catch (e) {
      print(e.code);
      return left(const DataFailure.unexpected());
    }
  }

  @override
  Future<Either<DataFailure, Unit>> updateMessageRead(
      {required String convoId, required String messageId}) async {
    try {
      await _firestore.runTransaction((transaction) async {
        final messageDoc =
            await _firestore.messageDocumentById(convoId, messageId);
        transaction.update(
          messageDoc,
          {
            'read': true,
          },
        );
      });
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DataFailure, Unit>> updateLastMessageRead(
      {required String convoId}) async {
    try {
      await _firestore.runTransaction((transaction) async {
        final chatDoc = await _firestore.chatDocumentById(convoId);
        transaction.update(
          chatDoc,
          {
            'lastMessageRead': true,
          },
        );
      });
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<DataFailure, List<ChatMessage>>> getConvo(
      String convoId) async* {
    final convoMessagesRef = await _firestore.convoMessagesRef(convoId);
    yield* convoMessagesRef
        .orderBy('timeSent', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<DataFailure, List<ChatMessage>>(
            snapshot.docs
                .map((doc) => ChatMessageDto.fromFirestore(doc).toDomain())
                .toList(),
          ),
        )
        .handleError((e) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        print(e);
        return left(const DataFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<DataFailure, Unit>> createLocationChat(
      LocationChat locationChat) async {
    try {
      final timestamp = DateTime.now().millisecondsSinceEpoch.toString();
      final locationChatsRef = await _firestore.locationChatsRef();
      final locationChatDto = LocationChatDto.fromDomain(
          locationChat.copyWith(timestamp: timestamp));

      final messageId = UniqueId().getOrCrash();
      final locationConvoMessagesRef =
          await _firestore.locationConvoMessagesRef(locationChatDto.chatId);
      final chatMessageDto =
          ChatMessageDto.fromDomain(ChatMessage.empty().copyWith(
        senderId: locationChatDto.creatorUserId,
        messageBody: MessageBody(locationChatDto.lastMessage),
        messageId: messageId,
      ));

      await locationConvoMessagesRef
          .doc(messageId)
          .set(chatMessageDto.toJson());

      await locationChatsRef
          .doc(locationChatDto.chatId)
          .set(locationChatDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<LocationFailure, Position>> getLastKnownLocation() async {
    try {
      Position? position = await Geolocator.getLastKnownPosition();
      return right(position!);
    } catch (e) {
      print(e);
      return left(const LocationFailure.unexpected());
    }
  }

  @override
  Future<Either<LocationFailure, Position>> getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return left(const LocationFailure.serviceNotEnabled());
    }

    // Test if permissions are enabled.
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return left(const LocationFailure.insufficientPermission());
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return left(const LocationFailure.permissionDeniedForever());
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    try {
      Position position = await Geolocator.getCurrentPosition();
      return right(position);
    } catch (e) {
      print('Unexpected error');
      return left(const LocationFailure.unexpected());
    }
  }

  @override
  Future<Either<DataFailure, Map<String, double>>> getNearestChatIds(
      Position position) async {
    final locationChatRef = await _firestore.locationChatsRef();
    List<LocationChat> locationChats = [];
    try {
      QuerySnapshot query = await locationChatRef.get();

      if (query.docs.isNotEmpty) {
        for (final doc in query.docs) {
          locationChats.add(LocationChatDto.fromFirestore(doc).toDomain());
        }
      }
    } on FirebaseException catch (e) {
      print(e);
      return left(const DataFailure.unexpected());
    }

    MapEntry<String, double> distanceCalculator(LocationChat locationChat) {
      double distance = Geolocator.distanceBetween(position.latitude,
          position.longitude, locationChat.latitude, locationChat.longitude);

      return MapEntry(locationChat.chatId, distance);
    }

    Iterable<MapEntry<String, double>> mapEntries =
        locationChats.map(distanceCalculator);
    var map = SortedMap<String, double>(const sortedMap.Ordering.byValue());
    map.addEntries(mapEntries);

    return right(map);
  }

  @override
  Stream<Either<DataFailure, List<LocationChat>>> retrieveLocationChats(
      List<String> nearestChatIds) async* {
    final locationChatRef = await _firestore.locationChatsRef();
    List<LocationChat> locationChats = List.filled(10, LocationChat.empty());
    if (nearestChatIds.isNotEmpty) {
      yield* locationChatRef
          .where('chatId', whereIn: nearestChatIds)
          .snapshots()
          .map(
        (snapshot) {
          for (final doc in snapshot.docs) {
            LocationChat locationChat =
                LocationChatDto.fromFirestore(doc).toDomain();

            locationChats[nearestChatIds.indexOf(locationChat.chatId)] =
                locationChat;
          }
          return right<DataFailure, List<LocationChat>>(locationChats);
        },
      ).handleError((e) {
        if (e is FirebaseException &&
            e.message!.contains('PERMISSION_DENIED')) {
          return left(const DataFailure.insufficientPermission());
        } else {
          print(e);
          return left(const DataFailure.unexpected());
        }
      });
    } else {
      yield* Stream.value(right([]));
    }
  }

  @override
  Future<Either<DataFailure, Unit>> createLocationMessage(
      {required String convoId,
      required String messageId,
      required ChatMessage chatMessage}) async {
    try {
      final chatMessageDto = ChatMessageDto.fromDomain(chatMessage);
      final locationConvoMessagesRef =
          await _firestore.locationConvoMessagesRef(convoId);

      await locationConvoMessagesRef
          .doc(messageId)
          .set(chatMessageDto.toJson());
      await _firestore.runTransaction((transaction) async {
        final locationChatDoc =
            await _firestore.locationChatDocumentById(convoId);
        transaction.update(
          locationChatDoc,
          {
            'lastMessage': chatMessageDto.photoUrl == ''
                ? chatMessageDto.messageBody
                : '(Photo) ${chatMessageDto.messageBody}',
            'lastSenderId': chatMessageDto.senderId,
            'timestamp': chatMessageDto.timeSent,
          },
        );
      });
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<DataFailure, List<ChatMessage>>> getLocationConvo(
      String convoId) async* {
    final locationConvoMessagesRef =
        await _firestore.locationConvoMessagesRef(convoId);
    yield* locationConvoMessagesRef
        .orderBy('timeSent', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<DataFailure, List<ChatMessage>>(
            snapshot.docs
                .map((doc) => ChatMessageDto.fromFirestore(doc).toDomain())
                .toList(),
          ),
        )
        .handleError((e) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        print(e);
        return left(const DataFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<DataFailure, List<LocationChat>>> searchLocationChatByTitle(
      String locationChatTitle) async {
    final searchResults = <LocationChat>[];
    final locationChatRef = await _firestore.locationChatsRef();
    try {
      QuerySnapshot query = await locationChatRef
          .where('keywords', arrayContains: locationChatTitle.toLowerCase())
          .get();
      {
        if (query.docs.isNotEmpty) {
          for (final doc in query.docs) {
            searchResults.add(LocationChatDto.fromFirestore(doc).toDomain());
          }
        }
        return right(searchResults);
      }
    } on FirebaseException catch (e) {
      print(e);
      return left(const DataFailure.unexpected());
    }
  }
}
