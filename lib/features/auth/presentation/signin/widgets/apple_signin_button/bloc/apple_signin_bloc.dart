import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/constants/exceptions.dart';
import '../../../../../data/repository/auth_repository.dart';

part 'apple_signin_event.dart';

part 'apple_signin_state.dart';

part 'apple_signin_bloc.freezed.dart';

class AppleSigninBloc extends Bloc<AppleSigninEvent, AppleSigninState> {
  final AuthRepository auth;

  AppleSigninBloc({required this.auth})
      : super(const AppleSigninState.initial()) {
    on<AppleSigninEvent>(_mapBlocToState);
  }

  Future<void> _mapBlocToState(
          AppleSigninEvent event, Emitter<AppleSigninState> emit) =>
      event.map(signInWithApple: (e) => _signinWithApple(e, emit));

  Future<void> _signinWithApple(
      AppleSigninEvent event, Emitter<AppleSigninState> emit) async {
    emit(const AppleSigninState.loading());

    try {
      await auth.signInWithApple();

      emit(const AppleSigninState.success());
    } on BadRequestException catch (e) {
      emit(AppleSigninState.error(error: e.message));
    }
  }
}
