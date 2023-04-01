part of 'signup_bloc.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState.initial() = _InitialState;

  const factory SignupState.loading() = _LoadingState;

  const factory SignupState.success() = _SuccesState;

  const factory SignupState.error({required String error}) = _ErrorState;
}
