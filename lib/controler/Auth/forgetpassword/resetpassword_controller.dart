
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../models/core/class/statusrequest.dart';
import '../../../models/core/constant/routes.dart';
import '../../../models/core/services/services.dart';

abstract class ResetPasswordController extends GetxController {
  resetpassword();
  GoToSeccessResetPasword();
}

class ResetPasswordIm extends ResetPasswordController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  StatusRequest statuceRequste = StatusRequest.none;
  MyServices myServices = Get.find();
  //
  // RestPasswordData restPasswordData = RestPasswordData(Get.find());
  //
  // StatuceRequste statuceRequste=StatuceRequste.none;

  late TextEditingController password;
  // ignore: non_constant_identifier_names
  late TextEditingController Repassword;

  String? email;

  @override
  resetpassword() {}

  @override
  GoToSeccessResetPasword() async {

    // if (password.text != Repassword.text) {
    //   return Get.defaultDialog(
    //       title: "warning", middleText: "Password Not Match");
    // }
    //
    // if (formstate.currentState!.validate()) {
    //   statuceRequste = StatuceRequste.loading;
    //   update();
    //   var response = await restPasswordData.postdata(email!, password.text);
    //   print("=============================== Controller $response ");
    //   statuceRequste = handlingData(response);
    //   if (StatuceRequste.succes == statuceRequste) {
    //     if (response['status'] == "success") {
    //       // data.addAll(response['data']);
    //       Get.offNamed(Approute.successResetPassword);
    //     } else {
    //       Get.defaultDialog(
    //           title: "ُWarning", middleText: "Try Again");
    //       statuceRequste = StatuceRequste.failer;
    //     }
    //   }
    //   update();
    // } else {
    //   print("Not Valid");
    // }
    Get.offNamed(AppRoute.requscetSure);
  }

  // @override
  // void onInit() {
  //   email = Get.arguments['email'];
  //   password = TextEditingController();
  //   Repassword = TextEditingController();
  //   super.onInit();
  // }

  @override
  void dispose() {
    password.dispose();
    Repassword.dispose();
    super.dispose();
  }
}