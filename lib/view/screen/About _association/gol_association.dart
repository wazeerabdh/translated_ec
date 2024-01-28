import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hijazi/models/core/constant/color.dart';
import 'package:hijazi/models/core/constant/imgaeasset.dart';
import '../../widget/button_next.dart';
import '../../widget/custom_appar.dart';
class GolAssociation extends StatelessWidget {
  const GolAssociation({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(
        title: "جمعية الاعبوس"
        ,
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
                    AppImageAsset.rf_hotel2,

                  );
                },
                image: "https://static.aljamila.com/styles/1100x732_scale/public/2019/08/08/2886421-910063707.jpg",
                placeholder: AppImageAsset.rf_hotel2,

              ),

          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: NextButton(
                herht: 40,
                width: 100,
                onPressed: () {},
                right: 0,
                name: "184".tr),
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
          //
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
          //   child: NextButton(
          //       herht: 40,
          //       width: 100,
          //       onPressed: () {},
          //       right: 0,
          //       name: "185".tr),
          // ),
          //  const Padding(
          //    padding: EdgeInsets.all(8.0),
          //    child: Text(
          //     "عند تحديد هدف الشركة، من المهم أن تكون واقعياً وقابل للتحقيق. يجب أن يكون الهدف محدداً وقابلاً للقياس ومقيداً بوقت معين، مما يعني أن له تاريخ انتهاء محدداً. هذا يجعل من السهل تتبع التقدم وقياس النجاح. بالإضافة إلى ذلك، يمكن أن يساعد وجود هدف محدد في تحفيز الموظفين",
          //     style: TextStyle(
          //         color: AppColor.grey2,
          //         fontSize: 14,
          //         fontWeight: FontWeight.bold),
          // ),
          //  ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
          //   child: NextButton(
          //       herht: 40,
          //       width: 100,
          //       onPressed: () {},
          //       right: 0,
          //       name: "186".tr),
          // ),
          //  const Padding(
          //    padding: EdgeInsets.symmetric(horizontal: 8.0),
          //    child: Text(
          //     "عند تحديد هدف الشركة، من المهم أن تكون واقعياً وقابل للتحقيق. يجب أن يكون الهدف محدداً وقابلاً للقياس ومقيداً بوقت معين، مما يعني أن له تاريخ انتهاء محدداً. هذا يجعل من السهل تتبع التقدم وقياس النجاح. بالإضافة إلى ذلك، يمكن أن يساعد وجود هدف محدد في تحفيز الموظفين والحفاظ على تركيزهم على تحقيق النتيجة المرجوة",
          //     style: TextStyle(
          //         color: AppColor.grey2,
          //         fontSize: 14,
          //         fontWeight: FontWeight.bold),
          // ),
          //  ),
         const SizedBox(height: 10,),
        ],
      ),
    );
  }
}
