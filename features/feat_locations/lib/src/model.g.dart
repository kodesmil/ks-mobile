// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) {
  return Location(
    id: json['_id'] as String,
    userId: json['user_id'] as String,
    lat: (json['lat'] as num)?.toDouble(),
    lon: (json['lon'] as num)?.toDouble(),
    accuracy: (json['accuracy'] as num)?.toDouble(),
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
  );
}

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      '_id': instance.id,
      'user_id': instance.userId,
      'created_at': instance.createdAt?.toIso8601String(),
      'lat': instance.lat,
      'lon': instance.lon,
      'accuracy': instance.accuracy,
    };
