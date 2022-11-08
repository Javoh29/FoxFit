import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppTextStyles {
  const AppTextStyles._();

  static const String fontFamily = 'SEGOEUI';

  static TextStyle body35w4 = TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontSize: 35.sp,
      color: Colors.white);

  static TextStyle body16w4 = TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontSize: 16.sp,
      color: Colors.white);

  static TextStyle body15w4 = TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontSize: 15.sp,
      color: Colors.black);
    static TextStyle body10w4 = TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontSize: 10.sp,
      color: Colors.black);
    
}
