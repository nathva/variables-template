import 'package:flutter/material.dart';

class ColorConstants {
  static const MaterialColor brandColor =
      MaterialColor(_brandColorPrimaryValue, <int, Color>{
    50: Color(0xFFBAEBF6),
    100: Color(0xFFA6E0ED),
    200: Color(0xFF7CC9DB),
    300: Color(0xFF53B3CA),
    400: Color(0xFF299CB8),
    500: Color(_brandColorPrimaryValue),
    600: Color(0xFF006B85),
    700: Color(0xFF005064),
    800: Color(0xFF003642),
    900: Color(0xFF001B21),
  });

  static const int _brandColorPrimaryValue = 0xFF0086A6;

  static const MaterialColor secondaryColor =
      MaterialColor(_secondaryColorValue, <int, Color>{
    50: Color(0xFFB0D7F5),
    100: Color(0xFF9DC8EB),
    200: Color(0xFF76ACD7),
    300: Color(0xFF4E8FC3),
    400: Color(0xFF2773AF),
    500: Color(_secondaryColorValue),
    600: Color(0xFF00457C),
    700: Color(0xFF00345D),
    800: Color(0xFF00223E),
    900: Color(0xFF00111F),
  });

  static const int _secondaryColorValue = 0xFF00569B;

  static const MaterialColor grayLight =
      MaterialColor(_grayLightPrimaryValue, <int, Color>{
    50: Color(0xFFF9FAFB),
    100: Color(0xFFF2F4F7),
    200: Color(0xFFEAECF0),
    300: Color(0xFFD0D5DD),
    400: Color(0xFF98A2B3),
    500: Color(_grayLightPrimaryValue),
    600: Color(0xFF475467),
    700: Color(0xFF344054),
    800: Color(0xFF1D2939),
    900: Color(0xFF101828),
  });

  static const int _grayLightPrimaryValue = 0xFF667085;

  static const MaterialColor grayDark =
      MaterialColor(_grayDarkPrimaryValue, <int, Color>{
    50: Color(0xFFF9FAFB),
    100: Color(0xFFF2F4F7),
    200: Color(0xFFEAECF0),
    300: Color(0xFFD0D5DD),
    400: Color(0xFF94969C),
    500: Color(_grayDarkPrimaryValue),
    600: Color(0xFF62646B),
    700: Color(0xFF344054),
    800: Color(0xFF1D2939),
    900: Color(0xFF101828),
  });

  static const int _grayDarkPrimaryValue = 0xFF85888D;

  static const MaterialColor success =
      MaterialColor(_successPrimaryValue, <int, Color>{
    50: Color(0xFFE3F6ED),
    100: Color(0xFFB8E9D2),
    200: Color(0xFF89DBB5),
    300: Color(0xFF59CD97),
    400: Color(0xFF36C280),
    500: Color(_successPrimaryValue),
    600: Color(0xFF10B062),
    700: Color(0xFF0DA757),
    800: Color(0xFF0A9F4D),
    900: Color(0xFF05903C),
  });
  static const int _successPrimaryValue = 0xFF12B76A;

  static const MaterialColor warning =
      MaterialColor(_warningPrimaryValue, <int, Color>{
    50: Color(0xFFFEF2E1),
    100: Color(0xFFFDDEB5),
    200: Color(0xFFFBC884),
    300: Color(0xFFF9B153),
    400: Color(0xFFF8A12E),
    500: Color(_warningPrimaryValue),
    600: Color(0xFFF68808),
    700: Color(0xFFF57D06),
    800: Color(0xFFF37305),
    900: Color(0xFFF16102),
  });
  static const int _warningPrimaryValue = 0xFFF79009;

  static const MaterialColor error =
      MaterialColor(_errorPrimaryValue, <int, Color>{
    50: Color(0xFFFDE9E7),
    100: Color(0xFFFBC7C3),
    200: Color(0xFFF8A29C),
    300: Color(0xFFF57C74),
    400: Color(0xFFF26056),
    500: Color(_errorPrimaryValue),
    600: Color(0xFFEE3E32),
    700: Color(0xFFEC352B),
    800: Color(0xFFE92D24),
    900: Color(0xFFE51F17),
  });
  static const int _errorPrimaryValue = 0xFFF04438;
}
