part of 'quiz_bloc.dart';

@freezed
class QuizEvent with _$QuizEvent {
  const factory QuizEvent.setFields({required String userId}) = _SetFields;
  const factory QuizEvent.setAnswer({required String userId,
    required String question,
    required String answer,
  required int index,}) = _SetAnswer;
}
