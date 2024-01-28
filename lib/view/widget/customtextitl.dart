import 'package:flutter/material.dart';
import 'package:hijazi/models/core/constant/color.dart';

import '../../models/core/constant/fontassets.dart';
class CustomTextTitle extends StatelessWidget {
  final String txt;
  const CustomTextTitle({Key? key, required this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Text(txt ,
      textAlign: TextAlign.start,
      style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,fontFamily: FontAssets.cairo,color: AppColor.black),
    );
  }
}
