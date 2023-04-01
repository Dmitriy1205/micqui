part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();
  UserModel? get
  user => maybeMap(
      initialized: (state) => state.user,
      orElse: () {
        return null;
      });

  const factory HomeState.initial() = _Initial;

  const factory HomeState.loading() = _LoadingState;

  const factory HomeState.initialized({required UserModel user}) =
  _Initialize;

  const factory HomeState.error({required String error}) = _ErrorState;
}
