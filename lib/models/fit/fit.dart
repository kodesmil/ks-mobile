import 'package:json_annotation/json_annotation.dart';

part 'fit.g.dart';

@JsonSerializable(nullable: false)
class FitDaily {
  DateTime date;
  int steps;
  int userId;
  double distance;
  double points;

  FitDaily({
    this.userId,
    this.steps,
    this.distance,
    this.points,
    this.date,
  });

  factory FitDaily.fromJson(Map<String, dynamic> json) =>
      _$FitDailyFromJson(json);

  Map<String, dynamic> toJson() => _$FitDailyToJson(this);
}
