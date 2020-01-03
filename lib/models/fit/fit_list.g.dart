// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fit_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FitsList _$FitsListFromJson(Map<String, dynamic> json) {
  return FitsList(
    points: (json['points'] as num).toDouble(),
    fitDailies: (json['fitDailies'] as List)
        .map((e) => FitDaily.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$FitsListToJson(FitsList instance) => <String, dynamic>{
      'points': instance.points,
      'fitDailies': instance.fitDailies,
    };
