// @dart=2.9
import 'package:flutter/material.dart';
import 'Screen/onBoardingScreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        initialRoute: OnBoardingScreen.id,
        routes: {
          OnBoardingScreen.id: (context) => OnBoardingScreen(),

        },
      );
  }
}
