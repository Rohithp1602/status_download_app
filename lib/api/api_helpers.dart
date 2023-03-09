import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:structureproject/api/api_exception.dart';
import 'package:structureproject/models/response_model.dart';

import '../constant/app_strings.dart';
import '../constant/requst_const.dart';

class BaseApiHelper {
  static Future<ResponseItem> postRequest(String requestUrl,
      Map<String, dynamic> requestData, bool passAuthToken) async {
    log("request:" + requestUrl);
    log("headers:" + requestHeader(passAuthToken).toString());
    log("body:" + json.encode(requestData));
    return await http
        .post(Uri.parse(requestUrl),
            body: json.encode(requestData),
            headers: requestHeader(passAuthToken))
        .then((response) => onValue(response))
        .onError((error, stackTrace) => onError(error));
  }

  static Future<ResponseItem> getRequest(String requestUrl) async {
    log("request:" + requestUrl);

    return await http
        .get(Uri.parse(requestUrl))
        .then((response) => baseOnValue(response))
        .onError((error, stackTrace) => onError(error));
  }

  static Future<ResponseItem> uploadFile(String requestUrl,
      http.MultipartFile? profileImage, Map<String, String> requestData,
      {List<http.MultipartFile> multipleFiles = const []}) async {
    var request = http.MultipartRequest("POST", Uri.parse(requestUrl));

    if (profileImage != null) request.files.add(profileImage);
    if (multipleFiles.isNotEmpty) {
      request.files.addAll(multipleFiles);
    }
    request.headers.addAll(requestHeader(true));
    request.fields.addAll(requestData);

    log(request.toString(), name: "REQUEST");
    // log(profileImage!.field.toString());

    log("body:" + json.encode(requestData));
    return await request.send().then((streamedResponse) {
      return http.Response.fromStream(streamedResponse)
          .then((value) => onValue(value));
    }).onError((error, stackTrace) => onError(error));
  }

  String base64Decode(String encoded) {
    return utf8.decode(base64.decode(encoded));
  }

  static Future onValue(http.Response response) async {
    var result;

    final ResponseItem responseData =
        ResponseItem.fromJson(json.decode(response.body));
    bool status = false;
    String message;
    dynamic fullData = responseData.fullData;
    dynamic data = responseData;
    int statusInt = responseData.statusInt;

    log("responseCode: ${response.statusCode}", name: "response");
    if (response.statusCode == 200) {
      message = responseData.message;
      if (responseData.status) {
        status = true;

        data = responseData.data;
      } else {
        log("logout: ${responseData.forceLogout}", name: 'loout');
        if (responseData.forceLogout!) {
          // bool save =
          //     preferences.getBool(SharedPreference.IS_EMAIL_SAVE) ?? false;
          // Get.delete<HomeController>();
          // Get.delete<ProfileController>();
        }
      }
    } else {
      log("response: $data");
      message = "Something went wrong.";
    }
    result = ResponseItem(
        data: data,
        message: message,
        status: status,
        fullData: fullData,
        statusInt: statusInt);
    log("response: {data: ${result.data}, message: $message, status: $status}",
        name: APP_NAME);
    log("message: ${result.message}", name: 'message');

    return result;
  }

  static Future baseOnValue(http.Response response) async {
    ResponseItem result;

    final Map<String, dynamic> responseData = json.decode(response.body);
    bool status = false;
    String message;
    dynamic data = responseData;

    log("responseCode: ${response.statusCode}");
    if (response.statusCode == 200) {
      message = "Ok";
      status = true;
      data = responseData;
    } else {
      log("response: $data", name: 'eroor');
      message = "Something went wrong.";
    }
    result = ResponseItem(data: data, message: message, status: status);
    log("response: {data: ${result.data}, message: $message, status: $status}",
        name: APP_NAME);
    return result;
  }

  static onError(error) {
    log("Error caused: " + error.toString());
    bool status = false;
    String message = "Unsuccessful request";
    if (error is SocketException) {
      message = ResponseException("No internet connection").toString();
    } else if (error is FormatException) {
      message = ResponseException("Something wrong in response.").toString() +
          error.toString();
    }
    return ResponseItem(data: null, message: message, status: status);
  }
}
