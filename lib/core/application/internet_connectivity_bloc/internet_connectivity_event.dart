part of 'internet_connectivity_bloc.dart';

@freezed
class InternetConnectivityEvent with _$InternetConnectivityEvent {
  const factory InternetConnectivityEvent.checkInternetConnection(
    InternetConnectionStatus status,
  ) = _CheckInternetConnection;
}
