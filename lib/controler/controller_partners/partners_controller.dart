import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../models/core/class/statusrequest.dart';
import '../../models/core/constant/color.dart';
import '../../models/core/constant/fontassets.dart';
import '../../models/core/constant/routes.dart';
import '../../models/core/services/services.dart';
abstract class PartnersController extends GetxController {
  onTapped(int i);
  goToHoteldetail();
}

class PartnersControllerIm extends PartnersController {
  StatusRequest statuceRequste = StatusRequest.none;
  var sliderIndex = 0.obs;
  MyServices myServices = Get.find();
  int currentIndex = 0;
  int aurrent = 8;

  // final List<Widget> children = [
  //   CustomAppBar(),
  //   CustomAppBar(),
  //   CustomAppBar(),
  //   CustomAppBar(),
  //   CustomAppBar(),
  //   CustomAppBar(),
  //   CustomAppBar(),
  //   CustomAppBar(),
  // ];

  Widget buildTab(String categoryName, int index) {
    return Padding(
      padding: const EdgeInsets.only(right: 2, top: 6, left: 2, bottom: 6),
      child: Text(
        categoryName,
        style: TextStyle(
          color: currentIndex == index
              ? AppColor.accent_color
              : Colors.black,
          fontSize: currentIndex == index ? 14 : 13,
          fontWeight: FontWeight.bold,
          fontFamily: FontAssets.Tajawal,
        ),
      ),
    );
  }
List<String> category=[
  "المحلات التجارية",
  "الصيدليات",
  "الادوات المدرسية",
  "المستشفيات",
  "العيادات",
  "المطاعم",
  "المدارس الاهلية",
  "المختبرات",
];
  @override
  goToHoteldetail() {
    Get.toNamed(AppRoute.marketDetail);
  }
  @override
  onTapped( i) {
    currentIndex = i;
    update();
  }
}
