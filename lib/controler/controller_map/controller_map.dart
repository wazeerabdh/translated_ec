import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

import '../../models/core/class/statusrequest.dart';
import '../../models/core/constant/color.dart';
import '../../models/core/constant/routes.dart';
import '../../models/core/services/services.dart';

abstract class ControllerMap extends GetxController{
  selectIndex(int i);
  goTosubSearch();

}
class ControllerMapIm extends ControllerMap{
  int selectedIndex = 1;
  StatusRequest statuceRequste = StatusRequest.none;
  MyServices myServices = Get.find();
  Location locationController = Location();
  LocationData? currentLocation;
  double? latitude;
  double? longitude;
  LatLng? currentP = const LatLng(15.362690, 44.195091);
  static LatLng currentPs = const LatLng(15.362690, 44.195091);
  bool  isLoading =true;
  final Completer<GoogleMapController> mapController =
  Completer<GoogleMapController>();
  String GOOGLE_MAPS_API_KEY = "AIzaSyA9yTJae0jIdtbWIyhK9Ep0TJn4UFRKQ2U";
  Map<PolylineId, Polyline> polylines = {};
  Future<void> cameraToPosition(LatLng pos) async {
    final GoogleMapController controller = await mapController.future;
    CameraPosition newCameraPosition = CameraPosition(
      target: pos,
      zoom: 13,
    );
    await controller.animateCamera(
      CameraUpdate.newCameraPosition(newCameraPosition),
    );
    update();
  }
  Future<void> drawPolyline(LatLng startPoint, LatLng endPoint) async {
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      GOOGLE_MAPS_API_KEY,
      PointLatLng(startPoint.latitude, startPoint.longitude),
      PointLatLng(endPoint.latitude, endPoint.longitude),
      travelMode: TravelMode.driving,
    );

    if (result.points.isNotEmpty) {
      List<LatLng> polylineCoordinates = [];
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });

      PolylineId id = const PolylineId("poly");
      Polyline polyline = Polyline(
        polylineId: id,
        color: AppColor.green,
        points: polylineCoordinates,
        width: 5, // عرض الخط
      );
        polylines[id] = polyline;
     update();
    } else {
      print(result.errorMessage);
    }
  }
  initLocation() async {
    try {
      currentLocation = await locationController.getLocation();

        latitude = currentLocation!.latitude;
        longitude = currentLocation!.longitude;
        currentP = LatLng(latitude!, longitude!);
        cameraToPosition(currentP!);
        currentPs = const LatLng(15.362690, 44.195091);;
      update();

      // بمجرد تحديد الموقع الحالي، يمكنك استدعاء دالة لرسم الخط بين الموقع الحالي ونقطة أخرى هنا.
      drawPolyline(currentP!, currentPs);
    } catch (e) {
      print("Error getting location: $e");
    }
  }
  @override
  goTosubSearch() {
    Get.offNamed(AppRoute.subSearch);
  }
  @override
  void onInit() {
    initLocation();
    super.onInit();
  }
  buildMapSection() {
    return GoogleMap(
      mapType: MapType.hybrid,
      onMapCreated: ((GoogleMapController controller) =>
          mapController.complete(controller)),
      initialCameraPosition: CameraPosition(
        target: currentP!  , // يمكنك تعيين قيمة افتراضية هنا
        zoom: 13.0,
        tilt: 0.0,
        bearing: 0,
      ),
      markers: {
        if (currentP != null)
          Marker(
              markerId: const MarkerId("_currentLocation"),
              icon: BitmapDescriptor.defaultMarker,
              position: currentP!,
              infoWindow: const InfoWindow(title: "")
          ),
        // ignore: unnecessary_null_comparison
        if (currentPs != null)
          Marker(
              markerId: const MarkerId(
                  "_currentLocation2"), // يجب أن يكون مميزًا عن العلامة السابقة
              icon:
              BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
              position: currentPs!, infoWindow: const InfoWindow(title: "{widget.order.code}")
          ),
      },
      polylines: Set<Polyline>.of(polylines.values),
    );
  }

  @override
  selectIndex(int i){
    selectedIndex=i;
    update();
  }

  buildBackArrow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColor.dark_grey),
          onPressed: () {
            return Navigator.of(context).pop();
          }),
    );
  }
  void showSortingOptions(BuildContext context) {
    bool isChecked1 = false;
    bool isChecked2 = false;
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft:  Radius.circular(10),topRight:    Radius.circular(10),bottomLeft: Radius.circular(10),bottomRight:      Radius.circular(10))),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text("176".tr,style: TextStyle(fontSize: 15,color:AppColor.black,fontWeight: FontWeight.bold),),
              CheckboxListTile(
                title:   Align(child: Text('162'.tr),alignment: Alignment.topRight),
                value: isChecked1,
                onChanged: (bool? value) {
                  // Handle sorting option 1
                    isChecked1 = value!;
               update();
                },
              ),
              CheckboxListTile(
                title: Align(child: Text('173'.tr),alignment: Alignment.topRight),
                value: isChecked2,
                onChanged: (bool? value) {
                  // Handle sorting option 2

                    isChecked2 = value!;
                    update();
                },
              ),
              CheckboxListTile(
                title: Align(child: Text('174'.tr),alignment: Alignment.topRight),
                value: isChecked2,
                onChanged: (bool? value) {
                  // Handle sorting option 2
                    isChecked2 = value!;
                    update();
                },
              ),
              CheckboxListTile(
                title: Align(child: Text('175'.tr),alignment: Alignment.topRight),
                value: isChecked2,
                onChanged: (bool? value) {
                  // Handle sorting option 2
                    isChecked2 = value!;
                    update();
                },
              ),
              // Add more CheckboxListTile widgets as needed
            ],
          ),
        );
      },
    );
  }

//   @override
//   goTosubreser() {
// Get.toNamed(AppRoute.filtering);
//   }
}