import 'package:get/get.dart';
import 'package:hijazi/view/map/map.dart';
import 'package:hijazi/view/screen/About%20_association/About_association.dart';
import 'package:hijazi/view/screen/About%20_association/Members_association.dart';
import 'package:hijazi/view/screen/About%20_association/Organizational_structure.dart';
import 'package:hijazi/view/screen/About%20_association/Speech_Association_President.dart';
import 'package:hijazi/view/screen/About%20_association/Vision_%20mission.dart';
import 'package:hijazi/view/screen/About%20_association/aboutaljamia.dart';
import 'package:hijazi/view/screen/About%20_association/gol_association.dart';

import 'package:hijazi/view/screen/AssociationPublications/Member_privileges.dart';
import 'package:hijazi/view/screen/AssociationPublications/detail_member.dart';
import 'package:hijazi/view/screen/AssociationPublications/mypartners/marketdetail.dart';
import 'package:hijazi/view/screen/AssociationPublications/mypartners/partners.dart';
import 'package:hijazi/view/screen/AssociationPublications/regulations_regulations.dart';

import 'package:hijazi/view/screen/auth/verficodeSinUp.dart';
import 'package:hijazi/view/screen/home/homepage.dart';
import 'package:hijazi/view/screen/media_center/Advertisements.dart';
import 'package:hijazi/view/screen/media_center/Events_activities.dart';
import 'package:hijazi/view/screen/media_center/Minutes_meetings.dart';
import 'package:hijazi/view/screen/media_center/albom_image.dart';
import 'package:hijazi/view/screen/media_center/detail_activities.dart';
import 'package:hijazi/view/screen/media_center/detail_advertisements.dart';
import 'package:hijazi/view/screen/media_center/detail_news.dart';
import 'package:hijazi/view/screen/media_center/imagemedia.dart';
import 'package:hijazi/view/screen/media_center/listimage.dart';
import 'package:hijazi/view/screen/media_center/news_association.dart';
import 'package:hijazi/view/screen/media_center/video_booking.dart';
import 'package:hijazi/view/screen/media_center/mediacenter.dart';

import 'package:hijazi/view/screen/acount/call_me.dart';
import 'package:hijazi/view/screen/auth/EditProfile/changepassword.dart';
import 'package:hijazi/view/screen/auth/EditProfile/edite_profile.dart';
import 'package:hijazi/view/screen/auth/EditProfile/resetphoneoremail.dart';
import 'package:hijazi/view/screen/auth/EditProfile/verfaycodeforchangemailorphone.dart';
import 'package:hijazi/view/screen/auth/EditProfile/view_data_imageandname.dart';
import 'package:hijazi/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:hijazi/view/screen/auth/forgetpassword/resetpassword.dart';

 import 'package:hijazi/view/screen/notifications/evaluation.dart';
import 'package:hijazi/view/screen/notifications/information_Developer.dart';
import 'package:hijazi/view/screen/notifications/notifications.dart';
import 'package:hijazi/view/screen/notifications/requstsure.dart';
import 'package:hijazi/view/screen/notifications/technical_support.dart';

 import 'package:hijazi/view/screen/reaport/generalization.dart';
import 'package:hijazi/view/screen/reaport/reaport_bussness.dart';
import 'package:hijazi/view/screen/reaport/report_for_year.dart';
import 'package:hijazi/view/screen/reaport/association_policies.dart';
import 'package:hijazi/view/screen/vertsion_association/vertsion_association.dart';
import 'models/core/constant/routes.dart';
import 'models/core/middleware/mymiddleware.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/", page: () =>     Homepage(), middlewares: [MyMiddleWare()]),
  // GetPage(name: "/", page: () =>   TestView()),



  GetPage(name: AppRoute.forgetPassword,page:() =>const ForgetPassword()),
  GetPage(name: AppRoute.resetPassword,page:() =>const ResetPassWord()),
  GetPage(name: AppRoute.verfiyCodeSinUp,page:() =>const VerfiyCodeSinUp()),



  ///الاشعارات
  GetPage(name: AppRoute.notifications, page: () =>   const Notifications()),

  ///الخرائط
  GetPage(name: AppRoute.mapPage, page: () =>      MapPage()),
  ///وصف الشريك
  GetPage(name: AppRoute.marketDetail, page: () =>    const MarketDetail()),
  ///شركاء النجاح
  GetPage(name: AppRoute.partners, page: () =>      Partners()),
  // GetPage(name: AppRoute.distinguishedMembers, page: () =>     const DistinguishedMembers()),


  ///تواصل معنا
  GetPage(name: AppRoute.callMe, page: () =>     const CallMe()),
  ///المركز الاعلامي
  GetPage(name: AppRoute.mediacenter, page: () =>       MediaCenter()),

  GetPage(name: AppRoute.verfiyCodeChangEmailorPhone, page: () =>     const VerfiyCodeChangEmailorPhone()),
  GetPage(name: AppRoute.editProfil, page: () =>     EditProfil()),
  GetPage(name: AppRoute.profileEditData, page: () =>     const ProfileEditData()),
  GetPage(name: AppRoute.resetPhone_Email, page: () =>     const ResetPhone_Email()),

  GetPage(name: AppRoute.changPassword, page: () =>     const ChangPassword()),
  ///تاكيد الدفع او التبرع او تغير كلمة المرور
  GetPage(name: AppRoute.requscetSure, page: () =>     const RequscetSure()),
  GetPage(name: AppRoute.requscetSure2, page: () =>     const RequscetSure2()),
  ///تاكيد الدفع او التبرع
  GetPage(name: AppRoute.requscetSureHome, page: () =>     const RequscetSureHome()),
