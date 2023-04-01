part of 'edit_profile_bloc.dart';

@freezed
class EditProfileState with _$EditProfileState {

  File? get image =>
      maybeMap(initImage: (state) => state.image, orElse: () => null);

  const factory EditProfileState.initial() = _Initial;

  const factory EditProfileState.initImage({required File? image}) = _InitImage;

  const factory EditProfileState.success() = _Success;

  const factory EditProfileState.loading() = _Loading;

  const factory EditProfileState.error({required String error}) = _Error;

  const EditProfileState._();
}
