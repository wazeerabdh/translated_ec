import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hijazi/controler/controller_%20mediacenter/controller_%20mediacenter.dart';
import 'package:hijazi/models/core/class/handlingdataview.dart';

import '../../../models/core/constant/color.dart';
import '../../../models/core/constant/fontassets.dart';
import '../../../models/core/constant/imgaeasset.dart';

class EventsActivities extends StatelessWidget {
  EventsActivities({super.key});
  List<String> image = [
    AppImageAsset.mob,
    AppImageAsset.image,
    AppImageAsset.video,
    // AppImageAsset.report,
  ];
  @override
  Widget build(BuildContext context) {
    Get.put(MediaCenterControllerIm());
    return GetBuilder<MediaCenterControllerIm>(
      builder: (controller) => HandlingDataView(
        statusRequest: controller.statuceRequste,
        widget: Scaffold(appBar: AppBar(
          title: Text("الفعاليات والانشطة",
            style: TextStyle(color: AppColor.white,fontSize: 15),),
          centerTitle: true,elevation: 0,),
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 130.0,
                automaticallyImplyLeading: false,
                pinned: false,
                centerTitle: true,
                flexibleSpace: FlexibleSpaceBar(
                  // title: const Padding(
                  //   padding: EdgeInsets.symmetric(  vertical: 50),
                  //   child: Text(
                  //     "الفعاليات والانشطة",
                  //     style: TextStyle(
                  //         fontSize: 13,
                  //         color: AppColor.white,
                  //         fontWeight: FontWeight.bold,
                  //         fontFamily: FontAssets.Tajawal,
                  //    ),
                  //   ),
                  // ),centerTitle: true,
                  background: Image.asset(
                    AppImageAsset.active1,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2 / 3,
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return InkWell(
                      //onTap: controller.onTab[index],
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(4),
                                        child: Image.asset(
                                          image[index],
                                          height: 155,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(0),
                                      color: AppColor.accent_color_3
                                          .withOpacity(0.9),
                                    ),
                                    height: 30,
                                    width: 140,
                                    child: const Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "2023/12/8",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: FontAssets.Tajawal,
                                                fontSize: 14),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                "جمعية الاعبوس الخيري ",
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  "لعل معروفاً صنعتهُ ونسيته ما زال يحرسك من نوائب الدهر بفضل من الله",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 11,
                                      fontWeight: FontWeight.normal,
                                      overflow: TextOverflow.ellipsis),
                                  maxLines: 3,
                                ),
                              ),
                            ),
                            InkWell(onTap:(){controller.goToActiveDetail();},
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(''),
                                  Container(
                                    height: 30,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        color: AppColor.black,
                                        borderRadius: BorderRadius.circular(5)),
                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                    child: const Row(
                                      children: [
                                        Text(
                                          "قراءة المزيد",
                                          style: TextStyle(
                                              fontSize: 11, color: AppColor.white),
                                        ),
                                        Icon(
                                          Icons.arrow_forward_outlined,
                                          color: AppColor.white,
                                          size: 15,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  childCount: controller.submedia2.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
