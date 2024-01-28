import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../../controler/controller_partners/partners_controller.dart';
import '../../../../models/core/class/handlingdataview.dart';
import '../../../../models/core/constant/color.dart';
import '../../../../models/core/constant/imgaeasset.dart';

class Partners extends StatelessWidget {
   Partners({super.key});
  List imageList = [
    AppImageAsset.logo1,
    AppImageAsset.logo2,
    AppImageAsset.logo3,
  ];
  @override
  Widget build(BuildContext context) {
    Get.put(PartnersControllerIm());
    return GetBuilder<PartnersControllerIm>(
        builder: (controller) => HandlingDataView(
            statusRequest: controller.statuceRequste,
            widget: DefaultTabController(
              length: 8, // عدد الألسنة
              child: Scaffold(
                appBar: AppBar(
                  title: const Text(
                    "شركاء النجاح",
                    style: TextStyle(
                        color: AppColor.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  centerTitle: true,
                ),
                body:
                Column(children: [
                  const SizedBox(height: 20,),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: CarouselSlider.builder(
                      itemCount: imageList.length,
                      itemBuilder: (context, index, realIndex) => ListView(
                        children: [
                          Container(
                            height: 180,
                            width: Get.width,
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColor.grey_153,width: 1),
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(imageList[index],),
                                fit: BoxFit.fill,
                                filterQuality: FilterQuality.high,
                              ),
                            ),
                          ),

                          // Divider(thickness: 1,),
                          // SubSlider(),
                        ],
                      ),
                      options: CarouselOptions(
                        autoPlay: false,
                        height: 600,
                        enableInfiniteScroll: true,
                        enlargeCenterPage: true,
                        onPageChanged: (index, reason) {
                     controller.sliderIndex.value = index;
                        },
                      ),
                    ),
                  ),

                ],)

              ),
            )));
  }
}
