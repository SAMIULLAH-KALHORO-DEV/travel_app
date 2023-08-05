import 'package:flutter/material.dart';
import 'package:travel_app/pages/onboarding_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      // page forward
      home: OnBoardingScreen(),
    );
  }
}
