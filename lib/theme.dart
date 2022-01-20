import 'package:flutter/material.dart';

class ThemeConfig {
  static ThemeData createLightTheme(Color appColor) => ThemeData(
        colorScheme: const ColorScheme.light().copyWith(primary: appColor),
        primaryColor: appColor,
        primarySwatch: Colors.blueGrey,
        shadowColor: Colors.transparent,
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.grey.shade100,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: appColor),
          ),
        ),
      );

  static ThemeData createDarkTheme(Color appColor) => ThemeData(
        colorScheme: const ColorScheme.dark().copyWith(primary: appColor),
        primaryColor: appColor,
        primarySwatch: Colors.blueGrey,
        shadowColor: Colors.transparent,
        brightness: Brightness.dark,
        cardColor: const Color(0xff2A2F32),
        canvasColor: const Color(0xff212426),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.black12,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: appColor),
          ),
        ),
      );
}
