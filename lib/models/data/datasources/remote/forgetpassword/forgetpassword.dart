

import '../../../../../applinking.dart';
import '../../../../core/class/crud.dart';

class ForGetPasword {
  Crud crud = Crud();
  ForGetPasword(this.crud);
  // ignore: non_constant_identifier_names
  ForGetPaswords(
String email,
      ) async {
    var response = await crud.PostData(AppLinking.forgetpassword, {
      "email": email,
    });
    return response.fold((l) => l, (r) => r);
  }
}