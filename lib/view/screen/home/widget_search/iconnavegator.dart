import 'package:flutter/material.dart';

import '../../../../models/core/constant/color.dart';

class IconNavegator extends StatelessWidget {
  final Function()? onPressed;
  final String lable;
  final IconData icon;

  bool? active;
  IconNavegator({
    Key? key,
    this.active,
    required this.lable,
    this.onPressed,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: MaterialButton(
        onPressed: onPressed,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: active == true ? AppColor.secound_color : AppColor.grey,
              size: 27,
            ),
            Text(
              lable,
              style: TextStyle(
                color: active == true ? AppColor.secound_color : AppColor.grey,
                fontSize: 10,
                fontWeight: FontWeight.w600,
                overflow: TextOverflow.ellipsis,
              ),
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}
