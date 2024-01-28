import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../models/core/class/statusrequest.dart';
import '../../../models/core/constant/routes.dart';
import '../../../models/core/services/services.dart';


abstract class ResetPhoneOrEmailController extends GetxController {
  gotoveryfiy();
}

class ResetPhoneOrEmailControllerImp extends ResetPhoneOrEmailController {
  GlobalKey<FormState> formState3 = GlobalKey<FormState>();
  final oldemailOrPhoneController = TextEditingController();
  final newemailOrPhoneController = TextEditingController();
  bool changcolor = false;
  StatusRequest statuceRequste = StatusRequest.none;
  MyServices myServices = Get.find();

  void onEmailTap() {
    changcolor = !changcolor;
    update();
  }
  bool isLoading = false;
  @override
  gotoveryfiy() {
    if (formState3.currentState!.validate()) {
      formState3.currentState!.save();
      statuceRequste = StatusRequest.loading;
      Get.offNamed(AppRoute.verfiyCodeChangEmailorPhone);
      update();
    }
  }
}
