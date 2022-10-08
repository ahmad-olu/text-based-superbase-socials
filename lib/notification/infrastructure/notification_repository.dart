import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geat/core/constants/paths.dart';
import 'package:geat/core/domain/geat_failure.dart';
import 'package:geat/notification/domain/i_notification_repository.dart';
import 'package:geat/notification/domain/notification_model.dart';

class NotificationRepository implements INotificationRepository {
  final FirebaseFirestore _firebaseFirestore;

  NotificationRepository(this._firebaseFirestore);
  @override
  Stream<List<Future<Notification?>>> getUserNotifications({
    required String? userId,
  }) {
    try {
      return _firebaseFirestore
          .collection(Paths.notifications)
          .doc(userId)
          .collection(Paths.userNotifications)
          .orderBy('date', descending: true)
          .snapshots()
          .map(
            (snap) => snap.docs
                .map((doc) => Notification.fromFireStore(doc))
                .toList(),
          );
    } on FirebaseException catch (e) {
      if (e.code.contains('PERMISSION_DENIED')) {
        throw InsufficientPermissionException();
      } else {
        throw GenericGeatException();
      }
    } catch (_) {
      throw GenericGeatException();
    }
  }
}
