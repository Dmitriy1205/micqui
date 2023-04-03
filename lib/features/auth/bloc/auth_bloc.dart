import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:micqui/core/extensions/firebase.dart';

import '../data/repository/auth_repository.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc({required this.authRepository}) : super(const AuthState.initial()) {
    on<AuthEvent>(_mapAuthBlocToState);
    authRepository.authStateChange.listen((User? user) {
      add(AuthEvent.initUser(user: user));
      add(AuthEvent.firstSignIn(isFirstSignIn: user!.metadata.isFirstSignIn!));
    });
  }

  Future<void> _mapAuthBlocToState(AuthEvent event, Emitter<AuthState> emit) =>
      event.map(
        initUser: (e) => _initUser(e, emit),
        logout: (e) => _logout(e, emit),
        firstSignIn: (e) => _firstSignIn(e, emit),
      );

  Future<void> _logout(_LogoutEvent event, Emitter<AuthState> emit) async {
    await authRepository.logout();
    emit(const AuthState.unauthenticated());
  }

  Future<void> _initUser(_InitUserEvent event, Emitter<AuthState> emit) async {
    if (event.user == null) {
      emit(const AuthState.unauthenticated());
    } else {
      emit(AuthState.authenticated(user: event.user!));
    }
  }

  Future<void> _firstSignIn(
      _FirstSignInEvent event, Emitter<AuthState> emit) async {
    emit(AuthState.firstSignIn(isFirstSignIn: event.isFirstSignIn));
  }
}
