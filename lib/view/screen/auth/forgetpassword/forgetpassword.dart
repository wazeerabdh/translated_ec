import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:lottie/lottie.dart';
import '../../../../controler/Auth/forgetpassword/forgetpassword_controller.dart';
import '../../../../models/core/constant/imgaeasset.dart';
import '../../../../models/core/functions/validinput.dart';
import '../../../widget/button_next.dart';
import '../../../widget/custom_appar.dart';
import '../widget_auth/custumtxt.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ForgetPasswordControllerImp());
    return Scaffold(
        appBar: CustomAppBar2(title: "5".tr),
        body: GetBuilder<ForgetPasswordControllerImp>(builder: (controller) {
          return ListView(
            children: [
              Container(
             height: 500,
                padding: const EdgeInsets.all(15),
                child: Form(
                  key: controller.formState,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Lottie.asset(
                           AppImageAsset.gorget,
                            width: 200,
                            height: 170,
                            fit: BoxFit.contain),
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      const SizedBox(
                        height: 20,
                      ),
                      CostumTxT(
                        valid: (val) {
                          return validInput(val!, 4, 100, "emailorphone");
                        },
                        // controller: controller.email,
                        hinttxt: "8".tr,
                        lable: "9".tr,
                        icon: Icons.phone_android,
                      ),
                      NextButton(
                          herht: 50,
                          width: 410,
                          onPressed: () {controller.checkemails();},
                          right: 8,
                          name: "10".tr),
                      const SizedBox(
                        height: 30,
                      ),
                  Spacer()
                    ],
                  ),
                ),
              ),
            ],
          );
        }));
  }
}
