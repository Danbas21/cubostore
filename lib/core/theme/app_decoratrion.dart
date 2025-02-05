import 'package:flutter/material.dart';
import '../app_export.dart';

class AppDecoration {
// Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillLightBlue => BoxDecoration(
        color: appTheme.lightBlue40019,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
// Gradient decorations
  static BoxDecoration get gradientPrimaryToPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0.35),
          end: const Alignment(0.51, 0.84),
          colors: [
            theme.colorScheme.primary.withAlpha(0),
            theme.colorScheme.primary.withAlpha(0),
          ],
        ),
      );

  static BoxDecoration get gradientPrimaryToPrimary1 => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.5, 1.65),
          end: const Alignment(0.5, 0),
          colors: [
            theme.colorScheme.primary,
            theme.colorScheme.primary.withAlpha(0),
          ],
        ),
      );
// Neutral decorations
  static BoxDecoration get neutral100 => BoxDecoration(
        color: appTheme.gray50,
        image: const DecorationImage(
          image: AssetImage(
            ImageConstant.imgImage318,
          ),
          fit: BoxFit.fill,
        ),
      );

  static BoxDecoration get neutral100Card => BoxDecoration(
        color: appTheme.gray50,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray90019,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(
              0,
              4,
            ),
          ),
        ],
      );

  static BoxDecoration get neutral200 => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get neutral300 => BoxDecoration(
        color: appTheme.gray300,
      );
  static BoxDecoration get neutral400 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.gray400,
          width: 1.h,
        ),
      );
  static BoxDecoration get neutral50 => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get neutral50Basic => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary.withAlpha(0),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(
              0,
              10,
            ),
          ),
        ],
      );

  static BoxDecoration get neutral50Card => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray90019,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(
              0,
              4,
            ),
          ),
        ],
      );

  static BoxDecoration get neutra150CardShadow2 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black9000c,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(
              0,
              4,
            ),
          ),
        ],
      );

  static BoxDecoration get neutral50Neutral900 => BoxDecoration(
      color: theme.colorScheme.primary,
      border: Border.all(
        color: appTheme.whiteA700,
        width: 1.h,
      ));
  static BoxDecoration get neutral900 => BoxDecoration(
        color: appTheme.gray100,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get neutral900Neutral900 => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
//Others decorations
  static BoxDecoration get othersWhite => BoxDecoration(
        color: appTheme.whiteA700,
      );
// Outline decorations
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: appTheme.gray90001,
          width: 1.h,
          strokeAlign: BorderSide.strokeAlignOutside,
        ),
      );
  static BoxDecoration get outlineGray300 => BoxDecoration(
        color: appTheme.gray300,
        border: Border(
          top: BorderSide(
            color: appTheme.gray300,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray3001 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary.withAlpha(0),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(
              0,
              8,
            ),
          ),
        ],
      );

  static BoxDecoration get outlinePrimary1 => BoxDecoration(
      color: appTheme.gray50,
      border: Border.all(
        color: theme.colorScheme.primary,
        width: 0.75.h,
      ));
  static BoxDecoration get column1 => const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgRectangle1025,
          ),
          fit: BoxFit.fill,
        ),
      );
  static BoxDecoration get column18 => const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgShap,
          ),
          fit: BoxFit.fill,
        ),
      );
// Stack decorations
  static BoxDecoration get stack19 => const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgShap335x375,
          ),
          fit: BoxFit.fill,
        ),
      );
}

class BorderRadiusStyle {
// Circle borders
  static BorderRadius get circleBorder10 => BorderRadius.circular(
        10.h,
      );
// Custom borders
  static BorderRadius get customBorderTL24 => BorderRadius.horizontal(
        left: Radius.circular(24.h),
      );
  static BorderRadius get customBorderTL32 => BorderRadius.vertical(
        top: Radius.circular(32.h),
      );
// Rounded borders
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder24 => BorderRadius.circular(
        24.h,
      );
  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        4.h,
      );
}
