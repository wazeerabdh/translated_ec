import 'package:flutter/material.dart';
import 'package:hijazi/models/core/constant/imgaeasset.dart';

import '../../models/core/constant/color.dart';
import '../../models/core/constant/fontassets.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
 final String imagePath;
final  Function()? onTap;
final  Function()? onTap2;
  const CustomAppBar({
    super.key,
    required this.title,
   required this.imagePath,
    this.onTap, this.onTap2,

  });

  @override
  Size get preferredSize => const Size.fromHeight(50.0); // ارتفاع المرتبة

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: 70,
      backgroundColor: AppColor.accent_color_3,
      centerTitle: true,
      title: Text(
        title,
        style: const TextStyle(
          color: AppColor.white,
          fontFamily: FontAssets.playfairDisplay,
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: Container(
          padding: EdgeInsets.symmetric(horizontal: 2),
          child: Image.asset(AppImageAsset.logo)),
      actions: [
        InkWell(onTap: onTap2,
          child: Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 8, ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                const Icon(
                  Icons.shopping_cart_outlined,
                  color: AppColor.white,
                  size: 32,
                ),
                Positioned(
                  top:23,
                  right: 4,
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: AppColor.primaryColor,
                    child: Container(padding: EdgeInsets.only(top: 2),
                      child: const Text(
                        "7",
                        style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.bold,color: AppColor.white),textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 3,),

        InkWell(onTap: onTap,
          child: Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 8, ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                const Icon(
                  Icons.notifications_none_outlined,
                  color: AppColor.white,
                  size: 30,
                ),
                Positioned(
                  top:6,
                  right: 8,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: AppColor.primaryColor,
                    child: Container(padding: EdgeInsets.only(top: 4),
                      child: const Text(
                        "7",
                        style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: AppColor.white),textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),  ],

    );
  }
}
