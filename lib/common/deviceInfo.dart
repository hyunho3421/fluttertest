import 'dart:developer';
import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<String?> getDeviceId() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString('device_id');
}

Future<String?> getGrant() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString('device_grant');
}

Future<void> checkingGrant() async {
  String? deviceGrant = await getGrant();

  if (deviceGrant == null) {}
}

Future<void> firstApp() async {
  if (Platform.isAndroid) {
    print("android - ");
    final deviceInfoPlugin = DeviceInfoPlugin();
    var androidInfo = await deviceInfoPlugin.androidInfo;

    String deviceId = androidInfo.id;
    String model = androidInfo.model;
    print("deviceId is " + deviceId);
  } else {
    // 다른 플랫폼 지원안함.
  }
}
