import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/constants/exceptions.dart';
import '../../../../../data/repositories/user_repository.dart';
import '../../../../../data/repositories/storage_repository.dart';
import '../../bloc/profile_bloc.dart';

part 'edit_profile_event.dart';

part 'edit_profile_state.dart';

part 'edit_profile_bloc.freezed.dart';

class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  final UserRepository firestore;
  final StorageRepository storage;
  final ProfileBloc profileBloc;

  EditProfileBloc({
    required this.firestore,
    required this.storage,
    required this.profileBloc,
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
      var id = profileBloc.state.user!.id!;
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

      await firestore.setProfile(id, {
        'avatar': imageUrl,
        'nickName': event.nickName,
        'firstName': firstName,
        'lastName': lastName,
        'role': event.role,
        'companyName': event.companyName
      });

      profileBloc.add(ProfileEvent.fetchData(userId: id));
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
