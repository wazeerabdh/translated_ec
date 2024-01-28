import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hijazi/models/core/constant/routes.dart';
import '../../models/core/class/statusrequest.dart';
import '../../models/core/services/services.dart';

abstract class ControllerAssociationPublications  extends GetxController{
  ogToDetailMember();
}
class ControllerAssociationPublicationsIm extends ControllerAssociationPublications{

  StatusRequest statuceRequste = StatusRequest.none;
  MyServices myServices = Get.find();
///slider
  List<String> information=[
    "التقارير السنوية",
    "  الإجتماعات",
    "التعاميم",
  ];

  List<String> information2=[
    "الخطة التشغيلية",
    "لائحة الموارد البشرية",
    "الهيكل التنظيمي",

  ];
  List<IconData> couicon=[
    Icons.report_gmailerrorred_outlined,
    Icons.ad_units_outlined,
    Icons.ac_unit,

  ];

  @override
  ogToDetailMember() {
Get.toNamed(AppRoute.detailMember);
  }


}