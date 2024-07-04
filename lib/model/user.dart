class User {
  final String name;
  final String deviceId;
  final String model;
  final String manufacturer;
  final String release;
  final String sdkInt;
  final String grant;

  User(
      {required this.name,
      required this.deviceId,
      required this.model,
      required this.manufacturer,
      required this.release,
      required this.sdkInt,
      required this.grant});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        name: json['name'],
        deviceId: json['deviceId'],
        model: json['model'],
        manufacturer: json['manufacturer'],
        release: json['release'],
        sdkInt: json['sdkInt'],
        grant: json['grant']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'deviceId': deviceId,
      'model': model,
      'manufacturer': manufacturer,
      'release': release,
      'sdkInt': sdkInt
    };
  }
}
