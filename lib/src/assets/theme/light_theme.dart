//light_theme.dart
import 'package:atm_app_flutter/src/assets/app_widget_size.dart';
import 'package:flutter/material.dart';

// Primary Text Theme
const Color APP_PRIMARY_COLOR = Color(0xFFFF6700);
const Color APP_SECONDARY_PRIMARY_COLOR = Color(0xFFFF8800);

// Text Theme
const Color APP_TEXT_COLOR = Color(0xFF000000);
const Color APP_LIGHT_TEXT_COLOR = Color(0xFF666666);

// Accent Text Theme
const Color APP_ACCENT_TEXT_COLOR = Color(0xFF002953);
const Color APP_LIGHT_ACCENT_TEXT_COLOR = Color(0xFFFFFFFF);

// Others
const Color APP_ERROR_COLOR = Color(0xFFB40000);
const Color APP_DIVIDER_COLOR = Color(0xFFEAEBEC);
const Color LABEL_COLOR = Color(0xFF999999);

// Theme Data
const Color APP_PRIMARY_LIGHT_COLOR = Color(0xFFD7E4F9);
const Color APP_ACCENT_COLOR = Color(0xFF092F5E);
const Color APP_BACKGROUND_COLOR = Color(0xFFF7F7F7);
const Color APP_SCAFFOLD_COLOR = Color(0xFFFFFFFF);

const Color APP_APPBAR_THEME_COLOR = Color(0xFF092F5E);
const Color SNACKBAR_BACKGROUND_COLOR = Color(0xFFEDEDED);
const Color BOTTOM_SHEET_BACKGROUND_COLOR = Color(0xFFFFFFFF);
const Color APP_PRIMARY_ICON_THEME_COLOR = Color(0xFFFF8800);
const Color APP_ICON_THEME_COLOR = Color(0xFFFFFFFF);
const Color APP_ACCENT_ICON_THEME_COLOR = Color(0xFF666666);
const Color APP_INPUT_FILL_COLOR = Color(0xFFF1F1F1);
const Color BLACK_COLOR = Color(0xFF000000);
const Color APP_FOCUS_INPUT_BORDER_COLOR = Color(0xFFEAEBEC);
const Color APP_DIALOG_BACKGROUND_COLOR = Color(0xFF0B376E);

Color hexToColor(String code) =>
    Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);

