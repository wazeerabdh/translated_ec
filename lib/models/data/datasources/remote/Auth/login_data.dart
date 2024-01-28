

import '../../../../../applinking.dart';
import '../../../../core/class/crud.dart';

class LoginData {
  Crud crud = Crud();
  LoginData(this.crud);
  // ignore: non_constant_identifier_names
 LogimData(
      String password,
      String email,
    ) async {
    var response = await crud.PostData(AppLinking.login, {
      "password": password,
      "email": email,

    });
    print("$response========22");
    return response.fold((l) => l, (r) => r);
  }
}
