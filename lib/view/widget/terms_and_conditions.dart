import 'package:flutter/material.dart';

import '../../models/core/constant/color.dart';
class Terms_And_Conditions extends StatelessWidget {
  const Terms_And_Conditions({super.key});

  @override
  Widget build(BuildContext context) {
    return     Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("الشروط والاحكام",style: TextStyle(color: AppColor.orange,decoration: TextDecoration.underline,fontSize: 13),),
        Text("   و   ",style: TextStyle(color: AppColor.black,fontSize: 13),),
        Text("بيان الخصوصية",style: TextStyle(color: AppColor.orange,decoration: TextDecoration.underline,fontSize: 13),  ),],);
  }
}
