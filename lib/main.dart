import 'package:custom_transition_x/pages/page1.dart';
import 'package:custom_transition_x/pages/page2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation',
      initialRoute: '/',
      routes: {
        '/': (context) => const Page1(),
        '/page2': (context) => const Page2(),
      },
    );
  }
}
