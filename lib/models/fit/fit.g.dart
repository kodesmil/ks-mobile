// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FitDaily _$FitDailyFromJson(Map<String, dynamic> json) {
  return FitDaily(
    userId: json['userId'] as int,
    steps: json['steps'] as int,
    distance: (json['distance'] as num).toDouble(),
    points: (json['points'] as num).toDouble(),
    date: DateTime.parse(json['date'] as String),
  );
}

Map<String, dynamic> _$FitDailyToJson(FitDaily instance) => <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'steps': instance.steps,
      'userId': instance.userId,
      'distance': instance.distance,
      'points': instance.points,
    };
