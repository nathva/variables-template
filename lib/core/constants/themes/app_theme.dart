import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:variables_test/core/constants/values/color_values.dart';
import 'package:variables_test/core/constants/values/width_values.dart';

class AppTheme {
  static ThemeData theme(BuildContext context) {
    final brightness = Theme.of(context).brightness;

    return ThemeData(
      brightness: brightness,
      primaryColor: ColorValues.utilityBrand500(context),
      useMaterial3: false,
      appBarTheme: _CustomThemeValues.appBarTheme(context),
      textTheme: _CustomThemeValues.textTheme(context),
      elevatedButtonTheme: _CustomThemeValues.elevatedButtonTheme(context),
      outlinedButtonTheme: _CustomThemeValues.outlinedButtonTheme(context),
      iconTheme: _CustomThemeValues.iconTheme(context),
      canvasColor: ColorValues.bgSecondary(context),
    );
  }
}

class _CustomThemeValues {
  static TextTheme textTheme(BuildContext context) =>
      GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).copyWith(
        titleLarge: TextStyle(
          color: ColorValues.textPrimary(context),
          fontWeight: FontWeight.w600,
          fontSize: 24,
        ),
        titleSmall: TextStyle(
          color: ColorValues.textPrimary(context),
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
        headlineMedium: TextStyle(
          color: ColorValues.textSecondary(context),
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
        bodyMedium: TextStyle(
          color: ColorValues.textTertiary(context),
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
      );

  // static SwitchThemeData switchThemeData(BuildContext context) =>
  //     SwitchThemeData(
  //       thumbColor: WidgetStateProperty.all(ColorConstants.brandColor),
  //       trackColor: WidgetStateProperty.resolveWith(
  //         (states) => states.contains(WidgetState.selected)
  //             ? ColorConstants.brandColor.shade400
  //             : ColorConstants.grayLight.shade300,
  //       ),
  //       trackOutlineColor:
  //           WidgetStateProperty.all(ColorConstants.grayLight.shade300),
  //     );

  static ElevatedButtonThemeData elevatedButtonTheme(BuildContext context) =>
      ElevatedButtonThemeData(
        style: ButtonStyle(
          shape: WidgetStateProperty.resolveWith(
            (states) {
              return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(WidthValues.radiusMd),
              );
            },
          ),
        ).merge(
          ElevatedButton.styleFrom(
            elevation: 0,
            padding: EdgeInsets.symmetric(
              vertical: WidthValues.spacing2Md,
              horizontal: WidthValues.spacingXl,
            ),
            disabledBackgroundColor: ColorValues.bgDisabled(context),
            backgroundColor: ColorValues.bgBrandSolid(context),
            foregroundColor: ColorValues.fgWhite(context),
            textStyle: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
        ),
      );

  static OutlinedButtonThemeData outlinedButtonTheme(BuildContext context) =>
      OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.symmetric(
            vertical: WidthValues.spacingMd,
            horizontal: WidthValues.spacingXl,
          ),
          foregroundColor: ColorValues.fgBrandPrimaryAlt(context),
          side: BorderSide(
            color: ColorValues.borderBrandAlt(context),
            width: 1.5,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(WidthValues.radiusMd),
          ),
          textStyle: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
      );

  static IconThemeData iconTheme(BuildContext context) => IconThemeData(
        color: ColorValues.utilityBrand500Alt(context),
        size: 24,
      );

  static AppBarTheme appBarTheme(BuildContext context) => AppBarTheme(
        color: ColorValues.bgPrimary(context),
        elevation: 0,
        titleTextStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: ColorValues.textBrandPrimary(context),
        ),
        actionsIconTheme:
            IconThemeData(color: ColorValues.fgQuaternary(context)),
        shadowColor: ColorValues.utilityGray100(context),
      );
}
