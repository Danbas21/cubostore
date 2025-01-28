import 'package:cubostore/core/app_export.dart';
import 'package:cubostore/core/utils/pref_utils.dart';
import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_helper.g.dart';

@riverpod
String themeProvider(Ref ref) {
  return ref.watch(themePreferencesNotifierProvider).when(
        data: (theme) => theme,
        loading: () => 'primary',
        error: (error, stack) => 'primary',
      );
}

LightCodeColors get appTheme => LightCodeColors();
ThemeData get theme => ThemeHelper()._getThemeData(themeProvider);

@Riverpod(keepAlive: true)
class ThemeHelper extends _$ThemeHelper {
  @override
  ThemeData build() {
    final appTheme = ref.watch(themeProviderProvider);
    return _getThemeData(appTheme);
  }

  final Map<String, LightCodeColors> _supportedCustomColors = {
    'lightCode': LightCodeColors(),
  };

  final Map<String, ColorScheme> _supportedColorSchemes = {
    'lightCode': ColorSchemes.lightCodeColorScheme,
    'darkCode': ColorSchemes.darkCodeColorScheme,
  };

  LightCodeColors _getThemeColors(String theme) {
    return _supportedCustomColors[theme] ?? LightCodeColors();
  }

  ThemeData _getThemeData(String theme) {
    final colorScheme =
        _supportedColorSchemes[theme] ?? ColorSchemes.lightCodeColorScheme;
    final themeColors = _getThemeColors(theme);

    return ThemeData(
      visualDensity: VisualDensity.standard,
      brightness: theme == 'darkCode' ? Brightness.dark : Brightness.light,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      elevatedButtonTheme: _getElevatedButtonTheme(colorScheme),
      outlinedButtonTheme: _getOutlinedButtonTheme(colorScheme, themeColors),
      radioTheme: _getRadioTheme(colorScheme),
      checkboxTheme: _getCheckboxTheme(colorScheme, themeColors),
      dividerTheme: _getDividerTheme(themeColors),
    );
  }

  ElevatedButtonThemeData _getElevatedButtonTheme(ColorScheme colorScheme) {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 0,
        visualDensity: const VisualDensity(vertical: -4, horizontal: 0),
        padding: EdgeInsets.zero,
      ),
    );
  }

  OutlinedButtonThemeData _getOutlinedButtonTheme(
      ColorScheme colorScheme, LightCodeColors themeColors) {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        backgroundColor: themeColors.whiteA700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        side: BorderSide(
          color: colorScheme.primary,
        ),
        padding: EdgeInsets.zero,
      ),
    );
  }

  RadioThemeData _getRadioTheme(ColorScheme colorScheme) {
    return RadioThemeData(
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return colorScheme.primary;
        }
        return Colors.transparent;
      }),
      visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
    );
  }

  CheckboxThemeData _getCheckboxTheme(
      ColorScheme colorScheme, LightCodeColors themeColors) {
    return CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return colorScheme.primary;
        }
        return Colors.transparent;
      }),
      side: BorderSide(
        color: themeColors.gray30001,
        width: 1,
      ),
      visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
    );
  }

  DividerThemeData _getDividerTheme(LightCodeColors themeColors) {
    return DividerThemeData(
      color: themeColors.gray300,
      thickness: 1,
      space: 1,
    );
  }
}

// Las clases TextThemes, ColorSchemes y LightCodeColors permanecen igual...
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.gray800,
          fontSize: 16.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.gray400,
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: TextStyle(
          color: colorScheme.primary,
          fontSize: 32.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: 28.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.primary,
          fontSize: 24.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 11.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        labelSmall: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 9.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: colorScheme.primary,
          fontSize: 20.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 16.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: colorScheme.primary,
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
      );
}

class ColorSchemes {
  static const lightCodeColorScheme = ColorScheme.light(
    primary: Color(0XFF000000),
    primaryContainer: Color(0XFF191A1D),
    errorContainer: Color(0XFFF79410),
    onPrimary: Color(0XFF292D32),
    onPrimaryContainer: Color(0XFFA0A0A0),
  );

