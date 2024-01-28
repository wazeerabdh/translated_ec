import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

Future<bool>  exitDalogapp(String title,String middleText){
   Get.defaultDialog(title:title,middleText: middleText,actions: [
    ElevatedButton(onPressed: (){exit(0);}, child: const Text("yes")),
    ElevatedButton(onPressed: (){Get.back();}, child: const Text("no")), ]);
  return Future.value(true);
}