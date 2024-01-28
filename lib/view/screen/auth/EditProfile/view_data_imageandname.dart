import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

import 'package:hijazi/models/core/constant/imgaeasset.dart';


import '../../../../controler/Auth/controller_edite/controller_view_data_imageandname.dart';
import '../../../../models/core/class/handlingdataview.dart';
import '../../../../models/core/constant/color.dart';
import '../../../../models/core/functions/validinput.dart';
import '../../../widget/custom_input.dart';
import '../../../widget/custom_appar.dart';
import '../widget_auth/custumtxt.dart';

class ProfileEditData extends StatelessWidget {
  const ProfileEditData({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(View_Data_ImageandnameControllerIm());
    return GetBuilder<View_Data_ImageandnameControllerIm>(
      builder: (controller) => HandlingDataView(
          statusRequest: controller.statuceRequste,
          widget: Scaffold(
              appBar: CustomAppBar2(title: "بيانات الحساب"),
              backgroundColor: Colors.white,
              body: RefreshIndicator(
                color: AppColor.red_disabled,
                backgroundColor: Colors.white,
                onRefresh: controller.onPageRefresh,
                displacement: 10,
                child: Stack(
                  children: [
                    if (controller.isLoading)
                      Positioned.fill(
                        child: Container(
                          color: Colors.white.withOpacity(0.5),
                          child: const Center(
                            child: SpinKitFadingCircle(
                              color: Colors.grey,
                              size: 60.0,
                            ),
                          ),
                        ),
                      ),
                    CustomScrollView(
                      controller: controller.mainScrollController,
                      physics: const BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()),
                      slivers: [
                        SliverList(
                          delegate: SliverChildListDelegate([
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 16.0, bottom: 8.0),
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 120,
                                        height: 120,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          border: Border.all(
                                              color: const Color.fromRGBO(
                                                  112, 112, 112, .3),
                                              width: 2),
                                          //shape: BoxShape.rectangle,
                                        ),
                                        child: ClipRRect(
                                          clipBehavior: Clip.hardEdge,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(100.0)),
                                          child: FadeInImage.assetNetwork(
                                            imageErrorBuilder:
                                                (context, error, stackTrace) {
                                              return Image.asset(
                                                AppImageAsset.facebook,
                                                fit: BoxFit.cover,
                                              );
                                            },
                                            image: "${AppImageAsset.facebook}",
                                            placeholder: AppImageAsset.facebook,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        right: 8,
                                        bottom: 8,
                                        child: SizedBox(
                                          width: 24,
                                          height: 24,
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                              shape: CircleBorder(
                                                side: new BorderSide(
                                                    color: AppColor.light_grey,
                                                    width: 1.0),
                                              ),
                                              padding: const EdgeInsets.all(0),
                                              backgroundColor:
                                                  AppColor.light_grey,
                                            ),
                                            child: const Icon(
                                              Icons.edit,
                                              color: AppColor.font_grey,
                                              size: 14,
                                            ),
                                            onPressed: () {
                                              controller.chooseAndUploadImage(
                                                  context);
                                            },
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: 16.0),
                              child: Divider(
                                height: 24,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 8.0,
                                  bottom: 8.0,
                                  left: 16.0,
                                  right: 16.0),
                              child: Container(
                                child: Form(key: controller.formstate,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 8.0),
                                        child: CostumTxT(
                                          valid: (val) {
                                            return validInput(
                                                val!, 5, 15, "username");
                                          },
                                          controller: controller.nameController,
                                          hinttxt: "اسم المستخدم",
                                          lable: "اسم المستخدم",
                                          icon: Icons.person,
                                          isPassword: false,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 8.0),
                                        child: CostumTxT(
                                          valid: (val) {
                                            return validInput(
                                                val!, 5, 15, "username");
                                          },
                                          controller:
                                              controller.addressController,
                                          hinttxt: "عنوان المستخدم",
                                          lable: "عنوان المستخدم",
                                          icon: Icons.location_on_outlined,
                                          isPassword: false,
                                        ),
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.only(top: 15.0),
                                        child: Container(
                                          height: 50,
                                          decoration: BoxDecoration(
                                              gradient: AppColor.appBarGradent2,
                                              border: Border.all(
                                                  color: AppColor.textfield_grey,
                                                  width: 1),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(15.0))),
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                              minimumSize: Size(
                                                  MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  0),
                                              //height: 50,

                                              shape: const RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(12.0))),
                                            ),
                                            child: const Text(
                                              "تاكيد",
                                              style: TextStyle(
                                                  color:AppColor.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            onPressed: () {
                                              controller.gotoseccess();
                                              // onPressUpdate();
                                            },
                                          ),
                                        ),
                                      ),
                                      //
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ]),
                        ),
                      ],
                    ),
                  ],
                ),
              ))),
    );
  }
}
