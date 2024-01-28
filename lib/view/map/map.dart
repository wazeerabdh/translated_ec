import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../../controler/controller_map/controller_map.dart';
import '../../models/core/constant/color.dart';

// ignore: must_be_immutable
class MapPage extends StatelessWidget {
  MapPage({Key? key, this.color = Colors.black54});
  // final order;
  Color color;
  @override
  Widget build(BuildContext context) {
    Get.put(ControllerMapIm());
    return GetBuilder<ControllerMapIm>(
        builder: (controller) => Scaffold(
              body: Stack(
                children: [
                  // controller.isLoading
                  //      ? Positioned.fill(
                  //    child: Container(
                  //      color: Colors.white.withOpacity(0.5),
                  //      child: const Center(
                  //        child: SpinKitFadingCircle(
                  //          color: AppColor.grey_153,
                  //          size: 60.0,
                  //        ),
                  //      ),
                  //    ),
                  //  )
                  //      :
                  Stack(
                    children: [
                      controller.buildMapSection(),
                      controller.buildBackArrow(context),

                    ],
                  ),
                ],
              ),
              bottomNavigationBar: BottomNavigationBar(
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.filter_alt),
                        const SizedBox(width: 4.0),
                        Text("163".tr),
                      ],
                    ),
                    label: "",
                  ),
                  BottomNavigationBarItem(
                    icon: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.menu),
                        SizedBox(width: 4.0),
                        Text("164".tr),
                      ],
                    ),
                    label: "",
                  ),
                  BottomNavigationBarItem(
                    icon: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.sort_by_alpha_outlined),
                        SizedBox(width: 4.0),
                        Text("165".tr),
                      ],
                    ),
                    label: "",
                  ),
                ],
                currentIndex: controller.selectedIndex,
                onTap: (index) {
                  // Handle button tap

                  controller.selectIndex(index);
                  // Show sorting options when "الترتيب" is tapped
                  if (controller.selectedIndex == 2) {
                    controller.showSortingOptions(context);
                    return;
                  } else if (controller.selectedIndex == 1) {
                    controller.goTosubSearch();
                    return;
                  } else if (controller.selectedIndex == 0) {
                  //  controller.goTosubreser();
                    return;
                  } else {
                    return null;
                  }

                  // Navigate to the corresponding page
                },
                selectedFontSize: 12.0, // Adjust as needed
                unselectedFontSize: 12.0, // Adjust as needed
                iconSize: 24.0, // Adjust as needed
              ),
            ));
  }
}
