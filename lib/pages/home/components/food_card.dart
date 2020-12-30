import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    Key key,
    this.imageSrc,
    this.title,
    this.price,
    this.favoritePress,
    this.addPress,
  }) : super(key: key);

  final String imageSrc, title, price;
  final Function favoritePress, addPress;

  @override
  Widget build(BuildContext context) {
    double sw = SizeConfig.screenWidth;
    double sh = SizeConfig.screenHeight;

    return Container(
      width: sw * 0.4,
      height: sh * 0.23,
      margin: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(kDefaultPadding / 2),
        boxShadow: [
          BoxShadow(
            spreadRadius: 1,
            blurRadius: 20,
            color: Colors.blue.withOpacity(0.1),
          )
        ],
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              icon: SvgPicture.asset("assets/icons/icon_favorite_uncheck.svg"),
              onPressed: favoritePress,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                imageSrc,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              SizedBox(height: kDefaultPadding / 2),
              Text(
                title,
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: kDefaultPadding / 2),
              Row(
                children: [
                  SizedBox(width: kDefaultPadding),
                  SvgPicture.asset("assets/icons/icon_money.svg"),
                  SizedBox(width: 4),
                  Text(
                    price,
                    style: TextStyle(color: kPrimaryColor),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: addPress,
                    child: SvgPicture.asset(
                        "assets/icons/icon_increase_circle.svg"),
                  ),
                  SizedBox(width: kDefaultPadding),
                ],
              ),
              SizedBox(height: kDefaultPadding / 2),
            ],
          ),
        ],
      ),
    );
  }
}
