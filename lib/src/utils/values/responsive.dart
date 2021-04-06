import 'package:flutter/material.dart';
import 'package:portafolio/src/utils/values/edge_insects.dart';
import '../responsive_size.dart';

class Responsive {
  BuildContext _context;
  MediaQueryData _mediaQueryData;
  double _textScaleFactor;
  double _scaleFactor;
  EdgeInsectsApp edgeInsetsApp;

  Responsive(this._context) {
    _mediaQueryData = MediaQuery.of(_context);
    _textScaleFactor = _mediaQueryData.textScaleFactor;
    _scaleFactor = isMobile(_context)
        ? 1
        : isTablet(_context)
            ? 1.1
            : 1.3;
    edgeInsetsApp = EdgeInsectsApp(this);
  }

  get width => _mediaQueryData.size.width;
  get height => _mediaQueryData.size.height;
  get _scaleWidth => (width * _scaleFactor) / width;
  get _scaleHeight => (height * _scaleFactor) / height;

  //Text Size
  get headline1 => setFontSize(25);
  get headline2 => setFontSize(20);
  get headline3 => setFontSize(20);
  get bodyText1 => setFontSize(12);

  //profileImage
  get containerWidth => setWidth(200);
  get containerHeight => setHeight(300);

  setWidth(int width) => width * _scaleWidth;
  setHeight(int height) => height * _scaleHeight;
  setFontSize(int fontSize) => setWidth(fontSize) * _textScaleFactor;
}
