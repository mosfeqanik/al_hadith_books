import 'dart:core';

import 'api_endpoints.dart';

class ApiConstant {
  // static const String baseUrl = "http://114.130.119.209/api/v1"; //live
  static const String baseUrl = APIs.baseUrl; //local
  static const String imageBaseUrl = APIs.mainBaseUrl;
  //static const String paymentBaseUrl = "http://192.168.10.48:4001/api/v1";
  static const String paymentBaseUrl = APIs.mainBaseUrl;
  static const String nidUrlTest =
      "https://api.porichoybd.com/sandbox-api/v2/verifications/autofill";
  static const String nidUrlLive =
      "https://api.porichoybd.com/api/v2/verifications/autofill";
  static const String accept = "Accept";
  static const String acceptValue = "application/json";
  static const String contentType = "Content-Type";
  static const String contentTypeValue = "application/json";
  //static const String userLoginToken = "userLoginToken";
  static const String authorization = "Authorization";

  static const String showDashboard = "showDashboard";
  static const String loginToken = "loginToken";
}
