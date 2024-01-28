import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controler/controller_associationpublications/controller_associationpublications.dart';
import '../../../models/core/class/handlingdataview.dart';
import '../../../models/core/constant/color.dart';
import '../../../models/core/constant/fontassets.dart';
import '../../../models/core/constant/imgaeasset.dart';

class MemberPrivileges extends StatelessWidget {
  MemberPrivileges({super.key});
  List<String> image = [
    AppImageAsset.mob,
    AppImageAsset.about1,
    AppImageAsset.w4,
    // AppImageAsset.report,
    AppImageAsset.gruop,
    AppImageAsset.verstion,
    AppImageAsset.news,
  ];
  @override
  Widget build(BuildContext context) {
    Get.put(ControllerAssociationPublicationsIm());
    return GetBuilder<ControllerAssociationPublicationsIm>(
        builder: (controller) => HandlingDataView(
            statusRequest: controller.statuceRequste,
            widget: Scaffold(appBar: AppBar(title: const Text("إمتيازات الاعضاء",
              style: TextStyle(color: AppColor.white,fontSize: 15),),centerTitle: true,elevation: 0,),
              body: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    expandedHeight: 130.0,
                    pinned: false,
                    automaticallyImplyLeading: false,
                    centerTitle: true,
                    flexibleSpace: FlexibleSpaceBar(
                      title: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 45),
                        child: Text(
                          "إمتيازات الاعضاء",
                          style: TextStyle(
                            fontSize: 15,
                            color: AppColor.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      background: Image.asset(
                        AppImageAsset.active,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SliverGrid(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: 2 / 1.61,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.asset(
                                  image[index],
                                  height: MediaQuery.of(context).size.height,
                                  fit: BoxFit.cover,
                                  width: MediaQuery.of(context).size.width/2,
                                ),
                              ),
                              const SizedBox(
                                  width:
                                      6), // Adjust the width as needed for spacing
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(   crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: const Text(
                                            "محلات النورس للجولات ",
                                            style: TextStyle(
                                              color: AppColor.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              overflow: TextOverflow.ellipsis,

                                            ),
                                          ),
                                        ),
                                        const Divider(thickness: 1,),
                                        const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.location_on,
                                              size: 18,
                                              color: AppColor.grey,
                                            ),SizedBox(width: 4,),
                                            Expanded(
                                              child: Text(
                                                " العنوان : صنعاء جدر - شارع عمران",
                                                style: TextStyle(
                                                  color: AppColor.black,
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500,
                                                  overflow: TextOverflow.ellipsis,
                                                  fontFamily: FontAssets.Tajawal,
                                                ),
                                                maxLines: 2,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.shopping_cart_outlined,
                                              size: 18,
                                              color: AppColor.black,
                                            ),SizedBox(width: 4,),
                                            Expanded(
                                              child: Text(
                                                "تخفيض من محلات الشامل بنسبة 40%",
                                                style: TextStyle(
                                                  color: AppColor.black,
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500,
                                                  overflow: TextOverflow.ellipsis,
                                                  fontFamily: FontAssets.Tajawal,
                                                ),
                                                maxLines: 2,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.phone_android,
                                              size: 18,
                                              color: AppColor.black,
                                            ),SizedBox(width: 4,),
                                            Expanded(
                                              child: Text(
                                                "رقم الهاتف :770123123",
                                                style: TextStyle(
                                                  color: AppColor.black,
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500,
                                                  overflow: TextOverflow.ellipsis,
                                                  fontFamily: FontAssets.Tajawal,
                                                ),
                                                maxLines: 2,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.email_outlined,
                                              size: 18,
                                              color: AppColor.black,
                                            ),SizedBox(width: 4,),
                                            Expanded(
                                              child: Text(
                                                " الايميل :wazeeralmuliky@gmail.com",
                                                style: TextStyle(
                                                  color: AppColor.black,
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500,
                                                  overflow: TextOverflow.ellipsis,
                                                  fontFamily: FontAssets.Tajawal,
                                                ),
                                                maxLines: 2,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.facebook,
                                              size: 18,
                                              color: AppColor.black,
                                            ),SizedBox(width: 4,),
                                            Expanded(
                                              child: Text(
                                                " الوتساب :+967770349471",
                                                style: TextStyle(
                                                  color: AppColor.black,
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500,
                                                  overflow: TextOverflow.ellipsis,
                                                  fontFamily: FontAssets.Tajawal,
                                                ),
                                                maxLines: 2,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),

                                     Column(mainAxisAlignment: MainAxisAlignment.start,
                                       children: [
                                         Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: AppColor.black),
                                              padding: const EdgeInsets.all(3),
                                              child: const Icon(
                                                Icons.facebook,
                                                color: AppColor.white,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: AppColor.black),
                                              padding: const EdgeInsets.all(3),
                                              child: const Icon(
                                                Icons.email_outlined,
                                                color: AppColor.white,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(5),
                                                  color: AppColor.black),
                                              padding: const EdgeInsets.all(3),
                                              child: const Icon(
                                                Icons.ac_unit_outlined,
                                                color: AppColor.white,
                                              ),
                                            ),
                                          ],
                                    ),
                                    const SizedBox(height: 5,)
                                       ],
                                     ),

                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      childCount: image.length,
                    ),
                  ),
                ],
              ),
            )));
  }
}
