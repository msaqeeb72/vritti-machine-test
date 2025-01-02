import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';

import '../di/di.dart';
import 'location_manager.dart';

class LocationUtils {
  static Future<bool> isEnable() async {
    return Geolocator.isLocationServiceEnabled();
  }

  static openLocationSetting(BuildContext context) {
    //Show Dialog and open Location Setting
    Geolocator.openLocationSettings();
  }

  static Future<bool> hasPermission() async {
    final result = await Geolocator.checkPermission();
    return result == LocationPermission.whileInUse;
  }
  static Future<LocationPermission> checkPermission() async {
    return Geolocator.checkPermission();
  }

  static Future<bool> requestPermission([BuildContext? context]) async {
    final status = await Geolocator.checkPermission();
    if (status == LocationPermission.deniedForever) {
      //open
      Geolocator.openAppSettings();
      return Future.value(false);
    }
    final result = await Geolocator.requestPermission();
    return result == LocationPermission.whileInUse;
  }

  static Future enableWebLocation({
    required VoidCallback onSuccess,
    required VoidCallback onFailed,
  }) async {
    final result = await Geolocator.requestPermission();
    if (result == LocationPermission.whileInUse) {
      onSuccess();
    } else {
      onFailed();
    }
  }
}
