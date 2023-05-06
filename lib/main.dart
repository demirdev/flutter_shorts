import 'package:flutter/material.dart';

import 'microsoft_logo.dart';

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
          const MicrosoftLogo(),
        ],
      ))),
      debugShowCheckedModeBanner: false,
    );
  }
}
