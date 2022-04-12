// To parse this JSON data, do
//
//     final erroModel = erroModelFromJson(jsonString);

import 'dart:convert';

ErroModel erroModelFromJson(String str) => ErroModel.fromJson(json.decode(str));

String erroModelToJson(ErroModel data) => json.encode(data.toJson());

class ErroModel {
  ErroModel({
    this.error,
  });

  String? error;

  factory ErroModel.fromJson(Map<String, dynamic> json) => ErroModel(
        error: json["error"],
      );

  Map<String, dynamic> toJson() => {
        "error": error,
      };
}
