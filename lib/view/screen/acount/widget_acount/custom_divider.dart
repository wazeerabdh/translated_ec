import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hijazi/models/core/constant/color.dart';
class CustomDivid extends StatelessWidget {
  const CustomDivid({super.key, });

  @override
  Widget build(BuildContext context) {
    return                  Row(
      children: [
        Expanded(child: Divider(color: AppColor.black, thickness: 3)),
        Text(
          "1".tr,
          style: TextStyle(color: AppColor.black, fontSize: 15),
        ),
        SizedBox(
          height: 12,
        ),
        Expanded(
            child: Divider(
              color: AppColor.black,
              thickness: 3,
            )),
      ],
    );
  }
}
