import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hijazi/models/core/constant/imgaeasset.dart';
import 'package:hijazi/view/screen/auth/EditProfile/widget_Editprofile/widget_edite.dart';

import '../../../../controler/Auth/controller_edite/controller_edite.dart';
import '../../../../models/core/constant/color.dart';
import '../../../../models/core/functions/alertexitapp.dart';
import '../../../widget/custom_appar.dart';


class EditProfil extends StatelessWidget {
  EditProfil({Key? key,  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ColtrollerEditeIm  controller= Get.put(ColtrollerEditeIm());
    return Scaffold(
        appBar: AppBar(title: const Text("إدارة الحساب",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),),elevation: 0,centerTitle: true,),

      backgroundColor: Colors.white,
       // appBar:    CustomAppBar2(title: "الحساب"),
      body:
      ListView(
        children: [
          SizedBox(height: 20,),
          ClipRRect(
              borderRadius: BorderRadius.circular(150),
              child: Image.asset(AppImageAsset.customr,height: 120,width: 100,)),
          SizedBox(height: 20,),
          Container(
   height: MediaQuery.of(context).size.height/3,
            child: ListView.builder(itemBuilder: (context,index){
              return Column(
                children: [
                  ButTrans(onTap: controller.onTabEdite[index],
                    txt: controller.txtList[index],
                    icon:controller.IconsDat[index] ,
                 ),
                  Divider(thickness: .5,)
                ],
              );
            },itemCount: 3,),
          ),
          // InkWell(
          //   onTap: () {
          //     LogUotDialog(context);
          //   },
          //   // child: Container(
          //   //   padding: EdgeInsets.all(10),
          //   //   decoration:
          //   //   BoxDecoration(borderRadius: BorderRadius.circular(10)),
          //   //   child: Center(
          //   //     child: Row(
          //   //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   //       children: [
          //   //         Text(
          //   //           "198".tr,
          //   //           style: TextStyle(
          //   //               color: AppColor.accent_color_3, fontSize: 15),
          //   //         ),
          //   //        Icon(Icons.logout_outlined,color:AppColor.accent_color_3 ,size: 30,)
          //   //       ],
          //   //     ),
          //   //   ),
          //   // ),
          // ),
          Divider(color: Colors.grey, thickness: 0.5),
          Spacer(),

        ],
      )
    );
  }

  // AppBar buildAppBar(BuildContext context) {

}



