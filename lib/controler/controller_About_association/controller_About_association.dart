import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hijazi/models/core/constant/routes.dart';

import '../../models/core/class/statusrequest.dart';

import '../../models/core/services/services.dart';

abstract class ControllerAboutAssociation  extends GetxController{

}
class ControllerAboutAssociationIm extends ControllerAboutAssociation{

  StatusRequest statuceRequste = StatusRequest.none;
  MyServices myServices = Get.find();
///slider
  List<String> information=[
    "كلمة رئيس الجمعية",
    "نبذة عن الجمعية",
    "الرؤية والرسالة",
    "الاهداف والقيم",
    "الهيكل التنظيمي",
    "اعضاء مجلس الادارة",
    "التقارير السنوية",
];

  List  projects = [
    "المدير العام/",
    "المدير التنفيذي/",
    "مدير العلاقات/",
    "مدير المالية/",
    "الفني/",
  ];
  List  name = [
    "محمد رسام",
    "عبدالسلام",
    "علي شيخ",
    "محمود علي",
    "سعيد رسام",
  ];
  List  reaportyears = [
    "تقرير لسنة 2018",
    "تقرير لسنة 2019",
    "تقرير لسنة 2020",
    "تقرير لسنة 2021",
    "تقرير لسنة 2022",
    "تقرير لسنة 2023",
  ];
  List  AssociationPolicies = [
    "سياسة خصوصية البيانات",
    "سياسة جمع التبرعات",
    "سياسة إدارة المتطوعين",
    "سياسة تعارض المصالح",
    "سياسة قواعد السلوك ",
    "سياسة تنظيم العلاقة مع المستفيدين",

  ];
  List  reaportbussbness = [

    "تقرير المالية 2018",
    "تقرير المالية 2019",
    "تقرير المالية 2020",
    "تقرير المالية 2021",
    "تقرير المالية 2022",
    "تقرير المالية 2023",

  ];
  // 4
  List<Function()?> onTab = [
  () => Get.toNamed(AppRoute.speechAssociationPresident),
  () => Get.toNamed(AppRoute.aboutAlaeibus),
  () => Get.toNamed(AppRoute.visionMission),
  () => Get.toNamed(AppRoute.golAssociation),
  () => Get.toNamed(AppRoute.organizationalStructure),
  () => Get.toNamed(AppRoute.membersAssociation),
  () => Get.toNamed(AppRoute.reportYear),
  ];
  List<IconData> couicon=[

    Icons.flight_takeoff_outlined,
    Icons.family_restroom_outlined,
    Icons.app_blocking_outlined,
    Icons.flight_takeoff_outlined,
    Icons.family_restroom_outlined,
    Icons.family_restroom_outlined,
  ];

}