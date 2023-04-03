part of 'create_profile_bloc.dart';

@freezed
class CreateProfileState with _$CreateProfileState {
  File? get image =>
      maybeMap(initImage: (state) => state.image, orElse: () => null);

  const factory CreateProfileState.initial() = _Initial;

  const factory CreateProfileState.initImage({required File? image}) =
      _InitImage;

  const factory CreateProfileState.success() = _Success;

  const factory CreateProfileState.loading() = _Loading;

  const factory CreateProfileState.error({required String error}) = _Error;

  const CreateProfileState._();
}
