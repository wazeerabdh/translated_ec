

import '../../../../../applinking.dart';
import '../../../../core/class/crud.dart';
class VerfyCodeSignUp {
  Crud crud = Crud();
  VerfyCodeSignUp(this.crud);
  // ignore: non_constant_identifier_names
  PostsDataVerfyCodeSignUp(
      String email,
      String veryvidcode) async {
    var response = await crud.PostData(AppLinking.veryficodeSignUp, {
      "email": email,
      "veryvidcode": veryvidcode,
    });
    return response.fold((l) => l, (r) => r);
  }
}
