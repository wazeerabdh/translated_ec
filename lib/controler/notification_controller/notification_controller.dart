import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hijazi/models/core/constant/routes.dart';
import 'package:intl/intl.dart';

import '../../models/core/class/statusrequest.dart';
import '../../models/core/services/services.dart';

abstract class NotificationController extends GetxController{
// ogToSubSearch();
// ogToWantStay();
// ogToGuest();
  onTapped(int i);
changData2();
}
class NotificationControllerIm extends NotificationController{
  StatusRequest statuceRequste = StatusRequest.none;
  MyServices myServices = Get.find();
  int current = 0;
bool qustion=false;
  List<String> roucustom=[
    "133".tr,
    "134".tr,
    "135".tr,
    "136".tr,
    "137".tr,
  ];
  List<String> listAnswer=[
   "نعم يوجد ممر لذوي الاعاقة والمكفوفيننعم يوجد ممر لذوي الاعاقة والمكفوفيننعم يوجد ممر لذوي الاعاقة والمكفوفيننعم يوجد ممر لذوي الاعاقة والمكفوفيننعم يوجد ممر لذوي الاعاقة والمكفوفين",
   "نعم يوجد ممر لذوي الاعاقة والمكفوفيننعم يوجد ممر لذوي الاعاقة والمكفوفيننعم يوجد ممر لذوي الاعاقة والمكفوفيننعم يوجد ممر لذوي الاعاقة والمكفوفيننعم يوجد ممر لذوي الاعاقة والمكفوفيننعم يوجد ممر لذوي الاعاقة والمكفوفيننعم يوجد ممر لذوي الاعاقة والمكفوفيننعم يوجد ممر لذوي الاعاقة والمكفوفيننعم يوجد ممر لذوي الاعاقة والمكفوفين",
   "نعم يوجد ممر لذوي الاعاقة والمكفوفيننعم يوجد ممر لذوي الاعاقة والمكفوفيننعم يوجد ممر لذوي الاعاقة والمكفوفيننعم يوجد ممر لذوي الاعاقة والمكفوفين",
   "نعم يوجد ممر لذوي الاعاقة والمكفوفيننعم يوجد ممر لذوي الاعاقة والمكفوفيننعم يوجد ممر لذوي الاعاقة والمكفوفيننعم يوجد ممر لذوي الاعاقة والمكفوفين",
   "نعم يوجد ممر لذوي الاعاقة والمكفوفيننعم يوجد ممر لذوي الاعاقة والمكفوفيننعم يوجد ممر لذوي الاعاقة والمكفوفيننعم يوجد ممر لذوي الاعاقة والمكفوفين",

  ];
  int currentIndex = 0;
  List<bool> isSelectedList = List.generate(7, (index) => false);
  @override
  changData2() {
    isSelectedList[currentIndex] = !isSelectedList[currentIndex];
    print("changData2: $currentIndex - ${isSelectedList[currentIndex]}");
    update();
  }


  @override
  onTapped(i) {
    currentIndex = i;
    update();
  }

}