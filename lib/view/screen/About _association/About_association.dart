import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hijazi/models/core/constant/imgaeasset.dart';
import '../../../controler/controller_About_association/controller_About_association.dart';
import '../../../models/core/class/handlingdataview.dart';
import '../../../models/core/constant/color.dart';
import '../../../models/core/constant/fontassets.dart';

class AboutAssociation extends StatelessWidget {
    AboutAssociation({super.key});
List<String> image=[
AppImageAsset.word,
AppImageAsset.about,
AppImageAsset.gol,
AppImageAsset.report,
AppImageAsset.ha,
AppImageAsset.sit, AppImageAsset.see,
];
  @override
  Widget build(BuildContext context) {
    Get.put(ControllerAboutAssociationIm());
    return GetBuilder<ControllerAboutAssociationIm>(
        builder: (controller) =>   HandlingDataView(
            statusRequest: controller.statuceRequste,
            widget: Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 150.0,
                automaticallyImplyLeading: true,
                pinned: false,
                centerTitle: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 60 ),
                    child: Text("عن الجمعية",
                      style: TextStyle(
                          fontSize: 15,
                          color: AppColor.white,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                          fontFamily: FontAssets.Tajawal),
                    ),
                  ),
                  centerTitle: true,
                  background: FadeInImage.assetNetwork(
                    imageErrorBuilder:
                        (context, error, stackTrace) {
                      return Image.asset(
                        AppImageAsset.about1,
                        fit: BoxFit.cover,
                      );
                    },
                    image: "https://www.tu-ilmenau.de/unionline/fileadmin/_processed_/0/0/csm_Person_Yury_Prof_Foto_AnLI_Footgrafie__2_.JPG_5845266f99.jpg",
                    placeholder: AppImageAsset.about1,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2 / 1.6,
                ),
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return InkWell(
                      onTap: (){
                        controller.onTab[index]!();
                      },
                      child: Card(
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                children: [
                                  ClipRRect(

                                    // child: CachedNetworkImage(
                                    //   imageUrl:
                                    //   "https://static.aljamila.com/styles/1100x732_scale/public/2019/08/08/2886421-910063707.jpg",
                                    //   fit: BoxFit.cover,
                                    // ),
                                    borderRadius: BorderRadius.circular(5), child: Image.asset( image[index],fit: BoxFit.cover,height: 156,), ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 118,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: AppColor.accent_color.withOpacity(0.999),
                                ),
                                height: 40,
                                width: 200,
                                child:   Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        controller.information[index],
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontFamily: FontAssets.Tajawal,
                                          fontSize: 13,
                                        ),
                                      ),
                                      const Icon(Icons.arrow_circle_left_outlined, color:        Colors.white,),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  childCount: controller.information.length,
                ),
              ),
            ],
          ),
        )));
  }
}