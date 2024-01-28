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
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 50,
                      padding: const EdgeInsets.only(top: 5),
                      decoration:
                          const BoxDecoration(color: AppColor.accent_color),
                      child: Center(
                        child: marqueePackage.Marquee(
                          scrollAxis: Axis.horizontal,
                          text:
                              'وَأَمَّا الَّذِينَ سُعِدُوا فَفِي الْجَنَّةِ خَالِدِينَ فِيهَا مَا دَامَتِ السَّمَاوَاتُ وَالْأَرْضُ إِلَّا مَا شَاءَ رَبُّكَ ۖ عَطَاءً غَيْرَ مَجْذُوذٍ' *
                                  5,
                          style: const TextStyle(
                              fontSize: 13, color: AppColor.white),
                          crossAxisAlignment: CrossAxisAlignment.start,
                          blankSpace: 20.0,
                          velocity: 50.0,
                          pauseAfterRound: const Duration(seconds: 1),
                          startPadding: 10.0,
                          accelerationDuration: const Duration(seconds: 1),
                          accelerationCurve: Curves.linear,
                          decelerationDuration:
                              const Duration(milliseconds: 500),
                          decelerationCurve: Curves.easeOut,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 100,
                            child: ListView.builder(
                                itemCount: 4,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (contex, i) {
                                  return InkWell(
                                    onTap: controller.onTab[i],
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: 90,
                                          width: 90,
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 3),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            child: Image.asset(
                                              AppImageAsset.network,
                                              fit: BoxFit.fitHeight,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 3),
                                          decoration: BoxDecoration(
                                            color: AppColor.accent_color
                                                .withOpacity(0.9),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          height: 90,
                                          width: 90,
                                        ),
                                        Positioned(
                                          right: 16,
                                          top: 20,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                controller.couicon[i],
                                                size: 30,
                                                color: AppColor.white,
                                              ),
                                              Text(
                                                controller.information[i],
                                                style: const TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily:
                                                        FontAssets.Tajawal),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                          ),
                          const Divider(
                            thickness: 1,
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              controller.ogTopageVerstion();
                            },
                            child: Stack(
                              children: [
                                Container(
                                  height: 130,
                                  width: 170,
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 3),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      AppImageAsset.verstion,
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 3),
                                  decoration: BoxDecoration(
                                    color:
                                        AppColor.accent_color.withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  height: 130,
                                  width: 170,
                                ),
                                const Positioned(
                                  right: 35,
                                  top: 30,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.menu_book_outlined,
                                        color: AppColor.white,
                                        size: 30,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      //   Image.asset(AppImageAsset.vertion,height: 50,width: 50,),
                                      Text(
                                        "اصدارت الجمعية",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: FontAssets.Tajawal),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () => controller.ogTopageMediaCenter(),
                            child: Stack(
                              children: [
                                Container(
                                  height: 130,
                                  width: 170,
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 3),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      AppImageAsset.media,
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 3),
                                  decoration: BoxDecoration(
                                    color:
                                        AppColor.accent_color.withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  height: 130,
                                  width: 170,
                                ),
                                const Positioned(
                                  right: 40,
                                  top: 30,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.newspaper_outlined,
                                        color: AppColor.white,
                                        size: 35,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      //      Image.asset(AppImageAsset.media,height: 45,width: 50,),
                                      Text(
                                        "المركز الاعلامي",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: FontAssets.Tajawal),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              controller.goTopartners();
                            },
                            child: Stack(
                              children: [
                                Container(
                                  height: 90,
                                  width: 120,
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 3),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      AppImageAsset.partenrs,
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 3),
                                  decoration: BoxDecoration(
                                    color:
                                        AppColor.accent_color.withOpacity(0.85),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  height: 90,
                                  width: 120,
                                ),
                                const Positioned(
                                  right: 25,
                                  top: 5,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Icon(
                                        Icons.handshake_outlined,
                                        color: AppColor.white,
                                        size: 30,
                                      ),
                                      //  Image.asset(AppImageAsset.par,height: 45,width: 60,fit: BoxFit.cover,),
                                      Text(
                                        "شركاء النجاح",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: FontAssets.Tajawal),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              controller.goToregulationsRegulations();
                            },
                            child: Stack(
                              children: [
                                Container(
                                  height: 90,
                                  width: 120,
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 3),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      AppImageAsset.system,
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 3),
                                  decoration: BoxDecoration(
                                    color:
                                        AppColor.accent_color.withOpacity(0.85),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  height: 90,
                                  width: 120,
                                ),
                                const Positioned(
                                  right: 25,
                                  top: 5,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Icon(
                                        Icons.receipt_long_outlined,
                                        color: AppColor.white,
                                        size: 30,
                                      ),
                                      //      Image.asset(AppImageAsset.system,height: 45,width: 50,),
                                      Text(
                                        "الوئح والانظمة",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: FontAssets.Tajawal),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              controller.goToMemberPrivileges();
                            },
                            child: Stack(
                              children: [
                                Container(
                                  height: 90,
                                  width: 120,
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 3),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      AppImageAsset.badge,
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 3),
                                  decoration: BoxDecoration(
                                    color:
                                        AppColor.accent_color.withOpacity(0.85),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  height: 90,
                                  width: 120,
                                ),
                                const Positioned(
                                  right: 18,
                                  top: 5,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Icon(
                                        Icons.redeem_outlined,
                                        color: AppColor.white,
                                        size: 30,
                                      ),
                                      //  Image.asset(AppImageAsset.exland,height: 45,width: 50,fit: BoxFit.cover,),
                                      Text(
                                        "إمتيازات الاعضاء",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: FontAssets.Tajawal),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
