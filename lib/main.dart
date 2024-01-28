
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hijazi/routes.dart';
import 'package:hijazi/view/screen/home/homepage.dart';
import 'bindings/intialbindings.dart';
import 'models/core/localization/changelocal.dart';
import 'models/core/localization/translation.dart';
import 'models/core/services/services.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return GetMaterialApp(
      home:   Homepage(),
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      locale: controller.language,
      title: 'تحويل الرصيد',
      // initialBinding: MyBinding(),
      theme: controller.apptheme,
     //getPages: routes,
    );
  }
}
