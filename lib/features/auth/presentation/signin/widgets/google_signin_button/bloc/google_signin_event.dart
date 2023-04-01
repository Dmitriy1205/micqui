part of 'google_signin_bloc.dart';

@freezed
class GoogleSigninEvent with _$GoogleSigninEvent {
  const factory GoogleSigninEvent.signInWithGoogle() = _SignInWithGoogle;
}
