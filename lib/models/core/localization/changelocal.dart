

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hijazi/models/core/constant/apptheme.dart';
import '../services/services.dart';

class LocalController extends GetxController{
  Locale? language;
  MyServices myServices=Get.find();
  ThemeData apptheme=themEnglish;
  changelang(String langcode){
    Locale locale=Locale(langcode);
    myServices.sharedPreferences.setString("lang", langcode);
    apptheme=langcode=="ar"?themArabic:themEnglish;
    Get.updateLocale(locale);
  }
  @override
  void onInit() {
    String? sharedPrafLang=myServices.sharedPreferences.getString("lang") ;
    if(sharedPrafLang=="ar"){
      language=const Locale("ar");
      apptheme= themArabic;
    }else if(sharedPrafLang=="en"){
      language=const Locale("en");
      apptheme=themEnglish;
    }else{
      language=Locale(Get.deviceLocale!.languageCode);
      apptheme=themEnglish;
    }
    super.onInit();
  }
}