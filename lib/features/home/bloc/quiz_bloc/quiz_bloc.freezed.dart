// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuizEvent {
  String get userId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bucketId, String userId, bool completed)
        setFields,
    required TResult Function(
            String userId, String question, String answer, int index)
        setAnswer,
    required TResult Function(String userId, bool completed) complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String bucketId, String userId, bool completed)?
        setFields,
    TResult? Function(String userId, String question, String answer, int index)?
        setAnswer,
    TResult? Function(String userId, bool completed)? complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bucketId, String userId, bool completed)? setFields,
    TResult Function(String userId, String question, String answer, int index)?
        setAnswer,
    TResult Function(String userId, bool completed)? complete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetFields value) setFields,
    required TResult Function(_SetAnswer value) setAnswer,
    required TResult Function(_Complete value) complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetFields value)? setFields,
    TResult? Function(_SetAnswer value)? setAnswer,
    TResult? Function(_Complete value)? complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetFields value)? setFields,
    TResult Function(_SetAnswer value)? setAnswer,
    TResult Function(_Complete value)? complete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuizEventCopyWith<QuizEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizEventCopyWith<$Res> {
  factory $QuizEventCopyWith(QuizEvent value, $Res Function(QuizEvent) then) =
      _$QuizEventCopyWithImpl<$Res, QuizEvent>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class _$QuizEventCopyWithImpl<$Res, $Val extends QuizEvent>
    implements $QuizEventCopyWith<$Res> {
  _$QuizEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SetFieldsCopyWith<$Res> implements $QuizEventCopyWith<$Res> {
  factory _$$_SetFieldsCopyWith(
          _$_SetFields value, $Res Function(_$_SetFields) then) =
      __$$_SetFieldsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String bucketId, String userId, bool completed});
}

/// @nodoc
class __$$_SetFieldsCopyWithImpl<$Res>
    extends _$QuizEventCopyWithImpl<$Res, _$_SetFields>
    implements _$$_SetFieldsCopyWith<$Res> {
  __$$_SetFieldsCopyWithImpl(
      _$_SetFields _value, $Res Function(_$_SetFields) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bucketId = null,
    Object? userId = null,
    Object? completed = null,
  }) {
    return _then(_$_SetFields(
      bucketId: null == bucketId
          ? _value.bucketId
          : bucketId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SetFields implements _SetFields {
  const _$_SetFields(
      {required this.bucketId, required this.userId, required this.completed});

  @override
  final String bucketId;
  @override
  final String userId;
  @override
  final bool completed;

  @override
  String toString() {
    return 'QuizEvent.setFields(bucketId: $bucketId, userId: $userId, completed: $completed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetFields &&
            (identical(other.bucketId, bucketId) ||
                other.bucketId == bucketId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bucketId, userId, completed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetFieldsCopyWith<_$_SetFields> get copyWith =>
      __$$_SetFieldsCopyWithImpl<_$_SetFields>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bucketId, String userId, bool completed)
        setFields,
    required TResult Function(
            String userId, String question, String answer, int index)
        setAnswer,
    required TResult Function(String userId, bool completed) complete,
  }) {
    return setFields(bucketId, userId, completed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String bucketId, String userId, bool completed)?
        setFields,
    TResult? Function(String userId, String question, String answer, int index)?
        setAnswer,
    TResult? Function(String userId, bool completed)? complete,
  }) {
    return setFields?.call(bucketId, userId, completed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bucketId, String userId, bool completed)? setFields,
    TResult Function(String userId, String question, String answer, int index)?
        setAnswer,
    TResult Function(String userId, bool completed)? complete,
    required TResult orElse(),
  }) {
    if (setFields != null) {
      return setFields(bucketId, userId, completed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetFields value) setFields,
    required TResult Function(_SetAnswer value) setAnswer,
    required TResult Function(_Complete value) complete,
  }) {
    return setFields(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetFields value)? setFields,
    TResult? Function(_SetAnswer value)? setAnswer,
    TResult? Function(_Complete value)? complete,
  }) {
    return setFields?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetFields value)? setFields,
    TResult Function(_SetAnswer value)? setAnswer,
    TResult Function(_Complete value)? complete,
    required TResult orElse(),
  }) {
    if (setFields != null) {
      return setFields(this);
    }
    return orElse();
  }
}

abstract class _SetFields implements QuizEvent {
  const factory _SetFields(
      {required final String bucketId,
      required final String userId,
      required final bool completed}) = _$_SetFields;

