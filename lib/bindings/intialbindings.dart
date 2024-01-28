import 'package:get/get.dart';
import '../controler/Auth/signUp_controller.dart';
import '../models/core/class/crud.dart';
class MyBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(Crud());
    Get.lazyPut(() => SingUpControllerImp(),fenix: true);
  }
}