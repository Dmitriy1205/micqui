import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:micqui/core/constants/exceptions.dart';

import '../../../data/repository/auth_repository.dart';

part 'signin_event.dart';

part 'signin_state.dart';

part 'signin_bloc.freezed.dart';

class SigninBloc extends Bloc<SigninEvent, SigninState> {
  final AuthRepository auth;

  SigninBloc({required this.auth}) : super(const SigninState.initial()) {
    on<SigninEvent>(_mapBlocToState);
  }

  Future<void> _mapBlocToState(SigninEvent event, Emitter<SigninState> emit) =>
      event.map(
        signInWithEmailAndPassword: (e) => _signUpWithEmailAndPassword(e, emit),
      );

  Future<void> _signUpWithEmailAndPassword(
      SigninEvent event, Emitter<SigninState> emit) async {
    emit(const SigninState.loading());

    try {
      await auth.signIn(
        email: event.email.toString(),
        password: event.password.toString(),
      );
      emit(const SigninState.success());
    } on BadRequestException catch (e) {

      emit(SigninState.error(error: e.message));
    }
  }
}
