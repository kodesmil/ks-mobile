import 'package:json_annotation/json_annotation.dart';

part 'token.g.dart';

@JsonSerializable(nullable: false)
class Token {
  String accessToken;
  String refreshToken;

  Token({
    this.accessToken,
    this.refreshToken,
  });

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);

  Map<String, dynamic> toJson() => _$TokenToJson(this);
}
