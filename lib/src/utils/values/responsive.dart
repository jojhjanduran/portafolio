import 'package:flutter/material.dart';
import '../responsive_size.dart';

class Responsive {
  BuildContext _context;
  MediaQueryData _mediaQueryData;
  double _textScaleFactor;
  double _scaleFactor;

  Responsive(this._context) {
    _mediaQueryData = MediaQuery.of(_context);
    _textScaleFactor = _mediaQueryData.textScaleFactor;
    _scaleFactor = isMobile(_context)
        ? 1
        : isTablet(_context)
            ? 1.1
            : 1.3;
  }

  get width => _mediaQueryData.size.width;
  get height => _mediaQueryData.size.height;
  get _scaleWidth => (width * _scaleFactor) / width;
  get _scaleHeight => (height * _scaleFactor) / height;

  setWidth(int width) => width * _scaleWidth;
  setHeight(int height) => height * _scaleHeight;
}