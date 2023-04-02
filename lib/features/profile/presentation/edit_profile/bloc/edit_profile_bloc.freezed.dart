// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditProfileEvent {
  Object? get image => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File? file, String image, String name,
            String dateOfBirth, String country)
        updateFields,
    required TResult Function(File? image) getImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File? file, String image, String name, String dateOfBirth,
            String country)?
        updateFields,
    TResult? Function(File? image)? getImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File? file, String image, String name, String dateOfBirth,
            String country)?
        updateFields,
    TResult Function(File? image)? getImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateFields value) updateFields,
    required TResult Function(_GetImage value) getImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateFields value)? updateFields,
    TResult? Function(_GetImage value)? getImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateFields value)? updateFields,
    TResult Function(_GetImage value)? getImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileEventCopyWith<$Res> {
  factory $EditProfileEventCopyWith(
          EditProfileEvent value, $Res Function(EditProfileEvent) then) =
      _$EditProfileEventCopyWithImpl<$Res, EditProfileEvent>;
}

/// @nodoc
class _$EditProfileEventCopyWithImpl<$Res, $Val extends EditProfileEvent>
    implements $EditProfileEventCopyWith<$Res> {
  _$EditProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UpdateFieldsCopyWith<$Res> {
  factory _$$_UpdateFieldsCopyWith(
          _$_UpdateFields value, $Res Function(_$_UpdateFields) then) =
      __$$_UpdateFieldsCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {File? file,
      String image,
      String name,
      String dateOfBirth,
      String country});
}

/// @nodoc
class __$$_UpdateFieldsCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res, _$_UpdateFields>
    implements _$$_UpdateFieldsCopyWith<$Res> {
  __$$_UpdateFieldsCopyWithImpl(
      _$_UpdateFields _value, $Res Function(_$_UpdateFields) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = freezed,
    Object? image = null,
    Object? name = null,
    Object? dateOfBirth = null,
    Object? country = null,
  }) {
    return _then(_$_UpdateFields(
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateFields implements _UpdateFields {
  const _$_UpdateFields(
      {this.file,
      required this.image,
      required this.name,
      required this.dateOfBirth,
      required this.country});

  @override
  final File? file;
  @override
  final String image;
  @override
  final String name;
  @override
  final String dateOfBirth;
  @override
  final String country;

  @override
  String toString() {
    return 'EditProfileEvent.updateFields(file: $file, image: $image, name: $name, dateOfBirth: $dateOfBirth, country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateFields &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.country, country) || other.country == country));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, file, image, name, dateOfBirth, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateFieldsCopyWith<_$_UpdateFields> get copyWith =>
      __$$_UpdateFieldsCopyWithImpl<_$_UpdateFields>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File? file, String image, String name,
            String dateOfBirth, String country)
        updateFields,
    required TResult Function(File? image) getImage,
  }) {
    return updateFields(file, image, name, dateOfBirth, country);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File? file, String image, String name, String dateOfBirth,
            String country)?
        updateFields,
    TResult? Function(File? image)? getImage,
  }) {
    return updateFields?.call(file, image, name, dateOfBirth, country);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File? file, String image, String name, String dateOfBirth,
            String country)?
        updateFields,
    TResult Function(File? image)? getImage,
    required TResult orElse(),
  }) {
    if (updateFields != null) {
      return updateFields(file, image, name, dateOfBirth, country);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateFields value) updateFields,
    required TResult Function(_GetImage value) getImage,
  }) {
    return updateFields(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateFields value)? updateFields,
    TResult? Function(_GetImage value)? getImage,
  }) {
    return updateFields?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateFields value)? updateFields,
    TResult Function(_GetImage value)? getImage,
    required TResult orElse(),
  }) {
    if (updateFields != null) {
      return updateFields(this);
    }
    return orElse();
  }
}

abstract class _UpdateFields implements EditProfileEvent {
  const factory _UpdateFields(
      {final File? file,
      required final String image,
      required final String name,
      required final String dateOfBirth,
      required final String country}) = _$_UpdateFields;

