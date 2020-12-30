import 'package:flutter/material.dart';
import 'package:food_app/components/default_button.dart';
import 'package:food_app/components/intro_image.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/pages/home/home_screen.dart';
import 'package:food_app/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int _step = 1;
  String name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IntroImage(
            imageSrc: _step == 1
                ? "assets/images/basket-of-fruit.png"
                : "assets/images/basket-of-fruit2.png",
            imageShadow: _step == 1
                ? "assets/icons/basket-of-fruit-shadow.svg"
                : "assets/icons/basket-of-fruit-shadow2.svg",
          ),
          Expanded(
            child: _step == 1 ? _buildStartpage() : _buildInputPage(context),
          ),
        ],
      ),
    );
  }

  Widget _buildStartpage() {
    double sh = SizeConfig.screenHeight;
    return Container(
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
                setState(() {
                  _step = 2;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInputPage(BuildContext context) {
    double sh = SizeConfig.screenHeight;
    return Container(
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
            "What is your firstname?",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: kTextColor,
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 60,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: kSecondaryColor,
              borderRadius: BorderRadius.circular(kDefaultPadding * 0.5),
            ),
            child: TextField(
              onChanged: (value) {
                name = value;
              },
              style: TextStyle(fontSize: 20, color: kTextColor),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Name",
                hintStyle: TextStyle(color: Colors.black26),
                contentPadding: EdgeInsets.symmetric(vertical: 10),
              ),
            ),
          ),
          SizedBox(height: sh * 0.06),
          SizedBox(
            width: double.infinity,
            child: DefaultButton(
              title: "Start Orcering",
              press: () {
                Navigator.pushReplacementNamed(context, HomeScreen.routeName);
              },
            ),
          ),
        ],
      ),
    );
  }
}
