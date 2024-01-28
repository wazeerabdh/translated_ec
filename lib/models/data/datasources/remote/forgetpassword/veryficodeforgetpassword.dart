import '../../../../../applinking.dart';
import '../../../../core/class/crud.dart';

class VerfyCodeForgetPasswors {
  Crud crud = Crud();
  VerfyCodeForgetPasswors(this.crud);
  // ignore: non_constant_identifier_names
  PostsDataVerfyCodForgetPasswors(
      String email,
      String veryvidcode) async {
    var response = await crud.PostData(AppLinking.veryficodeforgetpassword , {
      "email": email,
      "veryvidcode": veryvidcode,
    });
    return response.fold((l) => l, (r) => r);
  }
}