  File? get file;
  @override
  String get image;
  String get name;
  String get dateOfBirth;
  String get country;
  @JsonKey(ignore: true)
  _$$_UpdateFieldsCopyWith<_$_UpdateFields> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetImageCopyWith<$Res> {
  factory _$$_GetImageCopyWith(
          _$_GetImage value, $Res Function(_$_GetImage) then) =
      __$$_GetImageCopyWithImpl<$Res>;
  @useResult
  $Res call({File? image});
}

/// @nodoc
class __$$_GetImageCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res, _$_GetImage>
    implements _$$_GetImageCopyWith<$Res> {
  __$$_GetImageCopyWithImpl(
      _$_GetImage _value, $Res Function(_$_GetImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_$_GetImage(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$_GetImage implements _GetImage {
  const _$_GetImage({this.image});

  @override
  final File? image;

  @override
  String toString() {
    return 'EditProfileEvent.getImage(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetImage &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetImageCopyWith<_$_GetImage> get copyWith =>
      __$$_GetImageCopyWithImpl<_$_GetImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File? file, String image, String name,
            String dateOfBirth, String country)
        updateFields,
    required TResult Function(File? image) getImage,
  }) {
    return getImage(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File? file, String image, String name, String dateOfBirth,
            String country)?
        updateFields,
    TResult? Function(File? image)? getImage,
  }) {
    return getImage?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File? file, String image, String name, String dateOfBirth,
            String country)?
        updateFields,
    TResult Function(File? image)? getImage,
    required TResult orElse(),
  }) {
    if (getImage != null) {
      return getImage(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateFields value) updateFields,
    required TResult Function(_GetImage value) getImage,
  }) {
    return getImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateFields value)? updateFields,
    TResult? Function(_GetImage value)? getImage,
  }) {
    return getImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateFields value)? updateFields,
    TResult Function(_GetImage value)? getImage,
    required TResult orElse(),
  }) {
    if (getImage != null) {
      return getImage(this);
    }
    return orElse();
  }
}

abstract class _GetImage implements EditProfileEvent {
  const factory _GetImage({final File? image}) = _$_GetImage;

  @override
  File? get image;
  @JsonKey(ignore: true)
  _$$_GetImageCopyWith<_$_GetImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EditProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(File? image) initImage,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(File? image)? initImage,
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(File? image)? initImage,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InitImage value) initImage,
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InitImage value)? initImage,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InitImage value)? initImage,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileStateCopyWith<$Res> {
  factory $EditProfileStateCopyWith(
          EditProfileState value, $Res Function(EditProfileState) then) =
      _$EditProfileStateCopyWithImpl<$Res, EditProfileState>;
}

/// @nodoc
class _$EditProfileStateCopyWithImpl<$Res, $Val extends EditProfileState>
    implements $EditProfileStateCopyWith<$Res> {
  _$EditProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial() : super._();

  @override
  String toString() {
    return 'EditProfileState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(File? image) initImage,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(File? image)? initImage,
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(File? image)? initImage,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InitImage value) initImage,
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InitImage value)? initImage,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InitImage value)? initImage,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends EditProfileState {
  const factory _Initial() = _$_Initial;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$_InitImageCopyWith<$Res> {
  factory _$$_InitImageCopyWith(
          _$_InitImage value, $Res Function(_$_InitImage) then) =
      __$$_InitImageCopyWithImpl<$Res>;
  @useResult
  $Res call({File? image});
}

/// @nodoc
class __$$_InitImageCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res, _$_InitImage>
    implements _$$_InitImageCopyWith<$Res> {
  __$$_InitImageCopyWithImpl(
      _$_InitImage _value, $Res Function(_$_InitImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_$_InitImage(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$_InitImage extends _InitImage {
  const _$_InitImage({required this.image}) : super._();

  @override
  final File? image;

  @override
  String toString() {
    return 'EditProfileState.initImage(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitImage &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitImageCopyWith<_$_InitImage> get copyWith =>
      __$$_InitImageCopyWithImpl<_$_InitImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(File? image) initImage,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(String error) error,
  }) {
    return initImage(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(File? image)? initImage,
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
  }) {
    return initImage?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(File? image)? initImage,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initImage != null) {
      return initImage(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InitImage value) initImage,
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return initImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InitImage value)? initImage,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return initImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InitImage value)? initImage,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initImage != null) {
      return initImage(this);
    }
    return orElse();
  }
}

abstract class _InitImage extends EditProfileState {
  const factory _InitImage({required final File? image}) = _$_InitImage;
  const _InitImage._() : super._();

  File? get image;
  @JsonKey(ignore: true)
  _$$_InitImageCopyWith<_$_InitImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Success extends _Success {
  const _$_Success() : super._();

  @override
  String toString() {
    return 'EditProfileState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(File? image) initImage,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(String error) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(File? image)? initImage,
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(File? image)? initImage,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InitImage value) initImage,
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InitImage value)? initImage,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InitImage value)? initImage,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success extends EditProfileState {
  const factory _Success() = _$_Success;
  const _Success._() : super._();
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading() : super._();

  @override
  String toString() {
    return 'EditProfileState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(File? image) initImage,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(File? image)? initImage,
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(File? image)? initImage,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InitImage value) initImage,
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InitImage value)? initImage,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InitImage value)? initImage,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends EditProfileState {
  const factory _Loading() = _$_Loading;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_Error(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error extends _Error {
  const _$_Error({required this.error}) : super._();

  @override
  final String error;

  @override
  String toString() {
    return 'EditProfileState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(File? image) initImage,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(File? image)? initImage,
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(File? image)? initImage,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InitImage value) initImage,
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InitImage value)? initImage,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InitImage value)? initImage,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends EditProfileState {
  const factory _Error({required final String error}) = _$_Error;
  const _Error._() : super._();

  String get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
