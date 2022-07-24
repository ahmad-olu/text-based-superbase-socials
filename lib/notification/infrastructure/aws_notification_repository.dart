import 'package:geat/notification/domain/i_notifications.dart';
import 'package:geat/notification/domain/model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: INotificationRepository)
class AwsNotificationRepository implements INotificationRepository {
  @override
  Stream<List<Future<Notif>>> getUserNotifications({required String userId}) {
    // TODO: implement getUserNotifications
    throw UnimplementedError();
  }
}
