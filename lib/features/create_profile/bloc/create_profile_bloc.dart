import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/constants/exceptions.dart';
import '../../../data/repositories/user_repository.dart';
import '../../../data/repositories/storage_repository.dart';
import '../../auth/bloc/auth_bloc.dart';

part 'create_profile_event.dart';

part 'create_profile_state.dart';

part 'create_profile_bloc.freezed.dart';

class CreateProfileBloc extends Bloc<CreateProfileEvent, CreateProfileState> {
  final UserRepository firestore;
  final StorageRepository storage;
  final AuthBloc authBloc;

  late final StreamSubscription _subscription;

  CreateProfileBloc({
    required this.firestore,
    required this.storage,
    required this.authBloc,
  }) : super(const CreateProfileState.initial()) {
    on<CreateProfileEvent>(_mapBlocToState);
    _subscription = authBloc.stream.listen((state) {
      state.maybeMap(
          authenticated: (state){
            add(CreateProfileEvent.checkIfUserCreatedProfile(id: state.user.uid));
          },
          unauthenticated: (_){
            add(const CreateProfileEvent.reset());
          },
          orElse: (){});
    });
  }

  Future<void> _checkIfUserCreatedProfile(_CheckIfUserCreatedProfile event, Emitter<CreateProfileState> emit) async{
    final profile = await firestore.getProfile(event.id);

    if(profile.isInitialized){
      emit(const CreateProfileState.success());
    }else{
      emit(const CreateProfileState.profileNotCreated());
    }
  }

  Future<void> _mapBlocToState(
      CreateProfileEvent event, Emitter<CreateProfileState> emit) async {
    await event.map(
      createFields: (e) => _createFields(e, emit),
      getImage: (e) => _getImage(e, emit),
      checkIfUserCreatedProfile: (e) => _checkIfUserCreatedProfile(e, emit),
      reset: (e) => _reset(e, emit)
    );
  }

  Future<void> _reset(_Reset event, Emitter<CreateProfileState> emit) async{
    emit(CreateProfileState.initial());
  }

  Future<void> _createFields(
      _CreateFields event, Emitter<CreateProfileState> emit) async {
    final previousState = state;
    emit(const CreateProfileState.loading());
    try {
      var currentUser = authBloc.state.user!;
      String imageUrl;
      if (event.file != null) {
        String pic = await storage.upload(event.file, 'avatars/${currentUser.uid}/${currentUser.uid}.png');
        imageUrl = pic;
      } else {
        imageUrl = event.image;
      }
      final nameParts = event.fullName.split(' ');
      final firstName = nameParts[0];
      final lastName = nameParts.length > 1 ? nameParts[1] : '';

      await firestore.setProfile(currentUser.uid, {'id':currentUser.uid,'avatar': imageUrl, 'nickName': event.nickName, 'firstName': firstName, 'lastName': lastName,'companyName': event.companyName, 'role': event.role,'email':currentUser.email});
      emit(const CreateProfileState.success());
    } on BadRequestException catch (e) {
      emit(CreateProfileState.error(error: e.message));
      emit(previousState);
    }
  }

  Future<void> _getImage(
      _GetImage event, Emitter<CreateProfileState> emit) async {
    emit(CreateProfileState.initImage(image: event.image));
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
