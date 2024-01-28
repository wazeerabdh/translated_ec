import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controler/acount_controller/acount_controller.dart';
import '../../../models/core/constant/color.dart';
import '../../widget/custom_appar.dart';

class CallMe extends StatelessWidget {
  const CallMe({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AcountControllerIm());
    return Scaffold(
      appBar: CustomAppBar2(title: "107".tr),
      body: GetBuilder<AcountControllerIm>(
        builder: (controller) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const Text(
              //   "تواصل معنا",
              //   style: TextStyle(
              //     color: AppColor.black,
              //     fontWeight: FontWeight.bold,
              //     fontSize: 15,
              //   ),
              // ),
              const SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColor.grey_153),
                ),
                padding: const EdgeInsets.all(8),
                child: InkWell(
                  onTap: (){
// controller.ogToQustion();
                  },
                  child:   Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("76".tr,    style: const TextStyle(
                        color: AppColor.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),),
                      const Icon(Icons.arrow_forward_ios_rounded),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10,),
                Text(
                "191".tr,
                style: const TextStyle(
                  color: AppColor.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 10,),
              InkWell(
                onTap: (){
controller.launchPhoneDialer();
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColor.grey_153),
                  ),
                  padding: const EdgeInsets.all(8),
                  child:   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.phone),
                          Text("107".tr,    style: const TextStyle(
                            color: AppColor.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),),
                        ],
                      ),
                      const Icon(Icons.arrow_forward_ios_rounded),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 10,),

              InkWell(onTap: (){controller.launchSocialMediaLink("https://mail.google.com/mail/u/0/?tab=rm&ogbl#sent");},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColor.grey_153),
                  ),
                  padding: const EdgeInsets.all(8),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.alternate_email_outlined),
                          Text("24".tr,    style: const TextStyle(
                            color: AppColor.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),),
                        ],
                      ),
                      const Icon(Icons.arrow_forward_ios_rounded),
                    ],
                  ),
                ),
              ),],
          ),
        ),
      ),
    );
  }
}
