import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CustomCheckMap extends StatelessWidget {
  const CustomCheckMap({super.key});
 final bool isChecked1 = false;

final  bool isChecked2 = false;
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text('162'.tr),
      value: isChecked1,
      onChanged: (bool? value) {
        // Handle sorting option 1
        // setState(() {
        //   isChecked1 = value!;
        // });
      },
    );
  }
}
