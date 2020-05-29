// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SurveyStore on _SurveyStore, Store {
  final _$successAtom = Atom(name: '_SurveyStore.success');

  @override
  bool get success {
    _$successAtom.reportRead();
    return super.success;
  }

  @override
  set success(bool value) {
    _$successAtom.reportWrite(value, super.success, () {
      super.success = value;
    });
  }

  final _$loadingAtom = Atom(name: '_SurveyStore.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$questionsAtom = Atom(name: '_SurveyStore.questions');

  @override
  List<Question> get questions {
    _$questionsAtom.reportRead();
    return super.questions;
  }

  @override
  set questions(List<Question> value) {
    _$questionsAtom.reportWrite(value, super.questions, () {
      super.questions = value;
    });
  }

  final _$answersAtom = Atom(name: '_SurveyStore.answers');

  @override
  Map<Question, Answer> get answers {
    _$answersAtom.reportRead();
    return super.answers;
  }

  @override
  set answers(Map<Question, Answer> value) {
    _$answersAtom.reportWrite(value, super.answers, () {
      super.answers = value;
    });
  }

  final _$saveAnswerAsyncAction = AsyncAction('_SurveyStore.saveAnswer');

  @override
  Future<dynamic> saveAnswer(Question question, double value) {
    return _$saveAnswerAsyncAction.run(() => super.saveAnswer(question, value));
  }

  final _$sendAnswersAsyncAction = AsyncAction('_SurveyStore.sendAnswers');

  @override
  Future<dynamic> sendAnswers() {
    return _$sendAnswersAsyncAction.run(() => super.sendAnswers());
  }

  final _$fetchQuestionsAsyncAction =
      AsyncAction('_SurveyStore.fetchQuestions');

  @override
  Future<dynamic> fetchQuestions() {
    return _$fetchQuestionsAsyncAction.run(() => super.fetchQuestions());
  }

  final _$closeAsyncAction = AsyncAction('_SurveyStore.close');

  @override
  Future<dynamic> close() {
    return _$closeAsyncAction.run(() => super.close());
  }

  @override
  String toString() {
    return '''
success: ${success},
loading: ${loading},
questions: ${questions},
answers: ${answers}
    ''';
  }
}
