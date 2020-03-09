import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

enum QuestionType { rank, open }

@JsonSerializable()
class TransText {
  String en;
  String nb;

  TransText({
    this.en,
    this.nb,
  });

  factory TransText.fromJson(Map<String, dynamic> json) =>
      _$TransTextFromJson(json);

  Map<String, dynamic> toJson() => _$TransTextToJson(this);
}

@JsonSerializable()
class Question {
  @JsonKey(name: '_id')
  String id;
  TransText text;
  QuestionType type;

  Question({
    this.id,
    this.text,
    this.type,
  });

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionToJson(this);
}

@JsonSerializable()
class Answer {
  @JsonKey(name: '_id')
  String id;
  double value;
  String questionId;
  QuestionType type;

  Answer({
    this.id,
    this.questionId,
    this.value,
    this.type,
  });

  factory Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);

  Map<String, dynamic> toJson() => _$AnswerToJson(this);
}
