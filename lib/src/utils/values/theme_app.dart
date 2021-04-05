import 'package:flutter/material.dart';
import 'package:portafolio/src/utils/values/responsive.dart';

class ThemeApp {
  Responsive _responsiveApp;

  ThemeApp(this._responsiveApp);

  Color get _mainBackgroundColor => Colors.black;
  Color get _mainTextColor => Colors.white;
  ThemeData get themeApp => ThemeData(
      backgroundColor: _mainBackgroundColor,
      textTheme: TextTheme(
          bodyText1: TextStyle(
              color: _mainTextColor, fontSize: _responsiveApp.bodyText1)));
}
