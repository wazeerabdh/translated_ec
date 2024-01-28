import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hijazi/models/core/constant/color.dart';
import 'package:hijazi/models/core/constant/fontassets.dart';
import 'package:hijazi/models/core/constant/imgaeasset.dart';
import 'package:hijazi/view/screen/home/widget_search/sliderer.dart';
import '../../../controler/home_controller/homepage_controller.dart';
import '../../../models/core/class/handlingdataview.dart';
import 'package:marquee/marquee.dart' as marqueePackage;

class Homepage extends StatelessWidget {
  Homepage({super.key});

  final GlobalKey<RefreshIndicatorState> refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();

  @override
  Widget build(BuildContext context) {
    Get.put(HomePageControllerIm());

    return GetBuilder<HomePageControllerIm>(
      builder: (controller) => HandlingDataView(
          statusRequest: controller.statuceRequste,
          widget: Scaffold(
            // appBar: CustomAppBar(title: "الرئيسية"),
            body: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Column(
                  children: [
                    Sliderer(),
            
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
