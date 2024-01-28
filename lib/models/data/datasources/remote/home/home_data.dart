import '../../../../../applinking.dart';
import '../../../../core/class/crud.dart';

class HomeData{
  Crud crud=Crud();
  HomeData(this.crud);
  getAllData() async{
    var response=await crud.PostData(AppLinking.home,{});
    return response.fold((l) => l, (r) => r);
  }
}