import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/auth/core/core.dart';
import 'package:geat/core/core.dart';
import 'package:geat/notification/domain/i_notifications.dart';
import 'package:geat/notification/domain/model.dart';
import 'package:injectable/injectable.dart';

part 'notifications_event.dart';
part 'notifications_state.dart';
part 'notifications_bloc.freezed.dart';

@injectable
class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  final INotificationRepository _iNotificationRepository;
  final AuthBloc _authBloc;

  StreamSubscription<List<Future<Notif>>>? _notificationSubscription;
  NotificationsBloc(this._iNotificationRepository, this._authBloc)
      : super(NotificationsState.initial()) {
    _notificationSubscription?.cancel();
    _notificationSubscription = _iNotificationRepository
        .getUserNotifications(userId: _authBloc.state.user)
        .listen((notifications) async {
      final allNotifications = await Future.wait(notifications);
      add(
        NotificationsEvent.updatedNotifications(
          notifications: allNotifications,
        ),
      );
    });
    //todo** The declaration 'close' isn't referenced.Try removing the declaration of 'close'.
    @override
    // ignore: unused_element
    Future<void> close() async {
      _notificationSubscription?.cancel();
      return super.close();
    }

    on<NotificationsEvent>((event, emit) {
      event.map(
        updatedNotifications: (e) async {
          emit(
            state.copyWith(
              notifications: e.notifications,
              status: NotificationsStatus.loaded,
            ),
          );
        },
      );
    });
  }
}
