import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/login', routes: {
      '/login': (context) => const LoginPage(),
      '/userPage': (context) => const UserPage(),
      '/error': (context) => const ErrorPage(),
    });
  }
}
