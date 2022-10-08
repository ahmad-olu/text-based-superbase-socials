import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

part 'internet_connectivity_event.dart';
part 'internet_connectivity_state.dart';
part 'internet_connectivity_bloc.freezed.dart';

class InternetConnectivityBloc
    extends Bloc<InternetConnectivityEvent, InternetConnectivityState> {
  StreamSubscription<InternetConnectionStatus>? internetConnectSubscription;
  InternetConnectivityBloc()
      : super(const InternetConnectivityState.initial()) {
    internetConnectSubscription?.cancel();
    internetConnectSubscription =
        InternetConnectionChecker().onStatusChange.listen((status) async {
      add(InternetConnectivityEvent.checkInternetConnection(status));
    });
    on<InternetConnectivityEvent>((event, emit) async {
      await event.map(
        checkInternetConnection: (e) async {
          switch (e.status) {
            case InternetConnectionStatus.connected:
              emit(const InternetConnectivityState.activeConnection());
              break;
            case InternetConnectionStatus.disconnected:
              emit(const InternetConnectivityState.noConnection());
              break;
          }
        },
      );
    });
  }
  @override
  Future<void> close() {
    internetConnectSubscription?.cancel();
    return super.close();
  }
}
