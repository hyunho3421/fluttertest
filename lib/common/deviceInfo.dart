import 'dart:developer';
import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<String?> getDeviceId() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString('device_id');
}

Future<void> setDeviceId() async {
  // final prefs = await SharedPreferences.getInstance();
  // await prefs.setString('device_id', deviceId);
}

Future<String?> getGrant() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString('device_grant');
}

Future<void> checkingGrant() async {
  String? deviceGrant = await getGrant();

  if (deviceGrant == null) {}
}

Future<void> validationCheck() async {
  String? deviceId = await getDeviceId();

  if (deviceId == null || deviceId.isEmpty) {
    // 첫 이용자 디바이스 저장.
  }
}

Future<void> firstApp() async {
  if (Platform.isAndroid) {
    final deviceInfoPlugin = DeviceInfoPlugin();
    var androidInfo = await deviceInfoPlugin.androidInfo;

    String deviceId = androidInfo.id;
    String model = androidInfo.model;
    int sdkInt = androidInfo.version.sdkInt;
    String release = androidInfo.version.release;
    String menufacturer = androidInfo.manufacturer;
    String device = androidInfo.device;
    String brand = androidInfo.brand;
  } else {
    // 다른 플랫폼 지원안함.
  }
}
