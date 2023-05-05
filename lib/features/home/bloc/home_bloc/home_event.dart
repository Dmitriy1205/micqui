part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.init({required UserModel user}) = _Init;
  const factory HomeEvent.join({required String bucketId,required UserModel user}) = _Join;
}
