
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../models/core/class/statusrequest.dart';
import '../../../models/core/constant/routes.dart';
import '../../../models/core/services/services.dart';


abstract class ResetPasswordController extends GetxController{
  checkemails();

}
class ForgetPasswordControllerImp extends ResetPasswordController{
GlobalKey<FormState> formState = GlobalKey<FormState>();
late TextEditingController email;
// StatuceRequste  statuceRequste=StatuceRequste.none;
  StatusRequest statuceRequste = StatusRequest.none;
  MyServices myServices = Get.find();
  bool changcolor = false;




  void onEmailTap() {
    changcolor =!changcolor;

    update();

  }
// ForGetPasword forGetPasword=ForGetPasword(Get.find());
  @override
  checkemails()async{
   var formdate = formState.currentState;
      if (formdate!.validate()) {
        Get.offNamed(AppRoute.verfiyCodeSinUp,);
    //   statuceRequste = StatuceRequste.loading;
    //   print("========================");
    //   print("========================");
    //   update();
    //   var response = await forGetPasword.ForGetPaswords(email.text);
    //   print("=======$response=================");
    //   print("========$response================");
    //   statuceRequste = handlingData(response);
    //   if (StatuceRequste.succes == statuceRequste) {
    //     if (response['status']=="success") {
    //       //يضهر خطاء هنا data.addAll(response['data']);
    //       Get.offNamed(Approute.veryfiyCode, arguments: {
    //         "email":email.text
    //       });
    //
    //     } else {
    //       Get.defaultDialog(title: "Error", middleText: "Email or password note  correct");
    //       statuceRequste = StatuceRequste.failer;
    //     }
    //   }
    //   update();
    // }else{
    //   print("not valid ");
     }

  }


  @override
  void onInit() {
    email=TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    email.dispose();

  }
}