// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:variables_test/core/constants/color_constants.dart';

class ColorValues {
  // -------------------------------------------------------
  // <---------------- Text color values ------------------>
  // -------------------------------------------------------
  // ----- Use text color variables to manage all text -----
  // ------- fill colors in your designs across light ------
  // ------------------- and dark modes. -------------------
  // -------------------------------------------------------

  static final _textPrimary = _ColorScheme(
    light: ColorConstants.grayLight.shade900,
    dark: ColorConstants.grayLight.shade50,
    onBrandLight: Colors.white,
    onBrandDark: ColorConstants.grayLight[50],
  );

  static final _textSecondary = _ColorScheme(
    light: ColorConstants.grayLight.shade700,
    dark: ColorConstants.grayLight.shade300,
    onBrandLight: ColorConstants.brandColor.shade200,
    onBrandDark: ColorConstants.grayDark.shade300,
  );

  static final _textTertiary = _ColorScheme(
    light: ColorConstants.grayLight.shade600,
    dark: ColorConstants.grayDark.shade400,
    onBrandLight: ColorConstants.brandColor.shade200,
    onBrandDark: ColorConstants.grayDark.shade400,
  );

  static final _textQuaternary = _ColorScheme(
    light: ColorConstants.grayLight,
    dark: ColorConstants.grayDark.shade400,
    onBrandLight: ColorConstants.brandColor.shade300,
    onBrandDark: ColorConstants.grayDark.shade400,
  );

  static final _textDisabled = _ColorScheme(
    light: ColorConstants.grayLight.shade400,
    dark: ColorConstants.grayDark.shade400,
  );

  static final _textBrandPrimary = _ColorScheme(
    light: ColorConstants.brandColor.shade900,
    dark: ColorConstants.grayDark.shade50,
  );

  static final _textBrandSecondary = _ColorScheme(
    light: ColorConstants.brandColor.shade700,
    dark: ColorConstants.grayDark.shade300,
  );

  static final _textBrandTertiary = _ColorScheme(
    light: ColorConstants.brandColor.shade600,
    dark: ColorConstants.grayDark.shade400,
    altLight: ColorConstants.brandColor.shade600,
    altDark: ColorConstants.grayDark.shade400,
  );

  static final _textErrorPrimary = _ColorScheme(
    light: ColorConstants.error.shade600,
    dark: ColorConstants.error.shade400,
  );

  static final _textWarningPrimary = _ColorScheme(
    light: ColorConstants.warning.shade600,
    dark: ColorConstants.warning.shade400,
  );

  static final _textSuccessPrimary = _ColorScheme(
    light: ColorConstants.success.shade600,
    dark: ColorConstants.success.shade400,
  );

  static final _textWhite = _ColorScheme(
    light: Colors.white,
    dark: Colors.white,
  );

  // TODO: ask about this. Should on-brand/alt/subtle colors be in the same
  // TODO: function? or do I keep it separate?
  /// Primary text such as page headings.
  static Color textPrimary(BuildContext context, {bool? onBrand}) =>
      onBrand ?? false
          ? _textPrimary.getOnBrandColor(context)
          : _textPrimary.getColor(context);

  /// Primary text when used on solid brand color backgrounds.
  /// Commonly used for brand theme website sections (e.g. CTA sections).
  static Color textPrimaryOnBrand(BuildContext context) =>
      _textPrimary.getOnBrandColor(context);

  /// Secondary text such as labels and section headings.
  static Color textSecondary(BuildContext context) =>
      _textSecondary.getColor(context);

  /// Secondary text when used on solid brand color backgrounds.
  /// Commonly used for brand theme website sections (e.g. CTA sections).
  static Color textSecondaryOnBrand(BuildContext context) =>
      _textSecondary.getOnBrandColor(context);

  /// Tertiary text for such as supporting text and paragraph text.
  static Color textTertiary(BuildContext context) =>
      _textTertiary.getColor(context);

  /// Tertiary text when used on solid brand color backgrounds.
  /// Commonly used for brand theme website sections (e.g. CTA sections).
  static Color textTertiaryOnBrand(BuildContext context) =>
      _textTertiary.getOnBrandColor(context);

  /// Quarterary text for more subtle and lower-contrast text, such as footer
  ///  column headings.
  static Color textQuaternary(BuildContext context) =>
      _textQuaternary.getColor(context);

  /// Quarterary text when used on solid brand color backgrounds.
  /// Commonly used for brand theme website sections (e.g. CTA sections).
  static Color textQuaternaryOnBrand(BuildContext context) =>
      _textQuaternary.getOnBrandColor(context);

  /// Default color for disabled text such as disabled input fields or buttons.
  /// This can be changed to gray-400, but gray-500 is higher contrast
  /// and more accessible.
  static Color textDisabled(BuildContext context) =>
      _textDisabled.getColor(context);

  /// Primary brand text useful for headings (e.g. cards in pricing page
  /// headers).
  static Color textBrandPrimary(BuildContext context) =>
      _textBrandPrimary.getColor(context);

  /// Secondary brand text for accented text, highlights, and subheadings
  /// (e.g. subheadings in blog post cards).
  static Color textBrandSecondary(BuildContext context) =>
      _textBrandSecondary.getColor(context);

  /// Tertiary brand text for lighter accented text and highlights
  /// (e.g. numbers in metric cards).
  static Color textBrandTertiary(BuildContext context) =>
      _textBrandTertiary.getColor(context);

