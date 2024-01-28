import 'package:flutter/material.dart';
import '../../../../models/core/constant/color.dart';
class CustomCommonQuestions extends StatelessWidget {
  const CustomCommonQuestions({super.key,
    required this.question,
    this.onPressed,
   required this.answer,
    required this.icon,
    required this.isSelected
  });
final String question;
  final String answer;
final IconData icon;
final Function()? onPressed;final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return   InkWell(
      onTap:onPressed ,
      //الرؤية
    //   الاهداف
    // من نحن
    // يكون فوق كل اسم هبدر عنون وبحتوي على خلفية
    // scrolling في الواجهة
    // اضافة بعض الحركات والانميشن
    // يكون تصميم جذاب
    // ولا فهمت حاجة
      child: Column(

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(question,
                style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: AppColor.black,),maxLines: 3,),
              Icon(icon,size: 30) ,

            ],
          ),
          Text(answer,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: AppColor.grey2),overflow: TextOverflow.clip,),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 10.0),
          //   child: Align(child: Text(txt1,style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color: AppColor.black,overflow: TextOverflow.ellipsis),),alignment: Alignment.bottomLeft),
          // ),
        ],
      ),
    );
  }
}
