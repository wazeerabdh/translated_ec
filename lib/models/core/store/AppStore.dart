import 'package:flutter/material.dart';
import 'package:hijazi/models/core/constant/color.dart';
import 'package:mobx/mobx.dart';
import 'package:nb_utils/nb_utils.dart';

import '../constant/apptheme.dart';


part 'AppStore.g.dart';

class AppStore = AppStoreBase with _$AppStore;

abstract class AppStoreBase with Store {
  @observable
  bool isDarkModeOn = false;

  @observable
  bool isHover = false;

  @observable
  Color? scaffoldBackground;

  @observable
  Color? backgroundColor;

  @observable
  Color? backgroundSecondaryColor;

  @observable
  Color? textPrimaryColor;

  @observable
  Color? appColorPrimaryLightColor;

  @observable
  Color? textSecondaryColor;

  @observable
  Color? appBarColor;

  @observable
  Color? iconColor;

  @observable
  Color? iconSecondaryColor;

  @observable
  var selectedDrawerItem = -1;

  @action
  Future<void> toggleDarkMode({bool? value}) async {
    isDarkModeOn = value ?? !isDarkModeOn;

    if (isDarkModeOn) {
      scaffoldBackground = AppColor.black;

      appBarColor = AppColor.accent_color_3;
      backgroundColor = Colors.white;
      backgroundSecondaryColor = Colors.white;
      appColorPrimaryLightColor = AppColor.font_grey;

      iconColor = AppColor.white;
      iconSecondaryColor = AppColor.grey_153;

      textPrimaryColor = whiteColor;
      textSecondaryColor = Colors.white54;

      textPrimaryColorGlobal = whiteColor;
      textSecondaryColorGlobal = Colors.white54;
      shadowColorGlobal = AppColor.appShadowColorDark;
    } else {
      scaffoldBackground = whiteColor;

      // appBarColor = rf_primaryColor;
      backgroundColor = Colors.black;
      backgroundSecondaryColor = AppColor.empty;
      appColorPrimaryLightColor = AppColor.white;

      iconColor = AppColor.black;
      iconSecondaryColor = AppColor.grey_153;

      textPrimaryColor = AppColor.black ;
      textSecondaryColor = AppColor.grey2 ;

      textPrimaryColorGlobal = AppColor.black ;
      textSecondaryColorGlobal =AppColor.grey2  ;
      shadowColorGlobal = AppColor.grey;
    }
    setStatusBarColor(scaffoldBackground!);

    setValue(isDarkModeOnPref, isDarkModeOn);
  }

  @action
  void toggleHover({bool value = false}) => isHover = value;

  @action
  void setDrawerItemIndex(int aIndex) {
    selectedDrawerItem = aIndex;
  }
}
