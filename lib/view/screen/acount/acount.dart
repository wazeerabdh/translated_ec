import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hijazi/models/core/constant/color.dart';
import 'package:hijazi/models/core/functions/alertexitapp.dart';
import 'package:hijazi/view/screen/acount/widget_acount/custom_divider.dart';
import '../../../controler/acount_controller/acount_controller.dart';
import '../../../models/core/constant/imgaeasset.dart';
import '../../widget/button_next.dart';
import '../auth/EditProfile/widget_Editprofile/widget_edite.dart';

class Acounts extends StatelessWidget {
  const Acounts({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(AcountControllerIm());
    return Scaffold(
        body: GetBuilder<AcountControllerIm>(
      builder: (controller) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: ListView(
            shrinkWrap: true,
            physics: AlwaysScrollableScrollPhysics(),
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,

                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            AppImageAsset.person,
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          )),
                    ),
                    Text(
                      "محمد",
                      style: const TextStyle(color: Colors.black, fontSize: 12),
                    ),
                    Text(
                      "7705575164",
                      style: const TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ],
                ),
              ),
              Container(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ButTrans(
                      onTap: () {
                        if (index == controller.onTabEdites.length - 1) {
                          LogUotDialog(context);
                          controller.update();
                        } else {
                          // هنا يمكنك تنفيذ العمل العادي للعنصر الذي ليس الأخير
                          controller.onTabEdites[index]!();
                        }
                      },

                      //   controller.onTabEdites[index],

                      txt: controller.txtList[index],
                      icon: controller.IconsDat[index],
                      txt2: controller.txtList2[index],
                    );
                  },
                  itemCount: 8,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                ),
              ),
              Divider(color: Colors.grey, thickness: 0.5),
            ],
          )),
    ));
  }
}
