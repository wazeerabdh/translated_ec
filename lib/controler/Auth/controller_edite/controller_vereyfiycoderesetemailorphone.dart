import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../models/core/class/statusrequest.dart';
import '../../../models/core/constant/routes.dart';
import '../../../models/core/services/services.dart';

abstract class VerfiyCodeResetPhoneOREmailController extends GetxController {
  checkcode();
  // ignore: non_constant_identifier_names
  GoTosuccessResetPhoneOrPassword(String verificationCode);
  startTimer();
}

// ignore: duplicate_ignore
class VerfiyCodeResetPhoneOREmailControllerIm extends VerfiyCodeResetPhoneOREmailController {
  StatusRequest statuceRequste = StatusRequest.none;
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
  // StatuceRequste  statuceRequste=StatuceRequste.none;
  // VerfyCodeSignUp verfyCodeSignUp = VerfyCodeSignUp(Get.find());
  // ignore: non_constant_identifier_names
  @override
  GoTosuccessResetPhoneOrPassword(verificationCode) async {
    // statuceRequste = StatuceRequste.loading;
    // update();
    // var response = await verfyCodeSignUp.PostsDataVerfyCodeSignUp(
    //     email!, verificationCode);
    // statuceRequste = handlingData(response);
    // if (StatuceRequste.succes == statuceRequste) {
    //   if (response['status'] == "success") {
    //     Get.offNamed(Approute.successUp);
    //   } else {
    //     Get.defaultDialog(
    //         title: "Warning", middleText: "Verify Code note Correct");
    //     statuceRequste = StatuceRequste.failer;
    //   }
    // }
    update();
    Get.offNamed(AppRoute.requscetSure);
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
