
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:hijazi/models/core/constant/routes.dart';
import 'package:share/share.dart';

import '../../models/core/class/statusrequest.dart';
import '../../models/core/services/services.dart';

abstract class MediaCenterController extends GetxController{
ogToDetailNews();
shareContent(String  text);
goToAlbomImage();
goToDetailAdvertisement();gotoImagelist();
}

class MediaCenterControllerIm extends MediaCenterController {
  StatusRequest statuceRequste = StatusRequest.none;
  MyServices myServices = Get.find();
@override
  gotoImagelist(){
  Get.toNamed(AppRoute.listImage);
}

  List<Function()?> onTab = [
  () => Get.toNamed(AppRoute.news),
  () => Get.toNamed(AppRoute.eventsActivities),
  () => Get.toNamed(AppRoute.advertisements),
  () => Get.toNamed(AppRoute.minutesMeetings),
  () => Get.toNamed(AppRoute.imageMediaCenter),
  () => Get.toNamed(AppRoute.videoBooking),

  ];
List<String> submedia=[
  "اخبار الجمعية",
  "الفعاليات والانشطة",
  "إعلانات الجمعية",
  "محاضر الاجتماع",
  "البومات الصور",
  "مكتبة الفيديو",



  ];
List<String> submedia3=[
  "تكريم الاوئل الايتام",
  "توزيع سلة غذائية للفقراء",
  "عمل مشروع للتوزيع الباس الشرعي للنساء",
  "محاضر الاجتماع",
  "البومات الصور",
  "مكتبة الفيديو",



  ];
  List<String> submedia2=[
  "إعلانات الجمعية",
  "البومات الصور",
  "مكتبة الفيديو",
 ];
  @override
  ogToDetailNews() {
Get.toNamed(AppRoute.detailNews);
  }

  @override
  shareContent(  text) {
  Share.share(text, subject: '');
  }

  @override
  goToActiveDetail() {
  Get.toNamed(AppRoute.detailActive);
  }
  @override
  goToDetailAdvertisement() {
  Get.toNamed(AppRoute.detailAdvertisement);
  }

  @override
  goToAlbomImage() {
  Get.toNamed(AppRoute.albomImage);
  }
}