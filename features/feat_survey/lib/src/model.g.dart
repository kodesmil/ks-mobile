// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransText _$TransTextFromJson(Map<String, dynamic> json) {
  return TransText(
    en: json['en'] as String,
    nb: json['nb'] as String,
  );
}

Map<String, dynamic> _$TransTextToJson(TransText instance) => <String, dynamic>{
      'en': instance.en,
      'nb': instance.nb,
    };

Question _$QuestionFromJson(Map<String, dynamic> json) {
  return Question(
    id: json['_id'] as String,
    text: json['text'] == null
        ? null
        : TransText.fromJson(json['text'] as Map<String, dynamic>),
    type: _$enumDecodeNullable(_$QuestionTypeEnumMap, json['type']),
  );
}

Map<String, dynamic> _$QuestionToJson(Question instance) => <String, dynamic>{
      '_id': instance.id,
      'text': instance.text,
      'type': _$QuestionTypeEnumMap[instance.type],
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$QuestionTypeEnumMap = {
  QuestionType.rank: 'rank',
  QuestionType.open: 'open',
};

Answer _$AnswerFromJson(Map<String, dynamic> json) {
  return Answer(
    id: json['_id'] as String,
    questionId: json['questionId'] as String,
    value: (json['value'] as num)?.toDouble(),
    type: _$enumDecodeNullable(_$QuestionTypeEnumMap, json['type']),
  );
}

Map<String, dynamic> _$AnswerToJson(Answer instance) => <String, dynamic>{
      '_id': instance.id,
      'value': instance.value,
      'questionId': instance.questionId,
      'type': _$QuestionTypeEnumMap[instance.type],
    };
