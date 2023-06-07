import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constant.dart';

class AppTheme {
  AppTheme._();

  static const cardShadowColor = Color(0xFFd3d1d1);
  static const borderLine = Color(0xffc0c0c0);
  static const double iconSize = 20;
  static ThemeData appTheme = ThemeData(
    iconTheme:  IconThemeData(color: ColorConstant.black900, size: iconSize),
    primaryColor: ColorConstant.primary,
    fontFamily: AppSettings.appName,
    appBarTheme: _appBarTheme,
    textTheme: _textTheme,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    inputDecorationTheme: _inputDecorationTheme,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.white,
    ),
    cupertinoOverrideTheme: appThemeCupertino,
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: ColorConstant.secondary),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          backgroundColor: ColorConstant.whiteA700,
          minimumSize: const Size(double.infinity, 44),
          textStyle: button),
    ),
    primarySwatch: Colors.green,
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
      textStyle:
           TextStyle(color: ColorConstant.black900, fontWeight: FontWeight.w500),
      padding: const EdgeInsets.all(16),
      primary: ColorConstant.black900,
      shadowColor: Colors.black,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      side:  BorderSide(color: ColorConstant.black900, width: 1),
    )),
  );

  static CupertinoThemeData appThemeCupertino =  CupertinoThemeData(
      primaryColor: ColorConstant.primary,
      scaffoldBackgroundColor: ColorConstant.whiteA700,
      textTheme: CupertinoTextThemeData(
          textStyle: bodyText1,
          actionTextStyle: bodyText1,
          dateTimePickerTextStyle: bodyText1,
          navActionTextStyle: bodyText1,
          navLargeTitleTextStyle: bodyText1,
          navTitleTextStyle: bodyText1,
          pickerTextStyle: bodyText1,
          tabLabelTextStyle: bodyText1,
          primaryColor: ColorConstant.whiteA700)
      // textTheme: _textTheme,
      );

  static  final AppBarTheme _appBarTheme = AppBarTheme(
    color: ColorConstant.primary,
    shadowColor: cardShadowColor,
    elevation: 0.0,
    systemOverlayStyle: SystemUiOverlayStyle.light,
    iconTheme: IconThemeData(color: ColorConstant.whiteA700, size: iconSize),
    actionsIconTheme:
        IconThemeData(color: ColorConstant.primary, size: iconSize),
    centerTitle: true,
  );

  static  final InputDecorationTheme _inputDecorationTheme = InputDecorationTheme(
    contentPadding: EdgeInsets.all(8),
    fillColor: Colors.transparent,
    filled: true,
    prefixIconColor: ColorConstant.primary,
  );

  static final inputDecoration = InputDecoration(
    contentPadding: const EdgeInsets.all(8),
    fillColor: Colors.transparent,
    filled: true,
    prefixIconColor: ColorConstant.primary,


  );

  static const _textTheme = TextTheme(
      bodyText1: bodyText1,
      bodyText2: bodyText2,
      button: button,
      subtitle1: subtitle1,
      subtitle2: subtitle2,
      headline5: headline5,
      headline6: headline6);

  static const TextStyle bodyText1 = TextStyle(fontSize: 12);
  static const TextStyle bodyText2 = TextStyle(
      fontSize: 12,
      // letterSpacing: 1,
      fontWeight: FontWeight.w600); // default for Text() widget
  static const TextStyle button = TextStyle(fontSize: 12);
  static const TextStyle subtitle1 = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600); // default for ListTile(title:) widget style
  static const TextStyle subtitle2 = TextStyle(fontSize: 12);
  static const TextStyle headline5 =
      TextStyle(fontSize: 20, fontWeight: FontWeight.normal);
  static const TextStyle headline6 =
      TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
}
