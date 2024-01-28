import 'package:flutter/material.dart';
import 'package:hijazi/models/core/constant/color.dart';

class Custom_contanr extends StatelessWidget {
  const Custom_contanr({Key? key, required this.onTap,     this.colors=AppColor.grey,   this.color2=AppColor.orang, required this.onTap2})
      : super(key: key);

  final VoidCallback onTap;
  final VoidCallback onTap2;

final Color colors;
final Color color2;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      child: Row(
        children: [
          InkWell(
            onTap: onTap,
            child: Container(
              alignment: Alignment.center,
              height: 45,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(7),
                  topRight: Radius.circular(7),
                ),
                color: colors,
              ),
              child: Text("رقم الجوال",
                  style: TextStyle(color: AppColor.white, fontSize: 14)),
            ),
          ),
          InkWell(
            onTap: onTap2,
            child: Container(
              alignment: Alignment.center,
              height: 45,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(7),
                  topLeft: Radius.circular(7),
                ),
                color: color2,
              ),
              child: Text("البريد الالكتروني",
                  style: TextStyle(color: AppColor.white, fontSize: 14)),
            ),
          ),
        ],
      ),
    );
  }
}
