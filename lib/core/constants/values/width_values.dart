import 'package:variables_test/core/constants/width_constants.dart';

class WidthValues {
  // ---------------------------------------------------
  // <---------------- Radius values ------------------>
  // ---------------------------------------------------

  /// No radius (0)
  static const radiusNone = 0.0;

  /// Extra extra small radius (0.5)
  static final radiusXxs = WidthConstants.spacing.getSpacing(0.5);

  /// Extra small radius (1)
  static final radiusXs = WidthConstants.spacing.getSpacing(1);

  /// Small radius (1.5)
  static final radiusSm = WidthConstants.spacing.getSpacing(1.5);

  /// Medium radius (2)
  static final radiusMd = WidthConstants.spacing.getSpacing(2);

  /// Large radius (2.5)
  static final radiusLg = WidthConstants.spacing.getSpacing(2.5);

  /// Extra large radius (3)
  static final radiusXl = WidthConstants.spacing.getSpacing(3);

  /// Extra extra large radius (4)
  static final radius2xl = WidthConstants.spacing.getSpacing(4);

  /// 3Extra large radius (5)
  static final radius3xl = WidthConstants.spacing.getSpacing(5);

  /// 4Extra large radius (6)
  static final radius4xl = WidthConstants.spacing.getSpacing(6);

  /// Fully rounded (circular) radius. Equivalent to 9999px
  static const radiusFull = 9999.0;

  // ----------------------------------------------------
  // <---------------- Spacing values ------------------>
  // ----------------------------------------------------

  /// No spacing (0)
  static final spacingNone = WidthConstants.spacing.getSpacing(0);

  /// Extra extra small spacing (0.5)
  static final spacingXxs = WidthConstants.spacing.getSpacing(0.5);

  /// Extra small spacing (1)
  static final spacingXs = WidthConstants.spacing.getSpacing(1);

  /// Small spacing (1.5)
  static final spacingSm = WidthConstants.spacing.getSpacing(1.5);

  /// Medium spacing (2)
  static final spacingMd = WidthConstants.spacing.getSpacing(2);

  /// Double medium spacing (2.5)
  static final spacing2Md = WidthConstants.spacing.getSpacing(2.5);

  /// Large spacing (3)
  static final spacingLg = WidthConstants.spacing.getSpacing(3);

  /// Extra large spacing (4)
  static final spacingXl = WidthConstants.spacing.getSpacing(4);

  /// Extra extra large spacing (5)
  static final spacing2xl = WidthConstants.spacing.getSpacing(5);

  /// 3Extra large spacing (6)
  static final spacing3xl = WidthConstants.spacing.getSpacing(6);

  /// 4Extra large spacing (8)
  static final spacing4xl = WidthConstants.spacing.getSpacing(8);

  /// 5Extra large spacing (10)
  static final spacing5xl = WidthConstants.spacing.getSpacing(10);

  /// 6Extra large spacing (12)
  static final spacing6xl = WidthConstants.spacing.getSpacing(12);

  /// 7Extra large spacing (16)
  static final spacing7xl = WidthConstants.spacing.getSpacing(16);

  /// 8Extra large spacing (20)
  static final spacing8xl = WidthConstants.spacing.getSpacing(20);

  /// 9Extra large spacing (24)
  static final spacing9xl = WidthConstants.spacing.getSpacing(24);

  /// 10Extra large spacing (32)
  static final spacing10xl = WidthConstants.spacing.getSpacing(32);

  /// 11Extra large spacing (40)
  static final spacing11xl = WidthConstants.spacing.getSpacing(40);

  // ----------------------------------------------------
  // <----------- Container spacing values ------------->
  // ----------------------------------------------------

  /// Container padding (4), equivalent to [spacingXl]
  static final containerPadding = WidthConstants.spacing.getSpacing(4);

  // -------------------------------------------------
  // <----------- Common spacing values ------------->
  // -------------------------------------------------

  /// Common padding (2), equivalent to [spacingMd]
  static final padding = spacingMd;

  /// Common margin (4), equivalent to [spacingXl]
  static final margin = spacingXl;
}
