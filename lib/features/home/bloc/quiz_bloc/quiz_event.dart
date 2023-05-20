part of 'quiz_bloc.dart';

@freezed
class QuizEvent with _$QuizEvent {
  const factory QuizEvent.setFields({
    required String bucketId,
    required String userId,
    required bool completed,

  }) = _SetFields;

  const factory QuizEvent.setAnswer({
    required String userId,
    required String question,
    required String answer,
    required int index,
  }) = _SetAnswer;

  const factory QuizEvent.complete({
    required String userId,
    required bool completed,
  }) = _Complete;
}
