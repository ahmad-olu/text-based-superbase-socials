part of 'internet_connectivity_bloc.dart';

@freezed
class InternetConnectivityState with _$InternetConnectivityState {
  const factory InternetConnectivityState.initial() = _Initial;
  const factory InternetConnectivityState.activeConnection() =
      _ActiveConnection;
  const factory InternetConnectivityState.noConnection() = _NoConnection;
}