  String get bucketId;
  @override
  String get userId;
  bool get completed;
  @override
  @JsonKey(ignore: true)
  _$$_SetFieldsCopyWith<_$_SetFields> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetAnswerCopyWith<$Res> implements $QuizEventCopyWith<$Res> {
  factory _$$_SetAnswerCopyWith(
          _$_SetAnswer value, $Res Function(_$_SetAnswer) then) =
      __$$_SetAnswerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String question, String answer, int index});
}

/// @nodoc
class __$$_SetAnswerCopyWithImpl<$Res>
    extends _$QuizEventCopyWithImpl<$Res, _$_SetAnswer>
    implements _$$_SetAnswerCopyWith<$Res> {
  __$$_SetAnswerCopyWithImpl(
      _$_SetAnswer _value, $Res Function(_$_SetAnswer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? question = null,
    Object? answer = null,
    Object? index = null,
  }) {
    return _then(_$_SetAnswer(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SetAnswer implements _SetAnswer {
  const _$_SetAnswer(
      {required this.userId,
      required this.question,
      required this.answer,
      required this.index});

  @override
  final String userId;
  @override
  final String question;
  @override
  final String answer;
  @override
  final int index;

  @override
  String toString() {
    return 'QuizEvent.setAnswer(userId: $userId, question: $question, answer: $answer, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetAnswer &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, question, answer, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetAnswerCopyWith<_$_SetAnswer> get copyWith =>
      __$$_SetAnswerCopyWithImpl<_$_SetAnswer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bucketId, String userId, bool completed)
        setFields,
    required TResult Function(
            String userId, String question, String answer, int index)
        setAnswer,
    required TResult Function(String userId, bool completed) complete,
  }) {
    return setAnswer(userId, question, answer, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String bucketId, String userId, bool completed)?
        setFields,
    TResult? Function(String userId, String question, String answer, int index)?
        setAnswer,
    TResult? Function(String userId, bool completed)? complete,
  }) {
    return setAnswer?.call(userId, question, answer, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bucketId, String userId, bool completed)? setFields,
    TResult Function(String userId, String question, String answer, int index)?
        setAnswer,
    TResult Function(String userId, bool completed)? complete,
    required TResult orElse(),
  }) {
    if (setAnswer != null) {
      return setAnswer(userId, question, answer, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetFields value) setFields,
    required TResult Function(_SetAnswer value) setAnswer,
    required TResult Function(_Complete value) complete,
  }) {
    return setAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetFields value)? setFields,
    TResult? Function(_SetAnswer value)? setAnswer,
    TResult? Function(_Complete value)? complete,
  }) {
    return setAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetFields value)? setFields,
    TResult Function(_SetAnswer value)? setAnswer,
    TResult Function(_Complete value)? complete,
    required TResult orElse(),
  }) {
    if (setAnswer != null) {
      return setAnswer(this);
    }
    return orElse();
  }
}

abstract class _SetAnswer implements QuizEvent {
  const factory _SetAnswer(
      {required final String userId,
      required final String question,
      required final String answer,
      required final int index}) = _$_SetAnswer;

  @override
  String get userId;
  String get question;
  String get answer;
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$_SetAnswerCopyWith<_$_SetAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CompleteCopyWith<$Res> implements $QuizEventCopyWith<$Res> {
  factory _$$_CompleteCopyWith(
          _$_Complete value, $Res Function(_$_Complete) then) =
      __$$_CompleteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, bool completed});
}

