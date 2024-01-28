import 'package:flutter/material.dart';
import 'package:hijazi/models/core/constant/color.dart';
import '../../../models/core/constant/imgaeasset.dart';
import '../../widget/button_next.dart';
import '../../widget/custom_appar.dart';
class SpeechAssociationPresident extends StatelessWidget {
    SpeechAssociationPresident({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(
        title: "كلمة رئيس الجمعية"
        ,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                child:   FadeInImage.assetNetwork(
                  imageErrorBuilder:
                      (context, error, stackTrace) {
                    return FadeInImage.assetNetwork(
                      imageErrorBuilder:
                          (context, error, stackTrace) {
                        return Image.asset(
                          AppImageAsset.gruop1,
                          fit: BoxFit.cover,
                        );
                      },
                      image: "https://www.tu-ilmenau.de/unionline/fileadmin/_processed_/0/0/csm_Person_Yury_Prof_Foto_AnLI_Footgrafie__2_.JPG_5845266f99.jpg",
                      placeholder: AppImageAsset.gruop1,
                      fit: BoxFit.cover,
                    );
                  },
                  image:"https://www.tu-ilmenau.de/unionline/fileadmin/_processed_/0/0/csm_Person_Yury_Prof_Foto_AnLI_Footgrafie__2_.JPG_94f12fbf25.jpg",
                  placeholder: AppImageAsset.person,
                  fit: BoxFit.cover,
                ),),

            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: NextButton(
                  herht: 45,
                  width: 140,
                  onPressed: () {},
                  right: 0,
                  name: "الـمـحـتـوى"),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "راية القابضة هي مجموعة استثمارية تدير محفظة استثمارات متنوعة. متخذة من مدينة القاهرة مقرًا لها، ولا تزال تحقق انتشارًا واسع النطاق لتوفر تغطية شاملة لعملياتها في جميع قارات العالم. تزاول راية القابضة أعمالًا في مجالات تكنولوجيا المعلومات وتعهيد مراكز البيانات ومراكز الاتصالات والمباني الذكية والإلكترونيات الاستهلاكية والأغذية والمشروبات والنقل البري ووسائل الدفع الإلكتروني باعتبارها الشركة الأم لأحدى عشر شركة تزاول أنواعًا مختلفة من الأنشطة وتحقق نجاحًا ملحوظًا. هذا وقد أُدرجت أسهم راية القابضة في البورصة المصرية منذ عام 2005؛ لما تقوم به الشركة من توظيف ما يزيد عن 15,000 موظف كفء يلبون احتياجات قاعدة عريضة من العملاء على مستوى العالم من فروع الشركة في كل من جمهورية مصر العربية والمملكة العربية السعودية والإمارات العربية المتحددة ودولة قطر وبولندا ونيجيريا وتنزانيا",
                style: TextStyle(
                    color: AppColor.grey2,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            const Divider(thickness: 1),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(25)),
                        color: AppColor.black),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5, vertical: 2),
                    height: 40,
                    width: 100,
                    child: const Row(
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
                      mainAxisAlignment:
                      MainAxisAlignment.spaceAround,
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
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
