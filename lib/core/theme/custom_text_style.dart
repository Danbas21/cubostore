import 'package:flutter/material.dart';
import '../app_export.dart';

extension on TextStyle {
  TextStyle get beVietnamPro {
    return copyWith(fontFamily: 'Be Vietnam Pro');
  }

  TextStyle get poppins {
    return copyWith(fontFamily: 'Poppins');
  }

  TextStyle get urbanist {
    return copyWith(fontFamily: 'Urbanist');
  }

  TextStyle get cairo {
    return copyWith(fontFamily: 'Cairo');
  }
}

/// A collection of pre-defined text styles for customizing text appearance
/// categorized by different font families and weights.

/// A collection of pre-defined text styles for customizing text appear /// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easi class CustomTextStyles {
// Body text style

class CustomTextStyle {
  TextStyle get bodyLargePoppinsPrimary =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: theme.colorScheme.primary,
      );
  TextStyle get bodyLargePrimaryContainer =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  TextStyle get bodyLargeWhiteA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  TextStyle get bodyMediumGray700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
      );
  TextStyle get bodyMediumGray800 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray800,
      );
  TextStyle get bodyMediumLightgreen500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.lightGreen500,
      );
  TextStyle get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  TextStyle get bodyMediumOnPrimaryContainer_1 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  TextStyle get bodyMediumPoppinsOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  TextStyle get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  TextStyle get bodyMediumPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  TextStyle get bodyMediumPrimary_1 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  TextStyle get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  get bodySmallBeVietnamPro => theme.textTheme.bodySmall!.beVietnamPro;
  TextStyle get bodySmallGray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray400,
      );
  TextStyle get bodySmallGray40010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray400,
        fontSize: 10.fSize,
      );
  TextStyle get bodySmallGray700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray700,
      );
  TextStyle get bodySmallPoppinsGray600 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray600,
      );
  TextStyle get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  TextStyle get bodySmallPrimaryContainer =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
// Headline text style
  TextStyle get headlineLargeWhiteA700 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  get headlineSmallUrbanist => theme.textTheme.headlineSmall!.urbanist;
  TextStyle get headlineSmallWhiteA700 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.whiteA700,
      );
// Label text style
  TextStyle get labelLargeAmberA200 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.amberA200,
        fontWeight: FontWeight.w700,
      );
  TextStyle get labelLargeBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  TextStyle get labelLargeCairo => theme.textTheme.labelLarge!.cairo.copyWith(
        fontWeight: FontWeight.w700,
      );
  TextStyle get labelLargeCairoGray700 =>
      theme.textTheme.labelLarge!.cairo.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w700,
      );
  TextStyle get labelLargeGray400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray400,
      );
  TextStyle get labelLargeGray50 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray50,
        fontWeight: FontWeight.w600,
      );
  TextStyle get labelLargeGray50_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray50,
      );
  TextStyle get labelLargeGreenA70001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.greenA70001,
        fontWeight: FontWeight.w700,
      );
  TextStyle get labelLargeLightblueA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.lightBlueA700,
        fontWeight: FontWeight.w700,
      );
  TextStyle get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  TextStyle get labelLargePrimaryBold => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  TextStyle get labelLargePrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w600,
      );
  TextStyle get labelLargePrimarySemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  TextStyle get labelLargeSemiBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  TextStyle get labelLargeSemiBold_1 => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  TextStyle get labelLargeUrbanistGray700 =>
      theme.textTheme.labelLarge!.urbanist.copyWith(
        color: appTheme.gray700,
      );
  TextStyle get labelLargeWhiteA700SemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
//Title text style
  TextStyle get titleLargeMedium => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  TextStyle get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  TextStyle get titleMediumBeVietnamProPrimary =>
      theme.textTheme.titleMedium!.beVietnamPro.copyWith(
        color: theme.colorScheme.primary,
      );
  TextStyle get titleMediumBeVietnamProPrimaryMedium =>
      theme.textTheme.titleMedium!.beVietnamPro.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  TextStyle get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  TextStyle get titleMediumDeeporangeA700 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.deepOrangeA700,
        fontWeight: FontWeight.w500,
      );
  TextStyle get titleMediumGray50 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50,
      );
  TextStyle get titleMediumGray700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray700,
      );
  TextStyle get titleMediumLightblueA700 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.lightBlueA700,
        fontWeight: FontWeight.w500,
      );
  TextStyle get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w500,
      );
  TextStyle get titleMediumPoppinsPrimary =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  TextStyle get titleMediumPoppinsPrimaryContainer =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  TextStyle get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  TextStyle get titleMediumPrimary18 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
      );
  TextStyle get titleMediumPrimaryBold => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  TextStyle get titleMediumPrimaryBold18 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  TextStyle get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  TextStyle get titleMediumPrimaryContainerBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w700,
      );
  TextStyle get titleMediumPrimaryContainer_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  TextStyle get titleMediumPrimaryMedium =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );

  TextStyle get titleMediumPrimaryMedium18 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  TextStyle get titleMediumPrimaryMedium18_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  TextStyle get titleMediumPrimaryMedium18_2 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  TextStyle get titleMediumPrimaryMedium_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  TextStyle get titleMediumPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  get titleSmallBeVietnamPro => theme.textTheme.titleSmall!.beVietnamPro;
  TextStyle get titleSmallDeeporangeA700 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.deepOrangeA700,
        fontWeight: FontWeight.w600,
      );
  TextStyle get titleSmallGray100 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray100,
      );
  TextStyle get titleSmallGray300 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray300,
      );
  TextStyle get titleSmallGray400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray400,
        fontWeight: FontWeight.w600,
      );
  TextStyle get titleSmallGray50 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50,
      );
  TextStyle get titleSmallGray50SemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50,
        fontWeight: FontWeight.w600,
      );
  TextStyle get titleSmallGray700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w600,
      );

  TextStyle get titleSmallGray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900,
      );
  TextStyle get titleSmallGray90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90001,
      );
  TextStyle get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w600,
      );
  TextStyle get titleSmallOnPrimaryContainer_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  TextStyle get titleSmallPoppinsGray50 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.gray50,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  TextStyle get titleSmallPoppinsPrimaryContainer =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  TextStyle get titleSmallPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  TextStyle get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  TextStyle get titleSmallSemiBold_1 => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  TextStyle get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
      );
  TextStyle get titleSmallWhiteA700SemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
}
