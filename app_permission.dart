import 'package:permission_handler/permission_handler.dart';

class AppPermissions {
  // Request a specific permission
  static Future<PermissionStatus> requestPermission(
      Permission permission) async {
    final status = await permission.request();
    return status;
  }

  // Check the status of a specific permission
  static Future<PermissionStatus> checkPermission(Permission permission) async {
    final status = await permission.status;
    return status;
  }

  // Request multiple permissions
  static Future<Map<Permission, PermissionStatus>> requestMultiplePermissions(
    List<Permission> permissions,
  ) async {
    final statuses = await permissions.request();
    return statuses;
  }

  // Check if a permission is granted
  static Future<bool> isPermissionGranted(Permission permission) async {
    final status = await permission.status;
    return status.isGranted;
  }

  // Open app settings to allow the user to manually grant permissions
  static Future<void> openAppSettings() async {
    await openAppSettings();
  }

  // Example for requesting camera permission
  static Future<bool> requestCameraPermission() async {
    final status = await requestPermission(Permission.camera);
    return status.isGranted;
  }

  // Example for requesting location permission
  static Future<bool> requestLocationPermission() async {
    final status = await requestPermission(Permission.location);
    return status.isGranted;
  }

  // Example for requesting storage permission
  static Future<bool> requestStoragePermission() async {
    final status = await requestPermission(Permission.storage);
    return status.isGranted;
  }

  // Example for checking and requesting a specific permission if not granted
  static Future<bool> checkAndRequestPermission(Permission permission) async {
    if (await isPermissionGranted(permission)) {
      return true;
    } else {
      final status = await requestPermission(permission);
      return status.isGranted;
    }
  }
}
