// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Post welcomeFromJson(String str) => Post.fromJson(json.decode(str));

String welcomeToJson(Post data) => json.encode(data.toJson());

class Post {
  Post({
    this.symptoms,
    this.userId,
  });

  String symptoms;
  String userId;

  factory Post.fromJson(Map<String, dynamic> json) => Post(
    symptoms: json["symptoms"],
    userId: json["user-id"],
  );

  Map<String, dynamic> toJson() => {
    "symptoms": symptoms,
    "user-id": userId,
  };
}
