import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:hijazi/models/core/constant/imgaeasset.dart';


import '../../../../controler/Auth/controller_edite/controller_edite.dart';
import '../../../../models/core/class/handlingdataview.dart';
import '../../../../models/core/constant/color.dart';
import '../../../../models/core/functions/validinput.dart';
import '../../../widget/custom_appar.dart';
import '../widget_auth/custumtxt.dart';
class ChangPassword extends StatelessWidget {
  const ChangPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ColtrollerEditeIm());
    return GetBuilder<ColtrollerEditeIm>(
      builder: (controller) => HandlingDataView(
          statusRequest: controller.statuceRequste,
          widget:Scaffold(
              appBar: CustomAppBar2(title: "11".tr),
              body: Stack(
                children: [
                  controller.isLoading
                      ? Positioned.fill(
                    child: Container(
                      color: Colors.white.withOpacity(0.5),
                      child: const Center(
                        child: SpinKitFadingCircle(
                          color: Colors.grey,
                          size: 60.0,
                        ),
                      ),
                    ),
                  )
                      : Container(),
                  Form(
                    key: controller.formState,
                    child: ListView(
                      children: [

                        SizedBox(
                          height: 30,
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: Text(
                            "11".tr,
                            style: TextStyle(
                                fontSize: 17,
                                color: AppColor.accent_color_3,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: [
                              CostumTxT(
                                isPassword: true,
                                controller: controller.password_old,
                                valid: (val) {
                                  return validInput(val!, 5, 15, "password");
                                },
                                hinttxt: "************",
                                lable: "192".tr,
                                icon: Icons.lock_outline,
                              ),
                              SizedBox(height: 10,),
                              CostumTxT(
                                isPassword: true,
                                controller: controller.password,
                                valid: (val) {
                                  return validInput(val!, 5, 15, "password");
                                },
                                hinttxt: "************",
                                lable: "193".tr,
                                icon: Icons.lock_outline,
                              ),
                              SizedBox(height: 10,),
                              CostumTxT(
                                controller: controller.confirmPasswordController,
                                valid: (val) {
                                  String? message;
                                  if (val!.isEmpty) {
                                    message = '196'.tr;
                                  } else if (val.length < 5) {
                                    message =
                                    '195'.tr;
                                  } else if (val != controller.password.text) {
                                    message = '197'.tr;
                                  }

                                  return message;
                                  // return validInput(val!, 0, 100, "password");
                                },
                                hinttxt: "************",
                                lable: "194".tr,
                                icon: Icons.lock_outline,
                                isPassword: true,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15.0),
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    gradient: AppColor.appBarGradent2,
                                      border: Border.all(
                                          color: AppColor.accent_color_3, width: 1),
                                      borderRadius:
                                      const BorderRadius.all(Radius.circular(15.0))),
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                      minimumSize:
                                      Size(MediaQuery.of(context).size.width, 0),
                                      //height: 50,

                                      shape: RoundedRectangleBorder(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(12.0))),
                                    ),
                                    child: Text(
                                      '15'.tr,
                                      style: TextStyle(
                                          color: AppColor.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    onPressed: () {
                                      if (controller.formState.currentState!.validate()) {
                                        controller.formState.currentState!.save();
                                        controller.gotoseccess();

                                      }
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )) ),
    );
  }
}
