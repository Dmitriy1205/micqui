part of 'edit_profile_bloc.dart';

@freezed
class EditProfileEvent with _$EditProfileEvent {
  const factory EditProfileEvent.updateFields({
    File? file,
    required String image,
    required String nickName,
    required String fullName,
    required String dateOfBirth,
    required String country,
  }) = _UpdateFields;

  const factory EditProfileEvent.getImage({File? image}) = _GetImage;
}
