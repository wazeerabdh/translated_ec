import 'package:flutter/material.dart';
import 'package:hijazi/models/core/constant/color.dart';
import 'package:hijazi/view/screen/notifications/widget_notifications/widget_notifications.dart';
import '../../widget/custom_appar.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(title: "التنبيهات الواردة"),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView.builder(
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColor.grey_153)),
                child: const CustomNotifications(),
              );
            }),
      ),
    );
  }
}
