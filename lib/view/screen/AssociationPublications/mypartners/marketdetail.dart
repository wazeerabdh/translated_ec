import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hijazi/models/core/constant/color.dart';
import '../../../../controler/controller_marketdetail/controller_marketdetail.dart';
import '../../../../models/core/class/handlingdataview.dart';


class MarketDetail extends StatelessWidget {
  const MarketDetail({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ControllerMarketDetailIm());
    return GetBuilder<ControllerMarketDetailIm>(
      builder: (controller) => HandlingDataView(
          statusRequest: controller.statuceRequste,
          widget: DefaultTabController(
              length: controller.aurrent,
              child: Scaffold(
                  appBar: AppBar(
                    foregroundColor: AppColor.black,
                    actions: [
                      const SizedBox(
                        width: 10,
                      ),
                      IconButton(
                        onPressed: () {
                          controller.isFavorites();
                        },
                        icon: Icon(
                          controller.isFavorite
                              ? Icons.favorite
                              : Icons.favorite_border_outlined,
                          color: controller.isFavorite
                              ? Colors.red
                              : AppColor.grey,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.share_outlined,
                          color: AppColor.grey,
                        ),
                        onPressed: () {
                          controller.shareContent("مشاركة مع");
                        },
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                    elevation: 0,
                    backgroundColor: AppColor.white,
                    title: const Text(
                      "محلات السلام",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: AppColor.black),
                    ),
                    centerTitle: true,
                  ),
                  body: SingleChildScrollView(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: Colors.grey[200],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Image.network(
                                  'https://static.aljamila.com/styles/1100x732_scale/public/2019/08/08/2886421-910063707.jpg',
                                  height: 200.0,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Text(
                                'محلات السلام للتجارة',
                                style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8.0),
                              const Text('عنوان المحل:صنعاء جولة الرويشان'),
                              const Text('رقم الاتصال:770349471'),
                            ],
                          ), ),
                        const SizedBox(height: 16.0),
                        const Text('محلات السلام التجارية من المحلات المرتبطة بالموسسة ويقوم المشترك معنا بالحصول على التخفيض المناسب للعضوية في هذا المحل'),
                        const SizedBox(height: 16.0),
                        const Text('ساعات العمل: 24 ساعة'),
                        const Text('خدمات المحل:'),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(' المواد الغذئية '),
                            Text('ادوات تجميل واكسسوارات'),
                            Text('البهارات والمكسرات'),
                          ],
                        ),
                        const SizedBox(height: 16.0),
                        const Text('موقع المحل:'),
                        const Text('يقع المحل في منطقة السبعين، قريب من فندق الثلج الابيض .'),

                      ],
                    ),
                  ),
              ),
          ),
      ),
    );
  }
}
