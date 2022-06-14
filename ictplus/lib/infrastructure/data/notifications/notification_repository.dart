import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:ictplus/domain/data/data_failure.dart';
import 'package:ictplus/domain/data/notifications/i_notification_repository.dart';
import 'package:ictplus/domain/data/profile/profile.dart';
import 'package:ictplus/domain/data/notifications/notification.dart';
import 'package:ictplus/infrastructure/data/notifications/notification_dtos.dart';
import 'package:ictplus/infrastructure/data/profile/profile_dtos.dart';
import 'package:injectable/injectable.dart';
import 'package:ictplus/infrastructure/core/firestore_helpers.dart';

@LazySingleton(as: INotificationRepository)
class NotificationRepository implements INotificationRepository {
  final FirebaseFirestore _firestore;
  NotificationRepository(this._firestore);

  @override
  Future<String> getOwnId() async {
    final userDoc = await _firestore.userDocument();
    return userDoc.id;
  }

  @override
  Stream<Either<DataFailure, int>> retrieveNumberUnreadNotifications(
      {required String userId}) async* {
    final notificationsRef = await _firestore.notificationsUserRef(userId);
    yield* notificationsRef
        .where('isRead', isEqualTo: false)
        .snapshots()
        .map((docSnapshot) => right<DataFailure, int>(docSnapshot.docs.length))
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
  Stream<Either<DataFailure, List<Notification>>> retrieveNotificationsInitial(
      String userId) async* {
    final notificationsRef = await _firestore.notificationsUserRef(userId);
    yield* notificationsRef
        .orderBy('timestamp', descending: true)
        .limit(10)
        .snapshots()
        .map(
      (snapshot) {
        if (snapshot.docs.isNotEmpty) {
          for (final DocumentSnapshot doc in snapshot.docs) {
            final String notifId = doc.id;
            notificationsRef.doc(notifId).update({'isRead': true});
          }
        }
        return right<DataFailure, List<Notification>>(
          snapshot.docs
              .map((doc) => NotificationDto.fromFirestore(doc).toDomain())
              .toList(),
        );
      },
    ).handleError((e) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        print(e);
        return left(const DataFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<DataFailure, List<Notification>>>
      retrieveNotificationsInBatches(
          String userId, String lastTimeStamp) async* {
    final notificationsRef = await _firestore.notificationsUserRef(userId);
    yield* notificationsRef
        .orderBy('timestamp', descending: true)
        .startAfter([lastTimeStamp])
        .limit(10)
        .snapshots()
        .map((snapshot) {
          if (snapshot.docs.isNotEmpty) {
            for (final DocumentSnapshot doc in snapshot.docs) {
              final String notifId = doc.id;
              notificationsRef.doc(notifId).update({'isRead': true});
            }
          }
          return right<DataFailure, List<Notification>>(
            snapshot.docs
                .map((doc) => NotificationDto.fromFirestore(doc).toDomain())
                .toList(),
          );
        })
        .handleError((e) {
          if (e is FirebaseException &&
              e.message!.contains('PERMISSION_DENIED')) {
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
}
