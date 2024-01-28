import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../models/core/class/statusrequest.dart';
import '../../models/core/constant/routes.dart';
import '../../models/core/services/services.dart';
import '../../models/data/datasources/remote/Auth/login_data.dart';

abstract class LogOutController extends GetxController {
  logOut();

}
class LogOutControllerImp extends LogOutController {




  StatusRequest statuceRequste = StatusRequest.none;
  MyServices myServices = Get.find();
  logOut() async {
    // تأكد من وجود formKey والاستفادة منها

      statuceRequste = StatusRequest.loading;

      myServices.sharedPreferences.setString("step","1");
      Get.offNamed(AppRoute.homeScreen);

      update();


  }







}
