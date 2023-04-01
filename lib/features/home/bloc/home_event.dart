part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.fetchData({required String userId}) = _FetchData;

  const factory HomeEvent.reset() = _Reset;
}
