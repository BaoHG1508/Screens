// @dart=2.9

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'LoginScreen.dart';
import 'package:loginsignin/Widget/UserInput.dart';

class SignUpScreen extends StatefulWidget {
  static const String id = "SignUpScreen";

  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final controller_for_user_name = TextEditingController();
  final controller_for_password = TextEditingController();
  final String password = "Password";
  final String user_name = "User name";
  final String email = "Email";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Color(0xff4568dc), Color(0xffb06ab3)],
        )),
        height: double.infinity,
        width: double.infinity,
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
                "Sign up".text.lightBlue100.bold.center.size(50).make(),
                60.heightBox,
                Username_Input(
                    controller: controller_for_user_name,
                    content: email,
                    icon: Icon(Icons.email)),
                20.heightBox,
                Username_Input(
                    controller: controller_for_user_name,
                    content: user_name,
                    icon: Icon(Icons.drive_file_rename_outline)),
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
                          child: "Register".text.center.black.make(),
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
                    "Already have an account?".text.make(),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, LoginScreen.id);
                        },
                        child: "Login".text.blue100.make()),
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
