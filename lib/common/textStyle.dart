import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:task_urdu/common/color.dart';



extension TextStyleMyExtension on TextStyle {
  TextStyle get homeHeaderText {
    return TextStyle(
        color: CommonColors().lightGreen, fontSize: 25.sp, fontFamily: font);
  }
  TextStyle get textFieldTitle {
    return TextStyle(
        color: CommonColors().lightGreen, fontSize: 36.sp, fontFamily: font,fontWeight: FontWeight.w400,);
  }
  TextStyle get textFieldTitle1 {
    return TextStyle(
      color: CommonColors().green, fontSize: 36.sp, fontFamily: font,fontWeight: FontWeight.w400,);
  }
  TextStyle get textFieldHint {
    return TextStyle(
      color: CommonColors().scaffoldBackGroundColor, fontSize: 16.sp, fontFamily: font,fontWeight: FontWeight.w400,);
  }
  TextStyle get buttonText {
    return TextStyle(
      color: CommonColors().scaffoldBackGroundColor, fontSize: 22.sp, fontFamily: font,fontWeight: FontWeight.w400,);
  }
  TextStyle get mediumText {
    return TextStyle(
      color: CommonColors().whiteColor, fontSize: 21.sp, fontFamily: font,fontWeight: FontWeight.w400,);
  }

}

String font = "font";

