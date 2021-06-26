import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AccountScreen extends StatefulWidget {
  static const id = "AccountScreen";
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
            ),
            Container(
              height: 230,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/landscape.webp"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.topCenter,
                child: 'Tài khoản'
                    .text
                    .bold
                    .size(37)
                    .textStyle(TextStyle(
                        foreground: Paint()
                          ..shader = LinearGradient(
                            colors: <Color>[
                              Color(0xff4568dc),
                              Color(0xffb06ab3)
                            ],
                          ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0))))
                    .make(),
              ),
              top: 30,
            ),
            Positioned(
              
              child: Container(
                height: 820,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),


                //USER NAME AND EMAIL
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    50.heightBox,
                    'Tên tài khoản'
                        .text
                        .fontFamily("Inter")
                        .semiBold
                        .size(17)
                        .make(),
                    10.heightBox,
                    //USER NAME GOES HERE
                    'Nobody'.text.size(15).make(),
                    Divider(
                      color: Color(0xffB5B3B3),
                    ),
                    20.heightBox,
                    'Email'.text.fontFamily("Inter").semiBold.size(17).make(),
                    10.heightBox,
                    // USER EMAIL GOES HERE
                    'baogacm88@gmail.com'.text.size(15).make(),
                    Divider(
                      color: Color(0xffB5B3B3),
                    ),
                    90.heightBox,

                    //Đăng xuất
                    TextButton(
                      onPressed: (){
                      },

                      child: Container(
                        child: Center(child: "Đăng Xuất".text.size(20).black.semiBold.make()),
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xff4568dc),
                              Color(0xffb06ab3)
                            ],
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ).pSymmetric(h: 100),
                    ),
                  ],
                ).pSymmetric(h: 40),
              ),
              top: 200,
            ),

            //AVATAR
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 50,
                  //USER AVATAR GOES HERE
                  backgroundImage: AssetImage("images/landscape.webp"),
                ),
              ),
              bottom: 280,
            ),
          ],
        ),
      ),
    );
  }
}
