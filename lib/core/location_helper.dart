

import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:weather_app/features/common%20widgets/show_snackbar.dart';

class LocationHelper {
  bool isLoading = true;
  static Future<Position?> getCurrentLocation(BuildContext context) async {
    try {
      // Check if location services are enabled
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        // Location services are not enabled, show Snackbar message and return null
        // ignore: use_build_context_synchronously

        PermissionStatus permission =
            await Permission.locationWhenInUse.request();

        if (permission == PermissionStatus.denied) {
          // Permission denied, show Snackbar message and return null
          // ignore: use_build_context_synchronously
          showSnackBar(context,
              'Please grant location permission to acess this feature');
          return null;
        }

        if (permission == PermissionStatus.permanentlyDenied) {
          // Permission permanently denied, show Snackbar message and open app settings
          // ignore: use_build_context_synchronously
          showSnackBar(context,
              'Please grant location permission in app settings to use this feature');
          await openAppSettings();
          return null;
        }
        
        return await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high,
        );
        
      }

      // Request permission to access location
      PermissionStatus permission =
          await Permission.locationWhenInUse.request();
      if (permission == PermissionStatus.denied) {
        // Permission denied, show Snackbar message and return null
        // ignore: use_build_context_synchronously
        showSnackBar(context, 'Please grant permission to acess this feature');

        return null;
      }

      // Check if permission is permanently denied
      if (permission == PermissionStatus.permanentlyDenied) {
        // Permission permanently denied, show Snackbar message and open app settings
        // ignore: use_build_context_synchronously
        showSnackBar(context,
            'Please grant location permission in app settings to use this feature');

        await openAppSettings();
        return null;
      }

      // Get current location
      return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
    } catch (e) {
      log(e.toString());
      showSnackBar(context, e.toString());
    }
  }
}
