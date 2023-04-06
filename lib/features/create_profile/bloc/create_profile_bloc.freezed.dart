// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File? file, String image, String nickName,
            String fullName, String role, String companyName, String country)
        createFields,
    required TResult Function(String id) checkIfUserCreatedProfile,
    required TResult Function(File? image) getImage,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File? file, String image, String nickName,
            String fullName, String role, String companyName, String country)?
        createFields,
    TResult? Function(String id)? checkIfUserCreatedProfile,
    TResult? Function(File? image)? getImage,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File? file, String image, String nickName, String fullName,
            String role, String companyName, String country)?
        createFields,
    TResult Function(String id)? checkIfUserCreatedProfile,
    TResult Function(File? image)? getImage,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateFields value) createFields,
    required TResult Function(_CheckIfUserCreatedProfile value)
        checkIfUserCreatedProfile,
    required TResult Function(_GetImage value) getImage,
    required TResult Function(_Reset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateFields value)? createFields,
    TResult? Function(_CheckIfUserCreatedProfile value)?
        checkIfUserCreatedProfile,
    TResult? Function(_GetImage value)? getImage,
    TResult? Function(_Reset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateFields value)? createFields,
    TResult Function(_CheckIfUserCreatedProfile value)?
        checkIfUserCreatedProfile,
    TResult Function(_GetImage value)? getImage,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProfileEventCopyWith<$Res> {
  factory $CreateProfileEventCopyWith(
          CreateProfileEvent value, $Res Function(CreateProfileEvent) then) =
      _$CreateProfileEventCopyWithImpl<$Res, CreateProfileEvent>;
}

/// @nodoc
class _$CreateProfileEventCopyWithImpl<$Res, $Val extends CreateProfileEvent>
    implements $CreateProfileEventCopyWith<$Res> {
  _$CreateProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CreateFieldsCopyWith<$Res> {
  factory _$$_CreateFieldsCopyWith(
          _$_CreateFields value, $Res Function(_$_CreateFields) then) =
      __$$_CreateFieldsCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {File? file,
      String image,
      String nickName,
      String fullName,
      String role,
      String companyName,
      String country});
}

/// @nodoc
class __$$_CreateFieldsCopyWithImpl<$Res>
    extends _$CreateProfileEventCopyWithImpl<$Res, _$_CreateFields>
    implements _$$_CreateFieldsCopyWith<$Res> {
  __$$_CreateFieldsCopyWithImpl(
      _$_CreateFields _value, $Res Function(_$_CreateFields) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = freezed,
    Object? image = null,
    Object? nickName = null,
    Object? fullName = null,
    Object? role = null,
    Object? companyName = null,
    Object? country = null,
  }) {
    return _then(_$_CreateFields(
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreateFields implements _CreateFields {
  const _$_CreateFields(
      {this.file,
      required this.image,
      required this.nickName,
      required this.fullName,
      required this.role,
      required this.companyName,
      required this.country});

  @override
  final File? file;
  @override
  final String image;
  @override
  final String nickName;
  @override
  final String fullName;
  @override
  final String role;
  @override
  final String companyName;
  @override
  final String country;

  @override
  String toString() {
    return 'CreateProfileEvent.createFields(file: $file, image: $image, nickName: $nickName, fullName: $fullName, role: $role, companyName: $companyName, country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateFields &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.country, country) || other.country == country));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, file, image, nickName, fullName, role, companyName, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateFieldsCopyWith<_$_CreateFields> get copyWith =>
      __$$_CreateFieldsCopyWithImpl<_$_CreateFields>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File? file, String image, String nickName,
            String fullName, String role, String companyName, String country)
        createFields,
    required TResult Function(String id) checkIfUserCreatedProfile,
    required TResult Function(File? image) getImage,
    required TResult Function() reset,
  }) {
    return createFields(
        file, image, nickName, fullName, role, companyName, country);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File? file, String image, String nickName,
            String fullName, String role, String companyName, String country)?
        createFields,
    TResult? Function(String id)? checkIfUserCreatedProfile,
    TResult? Function(File? image)? getImage,
    TResult? Function()? reset,
  }) {
    return createFields?.call(
        file, image, nickName, fullName, role, companyName, country);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File? file, String image, String nickName, String fullName,
            String role, String companyName, String country)?
        createFields,
    TResult Function(String id)? checkIfUserCreatedProfile,
    TResult Function(File? image)? getImage,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (createFields != null) {
      return createFields(
          file, image, nickName, fullName, role, companyName, country);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateFields value) createFields,
    required TResult Function(_CheckIfUserCreatedProfile value)
        checkIfUserCreatedProfile,
    required TResult Function(_GetImage value) getImage,
    required TResult Function(_Reset value) reset,
  }) {
    return createFields(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateFields value)? createFields,
    TResult? Function(_CheckIfUserCreatedProfile value)?
        checkIfUserCreatedProfile,
    TResult? Function(_GetImage value)? getImage,
    TResult? Function(_Reset value)? reset,
  }) {
    return createFields?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateFields value)? createFields,
    TResult Function(_CheckIfUserCreatedProfile value)?
        checkIfUserCreatedProfile,
    TResult Function(_GetImage value)? getImage,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (createFields != null) {
      return createFields(this);
    }
    return orElse();
  }
}

