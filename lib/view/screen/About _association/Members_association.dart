import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hijazi/controler/controller_About_association/controller_About_association.dart';
import 'package:hijazi/models/core/constant/color.dart';
import 'package:hijazi/models/core/constant/imgaeasset.dart';

import '../../../models/core/class/handlingdataview.dart';
import '../../../models/core/constant/fontassets.dart';

class MembersAssociation extends StatelessWidget {
  const MembersAssociation({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ControllerAboutAssociationIm());
    return GetBuilder<ControllerAboutAssociationIm>(
        builder: (controller) => HandlingDataView(
            statusRequest: controller.statuceRequste,
            widget: Scaffold(
              appBar: AppBar(elevation: 0,
                  title: const Text(
                "اعضاء مجلس الإدارة",
                style: TextStyle(
                    color: AppColor.white,
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
              ),centerTitle: true),
              body: ListView(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // const Text(
                            //   "اعضاء الجمعية",
                            //   style: TextStyle(
                            //       fontSize: 16,
                            //       color: AppColor.accent_color,
                            //       fontWeight: FontWeight.bold,
                            //       fontFamily: FontAssets.Tajawal),
                            // ),
                            // const Divider(endIndent: 320, thickness: 1),
                            Container(
                              child: GridView.builder(
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                itemCount: 5,
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: 2 /
                                      2.07, // تعديل عدد الأعمدة إلى 1 (صف واحد أفقي)
                                ),
                                itemBuilder: (BuildContext context, index) {
                                  return Card(
                                      child: Column(
                                    children: [
                                      Stack(
                                        children: [
                                          Container(
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(50),
                                                  topLeft: Radius.circular(50)),
                                            ),
                                            // margin: const EdgeInsets.symmetric(horizontal: 2),
                                            child: Column(
                                              //    crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                          topRight:
                                                              Radius.circular(
                                                                  20),
                                                          topLeft:
                                                              Radius.circular(
                                                                  20)),
                                                  child: FadeInImage.assetNetwork(
                                                    imageErrorBuilder:
                                                        (context, error, stackTrace) {
                                                      return Image.asset(
                                                        AppImageAsset.man,
                                                        fit: BoxFit.cover,
                                                      );
                                                    },
                                                    image: "https://www.tu-ilmenau.de/unionline/fileadmin/_processed_/0/0/csm_Person_Yury_Prof_Foto_AnLI_Footgrafie__2_.JPG_5845266f99.jpg",
                                                    placeholder: AppImageAsset.person,
                                                    fit: BoxFit.cover,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          //     borderRadius: BorderRadius.only(topRight: Radius.circular(50),topLeft:Radius.circular(50) ),
                                          color: AppColor.orange_disabled
                                              .withOpacity(0.6),
                                        ),height: 70,width: double.infinity,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 4.0, right: 4, ),
                                          child: Column(

                                            mainAxisAlignment: MainAxisAlignment.start,

                                            children: [
                                              Text(
                                                controller.projects[index],
                                                style: const TextStyle(
                                                    color: AppColor.black,
                                                    fontFamily:
                                                        FontAssets.Tajawal,
                                                    fontSize: 13),
                                              ),
                                              Text(
                                                controller.name[index],
                                                style: const TextStyle(
                                                    color: AppColor.white,
                                                    fontFamily:
                                                        FontAssets.Tajawal,
                                                    fontSize: 13),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ));
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )));
  }
}
