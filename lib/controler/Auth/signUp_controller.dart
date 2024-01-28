import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../models/core/class/statusrequest.dart';
import '../../models/core/constant/routes.dart';
import '../../models/core/functions/handingdatacontroller.dart';
import '../../models/core/services/services.dart';
import '../../models/data/datasources/remote/Auth/signUp_data.dart';

abstract class SingUpController extends GetxController {
  signUp();

  goToSignIn();
}

class SingUpControllerImp extends SingUpController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  final emailOrPhoneController = TextEditingController();
  final confirmPasswordController = TextEditingController();    late TextEditingController password;
  late TextEditingController username=TextEditingController();
  SignUpData signUpData=SignUpData(Get.find());

  bool changcolor = false;

  StatusRequest statuceRequste = StatusRequest.none;
  MyServices myServices = Get.find();

  void onEmailTap() {
    changcolor = !changcolor;
    update();
  }

  signUp() async {
    if (formState.currentState!.validate()) {
      formState.currentState!.save();
      statuceRequste = StatusRequest.loading;

      var response = await signUpData.PostsData(
        username.text,
          confirmPasswordController.text,
          emailOrPhoneController.text,
      );
      statuceRequste = handlingData(response);

      Get.offNamed(AppRoute.verfiyCodeSinUp);
      update();
    }
  }

  @override
  void onInit() {
    username = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    username.dispose();
    emailOrPhoneController.dispose();
    password.dispose();
  }

  @override
  goToSignIn() {
    Get.offNamed(AppRoute.login);
  }
}
