import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controler/controller_ mediacenter/controller_ mediacenter.dart';
import '../../../models/core/class/handlingdataview.dart';
import '../../../models/core/constant/color.dart';
import '../../../models/core/constant/fontassets.dart';
import '../../../models/core/constant/imgaeasset.dart';
class DetailActive extends StatelessWidget {
  const DetailActive({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(MediaCenterControllerIm());
    return GetBuilder<MediaCenterControllerIm>(
        builder: (controller) => HandlingDataView(
            statusRequest: controller.statuceRequste,
            widget: Scaffold(appBar: AppBar(elevation: 0,
              title: const Text("تفاصيل الفعاليات",
                style: TextStyle(color: AppColor.white,fontSize: 13),
              ),
              centerTitle: true,
            ),
              body:CustomScrollView(
                slivers: [
                  SliverAppBar(
                    expandedHeight: 280.0,
                    pinned: true,automaticallyImplyLeading: false,
                    centerTitle: true,
                    flexibleSpace: FlexibleSpaceBar(

                      background:    SizedBox(height: 280,width: double.infinity,
                        child: Image.asset(AppImageAsset.rf_hotel2,fit: BoxFit.cover,),
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(   mainAxisAlignment:MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height:6 ,),
                              Container(
                                child: const Text(
                                  "جمعية الاعبوس الخيري",
                                  style: TextStyle(
                                      color: Colors.orange,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      overflow: TextOverflow.ellipsis,
                                      fontFamily: FontAssets.cairo),),

                              ),
                              const Divider(thickness: 1,endIndent: 250,),
                              const Text(
                                "باستخدام الملفات الشخصية على Chrome، يمكنك الفصل بين جميع بيانات Chrome. ويمكنك إنشاء ملفات شخصية للأصدقاء والعائلة أو تقسيمها للعمل وأغراض الترفيه.",
                                style: TextStyle(
                                    color: AppColor.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,

                                    fontFamily: FontAssets.cairo),
                              ),
                              const Divider(thickness: 1),
                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(onTap: (){controller.shareContent("https://www.youtube.com/");},
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(25)),
                                          color: AppColor.black),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 2),
                                      height: 40,
                                      width: 100,
                                      child: const Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                        children: [
                                          Icon(
                                            Icons.share_outlined,
                                            color: AppColor.white,
                                          ),
                                          Text(
                                            "مشاركة",
                                            style: TextStyle(
                                                color: AppColor.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                overflow: TextOverflow.ellipsis),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                      left: 5,
                                      right: 5,
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(25)),
                                        color: AppColor.accent_color_3),
                                    height: 40,
                                    width: 130,
                                    child: const Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding:
                                          EdgeInsets.only(bottom: 10.0),
                                          child: Text(
                                            "خدمة العملاء",
                                            style: TextStyle(
                                                color: AppColor.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                overflow:
                                                TextOverflow.ellipsis),
                                          ),
                                        ),    Icon(
                                          Icons.message_outlined,
                                          color: AppColor.white,
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),)
                ],
              ),
            )) );
  }
}
