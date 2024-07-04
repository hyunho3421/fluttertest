import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'common/deviceInfo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("first - ");
    firstApp();
    print('MyApp started');

    return MaterialApp(
      title: 'Navigation Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
