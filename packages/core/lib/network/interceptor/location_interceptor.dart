import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import '../../error/core/location_exception.dart';
import '../../location/location_utils.dart';

class LocationInterceptor extends Interceptor {
  // Helper method to check permissions and location services.
  Future<bool> _isLocationReady() async {
    return await LocationUtils.hasPermission() && await LocationUtils.isEnable();
  }

  // Method to handle web-specific location logic.
  void _handleWebDevice(RequestOptions options, RequestInterceptorHandler handler) async {
    // Ensure location permissions are granted
    if (!(await LocationUtils.hasPermission())) {
      LocationUtils.enableWebLocation(
        onSuccess: () async {
          // Once location is enabled, fetch the current location and proceed
          await _getCurrentLocationAndAddToHeader(options, handler);
        },
        onFailed: () {
          // Reject the request if enabling location fails
          handler.reject(LocationException(requestOptions: options));
        },
      );
      return;
    }

    // Proceed to get location when permissions are granted
    await _getCurrentLocationAndAddToHeader(options, handler);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    // Check if it's a web request and handle location appropriately
    if (kIsWeb) {
      _handleWebDevice(options, handler);
      return;
    }

    // For mobile devices, check if location services and permissions are enabled
    if (!(await _isLocationReady())) {
      handler.reject(LocationException(requestOptions: options));
      return;
    }

    // If everything is ready, get current location and proceed with the request
    await _getCurrentLocationAndAddToHeader(options, handler);
  }

  // Fetch the current location and add it to request headers.
  Future<void> _getCurrentLocationAndAddToHeader(
      RequestOptions options, RequestInterceptorHandler handler) async {
    try {
      final currentPosition = await Geolocator.getCurrentPosition();
      options.headers['latitude'] = currentPosition.latitude.toString();
      options.headers['longitude'] = currentPosition.longitude.toString();
      handler.next(options); // Proceed with the request
    } catch (e) {
      // Handle any error that occurs while fetching location
      handler.reject(LocationException(requestOptions: options));
    }
  }
}