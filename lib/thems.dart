import 'package:flutter/material.dart';

class MyTheme {
  static Color lightColor = const Color(0xffB7935F);
  static Color darkColor = const Color(0xff141A2E);
  static Color fontDarkColor = const Color(0xff141A2E);
  static Color fontLightColor = const Color(0xff242424);

  static ThemeData lightTheme = ThemeData(
primaryColor: lightColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
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
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(
      titleSmall: TextStyle(
          color: fontDarkColor, fontSize: 20, fontWeight: FontWeight.w400),
      titleMedium: TextStyle(
          color: fontDarkColor, fontSize: 25, fontWeight: FontWeight.w600),
      titleLarge: TextStyle(
          color: fontDarkColor, fontSize: 30, fontWeight: FontWeight.w700),
    ),
  );
}
