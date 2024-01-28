import 'dart:async';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../models/core/class/statusrequest.dart';
import '../../../models/core/constant/routes.dart';
import '../../../models/core/services/services.dart';

abstract class ColtrollerEdite extends GetxController{
gotoseccess();

}
class ColtrollerEditeIm extends ColtrollerEdite{
  bool isButtonEnabled = false;
  int countdown = 60;
  late Timer timer;
  void startTimer() {
    isButtonEnabled = false;
    countdown = 60;
    update();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (countdown > 0) {
        countdown--;
      } else {
        isButtonEnabled = true;
        timer.cancel();
      }
      update();
    });
  }

  String? email;
  Color accentPurpleColor = const Color(0xFF6A53A1);

  List<String> txtList=[
    "177".tr,
    "178".tr,
    "179".tr,
  ];
  StatusRequest statuceRequste = StatusRequest.none;
  MyServices myServices = Get.find();
  late File file;

  IconData IconData2=   Icons.arrow_forward_ios_rounded;
  bool isLoading = false;
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  final confirmPasswordController = TextEditingController();
    late TextEditingController password=TextEditingController();
    late TextEditingController password_old=TextEditingController();

  bool show_arrwbach=false;
  Future<void> onPageRefresh() async {}
  List<Function()?> onTabEdite = [
  () => Get.toNamed(AppRoute.changPassword),
  () => Get.toNamed(AppRoute.profileEditData),
  () => Get.toNamed(AppRoute.resetPhone_Email),
  ];
  List<IconData> IconsDat=[
  Icons.lock_clock_outlined,
  Icons.perm_identity_rounded,
  Icons.phone_android,
  ];
  @override
  gotoseccess() {
  if (formState.currentState!.validate()) {
  formState.currentState!.save();
  statuceRequste = StatusRequest.loading;
  Get.offNamed(AppRoute.successResetPassword);

  }

  }

}