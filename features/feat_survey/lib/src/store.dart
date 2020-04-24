import 'dart:async';

import 'package:crossplat_objectid/crossplat_objectid.dart';
import 'package:feat_survey/feat_survey.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:lib_di/lib_di.dart';
import 'package:mobx/mobx.dart';

import 'model.dart';

part 'store.g.dart';

class SurveyStore = _SurveyStore with _$SurveyStore;

abstract class _SurveyStore with Store {
  final ErrorStore errorStore;
  final SurveyApi api;
  final FirebaseAuth firebaseAuth;

  _SurveyStore(
    this.errorStore,
    this.api,
    this.firebaseAuth,
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
      id: ObjectId().toString(),
      value: value,
      questionId: question.id,
      type: QuestionType.rank,
    );
  }

  @action
  Future sendAnswers() async {
    answers.values.forEach((answer) async {
      await api.postAnswer(
        answer,
      );
    });
    answers.clear();
  }

  @action
  Future fetchQuestions() async {
    questions = await api.getQuestions();
  }

  @action
  Future close() async {}
}
