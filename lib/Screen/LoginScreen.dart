// @dart=2.9

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginsignin/Screen/SignUpScreen.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:loginsignin/Widget/UserInput.dart';


class LoginScreen extends StatefulWidget {
  static const id = "loginScreen";

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final controller_for_user_name = TextEditingController();
  final controller_for_password = TextEditingController();
  final String password = "Password";
  final String user_name = "Username";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff4568dc),
                Color(0xffb06ab3)
              ],
            )
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                100.heightBox,
                Hero(
                  tag: "Icon",
                  child: "jobSeek".text.fontFamily("Inter").semiBold.color(Colors.white).size(50).make()
                ),
                20.heightBox,
                "Login".text.lightBlue100.bold.fontFamily("Inter").center.size(40).make(),
                60.heightBox,
                Username_Input(
                    controller: controller_for_user_name,
                    content: user_name,
                    icon: Icon(Icons.email)),
                20.heightBox,
                Username_Input(
                    controller: controller_for_password,
                    content: password,
                    icon: Icon(Icons.vpn_key)),
                10.heightBox,
                Row(
                  children: [
                    300.widthBox,
                    TextButton(
                      child: Container(
                        child: Center(
                          child: "Log in".text.center.black.make(),
                        ),
                        height: 35,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Colors.lightBlueAccent,
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ],
                ),
                10.heightBox,
                Row(
                  children: [
                    90.widthBox,
                    "Don't have an account?".text.make(),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            Navigator.pushNamed(context, SignUpScreen.id);
                          });
                        },
                        child: "Register".text.blue100.make()),
                    "now".text.make(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
