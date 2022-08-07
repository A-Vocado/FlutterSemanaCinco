import 'package:exercicio_semana_5/src/design_system/atoms/text/z_text_h2.dart';
import 'package:exercicio_semana_5/src/design_system/molecules/z_appbar.dart';
import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ZAppBar(titleText: 'Home Page'),
      body: Center(
        child: Column(
          children: const [
            SizedBox(height: 10),
            Text('teste'),
          ],
        ),
      ),
    );
  }
}
