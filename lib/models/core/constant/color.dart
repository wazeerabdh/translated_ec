import 'package:flutter/material.dart';

class AppColor {

  static const Color grey = Color(0xff756f6f);
  static const Color grey2 = Color.fromARGB(255, 66, 66, 66);
  static const Color black = Color(0xff000000);
  // static const Color primaryColor = Color(0xff5DB1DF);
  static const Color backgroundcolor = Color(0xffF8F9FD) ; 
  static const Color primaryColor = Color(0xffe74c3c);
  static const Color secondColor = Color(0xffc0392b);
  static const Color fourthColor = Color(0xff0d3056);
  static const Color thirdColor = Color.fromARGB(255, 255, 179, 170);
  /*configurable colors stars*/
  static const Color accent_color = Color(0xff222824);
  static const Color secound_color = Color(0xff1b4928);
  static Color accent_color_2 = Color(0xff1b4928);
  static Color accent_color_3 = Color.fromRGBO(30, 117, 37, 1.0);
  static Color soft_accent_color = Color.fromRGBO(218, 211, 211, 1.0);
  static Color soft_accent_color_2 = Color.fromRGBO(247,189,168, 1);
  static Color splash_login_screen_color = Color.fromRGBO(81, 78, 93, 1.0); // if not sure , use the same color as accent color
  /*configurable colors ends*/
  static   const appBarGradent = LinearGradient(colors: [
    Color(0xff1b4928),
    Color(0xff1b4928),
  ], stops: [
    0.5,
    1.0
  ]);
  static   const appBarGradent2 = LinearGradient(colors: [
    Color(0xff1b4928),
    Color(0xff1b4928),
  ], stops: [
    0.5,
    1.0
  ]);
  static const Color    appShadowColorDark = Color(0x1A3E3942);
  /*If you are not a developer, do not change the bottom colors*/
  static const Color white = Color.fromRGBO(255,255,255, 1);
  static const Color orang = Colors.deepOrange;
  static Color light_grey = Color.fromRGBO(239,239,239, 1);
  static Color dark_grey = Color.fromRGBO(112,112,112, 1);
  static Color medium_grey = Color.fromRGBO(164, 159, 159, 1.0);
  static const Color grey_153 = Color.fromRGBO(229, 221, 221, 1.0);
  static const Color font_grey = Color.fromRGBO(73,73,73, 1);
  static Color textfield_grey = Color.fromRGBO(209,209,209, 1);
  static Color shimmer_base = Colors.grey.shade50;
  static Color shimmer_highlighted = Colors.grey.shade200;

  static Color green = Color.fromRGBO(187, 222, 174, 0.9294117647058824);
  static Color lime = Color.fromRGBO(130, 180, 64, 1);
  static Color orange = Color.fromRGBO(255, 111, 0, 1);
  static Color blue = Color.fromRGBO(0, 132, 180, 1);
  static Color golden = Color.fromRGBO(208, 180, 34, 1.0);
  static Color blues = Color.fromRGBO(47, 127, 248, 1.0);
  static Color red_disabled = Colors.red;
  static Color empty = Color(0xff343434);
  static Color lime_disabled = Color.fromRGBO(130, 180, 64, .5);
  static Color orange_disabled = Color.fromRGBO(
      183, 93, 24, 0.9294117647058824);
  static Color blue_disabled = Color.fromRGBO(0, 132, 180, .5);
  static Color golden_disabled = Color.fromRGBO(255, 171, 0, .5);


}
