import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:hijazi/view/widget/custom_appar.dart';
 import 'package:lottie/lottie.dart';
import '../../../controler/controller_requscetSure/controller_requscetSure.dart';
import '../../../models/core/class/handlingdataview.dart';
import '../../../models/core/constant/imgaeasset.dart';


class RequscetSure extends StatelessWidget {
  const RequscetSure({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ControllerRequscetSureIm());
    return GetBuilder<ControllerRequscetSureIm>(
      builder: (controller) => HandlingDataView(
        statusRequest: controller.statuceRequste,
        widget: Scaffold(
          appBar: CustomAppBar2(title: "تاكيد التغير"),
          key: controller.formState,
          body: Center(
            child: Lottie.asset(AppImageAsset.sure, height: 300, width: 250,repeat: false),
          ),
        ),
      ),
    );
  }
}
class RequscetSure2 extends StatelessWidget {
  const RequscetSure2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ControllerRequscetSureIm());
    return GetBuilder<ControllerRequscetSureIm>(
      builder: (controller) => HandlingDataView(
        statusRequest: controller.statuceRequste,
        widget: Scaffold(
          appBar: CustomAppBar2(title: "تاكيد التغير"),
          key: controller.formState,
          body: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Lottie.asset(AppImageAsset.sure, height: 300, width: 250,repeat: false),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class RequscetSureHome extends StatelessWidget {
  const RequscetSureHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ControllerRequscetSureIm());
    return GetBuilder<ControllerRequscetSureIm>(
      builder: (controller) => HandlingDataView(
        statusRequest: controller.statuceRequste,
        widget: Scaffold(
          appBar: CustomAppBar2(title: "تاكيد الدخول"),
          key: controller.formState,
          body: Center(
            child: Lottie.asset(AppImageAsset.sure, height: 300, width: 250,repeat:  false),
          ),
        ),
      ),
    );
  }
}