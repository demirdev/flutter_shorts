import 'package:flutter/material.dart';
import 'package:flutter_shorts/countdown/countdown.dart';
import 'logos/microsoft_logo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
          body: SafeArea(
              child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const TestCountDown()
          // const MicrosoftLogo(),
        ],
      ))),
      debugShowCheckedModeBanner: false,
    );
  }
}
