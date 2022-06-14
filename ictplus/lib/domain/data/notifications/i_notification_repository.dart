import 'package:dartz/dartz.dart';
import 'package:ictplus/domain/data/data_failure.dart';
import 'package:ictplus/domain/data/notifications/notification.dart';
import 'package:ictplus/domain/data/profile/profile.dart';

abstract class INotificationRepository {
  Future<String> getOwnId();
  Stream<Either<DataFailure, int>> retrieveNumberUnreadNotifications(
      {required String userId});
  Stream<Either<DataFailure, List<Notification>>> retrieveNotificationsInitial(
      String userId);
  Stream<Either<DataFailure, List<Notification>>>
      retrieveNotificationsInBatches(String userId, String lastTimestamp);
  Future<Either<DataFailure, Profile>> searchProfileByUuid(String uuid);
}