  /// An alternative to tertiary brand text that is lighter in dark mode
  /// (e.g. numbers in metric cards).
  static Color textBrandTertiaryAlt(BuildContext context) =>
      _textBrandTertiary.getAltColor(context);

  /// Default error state semantic text color (e.g. input field error states.
  static Color textErrorPrimary(BuildContext context) =>
      _textErrorPrimary.getColor(context);

  /// Default warning state semantic text color.
  static Color textWarningPrimary(BuildContext context) =>
      _textWarningPrimary.getColor(context);

  /// Default success state semantic text color.
  static Color textSuccessPrimary(BuildContext context) =>
      _textSuccessPrimary.getColor(context);

  /// White text color regardless of color mode.
  static Color textWhite(BuildContext context) => _textWhite.getColor(context);

  // ---------------------------------------------------------
  // <---------------- Border color values ------------------>
  // ---------------------------------------------------------
  // ---- Use border color variables to manage all stroke ----
  // -- colors in your designs across light and dark modes. --
  // ---------------------------------------------------------

  static final _borderPrimary = _ColorScheme(
    light: ColorConstants.grayLight.shade300,
    dark: ColorConstants.grayDark.shade700,
  );

  static final _borderSecondary = _ColorScheme(
    light: ColorConstants.grayLight.shade200,
    dark: ColorConstants.grayDark.shade800,
  );

  static final _borderTertiary = _ColorScheme(
    light: ColorConstants.grayLight.shade100,
    dark: ColorConstants.grayDark.shade800,
  );

  static final _borderDisabled = _ColorScheme(
    light: ColorConstants.grayLight.shade300,
    dark: ColorConstants.grayDark.shade700,
    subtleLight: ColorConstants.grayLight.shade200,
    subtleDark: ColorConstants.grayDark.shade800,
  );

  static final _borderBrand = _ColorScheme(
    light: ColorConstants.brandColor.shade300,
    dark: ColorConstants.brandColor.shade400,
    altLight: ColorConstants.brandColor.shade300,
    altDark: ColorConstants.grayDark.shade100,
  );

  static final _borderBrandSolid = _ColorScheme(
    light: ColorConstants.brandColor.shade600,
    dark: ColorConstants.brandColor,
    altLight: ColorConstants.brandColor.shade600,
    altDark: ColorConstants.grayDark.shade700,
  );

  static final _borderError = _ColorScheme(
    light: ColorConstants.error.shade300,
    dark: ColorConstants.error.shade400,
  );

  static final _borderErrorSolid = _ColorScheme(
    light: ColorConstants.error.shade600,
    dark: ColorConstants.error,
  );

  static final _borderWarning = _ColorScheme(
    light: ColorConstants.warning.shade300,
    dark: ColorConstants.warning.shade400,
  );

  static final _borderWarningSolid = _ColorScheme(
    light: ColorConstants.warning.shade600,
    dark: ColorConstants.warning,
  );

  static final _borderSuccess = _ColorScheme(
    light: ColorConstants.success.shade300,
    dark: ColorConstants.success.shade400,
  );

  static final _borderSuccessSolid = _ColorScheme(
    light: ColorConstants.success.shade600,
    dark: ColorConstants.success,
  );

  /// High contrast borders. These are used for components such as input fields,
  ///  button groups, and checkboxes.
  static Color borderPrimary(BuildContext context) =>
      _borderPrimary.getColor(context);

  /// Medium contrast borders. This is the most commonly used border color and
  /// is the default for most components (such as file uploaders), cards
  /// (such as tables), and content dividers.
  static Color borderSecondary(BuildContext context) =>
      _borderSecondary.getColor(context);

  /// Low contrast borders useful for very subtle dividers and borders such as
  /// line and bar chart axis dividers.
  static Color borderTertiary(BuildContext context) =>
      _borderTertiary.getColor(context);

  /// Default disabled border color for disabled states in components such as
  /// input fields and checkboxes.
  static Color borderDisabled(BuildContext context) =>
      _borderDisabled.getColor(context);

  /// A more subtle (lower contrast) alternative for disabled borders such as
  /// disabled buttons.
  static Color borderDisabledSubtle(BuildContext context) =>
      _borderDisabled.getSubtleColor(context);

  /// Default brand border color. Useful for active states in components such
  /// as input fields.
  static Color borderBrand(BuildContext context) =>
      _borderBrand.getColor(context);

  /// Alternative brand border color. Useful for active states in components.
  static Color borderBrandAlt(BuildContext context) =>
      _borderBrand.getAltColor(context);

  /// Default solid (dark) brand border color. Useful for active states in
  /// components such as selected checkboxes and checkbox groups.
  static Color borderBrandSolid(BuildContext context) =>
      _borderBrandSolid.getColor(context);

  /// An alternative for solid (dark) brand border color that switches to gray
  /// when in dark mode. Useful for components such as metric items and content
  /// quotes.
  static Color borderBrandSolidAlt(BuildContext context) =>
      _borderBrandSolid.getAltColor(context);

  /// Default error state semantic border color. Useful for error states in
  /// components such as input fields.
  static Color borderError(BuildContext context) =>
      _borderError.getColor(context);

  /// Default solid (dark) error state semantic border color. Useful for error
  /// states in components such as file uploaders.
  static Color borderErrorSolid(BuildContext context) =>
      _borderErrorSolid.getColor(context);

