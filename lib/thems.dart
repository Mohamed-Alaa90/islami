import 'package:flutter/material.dart';

class MyTheme {

  static Color lightColor = const Color(0xffB7935F);
  static Color darkColor = const Color(0xff141A2E);
  static Color goldColor = const Color(0xffFACC1D);
  static Color blackColor = const Color(0xff242424);
  static Color whiteColor = const Color(0xffd5d4d4);

  static ThemeData lightTheme = ThemeData(

    useMaterial3: false,
    primaryColor: lightColor,
    appBarTheme:  AppBarTheme(
      iconTheme: IconThemeData(color:blackColor ),
      elevation: 0,

      backgroundColor: Colors.transparent,
      centerTitle: true,
    ),
    dividerTheme: DividerThemeData(color: lightColor, indent: 3),
    cardTheme: CardThemeData(
        //margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        color: lightColor),
    cardColor:darkColor ,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(color: Colors.white, size: 40),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(
      titleSmall: TextStyle(
          color: blackColor, fontSize: 20, fontWeight: FontWeight.w400),
      titleMedium: TextStyle(
          color: blackColor, fontSize: 25, fontWeight: FontWeight.w600),
      titleLarge: TextStyle(
          color: blackColor, fontSize: 30, fontWeight: FontWeight.w700),
    ),
  );
  static ThemeData darkTheme = ThemeData(
      useMaterial3: false,
    primaryColor: darkColor,
    appBarTheme:
    AppBarTheme(
      iconTheme: IconThemeData(color: whiteColor),
      elevation: 0,
      titleTextStyle: const TextStyle(color: Colors.white),
      backgroundColor: Colors.transparent,
      centerTitle: true,
    ),
    bottomNavigationBarTheme:
        BottomNavigationBarThemeData(backgroundColor: darkColor),
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(
      titleSmall: TextStyle(
          color: goldColor, fontSize: 20, fontWeight: FontWeight.w400),
      titleMedium: TextStyle(
          color: goldColor, fontSize: 25, fontWeight: FontWeight.w600),
      titleLarge: TextStyle(
          color: goldColor, fontSize: 30, fontWeight: FontWeight.w700),
    ),
    dividerTheme: DividerThemeData(color: goldColor, indent: 3),
    cardTheme: CardThemeData(color: darkColor),
    cardColor: goldColor
  );
}