ThemeData lightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: APP_PRIMARY_COLOR,
    primaryColorLight: APP_PRIMARY_LIGHT_COLOR,
    primaryColorDark: APP_SECONDARY_PRIMARY_COLOR,
    accentColor: APP_ACCENT_COLOR,
    backgroundColor: APP_BACKGROUND_COLOR,
    scaffoldBackgroundColor: APP_SCAFFOLD_COLOR,
    dialogBackgroundColor: APP_DIALOG_BACKGROUND_COLOR,
    fontFamily: 'opensans',
    primaryTextTheme: TextTheme(
      headline6: TextStyle(
        letterSpacing: 0,
        fontSize: AppWidgetSize.headline6Size,
        fontWeight: FontWeight.w600,
        color: APP_PRIMARY_COLOR,
      ),
      headline5: TextStyle(
        letterSpacing: 0,
        fontSize: AppWidgetSize.headline5Size,
        fontWeight: FontWeight.w600,
        color: APP_PRIMARY_COLOR,
      ),
      headline4: TextStyle(
        letterSpacing: 0,
        fontSize: AppWidgetSize.headline4Size,
        fontWeight: FontWeight.w400,
        color: APP_PRIMARY_COLOR,
      ),
      headline3: TextStyle(
        letterSpacing: 0,
        fontSize: AppWidgetSize.headline3Size,
        fontWeight: FontWeight.w600,
        color: APP_PRIMARY_COLOR,
      ),
      headline2: TextStyle(
        letterSpacing: 0,
        fontSize: AppWidgetSize.headline2Size,
        fontWeight: FontWeight.w600,
        color: APP_PRIMARY_COLOR,
      ),
      headline1: TextStyle(
        letterSpacing: 0,
        fontSize: AppWidgetSize.headline1Size,
        fontWeight: FontWeight.w600,
        color: APP_PRIMARY_COLOR,
      ),
      subtitle1: TextStyle(
        letterSpacing: 0,
        fontSize: AppWidgetSize.subtitle1Size,
        fontWeight: FontWeight.w600,
        color: APP_SECONDARY_PRIMARY_COLOR,
      ),
      subtitle2: TextStyle(
        letterSpacing: 0,
        fontSize: AppWidgetSize.subtitle2Size,
        fontWeight: FontWeight.w600,
        color: APP_SECONDARY_PRIMARY_COLOR,
      ),
      bodyText2: TextStyle(
        letterSpacing: 0,
        fontSize: AppWidgetSize.bodyText2Size,
        fontWeight: FontWeight.w400,
        color: APP_PRIMARY_COLOR,
      ),
      bodyText1: TextStyle(
        letterSpacing: 0,
        fontSize: AppWidgetSize.bodyText1Size,
        fontWeight: FontWeight.w400,
        color: APP_PRIMARY_COLOR,
      ),
      button: TextStyle(
        letterSpacing: 0,
        fontSize: AppWidgetSize.buttonTextSize,
        fontWeight: FontWeight.w600,
        color: APP_SECONDARY_PRIMARY_COLOR,
      ),
      caption: TextStyle(
        letterSpacing: 0,
        fontSize: AppWidgetSize.captionSize,
        fontWeight: FontWeight.w400,
        color: APP_SECONDARY_PRIMARY_COLOR,
      ),
      overline: TextStyle(
        letterSpacing: 0,
        fontSize: AppWidgetSize.overlineSize,
        fontWeight: FontWeight.w400,
        color: APP_SECONDARY_PRIMARY_COLOR,
      ),
    ),
    textTheme: TextTheme(
      headline6: TextStyle(
        letterSpacing: 0,
        fontSize: AppWidgetSize.headline6Size,
        fontWeight: FontWeight.w600,
        color: APP_TEXT_COLOR,
      ),
      headline5: TextStyle(
        letterSpacing: 0,
        fontSize: AppWidgetSize.headline5Size,
        fontWeight: FontWeight.w600,
        color: APP_TEXT_COLOR,
      ),
      headline4: TextStyle(
        letterSpacing: 0,
        fontSize: AppWidgetSize.headline4Size,
        fontWeight: FontWeight.w400,
        color: APP_TEXT_COLOR,
      ),
      headline3: TextStyle(
        letterSpacing: 0,
        fontSize: AppWidgetSize.headline3Size,
        fontWeight: FontWeight.w600,
        color: APP_TEXT_COLOR,
      ),
      headline2: TextStyle(
        letterSpacing: 0,
        fontSize: AppWidgetSize.headline2Size,
        fontWeight: FontWeight.w600,
        color: APP_TEXT_COLOR,
      ),
      headline1: TextStyle(
        letterSpacing: 0,
        fontSize: AppWidgetSize.headline1Size,
        fontWeight: FontWeight.w600,
        color: APP_TEXT_COLOR,
      ),
      subtitle1: TextStyle(
        letterSpacing: 0,
        fontSize: AppWidgetSize.subtitle1Size,
        fontWeight: FontWeight.w600,
        color: APP_LIGHT_TEXT_COLOR,
      ),
      subtitle2: TextStyle(
        letterSpacing: 0,
        fontSize: AppWidgetSize.subtitle2Size,
        fontWeight: FontWeight.w600,
        color: APP_LIGHT_TEXT_COLOR,
      ),
      bodyText2: TextStyle(
        letterSpacing: 0,
        fontSize: AppWidgetSize.bodyText2Size,
        fontWeight: FontWeight.w400,
        color: APP_LIGHT_TEXT_COLOR,
      ),
      bodyText1: TextStyle(
        letterSpacing: 0,
        fontSize: AppWidgetSize.bodyText1Size,
        fontWeight: FontWeight.w400,
        color: APP_TEXT_COLOR,
      ),
      button: TextStyle(
          letterSpacing: 0,
          fontSize: AppWidgetSize.buttonTextSize,
          fontWeight: FontWeight.w600,
          color: APP_LIGHT_TEXT_COLOR),
      caption: TextStyle(
        letterSpacing: 0,
        fontSize: AppWidgetSize.captionSize,
        fontWeight: FontWeight.w400,
        color: APP_LIGHT_TEXT_COLOR,
      ),
      overline: TextStyle(
        letterSpacing: 0,
        fontSize: AppWidgetSize.overlineSize,
        fontWeight: FontWeight.w400,
        color: APP_LIGHT_TEXT_COLOR,
      ),
    ),
    accentTextTheme: TextTheme(
      headline6: TextStyle(
        letterSpacing: 0,
        fontSize: AppWidgetSize.headline6Size,
        fontWeight: FontWeight.w600,
        color: APP_ACCENT_TEXT_COLOR,
      ),
      headline5: TextStyle(
        letterSpacing: 0,
        fontSize: AppWidgetSize.headline5Size,
        fontWeight: FontWeight.w600,
        color: APP_ACCENT_TEXT_COLOR,
      ),
      headline4: TextStyle(
        letterSpacing: 0,
        fontSize: AppWidgetSize.headline4Size,
        fontWeight: FontWeight.w400,
        color: APP_ACCENT_TEXT_COLOR,
      ),
      headline3: TextStyle(
        letterSpacing: 0,
        fontSize: AppWidgetSize.headline3Size,
        fontWeight: FontWeight.w600,
        color: APP_ACCENT_TEXT_COLOR,
      ),
      headline2: TextStyle(
        letterSpacing: 0,
        fontSize: AppWidgetSize.headline2Size,
        fontWeight: FontWeight.w600,
        color: APP_ACCENT_TEXT_COLOR,
      ),
      headline1: TextStyle(
        letterSpacing: 0,
        fontSize: AppWidgetSize.headline1Size,
        fontWeight: FontWeight.w600,
        color: APP_ACCENT_TEXT_COLOR,
      ),
      subtitle1: TextStyle(
        letterSpacing: 0,
        fontSize: AppWidgetSize.subtitle1Size,
        fontWeight: FontWeight.w600,
        color: APP_LIGHT_ACCENT_TEXT_COLOR,
      ),
      subtitle2: TextStyle(
        letterSpacing: 0,
        fontSize: AppWidgetSize.subtitle2Size,
        fontWeight: FontWeight.w600,
        color: APP_LIGHT_ACCENT_TEXT_COLOR,
      ),
      bodyText2: TextStyle(
        letterSpacing: 0,
        fontSize: AppWidgetSize.bodyText2Size,
        fontWeight: FontWeight.w500,
        color: APP_ACCENT_TEXT_COLOR,
      ),
      bodyText1: TextStyle(
        letterSpacing: 0,
        fontSize: AppWidgetSize.bodyText1Size,
        fontWeight: FontWeight.w500,
        color: APP_ACCENT_TEXT_COLOR,
      ),
      button: TextStyle(
        letterSpacing: 0,
        fontSize: AppWidgetSize.buttonTextSize,
        fontWeight: FontWeight.w600,
        color: APP_LIGHT_ACCENT_TEXT_COLOR,
      ),
      caption: TextStyle(
        letterSpacing: 0,
        fontSize: AppWidgetSize.captionSize,
        fontWeight: FontWeight.w400,
        color: APP_LIGHT_ACCENT_TEXT_COLOR,
      ),
      overline: TextStyle(
        letterSpacing: 0,
        fontSize: AppWidgetSize.overlineSize,
        fontWeight: FontWeight.w400,
        color: APP_LIGHT_ACCENT_TEXT_COLOR,
      ),
    ),
    appBarTheme: const AppBarTheme(
      color: APP_APPBAR_THEME_COLOR,
      elevation: 0.0,
    ),
    inputDecorationTheme: InputDecorationTheme(
      //contentPadding: const EdgeInsets.only(bottom: 3),
      labelStyle: TextStyle(
        //height: 0.6,
        letterSpacing: 0,
        fontSize: AppWidgetSize.inputLabelSize,
        fontWeight: FontWeight.w400,
        color: LABEL_COLOR,
      ),
      fillColor: APP_ACCENT_COLOR,
      isDense: true,
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: APP_FOCUS_INPUT_BORDER_COLOR,
          width: 1,
        ),
      ),
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: APP_FOCUS_INPUT_BORDER_COLOR,
          width: 1,
        ),
      ),
    ),
    primaryIconTheme: const IconThemeData(
      color: APP_PRIMARY_ICON_THEME_COLOR,
    ),
    iconTheme: const IconThemeData(
      color: APP_ICON_THEME_COLOR,
    ),
    accentIconTheme: const IconThemeData(
      color: APP_ACCENT_ICON_THEME_COLOR,
    ),
    errorColor: APP_ERROR_COLOR,
    dividerColor: APP_DIVIDER_COLOR,
    buttonTheme: ButtonThemeData(
      buttonColor: APP_PRIMARY_COLOR,
      shape: RoundedRectangleBorder(
        borderRadius: AppWidgetSize.buttonBorderRadius,
      ),
      focusColor: Colors.white,
      height: AppWidgetSize.buttonHeight,
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: BOTTOM_SHEET_BACKGROUND_COLOR,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
    ),
    snackBarTheme: const SnackBarThemeData(
      backgroundColor: SNACKBAR_BACKGROUND_COLOR,
    ),
    toggleableActiveColor: APP_PRIMARY_COLOR,
  );
}
