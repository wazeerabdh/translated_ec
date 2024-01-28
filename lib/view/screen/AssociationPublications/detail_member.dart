import 'package:flutter/material.dart';
import 'package:hijazi/models/core/constant/imgaeasset.dart';

import '../../../models/core/constant/color.dart';
import '../../../models/core/constant/fontassets.dart';

class DetailMember extends StatelessWidget {
  DetailMember({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 280.0,
            pinned: true,
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              background: SizedBox(
                height: 280,
                width: double.infinity,
                child: Image.asset(
                  AppImageAsset.rf_hotel2,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 6,
                      ),
                      Container(
                        child: const Text(
                          "تخفيض اعضاء الجمعية",
                          style: TextStyle(
                              color: AppColor.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis,
                              fontFamily: FontAssets.cairo),
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        endIndent: 220,
                      ),
                      const Text(
                        "يعلن محلات البصير عن تخفيض يصل الى 50% وذلك لاعضاء الجمعية يعلن محلات البصير عن تخفيض يصل الى 50% وذلك لاعضاء الجمعيةيعلن محلات البصير عن تخفيض يصل الى 50% وذلك لاعضاء الجمعية",
                        style: TextStyle(
                            color: AppColor.black,
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            fontFamily: FontAssets.cairo),
                      ),

                      Row(
                        children: [
                          Expanded(
                              child:
                                  Divider(  thickness: 1)),
                          Text(
                            "  بيانات التواصل  ",
                            style:
                                TextStyle(color: AppColor.black, fontSize: 13),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Expanded(
                              child: Divider(

                            thickness: 1,
                          )),
                        ],
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                        InkWell(child: Icon(Icons.facebook,color: Colors.blue,size: 32,),onTap: (){},),
                        InkWell(child: Icon(Icons.phone,color: Colors.black,size: 32,),onTap: (){},),
                     InkWell(child: Image.asset(AppImageAsset.whats,height: 45,width: 45,),onTap: (){}),
                     InkWell(child: Image.asset(AppImageAsset.gmail,height: 25,width: 25,),onTap: (){}),
                      ],),
                      Divider(

                        thickness: 1,
                      ),
                      // Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //
                      //     // Container(
                      //     //   decoration: const BoxDecoration(
                      //     //       borderRadius: BorderRadius.only(bottomRight: Radius.circular(25)),
                      //     //       color: AppColor.black),
                      //     //   padding: const EdgeInsets.symmetric(
                      //     //       horizontal: 5, vertical: 2),
                      //     //   height: 40,
                      //     //   width: 100,
                      //     //   child: const
                      //     // ),
                      //
                      //     // Container(
                      //     //   padding: const EdgeInsets.only(
                      //     //     left: 5,
                      //     //     right: 5,
                      //     //   ),
                      //     //   decoration: BoxDecoration(
                      //     //       borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(25)),
                      //     //       color: AppColor.accent_color_3),
                      //     //   height: 40,
                      //     //   width: 130,
                      //     //   child: const Row(
                      //     //     mainAxisAlignment:
                      //     //     MainAxisAlignment.spaceAround,
                      //     //     children: [
                      //     //
                      //     //       Padding(
                      //     //         padding:
                      //     //         EdgeInsets.only(bottom: 10.0),
                      //     //         child: Text(
                      //     //           "خدمة العملاء",
                      //     //           style: TextStyle(
                      //     //               color: AppColor.white,
                      //     //               fontSize: 15,
                      //     //               fontWeight: FontWeight.bold,
                      //     //               overflow:
                      //     //               TextOverflow.ellipsis),
                      //     //         ),
                      //     //       ),    Icon(
                      //     //         Icons.message_outlined,
                      //     //         color: AppColor.white,
                      //     //         size: 20,
                      //     //       ),
                      //     //     ],
                      //     //   ),
                      //     // ),
                      //   ],
                      // ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
