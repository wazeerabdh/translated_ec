import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../models/core/class/statusrequest.dart';
import '../../models/core/constant/routes.dart';
import '../../models/core/services/services.dart';
import '../Auth/controller_loguot.dart';

abstract class AcountController extends GetxController {
  ogToProfile();
  ogTomember();
  ogToResetPass();
  ogToSignIn();
  ogToSignUp();
  launchSocialMediaLink(String url);
  requstemembership();

}

class AcountControllerIm extends AcountController {
   RxInt current = 1.obs;
   RxInt chaid = 1.obs;
   List<Function()?> onTabEdites = [
   () =>  Get.toNamed(AppRoute.editProfil),//
   () => Get.toNamed(AppRoute.membersAssociation),//
 () => Get.toNamed(AppRoute.memberShip),//
   () => Get.toNamed(AppRoute.evaluations),
   () => Get.toNamed(AppRoute.callMe),
   () => Get.toNamed(AppRoute.technicalSupport),
   () => Get.toNamed(AppRoute.informationDeveloper),
   () {},

   ];
 //  LogOutControllerImp controller=LogOutControllerImp();
   StatusRequest statuceRequste = StatusRequest.none;
   MyServices myServices = Get.find();
   logOut() async {
   // تأكد من وجود formKey والاستفادة منها

   statuceRequste = StatusRequest.loading;
   myServices.sharedPreferences.setString("step","1");
   Get.offAllNamed(AppRoute.homeScreen);
   update();
 }
   List<IconData> IconsDat=[
   Icons.edit_calendar_rounded,
   Icons.perm_identity_rounded,
   Icons.remove_from_queue_outlined,
   Icons.favorite_border_outlined,
   Icons.phone_callback_outlined,
   Icons.star_purple500_outlined,
   Icons.phone_android,
   Icons.logout_outlined,
   ];
   List<String> txtList=[
 "إدارت الحساب",
  "قائمة الاعضاء",
   "تقديم طلب عضوية",
   "تقييم التطبيق",
   "تواصل معنا",
   "الدعم الفني",
   "معلومات المطور",
   "تسجيل الخروج",
   ];   List<String> txtList2=[
   "تعديل الملف الشخصي, تغير كلمة المرور",
   "عرض اعضاء الادارة",
   "تقديم الطلب في العضوية والحصول على مميزاتك",
   "قييم التطبيق من خلال الفعالية والاداء",
   "تواصل مع فريق الدعم في التطبيق",
   "تواصل مع فريق الدعم الفني عند حدوث مشاكل",
   "معلومات عن الشركة المطورة",
   "الخروج من التطبيق",
   ];
//  final RxDouble current = 100.0.obs;

  List<Function()?> onTab = [
    () => Get.toNamed(AppRoute.callMe),
    () => Get.toNamed(AppRoute.memberPrivileges),
    () => Get.toNamed(AppRoute.technicalSupport),
  ];




  @override
  ogToProfile() {
    Get.toNamed(AppRoute.editProfil);
  }
  @override
  requstemembership() {
  Get.toNamed(AppRoute.memberShip);
  }
  @override
  launchSocialMediaLink(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
    update();
  }



  void launchPhoneDialer() async {
    final Uri _phoneLaunchUri = Uri(
      scheme: 'tel',
      path: '',
    );
    if (await canLaunch(_phoneLaunchUri.toString())) {
      await launch(_phoneLaunchUri.toString());
    } else {
      throw 'Could not launch $_phoneLaunchUri';
    }
    update();
  }
   void launchPhoneDialer2() async {
   final Uri _phoneLaunchUri = Uri(
   scheme: 'tel',
   path: '770551579',
   );
   if (await canLaunch(_phoneLaunchUri.toString())) {
   await launch(_phoneLaunchUri.toString());
   } else {
   throw 'Could not launch $_phoneLaunchUri';
   }
   update();
   }
  @override
  ogTomember() {
    Get.toNamed(AppRoute.membersAssociation);
  }
  @override
  ogToResetPass() {
    Get.toNamed(AppRoute.changPassword);
  }

  @override
  ogToSignIn() {
 Get.toNamed(AppRoute.login);
  }

  @override
  ogToSignUp() {
  Get.toNamed(AppRoute.signUp);
  }


}
