import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'APIs.dart';

enum MethodType { POST, GET, PUT, DELETE }

const Duration timeoutDuration = Duration(seconds: 60);

class APIHandler {
  static Map<String, String> defaultHeaders = {
    "Content-Type": "application/json",
  };

  // POST method
  static Future<dynamic> post({
    dynamic requestBody,
    required BuildContext context,
    String? endpoint,
    Map<String, String> additionalHeaders = const {},
  }) async {
    return await _hitApi(
      context: context,
      endpoint: endpoint!,
      methodType: MethodType.POST,
      requestBody: requestBody,
    );
  }

  // GET method
  static Future<dynamic> get({
    required String endpoint,
    required BuildContext context,
    dynamic requestBody,
    Map<String, String> additionalHeaders = const {},
  }) async {
    return await _hitApi(
      context: context,
      endpoint: endpoint,
      methodType: MethodType.GET,
      requestBody: requestBody,
    );
  }

  // DELETE method
  static Future<dynamic> delete({
    required String endpoint,
    required BuildContext context,
    Map<String, String> additionalHeaders = const {},
  }) async {
    return await _hitApi(
      context: context,
      endpoint: endpoint,
      methodType: MethodType.DELETE,
    );
  }

  // PUT method
  static Future<dynamic> put({
    required dynamic requestBody,
    required BuildContext context,
    required String endpoint,
    Map<String, String> additionalHeaders = const {},
  }) async {
    return await _hitApi(
      context: context,
      endpoint: endpoint,
      methodType: MethodType.PUT,
      requestBody: requestBody,
    );
  }

  // Generic HTTP method
  static Future<dynamic> _hitApi({
    required BuildContext context,
    required MethodType methodType,
    required String endpoint,
    dynamic requestBody,
  }) async {
    Completer<dynamic> completer = Completer<dynamic>();
    try {
      Uri uri = Uri.parse('${Apis.baseURL}$endpoint');
      Map<String, String> headers = {};
      headers.addAll(defaultHeaders);

      // if (MemoryManagement.getAccessToken() != null && endpoint != APIs.LOGIN && endpoint != APIs.REGISTER) {
      //   headers["Authorization"] = "Bearer " + MemoryManagement.getAccessToken();
      // }

      http.Response response;

      switch (methodType) {
        case MethodType.POST:
          response = await http
              .post(
                uri,
                headers: headers,
                body: jsonEncode(requestBody),
              )
              .timeout(timeoutDuration);
          break;
        case MethodType.GET:
          response = await http
              .get(
                uri,
                headers: headers,
              )
              .timeout(timeoutDuration);
          break;
        case MethodType.PUT:
          response = await http
              .put(
                uri,
                headers: headers,
                body: jsonEncode(requestBody),
              )
              .timeout(timeoutDuration);
          break;
        case MethodType.DELETE:
          response = await http
              .delete(
                uri,
                headers: headers,
              )
              .timeout(timeoutDuration);
          break;
      }

      print("url: ${uri}");
      print("api handler request body: $requestBody");
      print("api handler response body: ${response.body}");

      if (response.statusCode == 200) {
        completer.complete(json.decode(response.body));
      } else {
        completer.completeError(
            "Failed to fetch data. Status code: ${response.statusCode}");
      }
    } on TimeoutException catch (e) {
      completer.completeError("Request timed out: ${e.message}");
    } catch (e) {
      completer.completeError(e.toString());
    }
    return completer.future;
  }

  static String parseError(dynamic response) {
    try {
      var errorMessage = response["message"];
      if (errorMessage == null) {
        return response['error'];
      } else {
        return errorMessage;
      }
    } catch (e) {
      return "An error occurred.";
    }
  }

  static String parseErrorMessage(dynamic response) {
    try {
      return response["message"];
    } catch (e) {
      return "An error occurred.";
    }
  }
}
