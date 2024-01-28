import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/core/constant/color.dart';
import '../../../models/core/constant/imgaeasset.dart';
class ListImage extends StatelessWidget {
   ListImage({super.key});
  List<String> image = [
    AppImageAsset.mob,
    AppImageAsset.image,
    AppImageAsset.video,
    // AppImageAsset.report,
    AppImageAsset.gruop,
    AppImageAsset.active,
    AppImageAsset.news,
  ];
   var sliderIndex = 0.obs;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text(
            "اسم الالبوم",
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
              itemCount: image.length,
              itemBuilder: (context, index, realIndex) => ListView(
                children: [
                  Container(
                    height: 180,
                    width: Get.width,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54,width: 1),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(image[index],),
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
                sliderIndex.value = index;
                },
              ),
            ),
          ),

        ],)

    );
  }
}
