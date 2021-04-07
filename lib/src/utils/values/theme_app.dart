import 'package:flutter/material.dart';
import 'package:portafolio/src/utils/values/responsive.dart';

class ThemeApp {
  Responsive _responsiveApp;

  ThemeApp(this._responsiveApp);

  Color get _mainBackgroundColor => Colors.grey[900];
  Color get _mainTextColor => Colors.white;
  Color get _secundaryTextColor => Colors.grey;
  ThemeData get themeApp => ThemeData(
      backgroundColor: _mainBackgroundColor, textTheme: getTextTheme());

  getTextTheme() {
    return TextTheme(
      headline1:
          TextStyle(color: _mainTextColor, fontSize: _responsiveApp.headline1),
      headline2: TextStyle(
          color: _secundaryTextColor, fontSize: _responsiveApp.headline2),
      headline3:
          TextStyle(color: _mainTextColor, fontSize: _responsiveApp.headline3),
      headline4:
          TextStyle(color: _mainTextColor, fontSize: _responsiveApp.headline4),
      bodyText1:
          TextStyle(color: _mainTextColor, fontSize: _responsiveApp.bodyText1),
      bodyText2:
          TextStyle(color: _mainTextColor, fontSize: _responsiveApp.bodyText2),
    );
  }
}
