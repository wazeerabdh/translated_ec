import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controler/home_controller/homepage_controller.dart';
import '../../../../models/core/constant/imgaeasset.dart';



class Sliderer extends StatelessWidget {
  Sliderer({super.key});
  List imageList = [
    AppImageAsset.w2,
    AppImageAsset.w1,
    AppImageAsset.w3,
    AppImageAsset.w4,

  ];
  @override
  Widget build(BuildContext context) {
    HomePageControllerIm homePageControllerIm = Get.put(HomePageControllerIm());
    return Column(children: [
      Container(
        // color: Colors.black,
        height: 160,
        width: double.infinity,
        child: CarouselSlider.builder(
          itemCount: imageList.length,
          itemBuilder: (context, index, realIndex) => Container(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              '${imageList[index]}',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          options: CarouselOptions(
            autoPlay: true,
            height: 160,
            aspectRatio: 338 / 250,
            viewportFraction: 1,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            onPageChanged: (index, reason) {
              homePageControllerIm.sliderIndex.value = index;
            },
          ),
        ),
      ),
      // Container(
      //
      //   child: Obx(
      //         () => Row(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       children: [
      //         for (int i = 0; i < imageList.length; i++)
      //           Padding(
      //             padding: const EdgeInsets.only(right: 2),
      //             child: Container(
      //               height: i == searchControllerIm.sliderIndex.value
      //                   ? 6
      //                   : 6,
      //               width: i == searchControllerIm.sliderIndex.value
      //                   ? 15
      //                   : 6,
      //               decoration: BoxDecoration(
      //                 color: i == searchControllerIm.sliderIndex.value
      //                     ? AppColor.accent_color
      //                     : Colors.grey,
      //                 borderRadius: BorderRadius.circular(8),
      //               ),
      //             ),
      //           ),
      //       ],
      //     ),
      //   ),
      // ),
    ],);
  }
}
