import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Location {
  @JsonKey(name: '_id')
  String id;
  String userId;
  DateTime createdAt;
  double lat;
  double lon;
  double accuracy;

  Location({
    this.id,
    this.userId,
    this.lat,
    this.lon,
    this.accuracy,
    this.createdAt,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
