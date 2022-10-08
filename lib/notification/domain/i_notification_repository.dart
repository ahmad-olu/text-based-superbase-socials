import 'package:geat/notification/domain/notification_model.dart';

abstract class INotificationRepository {
  Stream<List<Future<Notification?>>> getUserNotifications({
    required String? userId,
  });
}
