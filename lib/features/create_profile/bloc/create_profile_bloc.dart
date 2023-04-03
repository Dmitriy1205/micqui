import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:micqui/core/extensions/firebase.dart';

import '../../../core/constants/exceptions.dart';
import '../../../data/repositories/firestore_repository.dart';
import '../../../data/repositories/storage_repository.dart';
import '../../auth/bloc/auth_bloc.dart';
import '../../profile/presentation/bloc/profile_bloc.dart';

part 'create_profile_event.dart';

part 'create_profile_state.dart';

part 'create_profile_bloc.freezed.dart';

class CreateProfileBloc extends Bloc<CreateProfileEvent, CreateProfileState> {
  final FirestoreRepository firestore;
  final StorageRepository storage;
  final AuthBloc authBloc;

  CreateProfileBloc({
    required this.firestore,
    required this.storage,
    required this.authBloc,
  }) : super(const CreateProfileState.initial()) {
    on<CreateProfileEvent>(_mapBlocToState);
  }

  Future<void> _mapBlocToState(
      CreateProfileEvent event, Emitter<CreateProfileState> emit) async {
    await event.map(
      createFields: (e) => _createFields(e, emit),
      getImage: (e) => _getImage(e, emit),
    );
  }

  Future<void> _createFields(
      _CreateFields event, Emitter<CreateProfileState> emit) async {
    emit(const CreateProfileState.loading());
    try {
      var id = authBloc.state.user!.uid!;
      String imageUrl;
      if (event.file != null) {
        String pic = await storage.upload(event.file, 'avatars/$id/$id.png');
        imageUrl = pic;
      } else {
        imageUrl = event.image;
      }
      final nameParts = event.fullName.split(' ');
      final firstName = nameParts[0];
      final lastName = nameParts.length > 1 ? nameParts[1] : '';

      await firestore.setProfile(id, {'avatar': imageUrl});
      await firestore.setProfile(id, {'nickName': event.nickName});
      await firestore.setProfile(id, {'firstName': firstName});
      await firestore.setProfile(id, {'lastName': lastName});
      await firestore.setProfile(id, {'country': event.country});
      await firestore.setProfile(id, {'dateOfBirth': event.dateOfBirth});
      authBloc.add(AuthEvent.initUser(user: authBloc.state.user));
      authBloc.add(AuthEvent.firstSignIn(isFirstSignIn: !authBloc.state.user!.metadata.isFirstSignIn!));
      emit(const CreateProfileState.success());
    } on BadRequestException catch (e) {
      emit(CreateProfileState.error(error: e.message));
    }
  }

  Future<void> _getImage(
      _GetImage event, Emitter<CreateProfileState> emit) async {
    emit(CreateProfileState.initImage(image: event.image));
  }
}
