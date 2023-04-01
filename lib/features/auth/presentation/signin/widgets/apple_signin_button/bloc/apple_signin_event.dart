part of 'apple_signin_bloc.dart';

@freezed
class AppleSigninEvent with _$AppleSigninEvent {
  const factory AppleSigninEvent.signInWithApple() = _SignInWithApple;
}
