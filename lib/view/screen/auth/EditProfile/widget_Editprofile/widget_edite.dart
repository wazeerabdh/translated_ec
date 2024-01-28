import 'package:flutter/material.dart';
import '../../../../../models/core/constant/color.dart';

class ButTrans extends StatelessWidget {
  const ButTrans(
      {super.key,
      this.onTap,
      required this.txt,
      required this.icon,
      this.txt2 = ""});
  final Function()? onTap;
  final String txt;
  final String? txt2;

  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              // height:50 ,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: AppColor.accent_color),
                          child: Icon(
                            icon,
                            size: 22,
                            color: AppColor.white,
                          )),
                      const SizedBox(
                        width: 8,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            txt,
                            style: const TextStyle(
                                color: Colors.black, fontSize: 12),
                          ),
                          Text(
                            txt2!,
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 22,
                    color: AppColor.grey2,
                  )
                ],
              )),
          const Divider()
        ],
      ),
    );
  }
}
