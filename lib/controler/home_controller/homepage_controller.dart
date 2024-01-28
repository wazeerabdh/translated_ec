import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hijazi/models/core/constant/routes.dart';
import 'package:intl/intl.dart';
import '../../models/core/class/statusrequest.dart';
import '../../models/core/constant/color.dart';
import '../../models/core/constant/imgaeasset.dart';
import '../../models/core/services/services.dart';

abstract class HomePageController extends GetxController{
ogToSubSearch();

selectIndex(int i);
 goTomap();
version();
 ogTopageVerstion();
 ogTopageMediaCenter();
 goToMemberPrivileges();

 goToregulationsRegulations();
 goTopartners();
}
class HomePageControllerIm extends HomePageController{
  int current = 0;
  StatusRequest statuceRequste = StatusRequest.none;

  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now().add(Duration(days: 7));
  final DateFormat formatter = DateFormat('yyyy-MM-dd');
  String formattedStartDate = DateFormat('yyyy-MM-dd').format(DateTime.now());
  String formattedEndDate = DateFormat('yyyy-MM-dd').format(DateTime.now().add(Duration(days: 7)));



  int selectedIndex = 1;
  @override
  selectIndex(int i){
    selectedIndex=i;
    update();
  }

List<IconData> couicon=[
  Icons.question_mark_outlined,
  Icons.favorite_border_outlined,
  Icons.people_outline_outlined,
  Icons.phone_android,
];
  MyServices myServices = Get.find();
  List<Function()> onTab = [

  () => Get.toNamed(AppRoute.aboutAssociation),
  () => Get.toNamed(AppRoute.projectAssociation),
  () {
  MyServices myServices = Get.find();
  if (myServices.sharedPreferences.getString("step") == "1") {
  Get.toNamed(AppRoute.login);
  } else if (myServices.sharedPreferences.getString("step") == "2") {
  Get.toNamed(AppRoute.memberShip);
  }
  },
  () => Get.toNamed(AppRoute.callMe),
  ];
  List  projects = [
    "تبرعات الاسر",
    "تبرعات المرضى",
    "تبرعات الايتام",
    "الزكاه والصدقة",
    "تبرعات تحسين جودة الحياه",
  ];
  List<String> information=[
    "عن الجمعية",
    "فرص تبرع",
  "طلب عضوية",
  "تواصل بناء",
  ];
  List<String> information2=[
  "صندوق كفالة اليتيم",
  "الزكاه و الصدقة",
  "مساعدة المرضى",
  "تعليم ذوي الحاجة",
  ];
  List<String> informationImage=[
   AppImageAsset.w1,
   AppImageAsset.w2,
   AppImageAsset.w3,
   AppImageAsset.w4,
  ];
  @override
  version() {
  Get.toNamed(AppRoute.associationPublications);
  }
  // @override
  // goTosubreser() {
  //   Get.toNamed(AppRoute.filtering);
  // }

  @override
  ogToSubSearch() {
    Get.toNamed(AppRoute.subSearch);
  }



  @override
  goTomap() {
Get.offNamed(AppRoute.mapPage);
  }
  var sliderIndex = 0.obs;

  @override
  ogTopageVerstion() {
Get.toNamed(AppRoute.vertsionAssociation);
  }

  @override
  ogTopageMediaCenter() {
    // TODO: implement ogTopageMediaCenter
    Get.toNamed(AppRoute.mediacenter);
  }
///إمتيازات الاعضاء
  @override
  goToMemberPrivileges() {
  Get.toNamed(AppRoute.memberPrivileges);
  }
  ///لوئح الانظمة
  @override
  goToregulationsRegulations() {
  Get.toNamed(AppRoute.regulationsRegulations);
  }
  ///شركاء النجاح
  @override
  goTopartners() {
  Get.toNamed(AppRoute.partners);
  }

}