import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hijazi/models/core/constant/color.dart';
import 'package:lottie/lottie.dart';

import '../../../models/core/constant/imgaeasset.dart';
import '../../widget/custom_appar.dart';

class Evaluations extends StatelessWidget {
  const Evaluations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(title: "تقييم التطبيق"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Container(
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10,),
                Lottie.asset(AppImageAsset.stare,
                    height: 80, width: 120, repeat: false,),
                SizedBox(height: 10,),
                Container(alignment:Alignment.center,child: Text("نحن نعمل من اجل تجربة افضل \n للمستخدم يمكنك تقييمنا",style: TextStyle(color: AppColor.black,fontSize: 14),),),
                RatingBar.builder(
                  itemSize: 25,
                  initialRating: 2,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(
                    horizontal: 2,
                  ),
                  itemBuilder: (context, _) {
                    return const Icon(
                      Icons.star,
                      size: 10,
                      color: Colors.amber,
                    );
                  },
                  onRatingUpdate: (rating) {},
                ),
                SizedBox(height: 10,),
                InkWell(onTap: (){

                },
                  child: Container(alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColor.accent_color_3),
                    height: 35,
                    width: 150,
              child: Text("ارسل الان",style: TextStyle(color: AppColor.white,fontSize: 13),),  ),
                ),
                SizedBox(height: 10,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
