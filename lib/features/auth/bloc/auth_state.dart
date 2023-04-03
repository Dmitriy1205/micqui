part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  User? get user =>
      maybeMap(authenticated: (state) => state.user, orElse: () => null);

  bool get isFirstSignIn => maybeMap(
        firstSignIn: (state) => state.isFirstSignIn,
        orElse: () => true,
      );

  const factory AuthState.initial() = _Initial;

  const factory AuthState.unauthenticated() = _UnauthenticaredState;

  const factory AuthState.firstSignIn({required bool isFirstSignIn}) =
      _FirstSignIn;

  const factory AuthState.authenticated({required User user}) =
      _AuthenticatedState;

  const factory AuthState.undefined() = _UndefinedState;
}
