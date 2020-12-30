import 'package:flutter/material.dart';
import 'package:food_app/components/default_button.dart';
import 'package:food_app/components/intro_image.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/pages/home/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String name;

  Future<void> _startOrdering() async {
    if (name != null) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool(PREF_READ_INTRO_VIEW, true);
      await prefs.setString(PREF_INTRO_NAME, name);
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    }
  }

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
                      borderRadius:
                          BorderRadius.circular(kDefaultPadding * 0.5),
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
                      press: _startOrdering,
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
