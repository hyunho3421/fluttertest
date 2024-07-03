import 'package:flutter/material.dart';
import '../widgets/base_app_bar.dart';
import '../widgets/back_block_pop_scope.dart';

class SecondPage extends StatelessWidget {
  final String textToSend;

  // 생성자를 통해 값을 받음
  SecondPage({required this.textToSend});

  @override
  Widget build(BuildContext context) {
    return BackBlockPopScope(
      child: Scaffold(
        appBar: BaseAppBar(title: '다음 페이지'),
        body: Center(
          child: Text(
            '전달된 텍스트: $textToSend',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
