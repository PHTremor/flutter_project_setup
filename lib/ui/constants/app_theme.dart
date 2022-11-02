import 'package:flutter/material.dart';

// FontName
const String fontNameDefault = 'Montserrat';
// Colors
const Color customBlack = Colors.black;
const Color customWhite = Colors.white;
const Color customGrey = Colors.grey;
Color customBlue = const Color.fromARGB(255, 75, 165, 238);
Color customOrange = const Color.fromARGB(255, 243, 163, 126);
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

class AppTheme {
  // Light Text Theme /Text is black
  static TextTheme lightTextTheme = const TextTheme(
    bodyText1: TextStyle(
      fontFamily: fontNameDefault,
      fontSize: extraSmallTextSize,
      fontWeight: FontWeight.w600,
      color: customBlack,
    ),
    bodyText2: TextStyle(
      fontFamily: fontNameDefault,
      fontSize: extraSmallTextSize,
      fontWeight: FontWeight.w300,
      color: customBlack,
    ),
    headline1: TextStyle(
      fontFamily: fontNameDefault,
      fontSize: largeTextSize,
      fontWeight: FontWeight.bold,
      color: customBlack,
    ),
    headline2: TextStyle(
      fontFamily: fontNameDefault,
      fontSize: extraMediumTextSize,
      fontWeight: FontWeight.w600,
      color: customBlack,
    ),
    headline3: TextStyle(
      fontFamily: fontNameDefault,
      fontSize: smallTextSize,
      fontWeight: FontWeight.w600,
      color: customGrey,
    ),
    headline6: TextStyle(
      fontFamily: fontNameDefault,
      fontSize: mediumTextSize,
      fontWeight: FontWeight.w600,
      color: customBlack,
    ),
  );

  // Dark Text Theme /Text is white
  static TextTheme darkTextTheme = const TextTheme(
    bodyText1: TextStyle(
      fontFamily: fontNameDefault,
      fontSize: extraSmallTextSize,
      fontWeight: FontWeight.w600,
      color: customWhite,
    ),
    bodyText2: TextStyle(
      fontFamily: fontNameDefault,
      fontSize: extraSmallTextSize,
      fontWeight: FontWeight.w300,
      color: customWhite,
    ),
    headline1: TextStyle(
      fontFamily: fontNameDefault,
      fontSize: largeTextSize,
      fontWeight: FontWeight.bold,
      color: customWhite,
    ),
    headline2: TextStyle(
      fontFamily: fontNameDefault,
      fontSize: extraMediumTextSize,
      fontWeight: FontWeight.w600,
      color: customWhite,
    ),
    headline3: TextStyle(
      fontFamily: fontNameDefault,
      fontSize: smallTextSize,
      fontWeight: FontWeight.w600,
      color: customWhite,
    ),
    headline6: TextStyle(
      fontFamily: fontNameDefault,
      fontSize: mediumTextSize,
      fontWeight: FontWeight.w600,
      color: customWhite,
    ),
  );

// light Theme Data
  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      backgroundColor: customWhite,
      primaryColor: customBlue,
      cardColor: customGrey,
      scaffoldBackgroundColor: customWhite,
      
      // CheckBoxes
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith(
          (states) {
            return customBlack;
          },
        ),
      ),
      // App Bar
      appBarTheme: const AppBarTheme(
        foregroundColor: customBlack,
        backgroundColor: customWhite,
      ),

      // TabBAr Theme
      tabBarTheme: const TabBarTheme(
        labelColor: customBlack,
        unselectedLabelColor: customGrey,
      ),
      // floating Action Button
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: customWhite,
        backgroundColor: customBlack,
      ),
      // bottom Navigation Bar
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: customBlue,
      ),
      // textTheme ...
      textTheme: lightTextTheme,
    );
  }

// dark Theme Data
  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      backgroundColor: customBlack,
      primaryColor: customBlue,
      cardColor: customGrey,
      scaffoldBackgroundColor: customBlack,
      
      // CheckBoxes
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith(
          (states) {
            return customWhite;
          },
        ),
      ),
      // App Bar
      appBarTheme: const AppBarTheme(
        foregroundColor: customWhite,
        backgroundColor: customGrey,
      ),
      // TabBAr Theme
      tabBarTheme: const TabBarTheme(
        labelColor: customWhite,
        unselectedLabelColor: customGrey,
      ),
      // floating Action Button
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        foregroundColor: customWhite,
        backgroundColor: customBlue,
      ),
      // bottom Navigation Bar
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: customBlue,
      ),
      // textTheme ...
      textTheme: darkTextTheme,
    );
  }
}