abstract class _CreateFields implements CreateProfileEvent {
  const factory _CreateFields(
      {final File? file,
      required final String image,
      required final String nickName,
      required final String fullName,
      required final String role,
      required final String companyName,
      required final String country}) = _$_CreateFields;

  File? get file;
  String get image;
  String get nickName;
  String get fullName;
  String get role;
  String get companyName;
  String get country;
  @JsonKey(ignore: true)
  _$$_CreateFieldsCopyWith<_$_CreateFields> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CheckIfUserCreatedProfileCopyWith<$Res> {
  factory _$$_CheckIfUserCreatedProfileCopyWith(
          _$_CheckIfUserCreatedProfile value,
          $Res Function(_$_CheckIfUserCreatedProfile) then) =
      __$$_CheckIfUserCreatedProfileCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_CheckIfUserCreatedProfileCopyWithImpl<$Res>
    extends _$CreateProfileEventCopyWithImpl<$Res, _$_CheckIfUserCreatedProfile>
    implements _$$_CheckIfUserCreatedProfileCopyWith<$Res> {
  __$$_CheckIfUserCreatedProfileCopyWithImpl(
      _$_CheckIfUserCreatedProfile _value,
      $Res Function(_$_CheckIfUserCreatedProfile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_CheckIfUserCreatedProfile(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CheckIfUserCreatedProfile implements _CheckIfUserCreatedProfile {
  const _$_CheckIfUserCreatedProfile({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'CreateProfileEvent.checkIfUserCreatedProfile(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckIfUserCreatedProfile &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckIfUserCreatedProfileCopyWith<_$_CheckIfUserCreatedProfile>
      get copyWith => __$$_CheckIfUserCreatedProfileCopyWithImpl<
          _$_CheckIfUserCreatedProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File? file, String image, String nickName,
            String fullName, String role, String companyName, String country)
        createFields,
    required TResult Function(String id) checkIfUserCreatedProfile,
    required TResult Function(File? image) getImage,
    required TResult Function() reset,
  }) {
    return checkIfUserCreatedProfile(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File? file, String image, String nickName,
            String fullName, String role, String companyName, String country)?
        createFields,
    TResult? Function(String id)? checkIfUserCreatedProfile,
    TResult? Function(File? image)? getImage,
    TResult? Function()? reset,
  }) {
    return checkIfUserCreatedProfile?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File? file, String image, String nickName, String fullName,
            String role, String companyName, String country)?
        createFields,
    TResult Function(String id)? checkIfUserCreatedProfile,
    TResult Function(File? image)? getImage,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (checkIfUserCreatedProfile != null) {
      return checkIfUserCreatedProfile(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateFields value) createFields,
    required TResult Function(_CheckIfUserCreatedProfile value)
        checkIfUserCreatedProfile,
    required TResult Function(_GetImage value) getImage,
    required TResult Function(_Reset value) reset,
  }) {
    return checkIfUserCreatedProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateFields value)? createFields,
    TResult? Function(_CheckIfUserCreatedProfile value)?
        checkIfUserCreatedProfile,
    TResult? Function(_GetImage value)? getImage,
    TResult? Function(_Reset value)? reset,
  }) {
    return checkIfUserCreatedProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateFields value)? createFields,
    TResult Function(_CheckIfUserCreatedProfile value)?
        checkIfUserCreatedProfile,
    TResult Function(_GetImage value)? getImage,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (checkIfUserCreatedProfile != null) {
      return checkIfUserCreatedProfile(this);
    }
    return orElse();
  }
}

abstract class _CheckIfUserCreatedProfile implements CreateProfileEvent {
  const factory _CheckIfUserCreatedProfile({required final String id}) =
      _$_CheckIfUserCreatedProfile;

