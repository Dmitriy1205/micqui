part of 'signin_bloc.dart';

@freezed
class SigninState with _$SigninState {
  const factory SigninState.initial() = _InitialState;

  const factory SigninState.loading() = _LoadingState;

  const factory SigninState.success() = _SuccesState;

  const factory SigninState.error({required String error}) = _ErrorState;
}
