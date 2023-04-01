import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:micqui/core/constants/exceptions.dart';

import '../../../data/repository/auth_repository.dart';

part 'signup_event.dart';

part 'signup_state.dart';

part 'signup_bloc.freezed.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final AuthRepository auth;

  SignupBloc({required this.auth}) : super(const SignupState.initial()) {
    on<SignupEvent>(_mapBlocToState);
  }

  Future<void> _mapBlocToState(SignupEvent event, Emitter<SignupState> emit) =>
      event.map(
        signUpWithEmailAndPassword: (e) => _signUpWithEmailAndPassword(e, emit),
      );

  Future<void> _signUpWithEmailAndPassword(
      SignupEvent event, Emitter<SignupState> emit) async {
    emit(const SignupState.loading());

    try {
      await auth.signUp(
        email: event.email.toString(),
        password: event.password.toString(),
      );
      emit(const SignupState.success());
    } on BadRequestException catch (e) {

      emit(SignupState.error(error: e.message));
    }
  }
}
