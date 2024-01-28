import 'package:flutter/material.dart';
import 'package:hijazi/models/core/constant/color.dart';
class CustomRow extends StatelessWidget {
  const CustomRow({super.key, required this.txt, required this.icon, this.icons=null, this.onTap});
  final String txt;
  final Function()?onTap;
  final IconData icon;
  final IconData? icons;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon( icons,color: AppColor.black,size: 30,),
          Text(
            txt,
            style: const TextStyle(color: AppColor.black, fontSize: 13,),textAlign: TextAlign.center,
          ),
          Icon(
            icon,
            color: AppColor.grey_153,size: 30,
          )
        ],
      ),
    );
  }
}
