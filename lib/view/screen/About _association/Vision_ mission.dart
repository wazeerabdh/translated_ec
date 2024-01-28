import 'package:flutter/material.dart';
import 'package:hijazi/models/core/constant/color.dart';

import '../../../models/core/constant/imgaeasset.dart';

class VisionMission extends StatelessWidget {
  const VisionMission({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "الرؤية والرسالة",
          style: TextStyle(fontSize: 15, color: AppColor.white),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              child:       FadeInImage.assetNetwork(
                imageErrorBuilder:
                    (context, error, stackTrace) {
                  return Image.asset(
                    AppImageAsset.vison,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                },
                image: "https://static.aljamila.com/styles/1100x732_scale/public/2019/08/08/2886421-910063707.jpg",
                placeholder: AppImageAsset.person,
                fit: BoxFit.cover,
              ),),

            SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              "رؤيتنا",
              style: TextStyle(
                  fontSize: 17,
                  color: AppColor.accent_color,
                  fontWeight: FontWeight.bold,
                  textBaseline: TextBaseline.ideographic),
            ),
          ),
          Divider(thickness: 1, endIndent: 230),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: NextButton(
          //       herht: 50,
          //       width: 100,
          //       onPressed: () {},
          //       right: 0,
          //       name: "184".tr),
          // ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              """ جمعية فاعلة وتربية قرآنية هادفة تحقيق الاستدامة, وتعزيزالعناية بالقرآن الكريم في المجتمع.""",
              style: TextStyle(
                  color: AppColor.grey2,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              "رسالتنا",
              style: TextStyle(
                  fontSize: 17,
                  color: AppColor.accent_color,
                  fontWeight: FontWeight.bold,
                  textBaseline: TextBaseline.ideographic),
            ),
          ),
          Divider(thickness: 1, endIndent: 230),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: NextButton(
          //       herht: 50,
          //       width: 100,
          //       onPressed: () {},
          //       right: 0,
          //       name: "184".tr),
          // ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              """ننشر نور القرآن في القرى والهجر لجميع فئات المجتمع بعمل مؤسسي مميز ووسائل عصرية جاذبة.""",
              style: TextStyle(
                  color: AppColor.grey2,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
