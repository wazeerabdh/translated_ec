import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

import '../../../controler/controller_ mediacenter/controller_ mediacenter.dart';
import '../../../models/core/class/handlingdataview.dart';
import '../../../models/core/constant/color.dart';
import '../../../models/core/constant/fontassets.dart';
import '../../../models/core/constant/imgaeasset.dart';
class MinutesMeetings extends StatelessWidget {
    MinutesMeetings({super.key});
  List<String> image = [
    AppImageAsset.mob,
    AppImageAsset.image,
    AppImageAsset.video,
    // AppImageAsset.report,
    AppImageAsset.gruop,
    AppImageAsset.active,
    AppImageAsset.news,
  ];
  @override
  Widget build(BuildContext context) {
    Get.put(MediaCenterControllerIm());
    return GetBuilder<MediaCenterControllerIm>(
        builder: (controller) => HandlingDataView(
            statusRequest: controller.statuceRequste,
            widget: Scaffold(appBar: AppBar(title: Text("المحاضر والاجتماعات",style: TextStyle( fontSize: 14,color: AppColor.white)),centerTitle: true,elevation: 0,),
              body: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                    expandedHeight: 130.0,
                    pinned: false,
                    centerTitle: true,

                    flexibleSpace: FlexibleSpaceBar(
                      title: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0,vertical: 50),
                        child: Text(
                          "المحاضر والاجتماعات",
                          style: TextStyle(
                              fontSize: 15,
                              color: AppColor.white,
                              fontWeight: FontWeight.bold,
                         ),
                        ),
                      ),
                      background: Image.asset(
                        AppImageAsset. gruop1,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SliverGrid(
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: 2 / 1.42,
                    ),
                    delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                        return Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.asset(
                                  image[index],
                                  height: 180,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                                // CachedNetworkImage(
                                //   imageUrl:
                                //   "https://static.aljamila.com/styles/1100x732_scale/public/2019/08/08/2886421-910063707.jpg",
                                //   height: 236,
                                //   fit: BoxFit.cover,
                                //   width: double.infinity,
                                // ),
                              ),
                              Container(
                                //           alignment: Alignment.center,
                                child:   const Text(
                                  "المحاضر والاجتماعات",
                                  style: TextStyle(
                                      color: AppColor.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      overflow: TextOverflow.ellipsis,

                                      decoration: TextDecoration.underline),
                                ),
                              ),

                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(""),
                                  InkWell(
                                    // onTap: (){controller.ogToDetailNews();},
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                        left: 5,
                                        right: 5,
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(4),
                                          color: AppColor.accent_color.withOpacity(0.9)),
                                      height: 40,
                                      width: 120,
                                      child: const Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                        children: [
                                          Icon(
                                            Icons.arrow_downward_outlined,
                                            color: AppColor.white,
                                            size: 20,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(bottom: 0),
                                            child: Text(
                                              "تحميل",
                                              style: TextStyle(
                                                  color: AppColor.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  overflow:
                                                  TextOverflow.ellipsis),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Divider(thickness: 1),
                            ],
                          ),
                        );
                      },
                      childCount:  image.length,
                    ),
                  ),
                ],
              ),
            )));
  }
}
