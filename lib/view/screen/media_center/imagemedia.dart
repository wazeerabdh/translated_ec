
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../controler/controller_ mediacenter/controller_ mediacenter.dart';
import '../../../models/core/class/handlingdataview.dart';
import '../../../models/core/constant/color.dart';
import '../../../models/core/constant/fontassets.dart';
import '../../../models/core/constant/imgaeasset.dart';

class ImageMediaCenter extends StatelessWidget {
  ImageMediaCenter({super.key});
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
        builder: (controller) =>   HandlingDataView(statusRequest: controller.statuceRequste,widget: Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 150.0,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  // titlePadding: const EdgeInsets.only(left: 100,),
                  title: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 60,vertical: 60),
                    child: Text(
                      "البومات الصور",
                      style: TextStyle(
                          fontSize: 14,
                          color: AppColor.white,
                          fontWeight: FontWeight.bold,fontFamily: FontAssets.Tajawal),
                    ),
                  ),centerTitle: true,
                  background:      FadeInImage.assetNetwork(
                    imageErrorBuilder:
                        (context, error, stackTrace) {
                      return Image.asset(
                        AppImageAsset.albom,
                        fit: BoxFit.cover,
                      );
                    },
                    image: "https://static.aljamila.com/styles/1100x732_scale/public/2019/08/08/2886421-910063707.jpg",
                    placeholder: AppImageAsset.albom,
                    fit: BoxFit.cover,
                  ),
 //                  Image.asset(
 // AppImageAsset.albom,
 //                    fit: BoxFit.cover,
 //                  ),
                ),
              ),
              SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 2 / 1,
                ),
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return Container(padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 12),

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child:InkWell(onTap: (){controller.goToAlbomImage();},
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
                                          child:      FadeInImage.assetNetwork(
                                            imageErrorBuilder:
                                                (context, error, stackTrace) {
                                              return Image.asset(
                                                image[index],height: 181,width: double.infinity,
                                                fit: BoxFit.cover,
                                              );
                                            },
                                            image: "https://static.aljamila.com/styles/1100x732_scale/public/2019/08/08/2886421-910063707.jpg",
                                            placeholder: AppImageAsset.person,
                                            fit: BoxFit.cover,height: 181,width: double.infinity,
                                          ),
                                          // Image.asset(
                                          //   image[index],height: 181,width: double.infinity,
                                          //   fit: BoxFit.cover,
                                          // ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    top: 140,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(0),
                                        color:
                                        AppColor.accent_color.withOpacity(0.9),
                                      ),
                                      height: 40,
                                      width: 390,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              controller.submedia3[index],
                                              style:   const TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: FontAssets.Tajawal,
                                                  fontSize: 14
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
                                  Positioned(
                                    top: 0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(0),
                                        color:
                                        AppColor.accent_color.withOpacity(0.9),
                                      ),
                                      height: 30,
                                      width: 100,
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            Text(
                                             "20 الصورة",
                                              style:   TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: FontAssets.Tajawal,
                                                  fontSize: 14
                                              ),
                                            ),

                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(0),
                                        color:
                                        AppColor.accent_color.withOpacity(0.9),
                                      ),
                                      height: 30,
                                      width: 120,
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            Text(
                                             "2023/4/5",
                                              style:   TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: FontAssets.Tajawal,
                                                  fontSize: 14
                                              ),
                                            ),

                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // CachedNetworkImage(
                            //   imageUrl:
                            //   "https://static.aljamila.com/styles/1100x732_scale/public/2019/08/08/2886421-910063707.jpg",fit: BoxFit.fill,width: double.infinity,height: 181,
                            //
                            // ),
                          ),
                        ],
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