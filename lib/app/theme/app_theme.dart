import 'package:flutter/material.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class ThemeConfig {
  ThemeConfig._();

  //Font Family
  static String CONNECTION_BOLD = 'Prompt-Bold';
  static String CONNECTION_MEDIUM = 'Prompt-Medium';
  static String CONNECTION_REGULAR = 'Prompt-Regular';
  static String CONNECTION_LIGHT = 'Prompt-Light';

  static const Color primaryColor = Color(0xFFFFBD08);
  static const Color _lightSecondaryHeaderColor = Color(0xFFFFFFFF);
  static const Color _darkSecondaryHeaderColor = Color(0xFF1C2128);
  static const Color darkSecondaryHeaderColor = Color(0xFF1C2128);

  static const Color borderColor = Color(0x88C9C9C9);
  static const Color boxColor = Color(0xFFABADB0);
  static const Color boxColor02 = Color(0xFF1C2128);
  static const Color boxColor03 = Color(0xFF4A4E53);
  static const Color boxColor05 = Color(0xFF454545);
  static const Color textColor = Color(0xFFE1E1E1);
  static const Color textColor01 = Color(0xFF707070);
  static const Color textColor02 = Color(0xFF646464);
  static const Color textColor03 = Color(0xFF858686);
  static const Color textColor04 = Color(0xFFB7B7B8);
  static const Color textbtn01Color = Color(0xFF4E4E4E);
  static const Color textbtn02Color = Color(0xFF939699);
  static const Color textbtn03Color = Color(0xFF259BBA);
  static const Color bgPageColor = Color(0xFF34393F);
  static const Color appBarColor = Color(0xFF1C2229);
  static const Color btnColor = Color(0xFFDADADA);
  static const Color btn01Color = Color(0xFFD9D9D9);
  static const Color searchColor = Color(0xFFD4D4D4);
  static const Color btn02Color = Color(0xFF1E1E1E);
  static const Color btn03Color = Color(0xFF242930);
  static const Color btn04Color = Color(0xFF1C2128);
  static const Color iconColor01 = Color(0xFF414141);
  static const Color inputFormFieldColor01 = Color(0xFF3A3E44);
  static const Color inputFormFieldColor02 = Color(0xFFE8E8E8);
  static const Color chatColor = Color(0xFF1C2128);
  static const Color greyD9D9D9 = Color(0xFFA9A9A9);
  static const Color grey929292 = Color(0xFF929292);
  static const Color markPin = Color(0xFFFFBB00);
  static const Color shopBtnColorGreen = Color(0xFF52BB00);
  static const Color contactBtn = Color(0xFF00DE4C);
  static const Color followBtn = Color(0xFFFE0000);
  static const Color switchBtn = Color(0xFF474D57);
  static const Color iconSearch = Color(0xFF2F2F2F);

  static const Color closeColor = Color(0xFF2E2E2E);
  static const Color profilebgColor = Color(0xFFD9D9D9);
  //Primary
  static const Color _lightPrimaryColor = Color(0xFFFFBD08);
  static const Color _darkPrimaryColor = Color(0xFFFFBD08);

  //Secondary
  static const Color _lightSecondaryColor = Color(0xffffffff);
  static const Color _darkSecondaryColor = Color(0xFFd74315);

  //Background
  static const Color _lightBackgroundColor = Color(0xFFF4F4F4);
  static const Color _darkBackgroundColor = Color(0xFF34393F);

  //AppBar
  static const Color _lightAppBarColor = Color(0xffffffff);
  static const Color _darkAppBarColor = Color(0xFF1C2229);

  //Text
  static const Color _lightTextColor = Color(0xFF323232);
  static const Color _darkTextColor = Color(0xffffffff);

  //Border
  static const Color _lightBorderColor = Colors.grey;
  static const Color _darkBorderColor = Colors.grey;

  //Icon
  static const Color _lightIconColor = _lightTextColor;
  static const Color _darkIconColor = Colors.white;

  //Text themes
  static final TextTheme _lightTextTheme = TextTheme(
    displayLarge: const TextStyle(fontSize: 20, color: _lightTextColor, fontWeight: FontWeight.w500),
    displayMedium: const TextStyle(fontSize: 60.0, color: _lightTextColor),
    displaySmall: const TextStyle(fontSize: 48.0, color: _lightTextColor),
    //appbar
    headlineMedium: TextStyle(fontSize: 20.0, color: _lightTextColor, fontFamily: CONNECTION_REGULAR),
    //ชื่อ,หัวข้อ
    titleLarge: TextStyle(fontSize: 18.0, color: _lightTextColor, fontFamily: CONNECTION_REGULAR),
    titleMedium: TextStyle(fontSize: 16.0, color: _lightTextColor, fontFamily: CONNECTION_REGULAR),
    titleSmall: TextStyle(fontSize: 14.0, color: _lightTextColor, fontFamily: CONNECTION_REGULAR),
    //ข้อความ
    bodyLarge: TextStyle(fontSize: 16.0, color: _lightTextColor, fontFamily: CONNECTION_MEDIUM),
    bodyMedium: TextStyle(fontSize: 14.0, color: _lightTextColor, fontFamily: CONNECTION_REGULAR),
    bodySmall: TextStyle(fontSize: 10.0, color: _lightTextColor, fontFamily: CONNECTION_REGULAR),
    //ปุ่ม
    labelLarge: TextStyle(fontSize: 16.0, color: _darkTextColor, fontFamily: CONNECTION_MEDIUM),
    labelMedium: TextStyle(fontSize: 14.0, color: _darkTextColor, fontFamily: CONNECTION_MEDIUM),
    labelSmall: const TextStyle(fontSize: 14.0, color: _lightTextColor),
  );

  static final TextTheme _darkTextTheme = TextTheme(
    displayLarge: const TextStyle(fontSize: 20, color: _darkTextColor, fontWeight: FontWeight.w500),
    displayMedium: const TextStyle(fontSize: 60.0, color: _darkTextColor),
    displaySmall: const TextStyle(fontSize: 48.0, color: _darkTextColor),
    //appbar
    headlineMedium: TextStyle(fontSize: 20.0, color: _darkTextColor, fontFamily: CONNECTION_REGULAR),
    //ชื่อ,หัวข้อ
    titleLarge: TextStyle(fontSize: 18.0, color: _darkTextColor, fontFamily: CONNECTION_REGULAR),
    titleMedium: TextStyle(fontSize: 16.0, color: _darkTextColor, fontFamily: CONNECTION_REGULAR),
    titleSmall: TextStyle(fontSize: 14.0, color: _darkTextColor, fontFamily: CONNECTION_REGULAR),
    //ข้อความ
    bodyLarge: TextStyle(fontSize: 16.0, color: _darkTextColor, fontFamily: CONNECTION_MEDIUM),
    bodyMedium: TextStyle(fontSize: 14.0, color: _darkTextColor, fontFamily: CONNECTION_REGULAR),
    bodySmall: TextStyle(fontSize: 10.0, color: _darkTextColor, fontFamily: CONNECTION_REGULAR),
    //ปุ่ม
    labelLarge: TextStyle(fontSize: 16.0, color: _darkTextColor, fontFamily: CONNECTION_MEDIUM),
    labelMedium: TextStyle(fontSize: 14.0, color: _darkTextColor, fontFamily: CONNECTION_MEDIUM),

    labelSmall: const TextStyle(fontSize: 14.0, color: _darkTextColor),
  );
  // //Text themes
  // static const TextTheme _lightTextTheme = TextTheme(
  //   displayLarge: TextStyle(fontSize: 20, color: _lightTextColor, fontWeight: FontWeight.w500),
  //   displayMedium: TextStyle(fontSize: 60.0, color: _lightTextColor),
  //   displaySmall: TextStyle(fontSize: 48.0, color: _lightTextColor),
  //   headlineMedium: TextStyle(fontSize: 34.0, color: _lightTextColor),
  //   headlineSmall: TextStyle(fontSize: 24.0, color: _lightTextColor),
  //   titleLarge: TextStyle(fontSize: 20.0, color: _lightTextColor, fontWeight: FontWeight.w500),
  //   titleMedium: TextStyle(fontSize: 16.0, color: _lightTextColor),
  //   titleSmall: TextStyle(fontSize: 14.0, color: _lightTextColor, fontWeight: FontWeight.w500),
  //   bodyLarge: TextStyle(fontSize: 16.0, color: _lightTextColor),
  //   bodyMedium: TextStyle(fontSize: 14.0, color: _lightTextColor),
  //   labelLarge: TextStyle(fontSize: 14.0, color: _lightTextColor, fontWeight: FontWeight.w500),
  //   bodySmall: TextStyle(fontSize: 12.0, color: _lightTextColor),
  //   labelSmall: TextStyle(fontSize: 14.0, color: _lightTextColor),
  // );

  // static const TextTheme _darkTextTheme = TextTheme(
  //   displayLarge: TextStyle(fontSize: 20, color: _darkTextColor, fontWeight: FontWeight.w500),
  //   displayMedium: TextStyle(fontSize: 60.0, color: _darkTextColor),
  //   displaySmall: TextStyle(fontSize: 48.0, color: _darkTextColor),
  //   headlineMedium: TextStyle(fontSize: 34.0, color: _darkTextColor),
  //   headlineSmall: TextStyle(fontSize: 24.0, color: _darkTextColor),
  //   titleLarge: TextStyle(fontSize: 20.0, color: _darkTextColor, fontWeight: FontWeight.w500),
  //   titleMedium: TextStyle(fontSize: 16.0, color: _darkTextColor),
  //   titleSmall: TextStyle(fontSize: 14.0, color: _darkTextColor, fontWeight: FontWeight.w500),
  //   bodyLarge: TextStyle(fontSize: 16.0, color: _darkTextColor),
  //   bodyMedium: TextStyle(fontSize: 14.0, color: _darkTextColor),
  //   labelLarge: TextStyle(fontSize: 14.0, color: _darkTextColor, fontWeight: FontWeight.w500),
  //   bodySmall: TextStyle(fontSize: 12.0, color: _darkTextColor),
  //   labelSmall: TextStyle(fontSize: 14.0, color: _darkTextColor),
  // );

  ///Light theme
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: false,
    brightness: Brightness.light,

    primaryColor: primaryColor, //สีเหลืองหลัก
    secondaryHeaderColor: _lightSecondaryHeaderColor, //สีขาว

    // accentColor: _lightSecondaryColor,
    fontFamily: CONNECTION_REGULAR,
    scaffoldBackgroundColor: _lightBackgroundColor,
    appBarTheme:  AppBarTheme(
      backgroundColor: _lightAppBarColor,
      titleTextStyle: TextStyle(color: _lightAppBarColor,fontFamily: CONNECTION_BOLD,fontSize: 18),
      // color: _lightBackgroundColor,
      iconTheme: IconThemeData(color: _lightIconColor),
      // textTheme: _lightTextTheme,
    ),
    iconTheme: const IconThemeData(
      color: _lightIconColor,
    ),
    textTheme: _lightTextTheme,
    dividerTheme: const DividerThemeData(
      color: Colors.transparent,
    ),
    dividerColor: Colors.transparent,
    colorScheme: const ColorScheme(
      background: Color(0xFFF4F4F4),
      secondaryContainer: primaryColor,
      brightness: Brightness.light,
      error: Color(0xFFFE0000),
      onBackground: _lightTextColor,
      onError: Color(0xFFFE0000),
      onPrimary: primaryColor,
      onSecondary: primaryColor,
      onSurface: Color(0xFF797979),
      primary: primaryColor,
      secondary: primaryColor,
      surface: primaryColor,
    ),
  );

  ///Dark theme
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: false,
    brightness: Brightness.dark,

    primaryColor: primaryColor, //สีเหลืองหลัก
    secondaryHeaderColor: _darkSecondaryHeaderColor, //สีน้ำเงินเข้ม

    // accentColor: _darkSecondaryColor,
    fontFamily: CONNECTION_REGULAR,
    scaffoldBackgroundColor: _darkBackgroundColor,
    appBarTheme:  AppBarTheme(
      //color: _darkAppBarColor,
      backgroundColor: _darkAppBarColor,
      titleTextStyle: TextStyle(color: _darkAppBarColor,fontFamily: CONNECTION_BOLD,fontSize: 18),
      iconTheme: IconThemeData(color: _darkIconColor),
      // textTheme: _darkTextTheme,
    ),
    iconTheme: const IconThemeData(
      color: _darkIconColor,
    ),
    textTheme: _darkTextTheme,
    dividerTheme: const DividerThemeData(
      color: Colors.transparent,
    ),
    colorScheme: const ColorScheme(
      background: Color(0xFF34393F),
      secondaryContainer: Colors.white,
      brightness: Brightness.dark,
      error: Color(0xFFFE0000),
      onBackground: _darkTextColor,
      onError: Color(0xFFFE0000),
      onPrimary: primaryColor,
      onSecondary: primaryColor,
      onSurface: Color(0xFF797979),
      primary: primaryColor,
      secondary: primaryColor,
      surface: Color(0xFF242930),
    ),
  );
}