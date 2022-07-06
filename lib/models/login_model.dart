// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

class LoginModel {
  LoginModel({
    required this.code,
    required this.message,
    required this.data,
  });

  int code;
  String message;
  Data? data;

  factory LoginModel.fromRawJson(String str) => LoginModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    code: json["code"],
    message: json["message"],
    data: json["data"]==null ? null :Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "message": message,
    "data": data==null ? null : data!.toJson(),
  };
}

class Data {
  Data({
    required this.id,
    required this.name,
    required this.email,
    required this.token,
  });

  int id;
  String name;
  String email;
  String token;

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["Id"],
    name: json["Name"],
    email: json["Email"],
    token: json["Token"],
  );

  Map<String, dynamic> toJson() => {
    "Id": id,
    "Name": name,
    "Email": email,
    "Token": token,
  };
}
