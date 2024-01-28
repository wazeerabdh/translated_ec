import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../models/core/constant/imgaeasset.dart';
import '../../../controler/controller_About_association/controller_About_association.dart';
import '../../../models/core/class/handlingdataview.dart';
import '../../../models/core/constant/color.dart';
import '../../../models/core/constant/fontassets.dart';
import '../../../models/core/constant/imgaeasset.dart';

class ReportBussness extends StatelessWidget {
  ReportBussness({super.key});
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
    Get.put(ControllerAboutAssociationIm());
    return GetBuilder<ControllerAboutAssociationIm>(
        builder: (controller) => HandlingDataView(
            statusRequest: controller.statuceRequste,
            widget: Scaffold(appBar: AppBar(title: const Text(
              "التقارير المالية",
              style: TextStyle(
                fontSize: 15,
                color: AppColor.white,
                fontWeight: FontWeight.bold,
              ),
            ),centerTitle: true
              ,elevation: 0,),
              body: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    expandedHeight: 130.0,
                    pinned: false,automaticallyImplyLeading: false,
                    centerTitle: true,
                    flexibleSpace: FlexibleSpaceBar(
                      title: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40,vertical: 60),
                        child: Text(
                          "التقارير المالية",
                          style: TextStyle(
                              fontSize: 14,
                              color: AppColor.white,
                              fontWeight: FontWeight.bold,
                       ),
                        ),
                      ),
                      background: Image.asset(
                        AppImageAsset.reaport2,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SliverGrid(
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: 2 / 1.41,
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

                              ),
                              Container(
                             //   alignment: Alignment.center,
                                child:   Text(
                                  controller.reaportbussbness[index],
                                  style: const TextStyle(
                                      color: AppColor.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,


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
                                      height: 35,
                                      width: 110,
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
