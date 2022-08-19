import 'dart:convert';

List<DataTimeModel> dataTimeModelFromJson(String str) =>
    List<DataTimeModel>.from(
        json.decode(str).map((x) => DataTimeModel.fromJson(x)));

String dataTimeModelToJson(List<DataTimeModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DataTimeModel {
  DataTimeModel({
    required this.id,
    required this.name,
  });

  int id;
  String name;

  factory DataTimeModel.fromJson(Map<String, dynamic> json) => DataTimeModel(
        id: json["id"] ?? 0,
        name: json["name"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