  /// Default warning state semantic border color. Useful for warning states in
  /// components such as input fields.
  static Color borderWarning(BuildContext context) =>
      _borderWarning.getColor(context);

  /// Default solid (dark) warning state semantic border color. Useful for
  /// warning states in components such as file uploaders.
  static Color borderWarningSolid(BuildContext context) =>
      _borderWarningSolid.getColor(context);

  /// Default success state semantic border color. Useful for success states in
  /// components such as input fields.
  static Color borderSuccess(BuildContext context) =>
      _borderSuccess.getColor(context);

  /// Default solid (dark) success state semantic border color. Useful for
  static Color borderSuccessSolid(BuildContext context) =>
      _borderSuccessSolid.getColor(context);

  // -------------------------------------------------------------
  // <---------------- Foreground color values ------------------>
  // -------------------------------------------------------------
  // -------- Use foreground color variables to manage all -------
  // ---- non-text foreground elements in your designs across ----
  // ------------------- light and dark modes. -------------------
  // -------------------------------------------------------------

  static final _fgPrimary = _ColorScheme(
    light: ColorConstants.grayLight.shade900,
    dark: Colors.white,
  );

  static final _fgSecondary = _ColorScheme(
    light: ColorConstants.grayLight.shade700,
    dark: ColorConstants.grayDark.shade300,
  );

  static final _fgTertiary = _ColorScheme(
    light: ColorConstants.grayLight.shade600,
    dark: ColorConstants.grayDark.shade400,
  );

  static final _fgQuaternary = _ColorScheme(
    light: ColorConstants.grayLight,
    dark: ColorConstants.grayDark.shade400,
  );

  static final _fgQuinary = _ColorScheme(
    light: ColorConstants.grayLight.shade400,
    dark: ColorConstants.grayDark,
  );

  static final _fgSenary = _ColorScheme(
    light: ColorConstants.grayLight.shade300,
    dark: ColorConstants.grayDark.shade600,
  );

  static final _fgDisabled = _ColorScheme(
    light: ColorConstants.grayLight.shade400,
    dark: ColorConstants.grayDark,
    subtleLight: ColorConstants.grayLight.shade300,
    subtleDark: ColorConstants.grayDark.shade600,
  );

  static final _fgBrandPrimary = _ColorScheme(
    light: ColorConstants.brandColor.shade600,
    dark: ColorConstants.brandColor,
    altLight: ColorConstants.brandColor.shade600,
    altDark: ColorConstants.grayDark.shade300,
  );

  static final _fgBrandSecondary = _ColorScheme(
    light: ColorConstants.brandColor,
    dark: ColorConstants.brandColor,
  );

  static final _fgErrorPrimary = _ColorScheme(
    light: ColorConstants.error.shade600,
    dark: ColorConstants.error,
  );

  static final _fgErrorSecondary = _ColorScheme(
    light: ColorConstants.error,
    dark: ColorConstants.error.shade400,
  );

  static final _fgWarningPrimary = _ColorScheme(
    light: ColorConstants.warning.shade600,
    dark: ColorConstants.warning,
  );

  static final _fgWarningSecondary = _ColorScheme(
    light: ColorConstants.warning,
    dark: ColorConstants.warning.shade400,
  );

  static final _fgSuccessPrimary = _ColorScheme(
    light: ColorConstants.success.shade600,
    dark: ColorConstants.success,
  );

  static final _fgSuccessSecondary = _ColorScheme(
    light: ColorConstants.success,
    dark: ColorConstants.success.shade400,
  );

  static final _fgWhite = _ColorScheme(
    light: Colors.white,
    dark: Colors.white,
  );

  /// Highest contrast non-text foreground elements such as icons.
  static Color fgPrimary(BuildContext context) => _fgPrimary.getColor(context);

  /// High contrast non-text foreground elements such as icons.
  static Color fgSecondary(BuildContext context) =>
      _fgSecondary.getColor(context);

  /// Medium contrast non-text foreground elements such as icons.
  static Color fgTertiary(BuildContext context) =>
      _fgTertiary.getColor(context);

  /// Medium-low contrast non-text foreground elements such as icons.
  static Color fgQuaternary(BuildContext context) =>
      _fgQuaternary.getColor(context);

  /// Low contrast non-text foreground elements such as help icons.
  static Color fgQuinary(BuildContext context) => _fgQuinary.getColor(context);

  /// Lowest contrast non-text foreground elements such as breadcrumb divider
  /// icons and vector map. Used very sparingly.
  static Color fgSenary(BuildContext context) => _fgSenary.getColor(context);

  /// Default color for disabled non-text foreground elements such as icons in
  /// disabled button group buttons and input dropdown menu items.
  static Color fgDisabled(BuildContext context) =>
      _fgDisabled.getColor(context);

  /// A more subtle (lower contrast) alternative for non-text disabled
  /// foreground elements such as disabled active checkboxes and tag
  /// checkboxes.
  static Color fgDisabledSubtle(BuildContext context) =>
      _fgDisabled.getSubtleColor(context);

  /// Primary brand color non-text foreground elements such as featured icons
  /// and progress bars.
  static Color fgBrandPrimary(BuildContext context) =>
      _fgBrandPrimary.getColor(context);

