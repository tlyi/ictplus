import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ictplus/domain/auth/i_auth_facade.dart';
import 'package:ictplus/domain/core/errors.dart';
import 'package:ictplus/injection.dart';

extension FirestoreX on FirebaseFirestore {
  //Profiles
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.id.getOrCrash());
  }

  Future<DocumentReference> userDocumentById(String otherId) async {
    return FirebaseFirestore.instance.collection('users').doc(otherId);
  }

  Future<CollectionReference> usersRef() async {
    return FirebaseFirestore.instance.collection('users');
  }

  //Chats
  Future<CollectionReference> chatsRef() async {
    return FirebaseFirestore.instance.collection('chats');
  }

  Future<CollectionReference> locationChatsRef() async {
    return FirebaseFirestore.instance.collection('locationChats');
  }

  Future<DocumentReference> chatDocumentById(String convoId) async {
    return FirebaseFirestore.instance.collection('chats').doc(convoId);
  }

  Future<DocumentReference> messageDocumentById(
      String convoId, String messageId) async {
    return FirebaseFirestore.instance
        .collection('messages')
        .doc(convoId)
        .collection('messages')
        .doc(messageId);
  }

  Future<CollectionReference> convoMessagesRef(String convoId) async {
    return FirebaseFirestore.instance
        .collection('messages')
        .doc(convoId)
        .collection('messages');
  }

  Future<CollectionReference> locationConvoMessagesRef(String convoId) async {
    return FirebaseFirestore.instance
        .collection('locationMessages')
        .doc(convoId)
        .collection('locationMessages');
  }

  Future<DocumentReference> locationChatDocumentById(String convoId) async {
    return FirebaseFirestore.instance.collection('locationChats').doc(convoId);
  }

  //Forums
  Future<CollectionReference> forumsRef() async {
    return FirebaseFirestore.instance.collection('myevents');
  }

  Future<DocumentReference> forumDocument(String forumId) async {
    return FirebaseFirestore.instance.collection('myevents').doc(forumId);
  }

  Future<DocumentReference> pollDocument(String forumId) async {
    return FirebaseFirestore.instance.collection('polls').doc(forumId);
  }

  Future<DocumentReference> commentsDoc(String forumId) async {
    return FirebaseFirestore.instance.collection('comments').doc(forumId);
  }

  Future<CollectionReference> commentsForumRef(String forumId) async {
    return FirebaseFirestore.instance
        .collection('comments')
        .doc(forumId)
        .collection('comments');
  }

  Future<CollectionReference> modulesRef() async {
    return FirebaseFirestore.instance.collection('modules');
  }

  //Notifications
  Future<CollectionReference> notificationsRef() async {
    return FirebaseFirestore.instance.collection('notifications');
  }

  Future<CollectionReference> notificationsUserRef(String userId) async {
    return FirebaseFirestore.instance
        .collection('notifications')
        .doc(userId)
        .collection('notifications');
  }

  //Following Feed
  Future<CollectionReference> followingFeedRef() async {
    return FirebaseFirestore.instance.collection('followingFeed');
  }

  Future<CollectionReference> followingFeedUserRef(String userId) async {
    return FirebaseFirestore.instance
        .collection('followingFeed')
        .doc(userId)
        .collection('followingFeed');
  }
}
