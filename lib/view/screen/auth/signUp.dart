import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hijazi/models/core/class/handlingdataview.dart';
import 'package:hijazi/view/screen/auth/widget_auth/containar_costom.dart';
import 'package:hijazi/view/widget/custombody.dart';
import 'package:hijazi/view/widget/customtextitl.dart';
import 'package:hijazi/view/screen/auth/widget_auth/custumtxt.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../controler/Auth/signUp_controller.dart';
import '../../../models/core/constant/color.dart';
import '../../../models/core/constant/imgaeasset.dart';
import '../../../models/core/functions/validinput.dart';
import '../../widget/button_next.dart';
import 'package:get/get.dart';

import '../../widget/terms_and_conditions.dart';
import '../../widget/custom_appar.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => SingUpControllerImp());
    return Scaffold(
      appBar: CustomAppBar2(title: "انشاء  حساب"),
      body: GetBuilder<SingUpControllerImp>(
          builder: (controller) => HandlingDataView(
                statusRequest: controller.statuceRequste,
                widget: ListView(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Form(
                        key: controller.formState,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(child: Image.asset(AppImageAsset.logo,height: 100,width: 100,)),
                            const CustomTextTitle(
                              txt:
                                  "يرجى إدخال بيانات التسجيل الخاصة بك لإنشاء الحساب",
                            ),
                            // const SizedBox(
                            //   height: 5,
                            // ),
                            // const CustomBody(
                            //   txt: "إنشاء حساب : ",
                            //   num: 13,
                            // ),
                            const SizedBox(
                              height: 15,
                            ),
                            // Custom_contanr(colors:controller.changcolor==true ? AppColor.grey : AppColor.orang,
                            //   onTap: (){controller.onEmailTap();},
                            //   onTap2: (){controller.onEmailTap();},color2:controller.changcolor==true ? AppColor.orang : AppColor.grey, ),

                            CostumTxT(
                              controller: controller.emailOrPhoneController,
                              valid: (val) {
                                return validInput(val!, 0, 15, "phone");
                              },
                              hinttxt: " ادخل رقم الهاتف او الايميل",
                              lable: "رقم الهاتف او الايميل",
                              icon: Icons.phone_android,
                            ),
                            CostumTxT(
                              controller: controller.username,
                              valid: (val) {
                                return validInput(val!, 5, 15, "username");
                              },
                              hinttxt: "ادخل اسم المسخدم/القب",
                              lable: "اسم المستخدم/القب",
                              icon: Icons.person,
                            ),
                            CostumTxT(
                              isPassword: true,
                              controller: controller.password,
                              valid: (val) {
                                return validInput(val!, 5, 15, "password");
                              },
                              hinttxt: "************",
                              lable: "ادخل كلمة المرور",
                              icon: Icons.lock_outline,
                            ),
                            CostumTxT(
                              controller: controller.confirmPasswordController,
                              valid: (val) {
                                String? message;
                                if (val!.isEmpty) {
                                  message = 'حقل مطلوب';
                                } else if (val.length < 5) {
                                  message =
                                      'يجب ان يحتوي حقل تاكيد كلمة المرور على 5 احرف على الاقل';
                                } else if (val != controller.password.text) {
                                  message = 'كلمة المرور غير متطابقة';
                                }

                                return message;
                                // return validInput(val!, 0, 100, "password");
                              },
                              hinttxt: "************",
                              lable: "تاكيد كلمة المرور",
                              icon: Icons.lock_outline,
                              isPassword: true,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 16,
                                  width: 16,
                                  child: Checkbox(
                                    activeColor: Colors.grey.withAlpha(40),
                                    checkColor: AppColor.primaryColor,
                                    value: true,
                                    visualDensity: VisualDensity.compact,
                                    shape: RoundedRectangleBorder(borderRadius: radius(4)),
                                    onChanged: (value) {
                                      // isRemember = value.validate();
                                      // setState(() {});
                                    },
                                  ),
                                ),
                                6.width,
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Container(
                                    width:Get.width - 130,
                                    child: RichText(
                                        maxLines: 2,
                                        text: TextSpan(
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                            ),
                                            children: [
                                              const TextSpan(
                                                text: "أوافق على",
                                              ),
                                              TextSpan(
                                                recognizer: TapGestureRecognizer()
                                                  ..onTap = () {
                                                  },
                                                text: " سياسة الخصوصية",
                                                style: const TextStyle(color: AppColor.primaryColor),
                                              ),
                                              const TextSpan(
                                                text: " و ",
                                              ),
                                              TextSpan(
                                                recognizer: TapGestureRecognizer()
                                                  ..onTap = () {
                                                  },
                                                style: const TextStyle(color:AppColor.primaryColor),
                                                text: " شروط الإسخدام",
                                              ),])),
                                  ),
                                )
                              ],
                            ).paddingSymmetric(horizontal: 16.0).onTap(() {
                              // isAgree = !isAgree!;

                            }),],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    NextButton(
                        herht: 45,
                        width: 380,
                        onPressed: () {
                          controller.signUp();
                        },
                        right: 20,
                        name: "إنشاء حساب"),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          child: const CircleAvatar(backgroundImage: AssetImage(AppImageAsset.facebook),
                           ),onTap: (){},),
                        const SizedBox(width: 20,),
                        InkWell(child: const CircleAvatar( backgroundImage: AssetImage(AppImageAsset.google),backgroundColor: AppColor.white,),onTap: (){},),
                      ],),
                  const SizedBox(height: 10,)],
                ),
              )),
    );
  }
}