  /// An alternative for primary brand color non-text foreground elements that
  /// switches to gray when in dark mode such as active horizontal tabs.
  static Color fgBrandPrimaryAlt(BuildContext context) =>
      _fgBrandPrimary.getAltColor(context);

  static Color fgBrandSecondary(BuildContext context) =>
      _fgBrandSecondary.getColor(context);

  static Color fgErrorPrimary(BuildContext context) =>
      _fgErrorPrimary.getColor(context);

  static Color fgErrorSecondary(BuildContext context) =>
      _fgErrorSecondary.getColor(context);

  static Color fgWarningPrimary(BuildContext context) =>
      _fgWarningPrimary.getColor(context);

  static Color fgWarningSecondary(BuildContext context) =>
      _fgWarningSecondary.getColor(context);

  static Color fgSuccessPrimary(BuildContext context) =>
      _fgSuccessPrimary.getColor(context);

  static Color fgSuccessSecondary(BuildContext context) =>
      _fgSuccessSecondary.getColor(context);

  static Color fgWhite(BuildContext context) => _fgWhite.getColor(context);

  // -------------------------------------------------------------
  // <---------------- Background color values ------------------>
  // -------------------------------------------------------------
  // - Use background color variables to manage all fill colors  -
  // - for elements in your designs across light and dark modes. -
  // -------------------------------------------------------------

  static final _bgPrimary = _ColorScheme(
    light: Colors.white,
    dark: ColorConstants.grayDark.shade900,
  );

  static final _bgPrimarySolid = _ColorScheme(
    light: ColorConstants.grayLight.shade900,
    dark: ColorConstants.grayDark.shade900,
  );

  static final _bgSecondary = _ColorScheme(
    light: ColorConstants.grayLight.shade50,
    dark: ColorConstants.grayDark.shade900,
  );

  static final _bgSecondarySolid = _ColorScheme(
    light: ColorConstants.grayLight.shade600,
    dark: ColorConstants.grayDark.shade600,
  );

  static final _bgTertiary = _ColorScheme(
    light: ColorConstants.grayLight.shade100,
    dark: ColorConstants.grayDark.shade800,
  );

  static final _bgQuaternary = _ColorScheme(
    light: ColorConstants.grayLight.shade200,
    dark: ColorConstants.grayDark.shade700,
  );

  static final _bgActive = _ColorScheme(
    light: ColorConstants.grayLight.shade50,
    dark: ColorConstants.grayDark.shade800,
  );

  static final _bgDisabled = _ColorScheme(
    light: ColorConstants.grayLight.shade100,
    dark: ColorConstants.grayDark.shade800,
    subtleLight: ColorConstants.grayLight.shade50,
    subtleDark: ColorConstants.grayDark.shade900,
  );

  static final _bgOverlay = _ColorScheme(
    light: ColorConstants.grayLight.shade900,
    dark: ColorConstants.grayDark.shade800,
  );

  static final _bgBrandPrimary = _ColorScheme(
    light: ColorConstants.brandColor.shade50,
    dark: ColorConstants.brandColor,
    altLight: ColorConstants.brandColor.shade50,
    altDark: ColorConstants.grayDark.shade800,
  );

  static final _bgBrandSecondary = _ColorScheme(
    light: ColorConstants.brandColor.shade100,
    dark: ColorConstants.brandColor.shade600,
  );

  static final _bgBrandSolid = _ColorScheme(
    light: ColorConstants.brandColor.shade600,
    dark: ColorConstants.brandColor.shade600,
  );

  static final _bgBrandSection = _ColorScheme(
    light: ColorConstants.brandColor.shade800,
    dark: ColorConstants.grayDark.shade800,
    subtleLight: ColorConstants.brandColor.shade700,
    subtleDark: ColorConstants.grayDark.shade900,
  );

  static final _bgErrorPrimary = _ColorScheme(
    light: ColorConstants.error.shade50,
    dark: ColorConstants.error,
  );

  static final _bgErrorSecondary = _ColorScheme(
    light: ColorConstants.error.shade100,
    dark: ColorConstants.error.shade600,
  );

  static final _bgErrorSolid = _ColorScheme(
    light: ColorConstants.error.shade600,
    dark: ColorConstants.error.shade600,
  );

  static final _bgWarningPrimary = _ColorScheme(
    light: ColorConstants.warning.shade50,
    dark: ColorConstants.warning,
  );

  static final _bgWarningSecondary = _ColorScheme(
    light: ColorConstants.warning.shade100,
    dark: ColorConstants.warning.shade600,
  );

  static final _bgWarningSolid = _ColorScheme(
    light: ColorConstants.warning.shade600,
    dark: ColorConstants.warning.shade600,
  );

  static final _bgSuccessPrimary = _ColorScheme(
    light: ColorConstants.success.shade50,
    dark: ColorConstants.success,
  );

  static final _bgSuccessSecondary = _ColorScheme(
    light: ColorConstants.success.shade100,
    dark: ColorConstants.success.shade600,
  );

  static final _bgSuccessSolid = _ColorScheme(
    light: ColorConstants.success.shade600,
    dark: ColorConstants.success.shade600,
  );

  static Color bgPrimary(BuildContext context) => _bgPrimary.getColor(context);

  static Color bgPrimarySolid(BuildContext context) =>
      _bgPrimarySolid.getColor(context);

  static Color bgSecondary(BuildContext context) =>
      _bgSecondary.getColor(context);

