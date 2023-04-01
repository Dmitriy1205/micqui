part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.fetchData({required String userId}) = _FetchData;

  const factory ProfileEvent.reset() = _Reset;
}
