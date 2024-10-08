import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/utils/colors.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,
  inputDecorationTheme: const InputDecorationTheme(
    fillColor: Appcolors.lightBgColor,
    filled: true,
    enabledBorder: InputBorder.none,
    prefixIconColor: Appcolors.lightLabelColor,
    labelStyle: TextStyle(),
    hintStyle: TextStyle(),
  ),
  colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Appcolors.lightDivColor,
      onPrimary: Appcolors.lightFontColor,
      secondary: Appcolors.lightLabelColor,
      onSecondary: Appcolors.lightLabelColor,
      error: Appcolors.lightDivColor,
      onError: Appcolors.lightDivColor,
      surface: Appcolors.lightDivColor,
      onSurface: Appcolors.lightDivColor),
  textTheme: TextTheme(
    headlineLarge: TextStyle(
        fontFamily: 'interSemiBold',
        fontSize: 24.sp,
        color: Appcolors.lightFontColor,
        fontWeight: FontWeight.w600),
    headlineMedium: TextStyle(
        fontFamily: 'interMedium',
        fontSize: 20.sp,
        color: Appcolors.lightFontColor,
        fontWeight: FontWeight.w600),
    headlineSmall: TextStyle(
        fontSize: 15.sp,
        fontFamily: 'interMedium',
        color: Appcolors.lightFontColor,
        fontWeight: FontWeight.w600),
    bodyLarge: TextStyle(
        fontSize: 17.sp,
        fontFamily: 'interMedium',
        color: Appcolors.lightFontColor,
        fontWeight: FontWeight.w600),
    bodySmall: TextStyle(
        fontSize: 16.sp,
        fontFamily: 'interRegular',
        color: Appcolors.lightFontColor,
        fontWeight: FontWeight.w600),
    labelSmall: TextStyle(
        fontSize: 13.sp,
        fontFamily: 'interRegular',
        color: Appcolors.lightFontColor,
        fontWeight: FontWeight.w600),
  ),
);
final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
  inputDecorationTheme: const InputDecorationTheme(
    fillColor: Appcolors.lightBgColor,
    filled: true,
    enabledBorder: InputBorder.none,
    prefixIconColor: Appcolors.lightLabelColor,
    labelStyle: TextStyle(),
    hintStyle: TextStyle(),
  ),
  colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: Appcolors.darkDivColor,
      onPrimary: Appcolors.darkFontColor,
      secondary: Appcolors.darkLabelColor,
      onSecondary: Appcolors.darkLabelColor,
      error: Appcolors.darkBgColor,
      onError: Appcolors.darkDivColor,
      surface: Appcolors.darkDivColor,
      onSurface: Appcolors.darkDivColor),
  textTheme: TextTheme(
    headlineLarge: TextStyle(
        fontSize: 24.sp,
        fontFamily: 'interSemiBold',
        color: Appcolors.darkFontColor,
        fontWeight: FontWeight.w600),
    headlineMedium: TextStyle(
        fontSize: 20.sp,
        fontFamily: 'interMedium',
        color: Appcolors.darkFontColor,
        fontWeight: FontWeight.w600),
    headlineSmall: TextStyle(
        fontSize: 15.sp,
        fontFamily: 'interMedium',
        color: Appcolors.darkLabelColor,
        fontWeight: FontWeight.w600),
    bodyLarge: TextStyle(
        fontSize: 17.sp,
        fontFamily: 'interMedium',
        color: Appcolors.darkFontColor,
        fontWeight: FontWeight.w600),
    bodySmall: TextStyle(
        fontSize: 16.sp,
        fontFamily: 'interMedium',
        color: Appcolors.darkFontColor,
        fontWeight: FontWeight.w600),
    labelSmall: TextStyle(
        fontSize: 13.sp,
        fontFamily: 'interRegular',
        color: Appcolors.darkFontColor,
        fontWeight: FontWeight.w600),
  ),
);
