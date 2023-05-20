part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();

  UserModel? get user => maybeMap(
      loaded: (state) => state.user,
      orElse: () {
        return null;
      });
  Bucket? get bucket => maybeMap(
      success: (state) => state.bucket,
      orElse: () {
        return null;
      });

  const factory HomeState.initial() = _Initial;

  const factory HomeState.loading() = _Loading;

  const factory HomeState.loaded({required UserModel user}) = _Loaded;

  const factory HomeState.success({Bucket? bucket,required UserModel user}) = _Success;

  const factory HomeState.error({required String error, UserModel? user}) = _Error;
}
