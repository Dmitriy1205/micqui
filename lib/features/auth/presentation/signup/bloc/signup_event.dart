part of 'signup_bloc.dart';

@freezed
class SignupEvent with _$SignupEvent {
  const factory SignupEvent.signUpWithEmailAndPassword(
      {required String email,
      required String password}) = _SignUpWithEmaiAndPussword;
}
