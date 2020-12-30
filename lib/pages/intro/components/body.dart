import 'package:flutter/material.dart';
import 'package:food_app/components/default_button.dart';
import 'package:food_app/components/intro_image.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/pages/intro_firstname/intro_firstname_screen.dart';
import 'package:food_app/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sh = SizeConfig.screenHeight;

    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IntroImage(
            imageSrc: "assets/images/basket-of-fruit.png",
            imageShadow: "assets/icons/basket-of-fruit-shadow.svg",
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: sh * 0.06),
                  Text(
                    "Get The Freshest Fruit Salad Combo",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: kTextColor,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "We deliver the best and freshest fruit salad in town. Order for a combo today!!!",
                    style: TextStyle(
                      fontSize: 16,
                      color: kSubTextColor,
                    ),
                  ),
                  SizedBox(height: sh * 0.06),
                  SizedBox(
                    width: double.infinity,
                    child: DefaultButton(
                      title: "Let's Continue",
                      press: () {
                        Navigator.pushNamed(
                            context, IntroFirstnameScreen.routeName);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