  static Color bgSecondarySolid(BuildContext context) =>
      _bgSecondarySolid.getColor(context);

  static Color bgTertiary(BuildContext context) =>
      _bgTertiary.getColor(context);

  static Color bgQuaternary(BuildContext context) =>
      _bgQuaternary.getColor(context);

  static Color bgActive(BuildContext context) => _bgActive.getColor(context);

  static Color bgDisabled(BuildContext context) =>
      _bgDisabled.getColor(context);
  static Color bgDisabledSubtle(BuildContext context) =>
      _bgDisabled.getSubtleColor(context);

  static Color bgOverlay(BuildContext context) => _bgOverlay.getColor(context);

  static Color bgBrandPrimary(BuildContext context) =>
      _bgBrandPrimary.getColor(context);
  static Color bgBrandPrimaryAlt(BuildContext context) =>
      _bgBrandPrimary.getAltColor(context);

  static Color bgBrandSecondary(BuildContext context) =>
      _bgBrandSecondary.getColor(context);

  static Color bgBrandSolid(BuildContext context) =>
      _bgBrandSolid.getColor(context);

  static Color bgBrandSection(BuildContext context) =>
      _bgBrandSection.getColor(context);

  static Color bgErrorPrimary(BuildContext context) =>
      _bgErrorPrimary.getColor(context);

  static Color bgErrorSecondary(BuildContext context) =>
      _bgErrorSecondary.getColor(context);

  static Color bgErrorSolid(BuildContext context) =>
      _bgErrorSolid.getColor(context);

  static Color bgWarningPrimary(BuildContext context) =>
      _bgWarningPrimary.getColor(context);

  static Color bgWarningSecondary(BuildContext context) =>
      _bgWarningSecondary.getColor(context);

  static Color bgWarningSolid(BuildContext context) =>
      _bgWarningSolid.getColor(context);

  static Color bgSuccessPrimary(BuildContext context) =>
      _bgSuccessPrimary.getColor(context);

  static Color bgSuccessSecondary(BuildContext context) =>
      _bgSuccessSecondary.getColor(context);

  static Color bgSuccessSolid(BuildContext context) =>
      _bgSuccessSolid.getColor(context);

  // ----------------------------------------------------------
  // <---------------- Utility color values ------------------>
  // ----------------------------------------------------------
  // ------- Utility color variables are useful “backup” ------
  // ------ variables for tricky or multicolor components -----
  // --(ex. badges) in your designs where semantic variables --
  // ------------------ don’t fit perfectly. ------------------
  // ----------------------------------------------------------

  static final _utilityGray50 = _ColorScheme(
    light: ColorConstants.grayLight.shade50,
    dark: ColorConstants.grayDark.shade900,
  );

  static final _utilityGray100 = _ColorScheme(
    light: ColorConstants.grayLight.shade100,
    dark: ColorConstants.grayDark.shade800,
  );

  static final _utilityGray200 = _ColorScheme(
    light: ColorConstants.grayLight.shade200,
    dark: ColorConstants.grayDark.shade700,
  );

  static final _utilityGray300 = _ColorScheme(
    light: ColorConstants.grayLight.shade300,
    dark: ColorConstants.grayDark.shade700,
  );

  static final _utilityGray400 = _ColorScheme(
    light: ColorConstants.grayLight.shade400,
    dark: ColorConstants.grayDark.shade600,
  );

  static final _utilityGray500 = _ColorScheme(
    light: ColorConstants.grayLight,
    dark: ColorConstants.grayDark,
  );

  static final _utilityGray600 = _ColorScheme(
    light: ColorConstants.grayLight.shade600,
    dark: ColorConstants.grayDark.shade400,
  );

  static final _utilityGray700 = _ColorScheme(
    light: ColorConstants.grayLight.shade700,
    dark: ColorConstants.grayDark.shade300,
  );

  static final _utilityGray800 = _ColorScheme(
    light: ColorConstants.grayLight.shade800,
    dark: ColorConstants.grayDark.shade200,
  );

  static final _utilityGray900 = _ColorScheme(
    light: ColorConstants.grayLight.shade900,
    dark: ColorConstants.grayDark.shade100,
  );

  static final _utilityBrand50 = _ColorScheme(
    light: ColorConstants.brandColor.shade50,
    dark: ColorConstants.brandColor.shade900,
  );

  static final _utilityBrand100 = _ColorScheme(
    light: ColorConstants.brandColor.shade100,
    dark: ColorConstants.brandColor.shade900,
    altLight: ColorConstants.brandColor.shade100,
    altDark: ColorConstants.grayDark.shade800,
  );

  static final _utilityBrand200 = _ColorScheme(
    light: ColorConstants.brandColor.shade200,
    dark: ColorConstants.brandColor.shade800,
    altLight: ColorConstants.brandColor.shade200,
    altDark: ColorConstants.grayDark.shade700,
  );

  static final _utilityBrand300 = _ColorScheme(
    light: ColorConstants.brandColor.shade300,
    dark: ColorConstants.brandColor.shade700,
    altLight: ColorConstants.brandColor.shade300,
    altDark: ColorConstants.grayDark.shade700,
  );

  static final _utilityBrand400 = _ColorScheme(
    light: ColorConstants.brandColor.shade400,
    dark: ColorConstants.brandColor.shade600,
    altLight: ColorConstants.brandColor.shade400,
    altDark: ColorConstants.grayDark.shade600,
  );

