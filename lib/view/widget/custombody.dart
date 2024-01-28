import 'package:flutter/material.dart';
import 'package:hijazi/models/core/constant/color.dart';
class CustomBody extends StatelessWidget {
  final String txt;
  final double num;
  final double num1;
  final Color? colors;
  const CustomBody({Key? key, required this.txt, required this.num,  this.num1=10, this.colors=AppColor.black}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(

      margin:  EdgeInsets.symmetric(horizontal: num1!),
      child: Text(txt,
        // textAlign: TextAlign.center,
        style: TextStyle(fontSize: num,fontWeight: FontWeight.w600,color: colors),
      ),
    );
  }
}
