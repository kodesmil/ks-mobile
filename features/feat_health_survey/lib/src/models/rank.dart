import 'package:json_annotation/json_annotation.dart';

part 'rank.g.dart';

enum RankType { mood, health }

@JsonSerializable()
class Rank {
  double value;
  RankType type;

  Rank({
    this.value,
    this.type,
  });

  factory Rank.fromJson(Map<String, dynamic> json) => _$RankFromJson(json);

  Map<String, dynamic> toJson() => _$RankToJson(this);
}