  String get id;
  @JsonKey(ignore: true)
  _$$_CheckIfUserCreatedProfileCopyWith<_$_CheckIfUserCreatedProfile>
      get copyWith => throw _privateConstructorUsedError;
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
    extends _$CreateProfileEventCopyWithImpl<$Res, _$_GetImage>
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
    return 'CreateProfileEvent.getImage(image: $image)';
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
    required TResult Function(File? file, String image, String nickName,
            String fullName, String role, String companyName, String country)
        createFields,
    required TResult Function(String id) checkIfUserCreatedProfile,
    required TResult Function(File? image) getImage,
    required TResult Function() reset,
  }) {
    return getImage(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File? file, String image, String nickName,
            String fullName, String role, String companyName, String country)?
        createFields,
    TResult? Function(String id)? checkIfUserCreatedProfile,
    TResult? Function(File? image)? getImage,
    TResult? Function()? reset,
  }) {
    return getImage?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File? file, String image, String nickName, String fullName,
            String role, String companyName, String country)?
        createFields,
    TResult Function(String id)? checkIfUserCreatedProfile,
    TResult Function(File? image)? getImage,
    TResult Function()? reset,
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
    required TResult Function(_CreateFields value) createFields,
    required TResult Function(_CheckIfUserCreatedProfile value)
        checkIfUserCreatedProfile,
    required TResult Function(_GetImage value) getImage,
    required TResult Function(_Reset value) reset,
  }) {
    return getImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateFields value)? createFields,
    TResult? Function(_CheckIfUserCreatedProfile value)?
        checkIfUserCreatedProfile,
    TResult? Function(_GetImage value)? getImage,
    TResult? Function(_Reset value)? reset,
  }) {
    return getImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateFields value)? createFields,
    TResult Function(_CheckIfUserCreatedProfile value)?
        checkIfUserCreatedProfile,
    TResult Function(_GetImage value)? getImage,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (getImage != null) {
      return getImage(this);
    }
    return orElse();
  }
}

abstract class _GetImage implements CreateProfileEvent {
  const factory _GetImage({final File? image}) = _$_GetImage;

  File? get image;
  @JsonKey(ignore: true)
  _$$_GetImageCopyWith<_$_GetImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResetCopyWith<$Res> {
  factory _$$_ResetCopyWith(_$_Reset value, $Res Function(_$_Reset) then) =
      __$$_ResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetCopyWithImpl<$Res>
    extends _$CreateProfileEventCopyWithImpl<$Res, _$_Reset>
    implements _$$_ResetCopyWith<$Res> {
  __$$_ResetCopyWithImpl(_$_Reset _value, $Res Function(_$_Reset) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Reset implements _Reset {
  const _$_Reset();

  @override
  String toString() {
    return 'CreateProfileEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Reset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File? file, String image, String nickName,
            String fullName, String role, String companyName, String country)
        createFields,
    required TResult Function(String id) checkIfUserCreatedProfile,
    required TResult Function(File? image) getImage,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File? file, String image, String nickName,
            String fullName, String role, String companyName, String country)?
        createFields,
    TResult? Function(String id)? checkIfUserCreatedProfile,
    TResult? Function(File? image)? getImage,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File? file, String image, String nickName, String fullName,
            String role, String companyName, String country)?
        createFields,
    TResult Function(String id)? checkIfUserCreatedProfile,
    TResult Function(File? image)? getImage,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateFields value) createFields,
    required TResult Function(_CheckIfUserCreatedProfile value)
        checkIfUserCreatedProfile,
    required TResult Function(_GetImage value) getImage,
    required TResult Function(_Reset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateFields value)? createFields,
    TResult? Function(_CheckIfUserCreatedProfile value)?
        checkIfUserCreatedProfile,
    TResult? Function(_GetImage value)? getImage,
    TResult? Function(_Reset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateFields value)? createFields,
    TResult Function(_CheckIfUserCreatedProfile value)?
        checkIfUserCreatedProfile,
    TResult Function(_GetImage value)? getImage,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements CreateProfileEvent {
  const factory _Reset() = _$_Reset;
}

/// @nodoc
mixin _$CreateProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() profileNotCreated,
    required TResult Function(File? image) initImage,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? profileNotCreated,
    TResult? Function(File? image)? initImage,
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? profileNotCreated,
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
    required TResult Function(_ProfileNotCreated value) profileNotCreated,
    required TResult Function(_InitImage value) initImage,
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ProfileNotCreated value)? profileNotCreated,
    TResult? Function(_InitImage value)? initImage,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProfileNotCreated value)? profileNotCreated,
    TResult Function(_InitImage value)? initImage,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProfileStateCopyWith<$Res> {
  factory $CreateProfileStateCopyWith(
          CreateProfileState value, $Res Function(CreateProfileState) then) =
      _$CreateProfileStateCopyWithImpl<$Res, CreateProfileState>;
}