  static final _utilityBrand500 = _ColorScheme(
    light: ColorConstants.brandColor,
    dark: ColorConstants.brandColor,
    altLight: ColorConstants.brandColor,
    altDark: ColorConstants.grayDark,
  );

  static final _utilityBrand600 = _ColorScheme(
    light: ColorConstants.brandColor.shade600,
    dark: ColorConstants.brandColor.shade400,
    altLight: ColorConstants.brandColor.shade600,
    altDark: ColorConstants.grayDark.shade400,
  );

  static final _utilityBrand700 = _ColorScheme(
    light: ColorConstants.brandColor.shade700,
    dark: ColorConstants.brandColor.shade300,
    altLight: ColorConstants.brandColor.shade700,
    altDark: ColorConstants.grayDark.shade300,
  );

  static final _utilityBrand800 = _ColorScheme(
    light: ColorConstants.brandColor.shade800,
    dark: ColorConstants.brandColor.shade200,
    altLight: ColorConstants.brandColor.shade800,
    altDark: ColorConstants.grayDark.shade200,
  );

  static final _utilityBrand900 = _ColorScheme(
    light: ColorConstants.brandColor.shade900,
    dark: ColorConstants.brandColor.shade100,
    altLight: ColorConstants.brandColor.shade900,
    altDark: ColorConstants.grayDark.shade100,
  );

  static final _utilityError50 = _ColorScheme(
    light: ColorConstants.error.shade50,
    dark: ColorConstants.error.shade900,
  );

  static final _utilityError100 = _ColorScheme(
    light: ColorConstants.error.shade100,
    dark: ColorConstants.error.shade900,
  );

  static final _utilityError200 = _ColorScheme(
    light: ColorConstants.error.shade200,
    dark: ColorConstants.error.shade800,
  );

  static final _utilityError300 = _ColorScheme(
    light: ColorConstants.error.shade300,
    dark: ColorConstants.error.shade700,
  );

  static final _utilityError400 = _ColorScheme(
    light: ColorConstants.error.shade400,
    dark: ColorConstants.error.shade600,
  );

  static final _utilityError500 = _ColorScheme(
    light: ColorConstants.error,
    dark: ColorConstants.error,
  );

  static final _utilityError600 = _ColorScheme(
    light: ColorConstants.error.shade600,
    dark: ColorConstants.error.shade400,
  );

  static final _utilityError700 = _ColorScheme(
    light: ColorConstants.error.shade700,
    dark: ColorConstants.error.shade300,
  );

  static final _utilityError800 = _ColorScheme(
    light: ColorConstants.error.shade800,
    dark: ColorConstants.error.shade200,
  );

  static final _utilityError900 = _ColorScheme(
    light: ColorConstants.error.shade900,
    dark: ColorConstants.error.shade100,
  );

  static final _utilityWarning50 = _ColorScheme(
    light: ColorConstants.warning.shade50,
    dark: ColorConstants.warning.shade900,
  );

  static final _utilityWarning100 = _ColorScheme(
    light: ColorConstants.warning.shade100,
    dark: ColorConstants.warning.shade900,
  );

  static final _utilityWarning200 = _ColorScheme(
    light: ColorConstants.warning.shade200,
    dark: ColorConstants.warning.shade800,
  );

  static final _utilityWarning300 = _ColorScheme(
    light: ColorConstants.warning.shade300,
    dark: ColorConstants.warning.shade700,
  );

  static final _utilityWarning400 = _ColorScheme(
    light: ColorConstants.warning.shade400,
    dark: ColorConstants.warning.shade600,
  );

  static final _utilityWarning500 = _ColorScheme(
    light: ColorConstants.warning,
    dark: ColorConstants.warning,
  );

  static final _utilityWarning600 = _ColorScheme(
    light: ColorConstants.warning.shade600,
    dark: ColorConstants.warning.shade400,
  );

  static final _utilityWarning700 = _ColorScheme(
    light: ColorConstants.warning.shade700,
    dark: ColorConstants.warning.shade300,
  );

  static final _utilityWarning800 = _ColorScheme(
    light: ColorConstants.warning.shade800,
    dark: ColorConstants.warning.shade200,
  );

  static final _utilityWarning900 = _ColorScheme(
    light: ColorConstants.warning.shade900,
    dark: ColorConstants.warning.shade100,
  );

  static final _utilitySuccess50 = _ColorScheme(
    light: ColorConstants.success.shade50,
    dark: ColorConstants.success.shade900,
  );

  static final _utilitySuccess100 = _ColorScheme(
    light: ColorConstants.success.shade100,
    dark: ColorConstants.success.shade900,
  );

  static final _utilitySuccess200 = _ColorScheme(
    light: ColorConstants.success.shade200,
    dark: ColorConstants.success.shade800,
  );

  static final _utilitySuccess300 = _ColorScheme(
    light: ColorConstants.success.shade300,
    dark: ColorConstants.success.shade700,
  );

  static final _utilitySuccess400 = _ColorScheme(
    light: ColorConstants.success.shade400,
    dark: ColorConstants.success.shade600,
  );

  static final _utilitySuccess500 = _ColorScheme(
    light: ColorConstants.success,
    dark: ColorConstants.success,
  );

  static final _utilitySuccess600 = _ColorScheme(
    light: ColorConstants.success.shade600,
    dark: ColorConstants.success.shade400,
  );

