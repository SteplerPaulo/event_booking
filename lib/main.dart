import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  const lightPrimaryColor = Color(0xFF5669FF);
  const lightSecondaryColor = Color(0xFF3D56F0);
  const primaryTextColor = Color(0xff110c26);
  const secondaryTextColor = Color(0xFF716E90);

  ThemeData lightTheme = ThemeData(
    //canvasColor: const Color(0xFFC4C4C4),
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: lightPrimaryColor,
      onPrimary: Colors.white,
      secondary: lightSecondaryColor,
      onSecondary: lightSecondaryColor,
      error: Colors.red.shade900,
      onError: Colors.white,
      background: lightPrimaryColor,
      onBackground: Colors.white,
      surface: lightPrimaryColor,
      onSurface: lightSecondaryColor,
    ),
    textTheme: GoogleFonts.comfortaaTextTheme(
      const TextTheme(
        headlineMedium: TextStyle(
          color: primaryTextColor,
          fontSize: 24,
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: primaryTextColor,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          color: primaryTextColor,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: secondaryTextColor,
          fontSize: 13,
        ),
        bodySmall: TextStyle(
          color: secondaryTextColor,
          fontSize: 12,
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      errorMaxLines: 3,
      contentPadding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
      border: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: Colors.grey.shade100),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        minimumSize: const Size(50, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          minimumSize: const Size(100, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    ),
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: primaryTextColor),
      backgroundColor: Colors.transparent,
      foregroundColor: primaryTextColor,
      elevation: 0,
      centerTitle: false,
    ),
    chipTheme: const ChipThemeData(
      labelStyle: TextStyle(color: Colors.white),
    ),
  );

  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: lightTheme,
    ),
  );
}
