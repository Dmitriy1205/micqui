import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:micqui/core/constants/exceptions.dart';
import 'package:micqui/data/models/user/user_model.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/utils/utils.dart';
import '../../../../data/repositories/firestore_repository.dart';
import '../../../auth/bloc/auth_bloc.dart';

part 'profile_event.dart';

part 'profile_state.dart';

part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final FirestoreRepository firestore;
  final AuthBloc authBloc;
  late UserModel userModel;
  late StreamSubscription _subscription;

  ProfileBloc({
    required this.firestore,
    required this.authBloc,
  }) : super(const ProfileState.initial()) {
    on<ProfileEvent>(_mapBlocToState);
    _subscription = authBloc.stream.listen((state) {
      state.maybeMap(
        authenticated: (state) async =>
            add(ProfileEvent.fetchData(userId: authBloc.state.user!.uid)),
        unauthenticated: (state) async => add(const ProfileEvent.reset()),
        orElse: () {},
      );
    });
  }

  Future<void> _mapBlocToState(
      ProfileEvent event, Emitter<ProfileState> emit) async {
    await event.map(
      fetchData: (e) => _fetchData(e, emit),
      reset: (e) => _reset(e, emit),
    );
  }

  Future<void> _fetchData(_FetchData event, Emitter<ProfileState> emit) async {
    emit(const ProfileState.loading());
    try {
      final user = await firestore.getProfile(event.userId);
      final currentUser = authBloc.state.user;

      String? separatedNickName = separateNickName(currentUser!.email);
      String nickName =
          user.nickName != null || user.nickName?.isNotEmpty == true
              ? user.nickName!
              : separatedNickName!;

      String firstSymbol = nickName[0].toUpperCase();


      userModel = UserModel(
        id: currentUser.uid,
        nickName: nickName,
        firstName: user.firstName ?? '',
        lastName: user.lastName ?? '',
        email: user.email ?? currentUser.email,
        avatar: user.avatar ?? currentUser.photoURL ?? '',
        dateOfBirth: user.dateOfBirth ?? '--',
        country: user.country ?? '--',
        property: {
          'symbol': firstSymbol,
          'color': AppColors.colors[firstSymbol],
        },
      );

      emit(ProfileState.initialized(user: userModel));
    } on BadRequestException catch (e) {
      emit(ProfileState.error(error: e.message));
    }
  }

  Future<void> _reset(_Reset event, Emitter<ProfileState> emit) async {
    emit(const ProfileState.initial());
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