  static final _utilitySuccess700 = _ColorScheme(
    light: ColorConstants.success.shade700,
    dark: ColorConstants.success.shade300,
  );

  static final _utilitySuccess800 = _ColorScheme(
    light: ColorConstants.success.shade800,
    dark: ColorConstants.success.shade200,
  );

  static final _utilitySuccess900 = _ColorScheme(
    light: ColorConstants.success.shade900,
    dark: ColorConstants.success.shade100,
  );

  static Color utilityGray50(BuildContext context) =>
      _utilityGray50.getColor(context);

  static Color utilityGray100(BuildContext context) =>
      _utilityGray100.getColor(context);

  static Color utilityGray200(BuildContext context) =>
      _utilityGray200.getColor(context);

  static Color utilityGray300(BuildContext context) =>
      _utilityGray300.getColor(context);

  static Color utilityGray400(BuildContext context) =>
      _utilityGray400.getColor(context);

  static Color utilityGray500(BuildContext context) =>
      _utilityGray500.getColor(context);

  static Color utilityGray600(BuildContext context) =>
      _utilityGray600.getColor(context);

  static Color utilityGray700(BuildContext context) =>
      _utilityGray700.getColor(context);

  static Color utilityGray800(BuildContext context) =>
      _utilityGray800.getColor(context);

  static Color utilityGray900(BuildContext context) =>
      _utilityGray900.getColor(context);

  static Color utilityBrand50(BuildContext context) =>
      _utilityBrand50.getColor(context);

  static Color utilityBrand100(BuildContext context) =>
      _utilityBrand100.getColor(context);
  static Color utilityBrand100Alt(BuildContext context) =>
      _utilityBrand100.getAltColor(context);

  static Color utilityBrand200(BuildContext context) =>
      _utilityBrand200.getColor(context);
  static Color utilityBrand200Alt(BuildContext context) =>
      _utilityBrand200.getAltColor(context);

  static Color utilityBrand300(BuildContext context) =>
      _utilityBrand300.getColor(context);
  static Color utilityBrand300Alt(BuildContext context) =>
      _utilityBrand300.getAltColor(context);

  static Color utilityBrand400(BuildContext context) =>
      _utilityBrand400.getColor(context);
  static Color utilityBrand400Alt(BuildContext context) =>
      _utilityBrand400.getAltColor(context);

  static Color utilityBrand500(BuildContext context) =>
      _utilityBrand500.getColor(context);
  static Color utilityBrand500Alt(BuildContext context) =>
      _utilityBrand500.getAltColor(context);

  static Color utilityBrand600(BuildContext context) =>
      _utilityBrand600.getColor(context);
  static Color utilityBrand600Alt(BuildContext context) =>
      _utilityBrand600.getAltColor(context);

  static Color utilityBrand700(BuildContext context) =>
      _utilityBrand700.getColor(context);
  static Color utilityBrand700Alt(BuildContext context) =>
      _utilityBrand700.getAltColor(context);

  static Color utilityBrand800(BuildContext context) =>
      _utilityBrand800.getColor(context);
  static Color utilityBrand800Alt(BuildContext context) =>
      _utilityBrand800.getAltColor(context);

  static Color utilityBrand900(BuildContext context) =>
      _utilityBrand900.getColor(context);
  static Color utilityBrand900Alt(BuildContext context) =>
      _utilityBrand900.getAltColor(context);

  static Color utilityError50(BuildContext context) =>
      _utilityError50.getColor(context);

  static Color utilityError100(BuildContext context) =>
      _utilityError100.getColor(context);

  static Color utilityError200(BuildContext context) =>
      _utilityError200.getColor(context);

  static Color utilityError300(BuildContext context) =>
      _utilityError300.getColor(context);

  static Color utilityError400(BuildContext context) =>
      _utilityError400.getColor(context);

  static Color utilityError500(BuildContext context) =>
      _utilityError500.getColor(context);

  static Color utilityError600(BuildContext context) =>
      _utilityError600.getColor(context);

  static Color utilityError700(BuildContext context) =>
      _utilityError700.getColor(context);

  static Color utilityError800(BuildContext context) =>
      _utilityError800.getColor(context);

  static Color utilityError900(BuildContext context) =>
      _utilityError900.getColor(context);

  static Color utilityWarning50(BuildContext context) =>
      _utilityWarning50.getColor(context);

  static Color utilityWarning100(BuildContext context) =>
      _utilityWarning100.getColor(context);

  static Color utilityWarning200(BuildContext context) =>
      _utilityWarning200.getColor(context);

  static Color utilityWarning300(BuildContext context) =>
      _utilityWarning300.getColor(context);

  static Color utilityWarning400(BuildContext context) =>
      _utilityWarning400.getColor(context);

  static Color utilityWarning500(BuildContext context) =>
      _utilityWarning500.getColor(context);

  static Color utilityWarning600(BuildContext context) =>
      _utilityWarning600.getColor(context);

  static Color utilityWarning700(BuildContext context) =>
      _utilityWarning700.getColor(context);

  static Color utilityWarning800(BuildContext context) =>
      _utilityWarning800.getColor(context);

  static Color utilityWarning900(BuildContext context) =>
      _utilityWarning900.getColor(context);

  static Color utilitySuccess50(BuildContext context) =>
      _utilitySuccess50.getColor(context);

