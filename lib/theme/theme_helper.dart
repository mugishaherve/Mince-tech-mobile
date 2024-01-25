import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.onErrorContainer,
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.gray600,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(27.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100.h),
              topRight: Radius.circular(0.h),
              bottomLeft: Radius.circular(0.h),
              bottomRight: Radius.circular(10.h),
            ),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        side: BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.blueGray500,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.gray600,
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: Color(0XFF232266),
          fontSize: 15.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.gray600,
          fontSize: 11.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        displaySmall: TextStyle(
          color: colorScheme.primary,
          fontSize: 35.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        headlineMedium: TextStyle(
          color: Color(0XFF6B6B6B),
          fontSize: 28.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.primary,
          fontSize: 25.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: appTheme.gray600,
          fontSize: 11.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        ),
        labelSmall: TextStyle(
          color: appTheme.gray500,
          fontSize: 9.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: colorScheme.primary,
          fontSize: 20.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          color: colorScheme.onErrorContainer,
          fontSize: 17.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w800,
        ),
        titleSmall: TextStyle(
          color: appTheme.gray600,
          fontSize: 15.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF232266),
    primaryContainer: Color(0XFF8F84E9),

    // Error colors
    errorContainer: Color(0XFFFF0000),
    onErrorContainer: Color(0XFFFFFFFF),

    // On colors(text colors)
    onPrimary: Color(0XFFEDD8B3),
    onPrimaryContainer: Color(0XFF041327),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amber500 => Color(0XFFFFC107);

  // Black
  Color get black900 => Color(0XFF000000);

  // BlueGray
  Color get blueGray100 => Color(0XFFD4D5E1);
  Color get blueGray10001 => Color(0XFFD4D6E2);
  Color get blueGray500 => Color(0XFF645B95);

  // Cyan
  Color get cyan200 => Color(0XFF71CFEC);

  // DeepOrange
  Color get deepOrange400 => Color(0XFFFF6C52);
  Color get deepOrange50 => Color(0XFFFFE2DC);

  // DeepPurple
  Color get deepPurple100 => Color(0XFFD7CCF2);
  Color get deepPurple200 => Color(0XFFBCA9F2);
  Color get deepPurple50 => Color(0XFFECE9F8);
  Color get deepPurple50099 => Color(0X995846DF);

  // DeepPurplec
  Color get deepPurple5004c => Color(0X4C5A47BC);

  // Gray
  Color get gray50 => Color(0XFFFAFAFA);
  Color get gray500 => Color(0XFF939393);
  Color get gray600 => Color(0XFF6B6B6B);
  Color get gray900 => Color(0XFF081029);

  // Green
  Color get green400 => Color(0XFF5BAC85);
  Color get green500 => Color(0XFF4CAF50);

  // Indigo
  Color get indigo100 => Color(0XFFBBC2FB);
  Color get indigo400 => Color(0XFF5261DB);
  Color get indigo40001 => Color(0XFF5261DC);
  Color get indigo50 => Color(0XFFE3DEF1);
  Color get indigo5001 => Color(0XFFE3DEF0);
  Color get indigo600 => Color(0XFF3D5A98);

  // Lime
  Color get lime100 => Color(0XFFF6E5C8);
  Color get lime10001 => Color(0XFFF6E6C8);

  // Orange
  Color get orange300 => Color(0XFFE6AF4E);

  // Pink
  Color get pink400 => Color(0XFFCE2A96);

  // Red
  Color get red200 => Color(0XFFEA9292);

  // Teal
  Color get teal100 => Color(0XFFAFD9E6);
  Color get teal50 => Color(0XFFD4EDF5);
  Color get teal5001 => Color(0XFFD5EEF6);

  // Yellow
  Color get yellow600 => Color(0XFFF9CB38);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
