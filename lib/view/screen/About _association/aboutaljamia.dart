import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hijazi/models/core/constant/color.dart';
import 'package:hijazi/models/core/constant/imgaeasset.dart';
import '../../widget/button_next.dart';
import '../../widget/custom_appar.dart';
class AboutAlaeibus extends StatelessWidget {
  const AboutAlaeibus({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(
        title: "نبذه عن الجمعية",
      ),
      body: ListView(
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              child:
                FadeInImage.assetNetwork(
    imageErrorBuilder:
    (context, error, stackTrace) {
    return Image.asset(
      AppImageAsset.about1,
      height: 250,
      width: double.infinity,
      fit: BoxFit.cover,
    );
    },
    image: "https://static.aljamila.com/styles/1100x732_scale/public/2019/08/08/2886421-910063707.jpg",
    placeholder : AppImageAsset.about1,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
    ),






          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text("الجمعية في سطور",
              style: TextStyle(fontSize: 17,
                  color: AppColor.accent_color,fontWeight: FontWeight.bold, textBaseline: TextBaseline.ideographic), ),),
          Divider(thickness: 1,endIndent: 230),
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
              """بدأ تعليم القرآن بحلقات قليلة يقوم عليها نخبة من أبناء المحافظة. وفي 1412 هـ صدرت موافقة الأمانة العامة لجماعات تحفيظ القرآن الكريم مشكورة على إنشاء مندوبية لتحفيظ القرآن الكريم بمحافظة الكامل وقرى بني سُليم , تُشرف عليها الجمعية الخيرية لتحفيظ القرآن الكريم بالطائف. وفي السنة 1419 هـ صدرت موافقة المجلس الأعلى للجمعيات الخيرية لتحفيظ القرآن الكريم باعتمادها جمعية باسم الجمعية الخيرية لتحفيظ القرآن الكريم بمحافظة الكامل وقرى بني سُليم , وتحمل ترخيصاً رقم 3359 . وبحمد الـله ما زالت تواصل مسيرتها المباركة لنشر كتاب الـله – عز وجل – وتعليمه وتحفيظه مؤدية بذلك مقتضيات هذه الأمانة التي حملتها على عاتقها في تلك المناطق المتباعدة الأطراف مستمدة العون من الـله – عز وجل – ثم من أهل الخير والفضل والعطاء المحبين لكتاب الـله والحريصين على تعليمه. نحن في جمعية تحفيظ القرآن بمحافظة الكامل وقرى بني سُليم ننشر نور القرآن ونسعى لغرس محبته في نفوس المجتمع . حيث فيه النور والهداية للبشرية جمعاء .""",
              style: TextStyle(
                  color: AppColor.grey2,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 15,
          ),


        ],
      ),
    );
  }
}
