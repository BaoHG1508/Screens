// @dart=2.9
import 'package:flutter/material.dart';
import 'Screen/onBoardingScreen.dart';
import 'Screen/account.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        initialRoute: AccountScreen.id,
        routes: {
          AccountScreen.id: (context) => AccountScreen(),
        },
      );
  }
}