/// @nodoc
class __$$_CompleteCopyWithImpl<$Res>
    extends _$QuizEventCopyWithImpl<$Res, _$_Complete>
    implements _$$_CompleteCopyWith<$Res> {
  __$$_CompleteCopyWithImpl(
      _$_Complete _value, $Res Function(_$_Complete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? completed = null,
  }) {
    return _then(_$_Complete(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Complete implements _Complete {
  const _$_Complete({required this.userId, required this.completed});

  @override
  final String userId;
  @override
  final bool completed;

  @override
  String toString() {
    return 'QuizEvent.complete(userId: $userId, completed: $completed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Complete &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, completed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompleteCopyWith<_$_Complete> get copyWith =>
      __$$_CompleteCopyWithImpl<_$_Complete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bucketId, String userId, bool completed)
        setFields,
    required TResult Function(
            String userId, String question, String answer, int index)
        setAnswer,
    required TResult Function(String userId, bool completed) complete,
  }) {
    return complete(userId, completed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String bucketId, String userId, bool completed)?
        setFields,
    TResult? Function(String userId, String question, String answer, int index)?
        setAnswer,
    TResult? Function(String userId, bool completed)? complete,
  }) {
    return complete?.call(userId, completed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bucketId, String userId, bool completed)? setFields,
    TResult Function(String userId, String question, String answer, int index)?
        setAnswer,
    TResult Function(String userId, bool completed)? complete,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(userId, completed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetFields value) setFields,
    required TResult Function(_SetAnswer value) setAnswer,
    required TResult Function(_Complete value) complete,
  }) {
    return complete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetFields value)? setFields,
    TResult? Function(_SetAnswer value)? setAnswer,
    TResult? Function(_Complete value)? complete,
  }) {
    return complete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetFields value)? setFields,
    TResult Function(_SetAnswer value)? setAnswer,
    TResult Function(_Complete value)? complete,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class _Complete implements QuizEvent {
  const factory _Complete(
      {required final String userId,
      required final bool completed}) = _$_Complete;

  @override
  String get userId;
  bool get completed;
  @override
  @JsonKey(ignore: true)
  _$$_CompleteCopyWith<_$_Complete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuizState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() joined,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? joined,
    TResult? Function()? success,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? joined,
    TResult Function()? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Joined value) joined,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Joined value)? joined,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Joined value)? joined,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizStateCopyWith<$Res> {
  factory $QuizStateCopyWith(QuizState value, $Res Function(QuizState) then) =
      _$QuizStateCopyWithImpl<$Res, QuizState>;
}

/// @nodoc
class _$QuizStateCopyWithImpl<$Res, $Val extends QuizState>
    implements $QuizStateCopyWith<$Res> {
  _$QuizStateCopyWithImpl(this._value, this._then);

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
    extends _$QuizStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'QuizState.initial()';
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
    required TResult Function() loading,
    required TResult Function() joined,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? joined,
    TResult? Function()? success,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? joined,
    TResult Function()? success,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Joined value) joined,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Joined value)? joined,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Joined value)? joined,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements QuizState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$QuizStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'QuizState.loading()';
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
    required TResult Function() loading,
    required TResult Function() joined,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? joined,
    TResult? Function()? success,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? joined,
    TResult Function()? success,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Joined value) joined,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Joined value)? joined,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Joined value)? joined,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements QuizState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_JoinedCopyWith<$Res> {
  factory _$$_JoinedCopyWith(_$_Joined value, $Res Function(_$_Joined) then) =
      __$$_JoinedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_JoinedCopyWithImpl<$Res>
    extends _$QuizStateCopyWithImpl<$Res, _$_Joined>
    implements _$$_JoinedCopyWith<$Res> {
  __$$_JoinedCopyWithImpl(_$_Joined _value, $Res Function(_$_Joined) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Joined implements _Joined {
  const _$_Joined();

  @override
  String toString() {
    return 'QuizState.joined()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Joined);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() joined,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return joined();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? joined,
    TResult? Function()? success,
    TResult? Function(String error)? error,
  }) {
    return joined?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? joined,
    TResult Function()? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (joined != null) {
      return joined();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Joined value) joined,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return joined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Joined value)? joined,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return joined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Joined value)? joined,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (joined != null) {
      return joined(this);
    }
    return orElse();
  }
}

abstract class _Joined implements QuizState {
  const factory _Joined() = _$_Joined;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$QuizStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success();

  @override
  String toString() {
    return 'QuizState.success()';
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
    required TResult Function() loading,
    required TResult Function() joined,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? joined,
    TResult? Function()? success,
    TResult? Function(String error)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? joined,
    TResult Function()? success,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Joined value) joined,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Joined value)? joined,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Joined value)? joined,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements QuizState {
  const factory _Success() = _$_Success;
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
    extends _$QuizStateCopyWithImpl<$Res, _$_Error>
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

class _$_Error implements _Error {
  const _$_Error({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'QuizState.error(error: $error)';
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
    required TResult Function() loading,
    required TResult Function() joined,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? joined,
    TResult? Function()? success,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? joined,
    TResult Function()? success,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Joined value) joined,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Joined value)? joined,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Joined value)? joined,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements QuizState {
  const factory _Error({required final String error}) = _$_Error;

  String get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
