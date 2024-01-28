

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/core/class/statusrequest.dart';
import '../../models/core/constant/routes.dart';
import '../../models/core/services/services.dart';
import '../../models/data/datasources/remote/Auth/verfycodeSignUp.dart';
abstract class VerfiyCodeSignUpController extends GetxController {
  checkcode();
  // ignore: non_constant_identifier_names
  GoTosuccessSignUp(String verificationCode);
  startTimer();
}

// ignore: duplicate_ignore
class VerfiyCodeSignUpControllerIm extends VerfiyCodeSignUpController {

  MyServices myServices = Get.find();
  bool isButtonEnabled = false;
  int countdown = 60;
  late Timer timer;
  void startTimer() {
    isButtonEnabled = false;
    countdown = 60;
    update();
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
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
  Color accentPurpleColor = Color(0xFF6A53A1);
  List<TextStyle> otpTextStyles = [
    TextStyle(color: Color(0xFF6A53A1)),
    TextStyle(color: Color(0xFF121212)),
    TextStyle(color: Color(0xFFF99BBD)),
    TextStyle(color: Color(0xFF115C49)),
    TextStyle(color: Color(0xFFFFB612)),
    TextStyle(color: Color(0xFFEA7A3B)),
  ];
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  // late String veryvidcode;
  StatusRequest  statuceRequst=StatusRequest.none;
   VerfyCodeSignUp verfyCodeSignUp = VerfyCodeSignUp(Get.find());
  // ignore: non_constant_identifier_names
  @override
  GoTosuccessSignUp(verificationCode) async {
    statuceRequst = StatusRequest.loading;
    // update();
    // var response = await verfyCodeSignUp.PostsDataVerfyCodeSignUp(
    //     email!, verificationCode);
    // statuceRequste = handlingData(response);
    // if (StatusRequest.success == StatusRequest) {
    //   // if (response['status'] == "success") {
    //   //   Get.offNamed(Approute.successUp);
    //   // } else {
    //   //   Get.defaultDialog(
    //   //       title: "Warning", middleText: "Verify Code note Correct");
    //   //   statuceRequste = StatuceRequste.failer;
    //   // }
    // }
    Get.offAllNamed(AppRoute.homeScreen);
    myServices.sharedPreferences.setString("step","2");
    update();
  }

  // @override
  // void onInit() {
  //   // TODO: implement onInit
  //   super.onInit();
  //   email = Get.arguments["email"];
  // }

  @override
  checkcode() {}
}
