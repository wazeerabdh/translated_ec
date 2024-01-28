import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/core/class/statusrequest.dart';
import '../../models/core/services/services.dart';

abstract class ControllerDtae extends GetxController{}
class ControllerDtaeIm extends ControllerDtae{
  DateTime? selectedDate;
  late TextEditingController parthdate;
  late TextEditingController outdate;
  Future<void> selectparthdate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate!,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
        selectedDate = picked;
        parthdate.text = '${selectedDate!.toLocal()}'.split(' ')[0];
     update();
    }
  }
  Future<void> selectoutdate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate!,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
        selectedDate = picked;
        outdate.text = '${selectedDate!.toLocal()}'.split(' ')[0];
     update();
    }
  }
  StatusRequest statuceRequste = StatusRequest.none;
  MyServices myServices = Get.find();
@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    selectedDate = DateTime.now(); // تاريخ ابتدائي
    parthdate = TextEditingController();
    outdate = TextEditingController();
    parthdate.text = 'ادخل تاريخ الميلاد';
    outdate.text = 'ادخل عام التخرج';
  }
}