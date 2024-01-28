import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hijazi/controler/acount_controller/acount_controller.dart';
import '../../../models/core/constant/color.dart';
import '../../../models/core/constant/imgaeasset.dart';
import '../../widget/custom_appar.dart';

class InformationDeveloper extends StatelessWidget {
  const InformationDeveloper({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AcountControllerIm());
    return Scaffold(
      appBar: CustomAppBar2(title: "معلومات المطور"),
      body: GetBuilder<AcountControllerIm>(
    builder: (controller) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Container(
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(decoration: BoxDecoration( borderRadius: BorderRadius.circular(5),),
                    child: Image.asset(AppImageAsset.techsoft,height: 220,width:double.infinity,  fit: BoxFit.cover)),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: const CircleAvatar(
                        backgroundImage: AssetImage(AppImageAsset.facebook),
                      ),
                      onTap: () {},
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      child: const CircleAvatar(
                        backgroundImage: AssetImage(AppImageAsset.google),
                        backgroundColor: AppColor.white,
                      ),
                      onTap: () {},
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      child: const CircleAvatar(
                        backgroundImage: AssetImage(AppImageAsset.whatsapp),
                        backgroundColor: AppColor.white,
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),

                InkWell(
                  onTap: (){
                    controller.launchPhoneDialer2();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColor.grey_153),
                    ),
                    padding: const EdgeInsets.all(8),
                    child:   Column(
                     crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.phone),
                            Text("تواصل مع شركة التطوير على الارقام التالية",    style: const TextStyle(
                              color: AppColor.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),),
                          ],
                        ),
                        Text("770551579-781888181",    style: const TextStyle(
                          color: AppColor.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      ));
  }
}
