import 'package:flutter/material.dart';
import 'package:socialapp/utils/app_color.dart';

class TxtStyle {
  static const String _fontFamily = 'Poppins';
  static const FontWeight _fontWeight = FontWeight.w500;

  static const TextStyle heading = TextStyle(
    fontSize: 20,
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w600,
    color: AppColor.kDarkGrey
  );

  static const TextStyle body = TextStyle(
    fontSize: 16,
    fontFamily: _fontFamily,
    fontWeight: _fontWeight,
  );

  static const TextStyle caption = TextStyle(
    fontSize: 12,
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w400,
  );

  static  TextStyle small = TextStyle(
    fontSize: 10,
    fontFamily: _fontFamily,
    fontWeight: _fontWeight,
    color: AppColor.kGrey
  );
}
