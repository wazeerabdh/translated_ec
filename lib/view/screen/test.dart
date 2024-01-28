// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:hijazi/controler/controller_%20partners/controller_%20partners.dart';
//
// import '../../../models/core/class/handlingdataview.dart';
// import '../../../models/core/constant/color.dart';
// import '../../../models/core/constant/fontassets.dart';
//
// class News extends StatelessWidget {
//   const News({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     Get.put(MediaCenterControllerIm());
//     return GetBuilder<MediaCenterControllerIm>(
//         builder: (controller) => HandlingDataView(
//             statusRequest: controller.statuceRequste,
//             widget: Scaffold(
//               body: CustomScrollView(
//                 slivers: [
//                   SliverAppBar(
//                     expandedHeight: 200.0,
//                     pinned: true,
//                     flexibleSpace: FlexibleSpaceBar(
//                       titlePadding: const EdgeInsets.only(
//                         left: 100,
//                       ),
//                       title: const Padding(
//                         padding: EdgeInsets.only(),
//                         child: Text(
//                           "اخبار الجمعية",
//                           style: TextStyle(
//                               fontSize: 17,
//                               color: AppColor.white,
//                               fontWeight: FontWeight.bold,
//                               fontFamily: FontAssets.playfairDisplay),
//                         ),
//                       ),
//                       background: Image.network(
//                         'https://res.cloudinary.com/rent-blogs/image/upload/c_scale,w_848,h_394/f_auto,q_auto/v1678304031/media_center.jpg?_i=AA',
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                   SliverGrid(
//                     gridDelegate:
//                         const SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 1,
//                       childAspectRatio: 2 / 2.16,
//                     ),
//                     delegate: SliverChildBuilderDelegate(
//                       (BuildContext context, int index) {
//                         return Container(
//                           padding: const EdgeInsets.symmetric(
//                               vertical: 10, horizontal: 12),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               ClipRRect(
//                                 borderRadius: BorderRadius.circular(10),
//                                 child: CachedNetworkImage(
//                                   imageUrl:
//                                       "https://static.aljamila.com/styles/1100x732_scale/public/2019/08/08/2886421-910063707.jpg",
//                                   height: 236,
//                                   fit: BoxFit.cover,
//                                   width: double.infinity,
//                                 ),
//                               ),
//                               Container(
//                                   child: const Text(
//                                 "افتتاح فرع الاعبوس",
//                                 style: TextStyle(
//                                     color: AppColor.black,
//                                     fontSize: 15,
//                                     fontWeight: FontWeight.bold,
//                                     overflow: TextOverflow.ellipsis,
//                                     fontFamily: FontAssets.cairo),
//
//                               )),
//                               Container(
//                                   child: const Text(
//                                 "باستخدام الملفات الشخصية على Chrome، يمكنك الفصل بين جميع بيانات Chrome. ويمكنك إنشاء ملفات شخصية للأصدقاء والعائلة أو تقسيمها للعمل وأغراض الترفيه.",
//                                 style: TextStyle(
//                                     color: AppColor.black,
//                                     fontSize: 14,
//                                     fontWeight: FontWeight.w500,
//                                     overflow: TextOverflow.ellipsis,
//                                     fontFamily: FontAssets.Tajawal),
//                                 maxLines: 2,
//                               )),
//                               Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Container(
//                                     decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(4),
//                                         color: AppColor.black),
//                                     padding: const EdgeInsets.symmetric(
//                                         horizontal: 5, vertical: 2),
//                                     height: 40,
//                                     width: 100,
//                                     child: const Row(
//                                       children: [
//                                         Icon(
//                                           Icons.share_outlined,
//                                           color: AppColor.white,
//                                         ),
//                                         Text(
//                                           "مشاركة",
//                                           style: TextStyle(
//                                               color: AppColor.white,
//                                               fontSize: 15,
//                                               fontWeight: FontWeight.bold,
//                                               overflow: TextOverflow.ellipsis),
//                                         ),
//                                       ],
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceAround,
//                                     ),
//                                   ),
//                                   Container(
//                                     padding: const EdgeInsets.only(
//                                       left: 5,
//                                       right: 5,
//                                     ),
//                                     decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(4),
//                                         color: AppColor.black),
//                                     height: 40,
//                                     width: 120,
//                                     child: const Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceAround,
//                                       children: [
//                                         Icon(
//                                           Icons.arrow_forward_outlined,
//                                           color: AppColor.white,
//                                           size: 20,
//                                         ),
//                                         Padding(
//                                           padding:
//                                               EdgeInsets.only(bottom: 10.0),
//                                           child: Text(
//                                             "قراءة المزيد",
//                                             style: TextStyle(
//                                                 color: AppColor.white,
//                                                 fontSize: 15,
//                                                 fontWeight: FontWeight.bold,
//                                                 overflow:
//                                                     TextOverflow.ellipsis),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               const Divider(thickness: 1),
//                             ],
//                           ),
//                         );
//                       },
//                       childCount: controller.submedia.length,
//                     ),
//                   ),
//                 ],
//               ),
//             )));
//   }
// }
