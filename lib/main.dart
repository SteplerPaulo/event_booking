import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  const lightPrimaryColor = Color(0xFF5669FF);
  const lightSecondaryColor = Color.fromARGB(255, 41, 89, 91);
  const primaryTextColor = Color(0xFF120D26);

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
      textTheme: GoogleFonts.comfortaaTextTheme(ThemeData().textTheme),
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
          minimumSize: const Size(250, 50),
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
        elevation: 0,
      ));

  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: lightTheme,
    ),
  );
}
