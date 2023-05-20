part of 'create_profile_bloc.dart';

@freezed
class CreateProfileEvent with _$CreateProfileEvent {
  const factory CreateProfileEvent.createFields({
    File? file,
    required String image,
    required String nickName,
    required String fullName,
    required String role,
    required String companyName,
  }) = _CreateFields;

  const factory CreateProfileEvent.checkIfUserCreatedProfile({required String id}) = _CheckIfUserCreatedProfile;

  const factory CreateProfileEvent.getImage({File? image}) = _GetImage;

  const factory CreateProfileEvent.reset() = _Reset;
}
