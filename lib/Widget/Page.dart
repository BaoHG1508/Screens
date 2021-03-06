// @dart=2.9

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:velocity_x/velocity_x.dart';

class Pagees extends StatelessWidget {
  Pagees({@required this.text, @required this.image, @required this.title,@required this.index});

  final String text;
  final String image;
  final String title;
  final int index;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          50.heightBox,
          SvgPicture.asset(
            image,
            height: 300,
            width: 200,
          ),
          25.heightBox,
          25.heightBox,
          title.text.size(30).color(Color(0xff4568dc)).fontFamily("Inter").bold.make(),
          20.heightBox,
          text.text.size(14).color(Color(0xff4568dc)).fontFamily("Inter").bold.make(),
          35.heightBox,
          index == 2? Container(
            height: 50,
            width: 200,
            child: TextButton(
              child: Center(
                child: "Bắt đầu".text.center.white.make(),
              ),
              onPressed: (){},
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff4568dc), Color(0xffb06ab3)],
              ),
              borderRadius: BorderRadius.circular(30),
            ),
          ):Container(),
        ],
      ),
    );
  }
}
