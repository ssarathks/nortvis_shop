import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThemeConstants {
  static double scaffoldHorizontalPadding = 15;

  static ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.white,
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light),
      iconTheme: IconThemeData(color: Colors.black),
    ),
    iconTheme: const IconThemeData(
      weight: 0.01,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(color: Colors.black),
    ),
    cardTheme: CardTheme(
        color: const Color(0xFFFFFFFF),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 0),
    tabBarTheme: const TabBarTheme(
      labelColor: Colors.red,
      unselectedLabelColor: Colors.grey,
      indicatorColor: Colors.red,
      indicatorSize: TabBarIndicatorSize.tab,
    ),
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: Color(0xFF303031),
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Color(0xFF303031),
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.light)),
    cardTheme: CardTheme(
        color: const Color(0xFF404042),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 0),
    iconTheme: const IconThemeData(
      weight: 0.1,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(color: Colors.white),
    ),
    scaffoldBackgroundColor: const Color(0xFF303031),
  );
}
