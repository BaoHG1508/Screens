// @dart=2.9
import 'package:flutter/material.dart';
import 'Screen/LoginScreen.dart';
import 'Screen/SignUpScreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        initialRoute: SignUpScreen.id,
        routes: {
          LoginScreen.id: (context) => LoginScreen(),
          SignUpScreen.id: (context) => SignUpScreen(),
        },
      );
  }
}
