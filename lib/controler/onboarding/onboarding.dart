import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../../models/core/class/statusrequest.dart';
import '../../models/core/constant/routes.dart';
import '../../models/core/services/services.dart';
import '../../models/data/datasources/static/static.dart';

abstract class onBoardingControler extends GetxController {
  next();
  onPageChanged(int index);
}

// ignore: camel_case_types
class onBoardingControllerIm extends onBoardingControler {
  late PageController pageController;
  StatusRequest statuceRequste = StatusRequest.none;
  MyServices myServices = Get.find();
  int curentpage = 0;
  MyServices Myservices=Get.find();
  @override
  next() {
    curentpage++;
    // Get.toNamed(AppRoute.homeScreen);
    if (curentpage > onboadingList.length - 1) {
      Myservices.sharedPreferences.setString("step", "1");
       Get.toNamed(AppRoute.homeScreen);
    } else {
      pageController.animateToPage(curentpage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }
  @override
  onPageChanged(int index) {
    curentpage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
