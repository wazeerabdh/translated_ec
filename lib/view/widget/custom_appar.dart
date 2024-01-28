
import 'package:flutter/material.dart';
import '../../models/core/constant/color.dart';
class CustomAppBar2 extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  CustomAppBar2({
    super.key,
    required this.title,
  });

  @override
  Size get preferredSize => const Size.fromHeight(50.0); // ارتفاع المرتبة

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColor.secound_color,
      title:   Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
      ),
      centerTitle: true,
    );
  }
}