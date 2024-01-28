import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../models/core/constant/color.dart';
import '../../../widget/custombody.dart';
class CustomNotifications extends StatelessWidget {
  const CustomNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        Text("لقد قمت بالحجز في يوم الاحد الساعة 10 ورقم الحجز الخاص بك هو 12354465 ",
          style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: AppColor.black,overflow: TextOverflow.ellipsis),maxLines: 3,),
        SizedBox(height: 8,),
        Row(mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomBody(
              txt: DateFormat('yyyy-MM-dd').format(DateTime.now()),num: 14,colors: AppColor.grey,
            ),
            Icon(Icons.access_time_filled_outlined),
          ],
        ),
      ],
    );
  }
}
