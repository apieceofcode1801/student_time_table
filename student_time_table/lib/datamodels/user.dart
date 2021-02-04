import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable(explicitToJson: true)
class User {
  String id;
  String username;
  String email;
  String name;
  String phone;
  String avatarURL;
  String className;
  String school;
  int gender;
  List<String> friends;
  List<String> requesters;
  List<String> requests;
  String pushToken;

  User(
      {this.id,
      this.username,
      this.email,
      this.name,
      this.phone,
      this.avatarURL,
      this.className,
      this.school,
      this.gender,
      this.friends,
      this.requesters,
      this.requests});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
