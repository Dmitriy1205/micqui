import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/constants/exceptions.dart';
import '../../../../../data/repositories/firestore_repository.dart';
import '../../../../../data/repositories/storage_repository.dart';
import '../../../../auth/bloc/auth_bloc.dart';

part 'edit_profile_event.dart';

part 'edit_profile_state.dart';

part 'edit_profile_bloc.freezed.dart';

class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  final FirestoreRepository firestore;
  final StorageRepository storage;
  final AuthBloc authBloc;

  EditProfileBloc({
    required this.firestore,
    required this.storage,
    required this.authBloc,
  }) : super(const EditProfileState.initial()) {
    on<EditProfileEvent>(_mapBlocToState);
  }

  Future<void> _mapBlocToState(
      EditProfileEvent event, Emitter<EditProfileState> emit) async {
    await event.map(
      updateFields: (e) => _updateFields(e, emit),
      getImage: (e) => _getImage(e, emit),
    );
  }

  Future<void> _updateFields(
      _UpdateFields event, Emitter<EditProfileState> emit) async {
    emit(const EditProfileState.loading());
    try {
      var id = authBloc.state.user!.uid;
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
      emit(const EditProfileState.success());
    } on BadRequestException catch (e) {
      emit(EditProfileState.error(error: e.message));
    }
  }

  Future<void> _getImage(
      _GetImage event, Emitter<EditProfileState> emit) async {
    emit(EditProfileState.initImage(image: event.image));
  }
}
