import 'package:flutter/material.dart';

// FontName
const String fontNameDefault = 'Montserrat';
// Colors
const Color kaizenBlack = Colors.black;
const Color kaizenWhite = Colors.white;
const Color kaizenGrey = Colors.grey;
Color kaizenBlue = const Color.fromARGB(255, 75, 165, 238);
Color kaizenOrange = const Color.fromARGB(255, 243, 163, 126);
// Text Size
const extraSmallTextSize = 14.0;
const smallTextSize = 16.0;
const mediumTextSize = 22.0;
const extraMediumTextSize = 32.0;
const largeTextSize = 42.0;
// Padding
const defaultPadding = 10.0;
const defaultSpace = 24.0;
const mediumPadding = 20.0;
const extraMediumPadding = 30.0;
const largePadding = 60.0;

class KaizenTheme {
  // Light Text Theme /Text is black
  static TextTheme lightTextTheme = const TextTheme(
    bodyText1: TextStyle(
      fontFamily: fontNameDefault,
      fontSize: extraSmallTextSize,
      fontWeight: FontWeight.w600,
      color: kaizenBlack,
    ),
    bodyText2: TextStyle(
      fontFamily: fontNameDefault,
      fontSize: extraSmallTextSize,
      fontWeight: FontWeight.w300,
      color: kaizenBlack,
    ),
    headline1: TextStyle(
      fontFamily: fontNameDefault,
      fontSize: largeTextSize,
      fontWeight: FontWeight.bold,
      color: kaizenBlack,
    ),
    headline2: TextStyle(
      fontFamily: fontNameDefault,
      fontSize: extraMediumTextSize,
      fontWeight: FontWeight.w600,
      color: kaizenBlack,
    ),
    headline3: TextStyle(
      fontFamily: fontNameDefault,
      fontSize: smallTextSize,
      fontWeight: FontWeight.w600,
      color: kaizenGrey,
    ),
    headline6: TextStyle(
      fontFamily: fontNameDefault,
      fontSize: mediumTextSize,
      fontWeight: FontWeight.w600,
      color: kaizenBlack,
    ),
  );

  // Dark Text Theme /Text is white
  static TextTheme darkTextTheme = const TextTheme(
    bodyText1: TextStyle(
      fontFamily: fontNameDefault,
      fontSize: extraSmallTextSize,
      fontWeight: FontWeight.w600,
      color: kaizenWhite,
    ),
    bodyText2: TextStyle(
      fontFamily: fontNameDefault,
      fontSize: extraSmallTextSize,
      fontWeight: FontWeight.w300,
      color: kaizenWhite,
    ),
    headline1: TextStyle(
      fontFamily: fontNameDefault,
      fontSize: largeTextSize,
      fontWeight: FontWeight.bold,
      color: kaizenWhite,
    ),
    headline2: TextStyle(
      fontFamily: fontNameDefault,
      fontSize: extraMediumTextSize,
      fontWeight: FontWeight.w600,
      color: kaizenWhite,
    ),
    headline3: TextStyle(
      fontFamily: fontNameDefault,
      fontSize: smallTextSize,
      fontWeight: FontWeight.w600,
      color: kaizenWhite,
    ),
    headline6: TextStyle(
      fontFamily: fontNameDefault,
      fontSize: mediumTextSize,
      fontWeight: FontWeight.w600,
      color: kaizenWhite,
    ),
  );

// light Theme Data
  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      backgroundColor: kaizenWhite,
      // CheckBoxes
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith(
          (states) {
            return kaizenBlack;
          },
        ),
      ),
      // App Bar
      appBarTheme: const AppBarTheme(
        foregroundColor: kaizenBlack,
        backgroundColor: kaizenWhite,
      ),

      // TabBAr Theme
      tabBarTheme: const TabBarTheme(
        labelColor: kaizenBlack,
        unselectedLabelColor: kaizenGrey,
      ),
      // floating Action Button
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: kaizenWhite,
        backgroundColor: kaizenBlack,
      ),
      // bottom Navigation Bar
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: kaizenBlue,
      ),
      // textTheme ...
      textTheme: lightTextTheme,
    );
  }

// dark Theme Data
  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      backgroundColor: kaizenBlack,
      // CheckBoxes
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith(
          (states) {
            return kaizenWhite;
          },
        ),
      ),
      // App Bar
      appBarTheme: const AppBarTheme(
        foregroundColor: kaizenWhite,
        backgroundColor: kaizenGrey,
      ),
      // TabBAr Theme
      tabBarTheme: const TabBarTheme(
        labelColor: kaizenWhite,
        unselectedLabelColor: kaizenGrey,
      ),
      // floating Action Button
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        foregroundColor: kaizenWhite,
        backgroundColor: kaizenBlue,
      ),
      // bottom Navigation Bar
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: kaizenBlue,
      ),
      // textTheme ...
      textTheme: darkTextTheme,
    );
  }
}
