import 'package:boilerplate/models/fit/fit.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fit_list.g.dart';

@JsonSerializable(nullable: false)
class FitsList {
  final double points;
  final List<FitDaily> fitDailies;

  FitsList({
    this.points,
    this.fitDailies,
  });

  factory FitsList.fromJson(Map<String, dynamic> json) => _$FitsListFromJson
    (json);

  Map<String, dynamic> toJson() => _$FitsListToJson(this);
}
