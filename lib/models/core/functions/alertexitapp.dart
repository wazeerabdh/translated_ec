import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../class/statusrequest.dart';
import '../constant/color.dart';
import '../constant/routes.dart';
import '../services/services.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(
      title: "تنبيه",
      titleStyle:const  TextStyle(color: AppColor.primaryColor , fontWeight: FontWeight.bold),
      middleText: "هل تريد الخروج من التطبيق",
      actions: [
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(AppColor.primaryColor)),
            onPressed: () {
              exit(0);
            },
            child:const Text("تاكيد")),
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(AppColor.primaryColor)),
            onPressed: () {
              Get.back();
            },
            child:const Text("الغاء"))
      ]);
  return Future.value(true);
}
Future<bool> alertDilog() {
  Get.defaultDialog(
      title: "تنبيه",
      middleText: "هل تريد الخروج من التطبيق",
      actions: [
        MaterialButton(color: AppColor.accent_color_3,
          onPressed: () {
            exit(0);
          },
          child: const Text("خروج",style: TextStyle(color: AppColor.white,fontSize: 12,fontWeight: FontWeight.bold),),
        ),
        MaterialButton(color: AppColor.accent_color_3,
          onPressed: () {
            Get.back();
          },
          child: const Text("الغاء",style: TextStyle(color: AppColor.white,fontSize: 12,fontWeight: FontWeight.bold),),
        ),
      ]);return Future.value(true);
}

Future LogUotDialog(BuildContext context, ) async {

  return await showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title:   Text('تأكيد الخروج'),
        content:   Text('هل تريد الخروج من التطبيق؟'),
        actions: [
          MaterialButton(color:  AppColor.accent_color_3,
            child: const Text('إلغاء'),
            onPressed: () {
              Navigator.of(context).pop(false); // الغاء الخروج
            },
          ),
          MaterialButton(color:  AppColor.accent_color_3,
            child: const Text('تأكيد'),
            onPressed: () {
              logOut(); // تأكيد الخروج
            },
          ),
        ],
      );
    },
  );
}

StatusRequest statuceRequste = StatusRequest.none;
MyServices myServices = Get.find();
logOut() async {
  // تأكد من وجود formKey والاستفادة منها

  statuceRequste = StatusRequest.loading;

  myServices.sharedPreferences.setString("step","1");
  Get.offAllNamed(AppRoute.homeScreen);
}
