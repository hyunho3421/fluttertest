import 'package:flutter/material.dart';

class BackBlockPopScope extends StatelessWidget {
  final Widget child;

  BackBlockPopScope({required this.child});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false, // 뒤로가기 비활성화
      child: child,
    );
  }
}
