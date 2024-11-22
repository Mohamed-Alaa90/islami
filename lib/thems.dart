import 'package:flutter/material.dart';

class MyTheme {
  static Color lightColor = const Color(0xffB7935F);
  static Color darkColor = const Color(0xff141A2E);
  static Color fontDarkColor = const Color(0xffFACC1D);
  static Color fontLightColor = const Color(0xff242424);
  static Color whiteLightColor = const Color(0xffd5d4d4);

  static ThemeData lightTheme = ThemeData(
    primaryColor: lightColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
    ),
    dividerColor: lightColor,
    cardTheme: CardTheme(
      color: whiteLightColor
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(color: Colors.white, size: 40),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(
      titleSmall: TextStyle(
          color: fontLightColor, fontSize: 20, fontWeight: FontWeight.w400),
      titleMedium: TextStyle(
          color: fontLightColor, fontSize: 25, fontWeight: FontWeight.w600),
      titleLarge: TextStyle(
          color: fontLightColor, fontSize: 30, fontWeight: FontWeight.w700),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    primaryColor: darkColor,
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(color: Colors.white),
      backgroundColor: Colors.transparent,
      centerTitle: true,
    ),
    bottomNavigationBarTheme:
        BottomNavigationBarThemeData(
            backgroundColor: darkColor),
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(
      titleSmall: TextStyle(
          color: fontDarkColor, fontSize: 20, fontWeight: FontWeight.w400),
      titleMedium: TextStyle(
          color: fontDarkColor, fontSize: 25, fontWeight: FontWeight.w600),
      titleLarge: TextStyle(
          color: fontDarkColor, fontSize: 30, fontWeight: FontWeight.w700),
    ),
    cardTheme: CardTheme(
      color: darkColor
    )
  );
}
