
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:hijazi/models/core/constant/routes.dart';

import '../../models/core/class/statusrequest.dart';
import '../../models/core/services/services.dart';

abstract class VerstionController extends GetxController{
  // goTopayment();
  // goTopaymentdetail();
  // goTopaymentSure();
  // goTopaymenType();

}

class VerstionControllerIm extends VerstionController {
  StatusRequest statuceRequste = StatusRequest.none;
  MyServices myServices = Get.find();

  List<Function()?> onTab = [
  () => Get.toNamed(AppRoute.reportYear),
  () => Get.toNamed(AppRoute.reportBussness),
  () => Get.toNamed(AppRoute.associationPolicies),
  // () => Get.toNamed(AppRoute.generalization),

  ];

List<String> submedia=[
  "التقارير السنوية",
  "التقارير المالية",
  "سياسات الجمعية",
  // "التعاميم",



];
}