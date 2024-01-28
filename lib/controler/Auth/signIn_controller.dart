import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../models/core/class/statusrequest.dart';
import '../../models/core/constant/routes.dart';
import '../../models/core/services/services.dart';
import '../../models/data/datasources/remote/Auth/login_data.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}
class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;

  bool changcolor = false;
  StatusRequest statuceRequste = StatusRequest.none;
  MyServices myServices = Get.find();
  LoginData loginData=LoginData(Get.find());
  void onEmailTap() {
    changcolor =!changcolor;
    update();

  }
  login() async {
  // تأكد من وجود formKey والاستفادة منها
  //   if (formState.currentState!.validate()) {
      statuceRequste = StatusRequest.loading;
      // var response = await loginData.LogimData(
      //   password.text,
      //   email.text,
      // );
    // statuceRequste = handlingData(response);
      // if (StatusRequest.success == statuceRequste) {
        // if (response['status'] == "success") {
        //   var userData =
        //       response['data'][0]; // تأكد من وجود البيانات بالشكل المتوقع
        //   print(response['data'][0]['users_id'].toString());
        //   print(response['data'][0]['users_name']);
        //   print(response['data'][0]['users_phone']);
          // myServices.sharedPreferences
          //     .setString("id", response['data'][0]['users_id'].toString());
          // myServices.sharedPreferences
          //     .setString("username", userData['users_name']);
          // myServices.sharedPreferences
          //     .setString("phone", userData['users_phone']);
          // myServices.sharedPreferences
          //     .setString("password", userData['users_password']);
          myServices.sharedPreferences.setString("step","2");
          Get.offAllNamed(AppRoute.homeScreen);
      //   } else {
      //     Get.defaultDialog(
      //         title: "Error", middleText: "Email or password not correct");
      //     statuceRequste = StatusRequest.failure;
      //   }
      // }
      update();

    // } else {
    //   print("not valid ");
    // }
  }
  @override
  void onInit() {
//     FirebaseMessaging.instance.getToken().then((value) {
// //this token for this app//==cGDOvG9EQpi6SlI9PpwJAf:APA91bHMuHnfzqtFCwA2hZnRaptxCMs_DLimOf3sMIUSByib_YNIm8dkM8BwAK2s4drF0rsD2JJ0n1ZmrGedmardB5uMATj_LbkhWnZQscj_Xxucc697UYI_kxtv-LtGMUivdKSffmG_
//       String? token = value;
//       print("==$token==");
//     });
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    email.dispose();
    password.dispose();
  }
  @override
  goToForgetPassword() {
   Get.offNamed(AppRoute.forgetPassword);
  }
  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signUp);
  }
}
