part of 'apple_signin_bloc.dart';

@freezed
class AppleSigninState with _$AppleSigninState {
  const factory AppleSigninState.initial() = _InitialState;

  const factory AppleSigninState.loading() = _LoadingState;

  const factory AppleSigninState.success() = _SuccesState;

  const factory AppleSigninState.error({required String error}) = _ErrorState;
}
