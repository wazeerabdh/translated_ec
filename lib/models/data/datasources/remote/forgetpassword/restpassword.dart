

import '../../../../../applinking.dart';
import '../../../../core/class/crud.dart';


class RestPasswordData {
  Crud crud;
  RestPasswordData(this.crud);
  postdata(String email ,String password) async {
    var response = await crud.PostData(AppLinking.restpasswords, {
      "email" : email ,
      "password" : password
    });
    return response.fold((l) => l, (r) => r);
  }
}