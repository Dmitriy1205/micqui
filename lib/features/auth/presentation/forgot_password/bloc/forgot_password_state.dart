part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState.initial() = _InitialState;

  const factory ForgotPasswordState.loading() = _LoadingState;

  const factory ForgotPasswordState.success() = _SuccesState;

  const factory ForgotPasswordState.error({required String error}) = _ErrorState;
}
