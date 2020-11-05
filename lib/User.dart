import "package:json_annotation/json_annotation.dart";
part 'User.g.dart';

@JsonSerializable()
class User {
  final int userId;
  final int id;
  final String title;
  final bool completed;

   User(int userId, int id, String title, bool completed);
      {
        this.userId;
        this.Id;
        this.title;
        this.completed;
        }

  factory User.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> toJson() => _$UserToJson(this);
  }
}
