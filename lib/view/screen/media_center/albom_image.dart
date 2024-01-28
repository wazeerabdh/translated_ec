import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controler/controller_ mediacenter/controller_ mediacenter.dart';
import '../../../models/core/class/handlingdataview.dart';
import '../../../models/core/constant/color.dart';
import '../../../models/core/constant/fontassets.dart';
import '../../../models/core/constant/imgaeasset.dart';

class AlbomImage extends StatelessWidget {
  const AlbomImage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MediaCenterControllerIm());
    return GetBuilder<MediaCenterControllerIm>(
        builder: (controller) => HandlingDataView(
            statusRequest: controller.statuceRequste,
            widget: Scaffold(
              body: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    expandedHeight: 130.0,
                    automaticallyImplyLeading: true,
                    pinned: false,
                    centerTitle: true,
                    flexibleSpace: FlexibleSpaceBar(
                      title: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 45),
                        child: Text(
                          "تكريم الاوئل من الايتام",
                          style: TextStyle(
                            fontSize: 13,
                            color: AppColor.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: FontAssets.Tajawal,
                          ),
                        ),
                      ),
                      centerTitle: true,
                      background: Image.asset(
                        AppImageAsset.image,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SliverGrid(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2 / 1.6,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            controller.gotoImagelist();
                          },
                          child: Card(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.asset(
                                      AppImageAsset.gruop1,
                                      height: 155,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      childCount: 8,
                    ),
                  ),
                ],
              ),
            )));
  }
}
