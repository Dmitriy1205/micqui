part of 'quiz_bloc.dart';

@freezed
class QuizState with _$QuizState {
  const factory QuizState.initial() = _Initial;
  const factory QuizState.loading() = _Loading;
  const factory QuizState.joined() = _Joined;
  const factory QuizState.success() = _Success;
  const factory QuizState.error({required String error}) = _Error;
}
