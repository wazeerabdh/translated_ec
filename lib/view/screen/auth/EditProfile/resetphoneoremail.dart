import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

import 'package:hijazi/models/core/constant/color.dart';
import 'package:hijazi/models/core/constant/imgaeasset.dart';


import '../../../../controler/Auth/controller_edite/controller_resetphoneoremail.dart';
import '../../../../models/core/class/handlingdataview.dart';
import '../../../../models/core/functions/validinput.dart';
import '../../../widget/custom_input.dart';
import '../../../widget/custom_appar.dart';
import '../widget_auth/custumtxt.dart';
class ResetPhone_Email extends StatelessWidget {
  const ResetPhone_Email({super.key});

  @override
  Widget build(BuildContext context) {
   Get.put(ResetPhoneOrEmailControllerImp());
    return GetBuilder<ResetPhoneOrEmailControllerImp>(
        builder: (controller) => HandlingDataView(
        statusRequest: controller.statuceRequste,
        widget:Scaffold(
      appBar: CustomAppBar2(title: "199".tr),
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
            key: controller.formState3,
            child: ListView(
              children: [
            // SizedBox(height: 20,),
            //     ClipRRect(
            //       borderRadius: BorderRadius.circular(20),
            //       child: Image.asset(AppImageAsset.logo,fit: BoxFit.fill,height: 100,),
            //     ),
                const SizedBox(height: 20),
                Center(
                  child: Text(
            "199".tr,
                    style: TextStyle(
                        fontSize: 15,
                        color: AppColor.accent_color_3,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [

                      CostumTxT(
                        controller: controller.oldemailOrPhoneController,
                        valid: (val) {
                          return validInput(val!, 0, 20, "emailorphone");
                        },
                        hinttxt: "200".tr,
                        lable: "201".tr,
                        icon: Icons.phone_android,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CostumTxT(
                        controller: controller.newemailOrPhoneController,
                        valid: (val) {
                          return validInput(val!, 0, 20, "emailorphone");
                        },
                        hinttxt: "202".tr,
                        lable: "203".tr,
                        icon: Icons.phone_android,
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

                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(12.0))),
                            ),
                            child: Text(
                             '15'.tr,
                              style: const TextStyle(
                                  color: AppColor.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            onPressed: () {

                           controller.gotoveryfiy();

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
