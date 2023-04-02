part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.fetchData({required UserModel? user}) = _FetchData;

  const factory HomeEvent.reset() = _Reset;

}
