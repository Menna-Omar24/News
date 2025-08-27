import 'package:flutter/material.dart';
import 'package:news/core/utils/app_color.dart';

abstract class AppTheme{
  static ThemeData isLightTheme =ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: AppColor.blue),
    scaffoldBackgroundColor: AppColor.white,
    fontFamily: 'Schibsted Grotesk',
  );
}