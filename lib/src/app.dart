import 'package:exercicio_semana_5/src/pages/home_page.dart';
import 'package:exercicio_semana_5/src/pages/login_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) => const LoginPage(),
      '/userPage': (context) => const UserPage(),
    });
  }
}
