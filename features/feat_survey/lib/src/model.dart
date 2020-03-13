import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

enum QuestionType { rank, open }

@JsonSerializable(fieldRename: FieldRename.snake)
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

@JsonSerializable(fieldRename: FieldRename.snake)
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

@JsonSerializable(fieldRename: FieldRename.snake)
class Answer {
  @JsonKey(name: '_id')
  String id;
  String questionId;
  double value;
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
