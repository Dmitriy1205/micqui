part of 'google_signin_bloc.dart';

@freezed
class GoogleSigninState with _$GoogleSigninState {
  const factory GoogleSigninState.initial() = _InitialState;

  const factory GoogleSigninState.loading() = _LoadingState;

  const factory GoogleSigninState.success() = _SuccesState;

  const factory GoogleSigninState.error({required String error}) = _ErrorState;
}
