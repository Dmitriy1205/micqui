import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/constants/exceptions.dart';
import '../../../../data/repositories/question_repository.dart';

part 'quiz_event.dart';

part 'quiz_state.dart';

part 'quiz_bloc.freezed.dart';

class QuizBloc extends Bloc<QuizEvent, QuizState> {
  final QuestionRepository questRepo;

  QuizBloc({required this.questRepo}) : super(const QuizState.initial()) {
    on<QuizEvent>(_mapToState);
  }

  Future<void> _mapToState(QuizEvent event, Emitter<QuizState> emit) async {
    await event.map(
      setFields: (e) => _setFields(e, emit),
      setAnswer: (e) => _setAnswer(e, emit),
      complete: (e) => _complete(e, emit),
    );
  }

  Future<void> _setFields(_SetFields event, Emitter<QuizState> emit) async {
    emit(const QuizState.loading());
    try {
      await questRepo.setFields(
          userId: event.userId, isCompleted: event.completed, bucketId: event.bucketId);
      emit(const QuizState.joined());
    } on BadRequestException catch (e) {
      emit(QuizState.error(error: e.message));
    }
  }

  Future<void> _setAnswer(_SetAnswer event, Emitter<QuizState> emit) async {
    emit(const QuizState.loading());
    try {
      await questRepo.setAnswers(
          userId: event.userId,
          question: event.question,
          answer: event.answer,
          answerIndex: event.index);
      emit(const QuizState.success());
    } on BadRequestException catch (e) {
      emit(QuizState.error(error: e.message));
    }
  }

  Future<void> _complete(_Complete event, Emitter<QuizState> emit) async {
    try {
      await questRepo.completeQuiz(
          isCompleted: event.completed, userId: event.userId);
    } on BadRequestException catch (e) {
      emit(QuizState.error(error: e.message));
    }
  }
}
