import 'dart:async';

import 'package:feat_auth/data/auth_storage.dart';
import 'package:feat_survey/feat_survey.dart';
import 'package:lib_di/stores/error/error_store.dart';
import 'package:mobx/mobx.dart';

import 'model.dart';

part 'store.g.dart';

class SurveyStore = _SurveyStore with _$SurveyStore;

abstract class _SurveyStore with Store {
  final ErrorStore errorStore;
  final SurveyApi api;
  final AuthStorage authStorage;

  _SurveyStore(
    this.errorStore,
    this.api,
    this.authStorage,
  );

  @observable
  bool success = false;

  @observable
  bool loading = false;

  @observable
  List<Question> questions = [];

  @observable
  Map<Question, Answer> answers = {};

  @action
  Future saveAnswer(Question question, double value) async {
    answers[question] = Answer(
      value: value,
      questionId: question.id,
      type: QuestionType.rank,
    );
  }

  @action
  Future sendAnswers() async {
    answers.values.forEach((answer) async {
      await api.postAnswer(
        await authStorage.accessToken,
        answer,
      );
    });
  }

  @action
  Future fetchQuestions() async {
    questions = await api.getQuestions(
      await authStorage.accessToken,
    );
    print(questions);
  }

  @action
  Future close() async {}
}
