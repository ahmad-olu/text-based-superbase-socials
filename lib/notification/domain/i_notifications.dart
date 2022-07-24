import 'package:geat/notification/domain/model.dart';

abstract class INotificationRepository {
  Stream<List<Future<Notif>>> getUserNotifications({required String userId});
}