/// @nodoc
class _$CreateProfileStateCopyWithImpl<$Res, $Val extends CreateProfileState>
    implements $CreateProfileStateCopyWith<$Res> {
  _$CreateProfileStateCopyWithImpl(this._value, this._then);

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
    extends _$CreateProfileStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial() : super._();

  @override
  String toString() {
    return 'CreateProfileState.initial()';
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
    required TResult Function() profileNotCreated,
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
    TResult? Function()? profileNotCreated,
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
    TResult Function()? profileNotCreated,
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
    required TResult Function(_ProfileNotCreated value) profileNotCreated,
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
    TResult? Function(_ProfileNotCreated value)? profileNotCreated,
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
    TResult Function(_ProfileNotCreated value)? profileNotCreated,
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

abstract class _Initial extends CreateProfileState {
  const factory _Initial() = _$_Initial;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$_ProfileNotCreatedCopyWith<$Res> {
  factory _$$_ProfileNotCreatedCopyWith(_$_ProfileNotCreated value,
          $Res Function(_$_ProfileNotCreated) then) =
      __$$_ProfileNotCreatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProfileNotCreatedCopyWithImpl<$Res>
    extends _$CreateProfileStateCopyWithImpl<$Res, _$_ProfileNotCreated>
    implements _$$_ProfileNotCreatedCopyWith<$Res> {
  __$$_ProfileNotCreatedCopyWithImpl(
      _$_ProfileNotCreated _value, $Res Function(_$_ProfileNotCreated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ProfileNotCreated extends _ProfileNotCreated {
  const _$_ProfileNotCreated() : super._();

  @override
  String toString() {
    return 'CreateProfileState.profileNotCreated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ProfileNotCreated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() profileNotCreated,
    required TResult Function(File? image) initImage,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(String error) error,
  }) {
    return profileNotCreated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? profileNotCreated,
    TResult? Function(File? image)? initImage,
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
  }) {
    return profileNotCreated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? profileNotCreated,
    TResult Function(File? image)? initImage,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (profileNotCreated != null) {
      return profileNotCreated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ProfileNotCreated value) profileNotCreated,
    required TResult Function(_InitImage value) initImage,
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return profileNotCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ProfileNotCreated value)? profileNotCreated,
    TResult? Function(_InitImage value)? initImage,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return profileNotCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProfileNotCreated value)? profileNotCreated,
    TResult Function(_InitImage value)? initImage,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (profileNotCreated != null) {
      return profileNotCreated(this);
    }
    return orElse();
  }
}

abstract class _ProfileNotCreated extends CreateProfileState {
  const factory _ProfileNotCreated() = _$_ProfileNotCreated;
  const _ProfileNotCreated._() : super._();
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
    extends _$CreateProfileStateCopyWithImpl<$Res, _$_InitImage>
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
    return 'CreateProfileState.initImage(image: $image)';
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
    required TResult Function() profileNotCreated,
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
    TResult? Function()? profileNotCreated,
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
    TResult Function()? profileNotCreated,
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
    required TResult Function(_ProfileNotCreated value) profileNotCreated,
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
    TResult? Function(_ProfileNotCreated value)? profileNotCreated,
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
    TResult Function(_ProfileNotCreated value)? profileNotCreated,
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

abstract class _InitImage extends CreateProfileState {
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
    extends _$CreateProfileStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Success extends _Success {
  const _$_Success() : super._();

  @override
  String toString() {
    return 'CreateProfileState.success()';
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
    required TResult Function() profileNotCreated,
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
    TResult? Function()? profileNotCreated,
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
    TResult Function()? profileNotCreated,
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
    required TResult Function(_ProfileNotCreated value) profileNotCreated,
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
    TResult? Function(_ProfileNotCreated value)? profileNotCreated,
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
    TResult Function(_ProfileNotCreated value)? profileNotCreated,
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

abstract class _Success extends CreateProfileState {
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
    extends _$CreateProfileStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading() : super._();

  @override
  String toString() {
    return 'CreateProfileState.loading()';
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
    required TResult Function() profileNotCreated,
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
    TResult? Function()? profileNotCreated,
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
    TResult Function()? profileNotCreated,
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
    required TResult Function(_ProfileNotCreated value) profileNotCreated,
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
    TResult? Function(_ProfileNotCreated value)? profileNotCreated,
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
    TResult Function(_ProfileNotCreated value)? profileNotCreated,
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

abstract class _Loading extends CreateProfileState {
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
    extends _$CreateProfileStateCopyWithImpl<$Res, _$_Error>
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
    return 'CreateProfileState.error(error: $error)';
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
    required TResult Function() profileNotCreated,
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
    TResult? Function()? profileNotCreated,
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
    TResult Function()? profileNotCreated,
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
    required TResult Function(_ProfileNotCreated value) profileNotCreated,
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
    TResult? Function(_ProfileNotCreated value)? profileNotCreated,
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
    TResult Function(_ProfileNotCreated value)? profileNotCreated,
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

abstract class _Error extends CreateProfileState {
  const factory _Error({required final String error}) = _$_Error;
  const _Error._() : super._();

  String get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
