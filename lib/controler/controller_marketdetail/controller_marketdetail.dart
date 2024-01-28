import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hijazi/models/core/constant/routes.dart';
import 'package:share/share.dart';
import '../../models/core/class/statusrequest.dart';
import '../../models/core/services/services.dart';



abstract class ControllerMarketDetail extends GetxController{
  onTapped(int i);
  changData2();
  goToImage();
  shareContent(String  text);
}


class  ControllerMarketDetailIm extends  ControllerMarketDetail{



  StatusRequest statuceRequste = StatusRequest.none;
  MyServices myServices = Get.find();
  int currentIndex = 0;
  int aurrent = 2;
  bool isFavorite = false;
  @override
  shareContent(  text) {
    Share.share(text, subject: '');
  }
  isFavorites(){
    isFavorite = !isFavorite;
    update();
  }



  int current = 0;
  bool qustion=false;

  List  roucustom=[
    "116".tr,
    "117".tr,
    "118".tr,
    "119".tr,
    "120".tr,
    "121".tr,
    "122".tr,
    ///
    "116".tr,
    "117".tr,
    "118".tr,
    "119".tr,
    "120".tr,
    "121".tr,
    "122".tr,

  ];
  @override
  onTapped(i) {
    currentIndex = i;
    update();
  }

  List<bool> isSelectedList = List.generate(14, (index) => false);
  @override
  changData2() {
    isSelectedList[currentIndex] = !isSelectedList[currentIndex];
    print("changData2: $currentIndex - ${isSelectedList[currentIndex]}");
    update();
  }

  @override
  goToImage() {
 Get.toNamed(AppRoute.viewAllImageDt);
  }
}