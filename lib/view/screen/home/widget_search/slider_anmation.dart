import 'package:flutter/material.dart';
import 'package:hijazi/models/core/constant/color.dart';
import 'package:marquee/marquee.dart' as marqueePackage;
class SliderAnmation extends StatelessWidget {
  const SliderAnmation({super.key});

  @override
  Widget build(BuildContext context) {
    return     Container(
      height: 50,
      padding: const EdgeInsets.only(top: 5),
      decoration:
      const BoxDecoration(color: AppColor.accent_color),
      child: Center(
        child: marqueePackage.Marquee(
          scrollAxis: Axis.horizontal,
          text:
          'خدمات تحويل الرصيد التفاعلات في التطبيق' *
              5,
          style: const TextStyle(
              fontSize: 13, color: AppColor.white),
          crossAxisAlignment: CrossAxisAlignment.start,
          blankSpace: 20.0,
          velocity: 50.0,
          pauseAfterRound: const Duration(seconds: 1),
          startPadding: 10.0,
          accelerationDuration: const Duration(seconds: 1),
          accelerationCurve: Curves.linear,
          decelerationDuration:
          const Duration(milliseconds: 500),
          decelerationCurve: Curves.easeOut,
        ),
      ),
    );
  }
}
