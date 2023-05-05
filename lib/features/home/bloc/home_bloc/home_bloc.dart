import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:micqui/core/constants/exceptions.dart';
import 'package:micqui/data/repositories/question_repository.dart';
import 'package:micqui/features/profile/presentation/bloc/profile_bloc.dart';

import '../../../../data/models/bucket/bucket.dart';
import '../../../../data/models/user/user_model.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final QuestionRepository repository;
  final ProfileBloc profileBloc;
  late StreamSubscription subscription;

  HomeBloc({
    required this.profileBloc,
    required this.repository,
  }) : super(const HomeState.initial()) {
    on<HomeEvent>(_mapToState);
    subscription = profileBloc.stream.listen((state) {
      state.maybeMap(
          initialized: (s) => add(HomeEvent.init(user: s.user)), orElse: () {});
    });
  }

  Future<void> _mapToState(HomeEvent event, Emitter<HomeState> emit) async {
    await event.map(
      init: (e) => _init(e, emit),
      join: (e) => _join(e, emit),
    );
  }

  Future<void> _init(_Init event, Emitter<HomeState> emit) async {
    emit(const HomeState.loading());
    try {
      emit(HomeState.loaded(user: event.user));
    } on BadRequestException catch (e) {
      emit(HomeState.error(error: e.message));
    }
  }

  Future<void> _join(_Join event, Emitter<HomeState> emit) async {
    emit(const HomeState.loading());
    try {
      final Bucket bucket =
          await repository.getBucket(bucketId: event.bucketId);
      emit(HomeState.success(bucket: bucket,user: event.user));
    } on BadRequestException catch (e) {
      emit(HomeState.error(error: e.message));
    }
  }
}
