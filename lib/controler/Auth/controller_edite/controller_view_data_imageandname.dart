
import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../models/core/class/statusrequest.dart';
import '../../../models/core/constant/routes.dart';
import '../../../models/core/services/services.dart';


// ignore: camel_case_types
abstract class View_Data_ImageandnameController extends GetxController {

  // ignore: non_constant_identifier_names
  gotoseccess();

}

// ignore: duplicate_ignore
class View_Data_ImageandnameControllerIm extends View_Data_ImageandnameController {
  StatusRequest statuceRequste = StatusRequest.none;
  MyServices myServices = Get.find();
  bool isButtonEnabled = false;
  final nameController = TextEditingController();
  final addressController = TextEditingController();
  late File _file;
  chooseAndUploadImage(context) async {
    var status = await Permission.photos.request();
    XFile? tmpFile =
    // ignore: invalid_use_of_visible_for_testing_member
    await ImagePicker.platform.getImage(source: ImageSource.gallery);
    // new File( (await ImagePicker.pickImage(source: ImageSource.gallery)) as String);
    // if (tmpFile == null) {
    //   ToastComponent.showDialog(
    //       LangText(context).local!.no_file_is_chosen, context,
    //       gravity: Toast.center, duration: Toast.lengthLong);
    //   return;
    // }

    _file = File(tmpFile!.path);
    //return;
    String base64Image = base64Encode(_file.readAsBytesSync());
    String fileName = _file.path.split("/").last;

    // var profileImageUpdateResponse =
    // await ProfileRepository().getProfileImageUpdateResponse(
    //   base64Image,
    //   fileName,
    // );

    // if (profileImageUpdateResponse.result == false) {
    //   ToastComponent.showDialog(profileImageUpdateResponse.message!, context,
    //       gravity: Toast.center, duration: Toast.lengthLong);
    //   return;
    // } else {
    //   ToastComponent.showDialog(profileImageUpdateResponse.message!, context,
    //       gravity: Toast.center, duration: Toast.lengthLong);
    //
    //   // print("path");
    //   // print(profileImageUpdateResponse.path);
    //
    //   avatar_original.$ = profileImageUpdateResponse.path;
    //   setState(() {});
    // }
    // }
  }
  bool isLoading = false;
  ScrollController mainScrollController = ScrollController();
  Future<void> onPageRefresh() async {}
  List<Function()?> onTabEdite = [
  () => Get.toNamed(AppRoute.changPassword),
  () => Get.toNamed(AppRoute.profileEditData),
  () => Get.toNamed(AppRoute.resetPhone_Email),
  ];
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  @override
  gotoseccess() {
  if (formstate.currentState!.validate()) {
  formstate.currentState!.save();
  statuceRequste = StatusRequest.loading;
  Get.offNamed(AppRoute.successResetPassword);
  }
  }

}
