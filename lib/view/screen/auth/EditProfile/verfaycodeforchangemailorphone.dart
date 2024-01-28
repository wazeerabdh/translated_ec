import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:hijazi/models/core/constant/imgaeasset.dart';
import 'package:hijazi/view/widget/custom_appar.dart';
import 'package:hijazi/view/widget/custombody.dart';
import 'package:lottie/lottie.dart';

import '../../../../controler/Auth/controller_edite/controller_vereyfiycoderesetemailorphone.dart';
import '../../../../models/core/class/handlingdataview.dart';
import '../../../../models/core/constant/color.dart';


class VerfiyCodeChangEmailorPhone extends StatelessWidget {
  const VerfiyCodeChangEmailorPhone({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(VerfiyCodeResetPhoneOREmailControllerIm());
    return GetBuilder<VerfiyCodeResetPhoneOREmailControllerIm>(
        builder: (controller) =>    HandlingDataView(statusRequest: controller.statuceRequste,widget:Scaffold(
          appBar: CustomAppBar2(title: " رمز التحقق "),
          body: Container(
            padding: const EdgeInsets.all(15),
            child: Form(key: controller.formstate,
              child: ListView(
                children: [
                  // const LogoAtho(),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                      child: Lottie.asset(AppImageAsset.verefycode,
                          width: 170, height: 150, fit: BoxFit.contain)),
                  const SizedBox(
                    height: 15,
                  ),
                  const CustomBody(
                    txt: " قم باتاكد من الرسالة التي تحمل رمز التحقق ",
                    num: 15,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 50,
                    child: Center(
                      child: OtpTextField(
                        // controller: _vereficodeController,
                        fieldWidth: 50,
                        numberOfFields: 6,
                        borderColor: controller.accentPurpleColor,
                        focusedBorderColor: controller.accentPurpleColor,
                        styles: controller.otpTextStyles,
                        showFieldAsBox: false,
                        borderWidth: 5.0,
                        enabledBorderColor: Colors.black,
                        //runs when a code is typed in
                        onCodeChanged: (String code) {
                          //handle validation or checks here if necessary
                        },
                        //runs when every textfield is filled
                        onSubmit: (String verificationCode) {
                           controller.GoTosuccessResetPhoneOrPassword(verificationCode);
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.only(right: 30, top: 25),
                    child: Align(
                      alignment: AlignmentDirectional.topStart,
                      child: TextButton(
                        onPressed: controller.isButtonEnabled? () {
                          // onPressResendCode();
                        }:null,
                        child: Text(
                          "إعادة إرسال الرمز ${controller.countdown > 0 ? ' ${controller.countdown} ثانية' : ''}",
                          style: TextStyle(
                              color: controller.isButtonEnabled
                                  ? AppColor.accent_color
                                  : AppColor.dark_grey,
                              fontSize: 14,
                              // decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )   ));
  }
}
