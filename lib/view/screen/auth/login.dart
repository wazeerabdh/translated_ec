import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:hijazi/models/core/constant/color.dart';
import 'package:hijazi/view/widget/customtextitl.dart';
import 'package:hijazi/view/screen/auth/widget_auth/custumtxt.dart';
import '../../../controler/Auth/signIn_controller.dart';
import '../../../models/core/class/handlingdataview.dart';
import '../../../models/core/constant/imgaeasset.dart';
import '../../../models/core/functions/validinput.dart';
import '../../widget/button_next.dart';
import '../../widget/custom_appar.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
 Get.put(LoginControllerImp());
    return Scaffold(
        appBar:CustomAppBar2(title: "تسجيل الدخول"),
        // ignore: sort_child_properties_last
        body: GetBuilder<LoginControllerImp>(builder: (controller){
          return
            HandlingDataView(statusRequest: controller.statuceRequste,widget:
            ListView(
              children: [
                Image.asset(AppImageAsset.logo,height: 100,width: 100,),
                const SizedBox(height: 20,),
                Container(
                padding:   const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                child: Form(
                  key: controller.formState,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        // ImageDateEdite(),
                      const CustomTextTitle(
                        txt: "يرجى إدخال بيانات التسجيل الخاصة بك تسجيل الدخول",
                      ),
                      const SizedBox(height: 10,),
                      const SizedBox(
                        height: 10,
                      ),
                      // Custom_contanr(colors:controller.changcolor==true ? AppColor.grey : AppColor.orang,
                      //   onTap: (){controller.onEmailTap();},
                      //   onTap2: (){controller.onEmailTap();},color2:controller.changcolor==true ? AppColor.orang : AppColor.grey, ),
                      const SizedBox(
                        height: 15,
                      ),
                      CostumTxT(
                        valid: (val) {
                          return validInput(val!, 5, 100, "emailorphone");
                        },
                        // controller: controller.email,
                        hinttxt: "ادخل الايميل او الهاتف",
                        lable: "الايميل او الهاتف",
                        icon: Icons.email_outlined,
                      ),
                      CostumTxT(
                        valid: (val) {
                          return validInput(val!, 5, 15, "password");
                        },
                        controller: controller.password,
                        hinttxt: "ادخل كلمة المرور",
                        lable: "كلمة المرور",
                        icon: Icons.lock_outline_rounded,isPassword: true,
                      ),
                      Align(alignment: Alignment.topLeft,
                        child: InkWell(
                            onTap: () {
                              controller.goToForgetPassword();
                            },
                            child:const Text("نسيت كلمة المرور",style: TextStyle(decoration: TextDecoration.underline,fontSize: 14,fontWeight: FontWeight.bold,),)

                          // ),

                        ),
                      ),
 ],
                  ),
                ),
                ),
                NextButton(
                    herht: 45,
                    width: 380,
                    onPressed: () {controller.login();},
                    right: 15,
                    name: "تسجيل الدخول"),

                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: const CircleAvatar(backgroundImage: AssetImage(AppImageAsset.facebook),
                      ),onTap: (){},),
                    const SizedBox(width: 20,),
                    InkWell(child: const CircleAvatar( backgroundImage: AssetImage(AppImageAsset.google),backgroundColor: AppColor.white,),onTap: (){},),
                  ],),
              ],
            ) ) ;
        },));
  }
}
