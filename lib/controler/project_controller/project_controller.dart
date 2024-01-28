import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hijazi/models/core/constant/routes.dart';
import 'package:intl/intl.dart';
import '../../models/core/class/statusrequest.dart';
import '../../models/core/constant/color.dart';
import '../../models/core/constant/fontassets.dart';
import '../../models/core/constant/imgaeasset.dart';
import '../../models/core/services/services.dart';

abstract class ProjectController extends GetxController{
  ItemDetailScreen();
}
class ProjectControllerIm extends ProjectController{
  StatusRequest statuceRequste = StatusRequest.none;
  MyServices myServices = Get.find();  List<RxDouble> sliderValues = List.generate(4, (index) => 20.0.obs);
  void updateSliderValue(int index, double newValue) {
    sliderValues[index].value = newValue;
    update(); // Trigger a rebuild
  }
  var items = <RxInt>[];
  @override
  void onInit() {
    super.onInit();
    // Initialize the state for each item
    for (int i = 0; i < 30; i++) {
      items.add(1.obs);
    }
  }
  List<DropdownMenuItem<String>>  tabra = [
    const DropdownMenuItem(value: '100', child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Text('100',style:TextStyle(color: Colors.black,fontFamily: FontAssets.Tajawal,fontSize: 12,fontWeight: FontWeight.w600)),
    )),
    const DropdownMenuItem(value: '150', child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Text('150',style:TextStyle(color: Colors.black,fontFamily: FontAssets.Tajawal,fontSize: 12,fontWeight: FontWeight.w600)),
    )),
    const DropdownMenuItem(value: '200', child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Text('200',style:TextStyle(color: Colors.black,fontFamily: FontAssets.Tajawal,fontSize: 12,fontWeight: FontWeight.w600)),
    )),
    const DropdownMenuItem(value: '250', child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Text('250',style:TextStyle(color: Colors.black,fontFamily: FontAssets.Tajawal,fontSize: 12,fontWeight: FontWeight.w600)),
    )),
    const DropdownMenuItem(value: '300', child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Text('300',style:TextStyle(color: Colors.black,fontFamily: FontAssets.Tajawal,fontSize: 12,fontWeight: FontWeight.w600)),
    )),
    const DropdownMenuItem(value: '350', child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Text('350',style:TextStyle(color: Colors.black,fontFamily: FontAssets.Tajawal,fontSize: 12,fontWeight: FontWeight.w600)),
    )),
  ];
  void addGs(int index) {
    if (items[index].value < 30) {
      items[index]++;
      update();
    }
  }
 void minusGs(int index) {
    if (items[index].value > 1) {
      items[index]--;
      update();
    }
  }


  List  projects = [
  "تبرعات الاسر",
  "تبرعات المرضى",
  "تبرعات الايتام",
  "الزكاه والصدقة",
  "تبرعات تحسين جودة الحياه",
  ];
  List<String> information=[
  "من نحن",
  "التبرعات",
  "العضوية",

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

  // ignore: non_constant_identifier_names
  @override
  ItemDetailScreen() {
Get.toNamed(AppRoute.itemDetailScreen);
  }




}