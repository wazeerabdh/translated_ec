import 'package:get/get.dart';
import 'package:hijazi/view/map/map.dart';
import 'package:hijazi/view/screen/home/homepage.dart';
import 'package:hijazi/view/screen/notifications/evaluation.dart';
import 'package:hijazi/view/screen/notifications/notifications.dart';
import 'models/core/constant/routes.dart';
import 'models/core/middleware/mymiddleware.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/", page: () =>     Homepage(), middlewares: [MyMiddleWare()]),
  // GetPage(name: "/", page: () =>   TestView()),





  ///الاشعارات
  GetPage(name: AppRoute.notifications, page: () =>   const Notifications()),

  ///الخرائط
  GetPage(name: AppRoute.mapPage, page: () =>      MapPage()),


  // GetPage(name: AppRoute.distinguishedMembers, page: () =>     const DistinguishedMembers()),







  ///الفعاليات والانشطة




  ///تقييم التطبيق
  GetPage(name: AppRoute.evaluations, page: () =>       Evaluations()),
  ///معلومات المطور














];
