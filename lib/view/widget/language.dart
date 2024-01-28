import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/core/localization/changelocal.dart';
import '../../models/core/shared/custombutton.dart';

class Languages extends GetView<LocalController> {
  const Languages({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("1".tr, style: Theme.of(context).textTheme.headline1),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
              textbutton: "Ar",
              onPressed: () {
                controller.changelang('ar');
                Get.toNamed("Approute.onBoarding");
              },
            ),
            CustomButton(
              textbutton: "En",
              onPressed: () {
                controller.changelang('en');
                Get.toNamed("Approute.onBoarding");
              },
            ),
          ],
        ),
      ),
    );
  }
}
