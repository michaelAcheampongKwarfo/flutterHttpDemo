// To parse this JSON data, do
//
//     final httpModel = httpModelFromJson(jsonString);

import 'dart:convert';

List<HttpModel> httpModelFromJson(String str) =>
    List<HttpModel>.from(json.decode(str).map((x) => HttpModel.fromJson(x)));

String httpModelToJson(List<HttpModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HttpModel {
  int userId;
  int id;
  String title;
  String body;

  HttpModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory HttpModel.fromJson(Map<String, dynamic> json) => HttpModel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
