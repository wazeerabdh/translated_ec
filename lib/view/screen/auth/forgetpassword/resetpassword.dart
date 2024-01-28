import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import '../../../../controler/Auth/forgetpassword/resetpassword_controller.dart';
import '../../../../models/core/functions/validinput.dart';
import '../../../widget/button_next.dart';
import '../../../widget/terms_and_conditions.dart';
import '../../../widget/custom_appar.dart';
import '../widget_auth/custumtxt.dart';
class ResetPassWord extends StatelessWidget {
  const ResetPassWord({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(ResetPasswordIm());
    return Scaffold(
        appBar:CustomAppBar2(title: "11".tr),
        // ignore: sort_child_properties_last
        body: GetBuilder<ResetPasswordIm>(builder: (controller){
          return
            // HandlingDataView(statuceRequste: controller.statuceRequste,widget:
            ListView(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 420,
                  padding:   EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                  child: Form(
                    key: controller.formstate,
                    child: Column(
                      children: [
                        // ImageDateEdite(),
                        // CustomTextTitle(
                        //   txt: "12".tr,
                        // ),
                    const SizedBox(
                          height: 25,
                        ),
                        CostumTxT(
                          valid: (val) {
                            return validInput(val!, 5, 100, "password");
                          },
                          // controller: controller.confpassword,
                          hinttxt: "****************",
                          lable: "13".tr,
                          icon: Icons.password,isPassword: true,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        CostumTxT(
                          valid: (val) {
                            return validInput(val!, 5, 15, "password");
                          },
                          // controller: controller.password,
                          hinttxt: "****************",
                          lable: "14".tr,
                          icon: Icons.password,isPassword: true,
                        ),

                        NextButton(
                            herht: 60,
                            width: 400,
                            onPressed: () {},
                            right: 0,
                            name: "15".tr),
                        const SizedBox(
                          height: 30,
                        ),

                      //  Terms_And_Conditions(),
                      ],
                    ),
                  ),),
              ],
            ) ;
        },));
  }
}
