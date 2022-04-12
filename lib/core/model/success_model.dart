// To parse this JSON data, do
//
//     final successModel = successModelFromJson(jsonString);

import 'dart:convert';

SuccessModel successModelFromJson(String str) => SuccessModel.fromJson(json.decode(str));

String successModelToJson(SuccessModel data) => json.encode(data.toJson());

class SuccessModel {
    SuccessModel({
        this.id,
        this.token,
    });

    int? id;
    String? token;

    factory SuccessModel.fromJson(Map<String, dynamic> json) => SuccessModel(
        id: json["id"],
        token: json["token"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "token": token,
    };
}
