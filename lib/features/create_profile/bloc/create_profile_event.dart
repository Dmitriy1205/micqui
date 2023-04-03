part of 'create_profile_bloc.dart';

@freezed
class CreateProfileEvent with _$CreateProfileEvent {
  const factory CreateProfileEvent.createFields({
    File? file,
    required String image,
    required String nickName,
    required String fullName,
    required String dateOfBirth,
    required String country,
  }) = _CreateFields;

  const factory CreateProfileEvent.getImage({File? image}) = _GetImage;
}
