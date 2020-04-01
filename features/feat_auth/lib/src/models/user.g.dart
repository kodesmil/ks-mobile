// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    name: Name.fromJson(json['name'] as Map<String, dynamic>),
    password: json['password'] as String,
    userName: json['userName'] as String,
    emails: (json['emails'] as List)
        .map((e) => Email.fromJson(e as Map<String, dynamic>))
        .toList(),
    active: json['active'] as bool,
  )..schemas = (json['schemas'] as List).map((e) => e as String).toList();
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'schemas': instance.schemas,
      'name': instance.name,
      'password': instance.password,
      'userName': instance.userName,
      'emails': instance.emails,
      'active': instance.active,
    };

Name _$NameFromJson(Map<String, dynamic> json) {
  return Name(
    familyName: json['familyName'] as String,
    givenName: json['givenName'] as String,
  );
}

Map<String, dynamic> _$NameToJson(Name instance) => <String, dynamic>{
      'familyName': instance.familyName,
      'givenName': instance.givenName,
    };

Email _$EmailFromJson(Map<String, dynamic> json) {
  return Email(
    value: json['value'] as String,
    primary: json['primary'] as bool,
  );
}

Map<String, dynamic> _$EmailToJson(Email instance) => <String, dynamic>{
      'value': instance.value,
      'primary': instance.primary,
    };
