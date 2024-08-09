import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextValues {
  // -------------------------------------------------
  // <---------------- Font sizing ------------------>
  // -------------------------------------------------

  /// Text size for small text (12)
  static const double textXs = 12;

  /// Text size for small text (14)
  static const double textSm = 14;

  /// Text size for medium text (16)
  static const double textMd = 16;

  /// Text size for large text (18)
  static const double textLg = 18;

  /// Text size for extra large text (20)
  static const double textXl = 20;

  /// Text size for extra small display text / title (24)
  static const double displayXs = 24;

  /// Text size for small display text / title (30)
  static const double displaySm = 30;

  /// Text size for medium display text / title (36)
  static const double displayMd = 36;

  /// Text size for large display text / title (48)
  static const double displayLg = 48;

  /// Text size for extra large display text / title (60)
  static const double displayXl = 60;

  /// Text size for extra extra large display text / title (72)
  static const double display2xl = 72;

  // -------------------------------------------------
  // <---------------- Font family ------------------>
  // -------------------------------------------------

  /// Font family for all text inside the app
  static TextTheme fontFamily(BuildContext context) =>
      GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme);

  // -------------------------------------------------
  // <---------------- Font weight ------------------>
  // -------------------------------------------------

  /// Light font weight (400)
  static const regular = FontWeight.w400;

  /// Medium font weight (500)
  static const medium = FontWeight.w500;

  /// Semibold font weight (600)
  static const semibold = FontWeight.w600;

  /// Bold font weight (700)
  static const bold = FontWeight.w700;
}
