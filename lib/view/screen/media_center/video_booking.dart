import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hijazi/controler/controller_%20mediacenter/controller_%20mediacenter.dart';
import 'package:hijazi/models/core/constant/color.dart';
import '../../../models/core/class/handlingdataview.dart';
import '../../../models/core/constant/fontassets.dart';
import '../../../models/core/constant/imgaeasset.dart';

// ignore: must_be_immutable
class VideoBooking extends StatelessWidget {
    VideoBooking({super.key});
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
          appBar: AppBar(title: Text("مكتبة الفيديو",
            style: TextStyle(color: AppColor.white,fontSize: 15),),centerTitle: true,elevation: 0,),  body: CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 150.0,
                pinned: false,automaticallyImplyLeading: false,
                flexibleSpace: FlexibleSpaceBar(
                  // titlePadding: const EdgeInsets.only(left: 100,),
                  title: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 60,vertical: 55),
                    child: Text(
                      "مكتبة الفيديو",
                      style: TextStyle(
                          fontSize: 14,
                          color: AppColor.white,
                          fontWeight: FontWeight.bold,fontFamily: FontAssets.Tajawal),
                    ),
                  ),centerTitle: true,
                  background: Image.asset(
                    AppImageAsset.video,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 2 / 1.12,
                ),
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return Container(padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 12),

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Stack(
                            children: [

                              ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child:Image.asset(image[index],fit: BoxFit.fill,width: double.infinity,height: 181,)
                                // CachedNetworkImage(
                                //   imageUrl:
                                //   "https://static.aljamila.com/styles/1100x732_scale/public/2019/08/08/2886421-910063707.jpg",fit: BoxFit.fill,width: double.infinity,height: 181,
                                //
                                // ),
                              ),
                              Positioned(
                                  top: 35,left: 135,
                                  child: Image.asset(AppImageAsset.view,width: 120,height: 120,),)
                            ],
                          ),
                          Container(
                            //           alignment: Alignment.center,
                            child:   const Text(
                              "تطبيق الفيديو على النحو التالي",
                              style: TextStyle(
                                  color: AppColor.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  overflow: TextOverflow.ellipsis,
                                  fontFamily: FontAssets.cairo,
                                  decoration: TextDecoration.underline),
                            ),
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
