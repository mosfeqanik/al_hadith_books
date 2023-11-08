import 'package:flutter/cupertino.dart';

import 'colors.dart';

class MyTextStyle {
  static regularStylePrimary(
      {Color fontColor = MyColors.primaryTextColor,
      double fontSize = 14,
      FontWeight fontWeight = FontWeight.w600}) {
    return TextStyle(
        fontFamily: "Kalpurush",
        color: fontColor,
        fontSize: fontSize,
        fontWeight: fontWeight);
  }

  static regularStyleSecondary(
      {Color fontColor = MyColors.secondaryTextColor,
      double fontSize = 14,
      FontWeight fontWeight = FontWeight.normal}) {
    return TextStyle(
        fontFamily: "Kalpurush",
        color: fontColor,
        fontSize: fontSize,
        fontWeight: fontWeight);
  }

  static regularStyleBlue(
      {Color fontColor = MyColors.secondaryTextColor,
      double fontSize = 14,
      FontWeight fontWeight = FontWeight.bold}) {
    return TextStyle(
        fontFamily: "Kalpurush",
        color: fontColor,
        fontSize: fontSize,
        fontWeight: fontWeight);
  }
}