  static const darkCodeColorScheme = ColorScheme.dark(
    primary: Color.fromARGB(255, 255, 250, 250),
    primaryContainer: Color.fromARGB(255, 227, 230, 237),
    errorContainer: Color.fromARGB(255, 106, 63, 7),
    onPrimary: Color.fromARGB(255, 196, 216, 241),
    onPrimaryContainer: Color.fromARGB(255, 71, 71, 71),
  );
}

/// Class containing custom colors for a lightCode theme.

class LightCodeColors {
// Amber
  Color get amber40019 => const Color(0X19FFC62A);
  Color get amber500 => const Color(0XFFFBBC05);
  Color get amberA200 => const Color(0XFFFCD240); // Black
  Color get black9000c => const Color(0X0C04060F); // Blue
  Color get blue600 => const Color(0XFF3577E5);
  Color get blue60001 => const Color(0XFF2199D6);
  Color get blueA200 => const Color(0XFF4285F4); // BlueGray
  Color get blueGray90019 => const Color(0X19181956); // DeepOrange
  Color get deepOrangeA700 => const Color(0XFFEC1313); // DeepPurple
  Color get deepPurple20033 => const Color(0X33BF9EE1);
  Color get deepPurple300 => const Color(0XFF8A61E5);
  Color get deepPurpleA100 => const Color(0XFFA371F4);
  Color get deepPurpleA20019 => const Color(0X19882FE1); // Gray
  Color get gray100 => const Color(0XFFF2F2F2);
  Color get gray10001 => const Color(0XFFF4F4F4);
  Color get gray10002 => const Color(0XFFF7F7F7);
  Color get gray300 => const Color(0XFFE6E6E6);
  Color get gray30001 => const Color(0XFFE3E4E8);
  Color get gray30002 => const Color(0XFFE2E0EB);
  Color get gray30003 => const Color(0XFFE3E3E3);
  Color get gray400 => const Color(0XFFBFBFBF);
  Color get gray50 => const Color(0XFFFAFAFB);
  Color get gray600 => const Color(0XFF7B7B8D);
  Color get gray700 => const Color(0XFF575757);
  Color get gray800 => const Color(0XFF404040);
  Color get gray900 => const Color(0XFF171717);
  Color get gray90001 => const Color(0XFF232323);
  Color get gray90002 => const Color(0XFF170D2D); // Green
  Color get green600 => const Color(0XFF34A853);
  Color get green900 => const Color(0XFF334820);
  Color get greenA700 => const Color(0XFF00AB67);
  Color get greenA70001 => const Color(0XFF22C55E); // Indigo
  Color get indigo800 => const Color(0XFF253B80);
  Color get indigo900 => const Color(0XFF252C5E);
  Color get indigo90001 => const Color(0XFF263577);
  Color get indigo90002 => const Color(0XFF222D65); // LightBlue
  Color get lightBlue40019 => const Color(0X1916BCF0);
  Color get lightBlue40033 => const Color(0X3316BBF0);
  Color get lightBlueA700 => const Color(0XFF007AFF); // LightGreen
  Color get lightGreen500 => const Color(0XFFA2DF40);
  Color get lightGreenA700 => const Color(0XFF2AFF17); // Orange
  Color get orangeA700 => const Color(0XFFFF5F01);
  Color get orangeA70001 => const Color(0XFFFF5F00); // Red
  Color get red500 => const Color(0XFFEA4335);
  Color get redA700 => const Color(0XFFEA001B);
  Color get redA70001 => const Color(0XFFEB001B); // White
  Color get whiteA700 => const Color(0XFFFFFFFF);
  Color get yellow800 => const Color(0XFFF79F1A);
  Color get yellow80001 => const Color(0XFFF79E1B); // Yellow
}
