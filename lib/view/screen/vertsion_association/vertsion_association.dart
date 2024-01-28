import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controler/controller_verstion/controller_ verstion.dart';
import '../../../models/core/class/handlingdataview.dart';
import '../../../models/core/constant/color.dart';
import '../../../models/core/constant/fontassets.dart';
import '../../../models/core/constant/imgaeasset.dart';

class VertsionAssociation extends StatelessWidget {
  VertsionAssociation({super.key});
  List<String> image = [
    AppImageAsset.report,
    AppImageAsset.reportmany,
    AppImageAsset.siasat,
    // AppImageAsset.report,
    AppImageAsset.nma,
    AppImageAsset.tamim,

  ];
  @override
  Widget build(BuildContext context) {
    Get.put(VerstionControllerIm());
    return GetBuilder<VerstionControllerIm>(
        builder: (controller) => HandlingDataView(
            statusRequest: controller.statuceRequste,
            widget: Scaffold(
              body: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    expandedHeight: 130.0,
                    // automaticallyImplyLeading: false,
                    pinned: true,
                    flexibleSpace: FlexibleSpaceBar(
                     centerTitle: true,
                      title: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8,vertical: 40),
                        child: Text(
                          "إصدارت الجمعية",
                          style: TextStyle(
                              fontSize: 13,
                              color: AppColor.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: FontAssets.Tajawal),
                        ),
                      ),
                      background: Image.asset(
                        AppImageAsset.verstionass,height: 100,
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
                        return Card(
                          child: InkWell(onTap: (){controller.onTab[index]!();},
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          image[index],height: 155,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: 116,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(0),
                                      color:
                                      AppColor.accent_color.withOpacity(0.99),
                                    ),
                                    height: 40,
                                    width: 200,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4.0),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            controller.submedia[index],
                                            style:   const TextStyle(
                                              color: Colors.white,
                                              fontFamily: FontAssets.Tajawal,
                                              fontSize: 13,
                                            ),
                                          ),
                                          const Icon(
                                              Icons.arrow_circle_left_outlined,
                                              color: Colors.white),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      childCount: controller.submedia.length,
                    ),
                  ),
                ],
              ),
            )));
  }
}
