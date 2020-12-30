import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';

class IntroImage extends StatelessWidget {
  const IntroImage({
    Key key,
    @required this.imageSrc,
    @required this.imageShadow,
  }) : super(key: key);

  final String imageSrc, imageShadow;

  @override
  Widget build(BuildContext context) {
    double sh = SizeConfig.screenHeight;
    double sw = SizeConfig.screenWidth;

    return Container(
      width: double.infinity,
      height: sh * 0.55,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            bottom: sh * 0.32,
            right: sw * 0.16,
            child: Image.asset("assets/images/basket-of-fruit-drop.png"),
          ),
          Positioned(
            bottom: sh * 0.06,
            child: Image.asset(imageSrc),
          ),
          Positioned(
            bottom: sh * 0.035,
            child: SvgPicture.asset(imageShadow),
          ),
        ],
      ),
    );
  }
}
