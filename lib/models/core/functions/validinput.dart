import 'package:get/get.dart';
validInput(String val, int min, int max, String type) {
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return  "حقل مطلوب";
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return  "حقل مطلوب";
    }
  }

  if (type == "emailorphone") {
    if (!GetUtils.isEmail(val)&&!GetUtils.isPhoneNumber(val)) {
      return "حقل مطلوب";
    }
  }
  // if (type == "phone") {
  //   if (!GetUtils.isPhoneNumber(val)) {
  //     return "not valid phone";
  //   }
  // }

  if (val.isEmpty) {
    return  "حقل مطلوب";
  }

  if (val.length < min) {
    return "لا يمكن ان يكون اقل من  $min";
  }

  if (val.length > max) {
    return "لا يمكن ان يكون اكبر من $max";
  }
}
