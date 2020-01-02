import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';


@JsonSerializable(nullable: false)
class User {

  List<String> schemas = ['urn:ietf:params:scim:schemas:core:2.0:User'];

  Name name;
  String password;
  String userName;
  List<Email> emails;
  bool active;

  User({
    this.name,
    this.password,
    this.userName,
    this.emails,
    this.active
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable(nullable: false)
class Name {

  String familyName;
  String givenName;

  Name({
    this.familyName,
    this.givenName,
  });

  factory Name.fromJson(Map<String, dynamic> json) =>
      _$NameFromJson(json);

  Map<String, dynamic> toJson() => _$NameToJson(this);
}


@JsonSerializable(nullable: false)
class Email {

  String value;
  bool primary;

  Email({
    this.value,
    this.primary = true,
  });

  factory Email.fromJson(Map<String, dynamic> json) =>
      _$EmailFromJson(json);

  Map<String, dynamic> toJson() => _$EmailToJson(this);
}