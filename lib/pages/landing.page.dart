import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myfirstapp/common/rounded_image_widget.dart';

import '../styleguide/colors.dart';
import '../image_asset.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final logHeight = screenHeight * 0.4;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(screenWidth * 0.4, 10),
            child: Transform.rotate(
              angle: -0.1,
              child: SvgPicture.asset(
                logo,
                height: logHeight,
                color: logoTintColor,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Icons.menu,
                        color: primaryTextColor,
                      ),
                      Icon(
                        Icons.search,
                        color: primaryTextColor,
                      )
                    ],
                  ),
                ),
                RoundedImageWidget(
                  imagePath: player1,
                  ranking: 29,
                  showRanking: true,
                  name: "ahmad sukabul",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
