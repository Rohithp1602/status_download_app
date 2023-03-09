import 'dart:convert';

ResponseItem responseItemFromJson(String str) =>
    ResponseItem.fromJson(json.decode(str));

String responseItemToJson(ResponseItem data) => json.encode(data.toJson());

class ResponseItem {
  ResponseItem({
    this.data,
    required this.message,
    required this.status,
    this.statusInt = 0,
    this.fullData,
    this.forceLogout,
  });

  dynamic data;
  dynamic fullData;
  String message;
  bool status;
  int statusInt;
  bool? forceLogout = false;

  factory ResponseItem.fromJson(Map<String, dynamic> json) => ResponseItem(
        data: json["data"],
        fullData: json,
        message: json["msg"],
        status: json["status"] == 1,
        statusInt: json["status"],
        forceLogout: json["force_logout"] == 1,
      );

  Map<String, dynamic> toJson() => {
        "data": data,
        "msg": fullData,
        "fullData": message,
        "status": status,
        "statusInt": statusInt,
        "force_logout": forceLogout,
      };
}
