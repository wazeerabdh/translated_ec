
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../../main.dart';
import 'color.dart';
import 'package:flutter/gestures.dart';
MaterialColor accentColor3MaterialColor = const MaterialColor(0xFF1B4928, {
  50: const Color.fromRGBO(27, 73, 40, 0.1),
  100: const Color.fromRGBO(27, 73, 40, 0.2),
  200: const Color.fromRGBO(27, 73, 40, 0.3),
  300: const Color.fromRGBO(27, 73, 40, 0.4),
  400: const Color.fromRGBO(27, 73, 40, 0.5),
  500: const Color.fromRGBO(27, 73, 40, 0.6),
  600: const Color.fromRGBO(27, 73, 40, 0.7),
  700: const Color.fromRGBO(27, 73, 40, 0.8),
  800: const Color.fromRGBO(27, 73, 40, 0.9),
  900: const Color.fromRGBO(27, 73, 40, 1.0),
});

const isDarkModeOnPref = 'isDarkModeOnPref';
const RFAppName = "حجوزات";
ThemeData themEnglish= ThemeData(
  fontFamily: "Tajawal",
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(fontFamily:'Tajawal',fontWeight: FontWeight.bold, fontSize: 14)
  ),
  textTheme: const TextTheme(
    headline1: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
    headline2: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
    bodyText1: TextStyle(
        height: 2,
        color: AppColor.grey,
        fontWeight: FontWeight.bold,
        fontSize: 14),
    bodyText2: TextStyle(
        height: 2,
        color: AppColor.grey,
        fontWeight: FontWeight.bold,
        fontSize: 12),
  ),
  primarySwatch: accentColor3MaterialColor,
);
ThemeData themArabic= ThemeData(
  fontFamily: "Tajawal",
  textTheme: const TextTheme(
    headline1: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
    headline2: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
    bodyText1: TextStyle(
        height: 2,
        color: AppColor.grey,
        fontWeight: FontWeight.bold,
        fontSize: 14),

    bodyText2: TextStyle(
        height: 2,
        color: AppColor.grey,
        fontWeight: FontWeight.bold,
        fontSize: 12),
  ),
  primarySwatch: Colors.teal,
);