///عن الجمعية في الصفحة الرئيسية
  GetPage(name: AppRoute.aboutAssociation, page: () =>       AboutAssociation()),
  ///عن الجمعية
  GetPage(name: AppRoute.aboutAlaeibus, page: () =>       const AboutAlaeibus()),
  ///اعضاء الجمعية
  GetPage(name: AppRoute.membersAssociation, page: () =>       const MembersAssociation()),
  ///كلمة رئيس الجمعية
  GetPage(name: AppRoute.speechAssociationPresident, page: () =>       SpeechAssociationPresident()),
  ///تفاصيل الخبر
  GetPage(name: AppRoute.detailNews, page: () =>       const DetailNews()),
  ///اهداف الشركة
  GetPage(name: AppRoute.golAssociation, page: () =>       const GolAssociation()),
///الاخبار

  GetPage(name: AppRoute.news, page: () =>       News()),
  ///التقارير السنوية
  GetPage(name: AppRoute.reportYear, page: () =>       ReportYear()),
  ///الرؤية والرسالة
  GetPage(name: AppRoute.visionMission, page: () =>       const VisionMission()),
  ///الهيكل التنظيمي
  GetPage(name: AppRoute.organizationalStructure, page: () =>       const OrganizationalStructure()),
  ///اصدارات الجعمية
  GetPage(name: AppRoute.vertsionAssociation, page: () =>       VertsionAssociation()),
  ///الفعاليات والانشطة
  GetPage(name: AppRoute.eventsActivities, page: () =>       EventsActivities()),
  ///مكتبة الفيديو
  GetPage(name: AppRoute.videoBooking, page: () =>       VideoBooking()),
  ///مكتبة الصور
  GetPage(name: AppRoute.imageMediaCenter, page: () =>       ImageMediaCenter()),
  ///اعلانات الجمعية
  GetPage(name: AppRoute.advertisements, page: () =>        Advertisements()),
  ///المحاضر والاجتماعات
  GetPage(name: AppRoute.minutesMeetings, page: () =>       MinutesMeetings()),
///مشاريع الجمعية
 ///لوئح الانظمة
  GetPage(name: AppRoute.regulationsRegulations, page: () =>       RegulationsRegulations()),
///إمتيازات الاعضاء
  GetPage(name: AppRoute.memberPrivileges, page: () =>       MemberPrivileges()),
///التقارير المالية
  GetPage(name: AppRoute.reportBussness, page: () =>       ReportBussness()),
  /// وصف
  GetPage(name: AppRoute.detailMember, page: () =>       DetailMember()),
  ///تعبات الاستمارى
   // ///تفاصيل الاعلانات
  // GetPage(name: AppRoute.subAdvertisements, page: () =>       const SubAdvertisements()),
  ///سياسات الجمعية
  GetPage(name: AppRoute.associationPolicies, page: () =>         AssociationPolicies()),
  ///تفاصيل الفعاليات
  GetPage(name: AppRoute.detailActive, page: () =>         DetailActive()),

   ///عرض الصور
  GetPage(name: AppRoute.albomImage, page: () =>         AlbomImage()),
  GetPage(name: AppRoute.detailAdvertisement, page: () =>         DetailAdvertisement()),

  GetPage(name: AppRoute.listImage, page: () =>       ListImage()),

  GetPage(name: AppRoute.generalization, page: () =>       Generalization()),
  ///تقييم التطبيق
  GetPage(name: AppRoute.evaluations, page: () =>       Evaluations()),
  ///معلومات المطور

  GetPage(name: AppRoute.informationDeveloper, page: () =>       InformationDeveloper()),


///الدعك الفني

  GetPage(name: AppRoute.technicalSupport, page: () =>       TechnicalSupport()),









];
