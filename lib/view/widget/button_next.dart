import 'package:flutter/material.dart';
import '../../../../../models/core/constant/fontassets.dart';
import '../../models/core/constant/color.dart';

class NextButton extends StatelessWidget {
  const NextButton(
      {super.key,
      required this.name,
      required this.herht,
      required this.width,
      required Function()? this.onPressed,
      required this.right,
      this.color = AppColor.secound_color,
      // this.image ,
      this.color2 = AppColor.white});
  final String name;
  final double herht;
  final double width;
  final double right;
  final Color color;
  final Color color2;
  // final String? image;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
    padding: EdgeInsets.only(top: 1.0, right: right, bottom: 10),
    child: Container(
      height: herht,
      width: width,
      decoration: BoxDecoration(
          color: color,
          // gradient: AppColor.secound_color,
          border: Border.all(color: AppColor.textfield_grey, width: 1),
          borderRadius: const BorderRadius.all(Radius.circular(5))),
      child: TextButton(
        style: TextButton.styleFrom(
          minimumSize: Size(MediaQuery.of(context).size.width, 0),
          //height: 50,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),),
        onPressed: onPressed,
        child: Center(
          child: Text(
            name,
            style: TextStyle(
                color: color2,
                fontFamily: FontAssets.cairo,
                fontSize: 12,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    ),
      ),
    );
  }
}
