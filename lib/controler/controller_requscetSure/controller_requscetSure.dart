import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../models/core/class/statusrequest.dart';
import '../../models/core/constant/routes.dart';
import '../../models/core/services/services.dart';

abstract class ControllerRequscetSure extends GetxController with SingleGetTickerProviderMixin {}

class ControllerRequscetSureIm extends ControllerRequscetSure {
  StatusRequest statuceRequste = StatusRequest.none;
  MyServices myServices = Get.find();
  late AnimationController controller;
  late Animation<Offset> animation;
  GlobalKey<ScaffoldState> formState = GlobalKey<ScaffoldState>();

  void updateHomeScreen() {
    update(); // This will trigger a rebuild of the widget tree
  }



  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void onInit() {
    super.onInit();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );
    animation = Tween<Offset>(
      begin: const Offset(1.0, 0.0),
      end: const Offset(0.0, 0.0),
    ).animate(controller);
    controller.forward();
    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Future.delayed(Duration.zero, () {
          ///لحذف السابق
          Get.offAllNamed(AppRoute.splashscreen2);
          updateHomeScreen();
        });
      }
    });
  }
}