  static Color utilitySuccess100(BuildContext context) =>
      _utilitySuccess100.getColor(context);

  static Color utilitySuccess200(BuildContext context) =>
      _utilitySuccess200.getColor(context);

  static Color utilitySuccess300(BuildContext context) =>
      _utilitySuccess300.getColor(context);

  static Color utilitySuccess400(BuildContext context) =>
      _utilitySuccess400.getColor(context);

  static Color utilitySuccess500(BuildContext context) =>
      _utilitySuccess500.getColor(context);

  static Color utilitySuccess600(BuildContext context) =>
      _utilitySuccess600.getColor(context);

  static Color utilitySuccess700(BuildContext context) =>
      _utilitySuccess700.getColor(context);

  static Color utilitySuccess800(BuildContext context) =>
      _utilitySuccess800.getColor(context);

  static Color utilitySuccess900(BuildContext context) =>
      _utilitySuccess900.getColor(context);

  // ---------------------------------------------------------
  // <---------------- Button color values ------------------>
  // ---------------------------------------------------------
  // ---- Use this colors for any button used in the app. ----
  // ------ This includes and is not limited to elevated -----
  // ----------- buttons, outlined buttons and cta. ----------
  // ---------------------------------------------------------

  static final _buttonPrimaryBg = _ColorScheme(
    light: ColorConstants.brandColor.shade600,
    dark: ColorConstants.brandColor.shade600,
  );

  static final _buttonPrimaryFg = _ColorScheme(
    light: Colors.white,
    dark: Colors.white,
  );

  static final _buttonSecondaryBg = _ColorScheme(
    light: Colors.white,
    dark: ColorConstants.grayDark.shade900,
  );

  static final _buttonSecondaryFg = _ColorScheme(
    light: ColorConstants.grayLight.shade700,
    dark: ColorConstants.grayDark.shade300,
  );

  static final _buttonSecondaryBorder = _ColorScheme(
    light: ColorConstants.grayLight.shade300,
    dark: ColorConstants.grayDark.shade700,
  );

  static final _buttonTertiaryFg = _ColorScheme(
    light: ColorConstants.grayLight.shade600,
    dark: ColorConstants.grayDark.shade400,
  );

  static final _buttonPrimaryErrorFg = _ColorScheme(
    light: Colors.white,
    dark: Colors.white,
  );

  static final _buttonPrimaryErrorBg = _ColorScheme(
    light: ColorConstants.error.shade600,
    dark: ColorConstants.error.shade600,
  );

  static final _buttonSecondaryErrorFg = _ColorScheme(
    light: ColorConstants.error.shade700,
    dark: ColorConstants.error.shade200,
  );

  static final _buttonSecondaryErrorBg = _ColorScheme(
    light: Colors.white,
    dark: ColorConstants.error.shade900,
  );

  static final _buttonSecondaryErrorBorder = _ColorScheme(
    light: ColorConstants.error.shade300,
    dark: ColorConstants.error.shade800,
  );

  static final _buttonTertiaryErrorFg = _ColorScheme(
    light: ColorConstants.error.shade700,
    dark: ColorConstants.error.shade300,
  );

  static Color buttonPrimaryBg(BuildContext context) =>
      _buttonPrimaryBg.getColor(context);

  static Color buttonPrimaryFg(BuildContext context) =>
      _buttonPrimaryFg.getColor(context);

  static Color buttonSecondaryBg(BuildContext context) =>
      _buttonSecondaryBg.getColor(context);

  static Color buttonSecondaryFg(BuildContext context) =>
      _buttonSecondaryFg.getColor(context);

  static Color buttonSecondaryBorder(BuildContext context) =>
      _buttonSecondaryBorder.getColor(context);

  static Color buttonTertiaryFg(BuildContext context) =>
      _buttonTertiaryFg.getColor(context);

  static Color buttonPrimaryErrorFg(BuildContext context) =>
      _buttonPrimaryErrorFg.getColor(context);

  static Color buttonPrimaryErrorBg(BuildContext context) =>
      _buttonPrimaryErrorBg.getColor(context);

  static Color buttonSecondaryErrorFg(BuildContext context) =>
      _buttonSecondaryErrorFg.getColor(context);

  static Color buttonSecondaryErrorBg(BuildContext context) =>
      _buttonSecondaryErrorBg.getColor(context);

  static Color buttonSecondaryErrorBorder(BuildContext context) =>
      _buttonSecondaryErrorBorder.getColor(context);

  static Color buttonTertiaryErrorFg(BuildContext context) =>
      _buttonTertiaryErrorFg.getColor(context);

  
}

class _ColorScheme {
  final Color light;
  final Color dark;
  final Color? onBrandLight;
  final Color? onBrandDark;
  final Color? subtleLight;
  final Color? subtleDark;
  final Color? altLight;
  final Color? altDark;

  _ColorScheme({
    required this.light,
    required this.dark,
    this.onBrandLight,
    this.onBrandDark,
    this.subtleLight,
    this.subtleDark,
    this.altLight,
    this.altDark,
  });

  Color getColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark ? dark : light;
  }

  Color getOnBrandColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? onBrandDark!
        : onBrandLight!;
  }

  Color getSubtleColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? subtleDark!
        : subtleLight!;
  }

  Color getAltColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? altDark!
        : altLight!;
  }
}
