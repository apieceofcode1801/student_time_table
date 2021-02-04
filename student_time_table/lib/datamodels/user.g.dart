// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    id: json['id'] as String,
    username: json['username'] as String,
    email: json['email'] as String,
    name: json['name'] as String,
    phone: json['phone'] as String,
    avatarURL: json['avatarURL'] as String,
    className: json['className'] as String,
    school: json['school'] as String,
    gender: json['gender'] as int,
    friends: (json['friends'] as List)?.map((e) => e as String)?.toList(),
    requesters: (json['requesters'] as List)?.map((e) => e as String)?.toList(),
    requests: (json['requests'] as List)?.map((e) => e as String)?.toList(),
  )..pushToken = json['pushToken'] as String;
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'name': instance.name,
      'phone': instance.phone,
      'avatarURL': instance.avatarURL,
      'className': instance.className,
      'school': instance.school,
      'gender': instance.gender,
      'friends': instance.friends,
      'requesters': instance.requesters,
      'requests': instance.requests,
      'pushToken': instance.pushToken,
    };
