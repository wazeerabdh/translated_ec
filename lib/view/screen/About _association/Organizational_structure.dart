import 'package:flutter/material.dart';

import '../../../models/core/constant/color.dart';
import '../../../models/core/constant/fontassets.dart';
import '../../../models/core/constant/imgaeasset.dart';
import '../../widget/button_next.dart';

class OrganizationalStructure extends StatelessWidget {
  const OrganizationalStructure({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,
        title: const Text(
          "الهيكل التنظيمي",
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 130.0,
            automaticallyImplyLeading: false,
            pinned: false,
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              title: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45),
                child: Text(
                  "الهيكل التنظيمي",
                  style: TextStyle(
                      fontSize: 14,
                      color: AppColor.white,
                      // backgroundColor: Colors.cyan,
                      fontWeight: FontWeight.normal,
                      fontFamily: FontAssets.Tajawal,decoration: TextDecoration.underline),
                ),
              ),
              centerTitle: true,
              background: Image.asset(
                AppImageAsset.strctut,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(delegate:  SliverChildListDelegate([
            const SizedBox(height: 15,),
            ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                child: Image.asset(
                  AppImageAsset.stract,height: 300,width: double.infinity,fit: BoxFit.cover,
                )
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                const Text(""),
                InkWell(
                  // onTap: (){controller.ogToDetailNews();},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 5,
                        right: 5,
                      ),
                      decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(4),
                          color: AppColor.accent_color.withOpacity(0.9)),
                      height: 35,
                      width: 100,
                      child: const Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 0),
                            child: Text(
                              "تحميل",
                              style: TextStyle(
                                  color: AppColor.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  overflow:
                                  TextOverflow.ellipsis),
                            ),
                          ),
                          Icon(
                            Icons.arrow_circle_down_outlined,
                            color: AppColor.white,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15,),

          ]) )
          // SliverGrid(
          //   gridDelegate:
          //   const SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 2,
          //     childAspectRatio: 2 / 1.6,
          //   ),
          //   delegate: SliverChildBuilderDelegate(
          //         (BuildContext context, int index) {
          //       return InkWell(onTap: controller.onTab[index],
          //         child: Card(
          //           child: Stack(
          //             children: [
          //               Container(
          //                 decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.circular(10),
          //                 ),
          //                 child: Column(
          //                   children: [
          //                     ClipRRect(
          //                       borderRadius: BorderRadius.circular(10),
          //                       child: Image.asset(
          //                         image[index],height: 155,
          //                         fit: BoxFit.cover,
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //               Positioned(
          //                 top: 116,
          //                 child: Container(
          //                   decoration: BoxDecoration(
          //                     borderRadius: BorderRadius.circular(0),
          //                     color:
          //                     AppColor.accent_color.withOpacity(0.9),
          //                   ),
          //                   height: 40,
          //                   width: 200,
          //                   child: Padding(
          //                     padding: const EdgeInsets.symmetric(
          //                         horizontal: 8.0),
          //                     child: Row(
          //                       mainAxisAlignment:
          //                       MainAxisAlignment.spaceBetween,
          //                       children: [
          //                         Text(
          //                           controller.submedia[index],
          //                           style:   const TextStyle(
          //                               color: Colors.white,
          //                               fontFamily: FontAssets.Tajawal,
          //                               fontSize: 14
          //                           ),
          //                         ),
          //                         const Icon(
          //                             Icons.arrow_circle_left_outlined,
          //                             color: Colors.white),
          //                       ],
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //       );
          //     },
          //     childCount: controller.submedia.length,
          //   ),
          // ),
        ],
      ),
    );
  }
}