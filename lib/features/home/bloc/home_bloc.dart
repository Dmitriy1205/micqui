import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/constants/exceptions.dart';
import '../../../data/models/user/user_model.dart';
import '../../../data/repositories/firestore_repository.dart';
import '../../auth/bloc/auth_bloc.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final FirestoreRepository firestore;
  final AuthBloc authBloc;
  late UserModel userModel;
  late StreamSubscription _subscription;

  HomeBloc({required this.firestore, required this.authBloc}) : super(const HomeState.initial()) {
    on<HomeEvent>(_mapBlocToState);
    _subscription = authBloc.stream.listen((state) {
      state.maybeMap(
        authenticated: (state) async =>
            add(HomeEvent.fetchData(userId: authBloc.state.user!.uid)),
        unauthenticated: (state) async => add(const HomeEvent.reset()),
        orElse: () {},
      );
    });
  }

  Future<void> _mapBlocToState(HomeEvent event, Emitter<HomeState> emit) async {
    await event.map(
      fetchData: (e) => _fetchData(e, emit),
      reset: (e) => _reset(e, emit),
    );
  }

  Future<void> _fetchData(_FetchData event, Emitter<HomeState> emit) async {
    emit(const HomeState.loading());
    try {
      final user = await firestore.getProfile(event.userId);
      final currentUser = authBloc.state.user;

      userModel = UserModel(
        id: currentUser!.uid,
        firstName: user.firstName ?? currentUser.displayName ?? '',
        // email: user.email ?? currentUser.email,
        avatar: user.avatar ?? currentUser.photoURL ?? '',
        // dateOfBirth: user.dateOfBirth ?? '--',
        // country: user.country ?? 'Ukraine',
      );

      emit(HomeState.initialized(user: userModel));
    } on BadRequestException catch (e) {
      emit(HomeState.error(error: e.message));
    }
  }

  Future<void> _reset(_Reset event, Emitter<HomeState> emit) async {
    emit(const HomeState.initial());
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
