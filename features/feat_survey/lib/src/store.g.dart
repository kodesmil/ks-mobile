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
    _$successAtom.context.enforceReadPolicy(_$successAtom);
    _$successAtom.reportObserved();
    return super.success;
  }

  @override
  set success(bool value) {
    _$successAtom.context.conditionallyRunInAction(() {
      super.success = value;
      _$successAtom.reportChanged();
    }, _$successAtom, name: '${_$successAtom.name}_set');
  }

  final _$loadingAtom = Atom(name: '_SurveyStore.loading');

  @override
  bool get loading {
    _$loadingAtom.context.enforceReadPolicy(_$loadingAtom);
    _$loadingAtom.reportObserved();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.context.conditionallyRunInAction(() {
      super.loading = value;
      _$loadingAtom.reportChanged();
    }, _$loadingAtom, name: '${_$loadingAtom.name}_set');
  }

  final _$questionsAtom = Atom(name: '_SurveyStore.questions');

  @override
  List<Question> get questions {
    _$questionsAtom.context.enforceReadPolicy(_$questionsAtom);
    _$questionsAtom.reportObserved();
    return super.questions;
  }

  @override
  set questions(List<Question> value) {
    _$questionsAtom.context.conditionallyRunInAction(() {
      super.questions = value;
      _$questionsAtom.reportChanged();
    }, _$questionsAtom, name: '${_$questionsAtom.name}_set');
  }

  final _$answersAtom = Atom(name: '_SurveyStore.answers');

  @override
  Map<Question, Answer> get answers {
    _$answersAtom.context.enforceReadPolicy(_$answersAtom);
    _$answersAtom.reportObserved();
    return super.answers;
  }

  @override
  set answers(Map<Question, Answer> value) {
    _$answersAtom.context.conditionallyRunInAction(() {
      super.answers = value;
      _$answersAtom.reportChanged();
    }, _$answersAtom, name: '${_$answersAtom.name}_set');
  }

  final _$saveAnswerAsyncAction = AsyncAction('saveAnswer');

  @override
  Future<dynamic> saveAnswer(Question question, double value) {
    return _$saveAnswerAsyncAction.run(() => super.saveAnswer(question, value));
  }

  final _$sendAnswersAsyncAction = AsyncAction('sendAnswers');

  @override
  Future<dynamic> sendAnswers() {
    return _$sendAnswersAsyncAction.run(() => super.sendAnswers());
  }

  final _$fetchQuestionsAsyncAction = AsyncAction('fetchQuestions');

  @override
  Future<dynamic> fetchQuestions() {
    return _$fetchQuestionsAsyncAction.run(() => super.fetchQuestions());
  }

  final _$closeAsyncAction = AsyncAction('close');

  @override
  Future<dynamic> close() {
    return _$closeAsyncAction.run(() => super.close());
  }
}
