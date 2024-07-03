import 'package:flutter/material.dart';
import 'second_page.dart';
import '../widgets/base_app_bar.dart';
import '../widgets/back_block_pop_scope.dart';

class HomePage extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BackBlockPopScope(
        child: Scaffold(
      appBar: BaseAppBar(title: "홈 화면"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '텍스트 입력',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('다음'),
              onPressed: () {
                // 사용자가 입력한 텍스트를 가져옴
                String textToSend = _controller.text;

                // Navigator를 사용하여 다음 페이지로 이동하면서 데이터 전달
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(textToSend: textToSend),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    ));
  }
}
