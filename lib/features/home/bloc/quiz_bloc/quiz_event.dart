part of 'quiz_bloc.dart';

@freezed
class QuizEvent with _$QuizEvent {
  const factory QuizEvent.setFields({
    required String bucketId,
    required String userId,
    required String userName,
    required bool completed,

  }) = _SetFields;

  const factory QuizEvent.setAnswer({
    required String bucketId,
    required String userEmail,
    required String question,
    required String answer,
    required int index,
  }) = _SetAnswer;

  const factory QuizEvent.complete({
    required String bucketId,
    required String userEmail,
    required bool completed,
  }) = _Complete;
}
