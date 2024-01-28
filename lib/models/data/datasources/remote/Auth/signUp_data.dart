
import '../../../../../applinking.dart';
import '../../../../core/class/crud.dart';

class SignUpData {
  Crud crud = Crud();
  SignUpData(this.crud);
  // ignore: non_constant_identifier_names
  PostsData(
      String username,
      String password,
      String emailorphone,
    ) async {
    var response = await crud.PostData(AppLinking.SignUp, {
      "username": username,
      "password": password,
      "emailorphone": emailorphone,

    });
    return response.fold((l) => l, (r) => r);
  }
}
