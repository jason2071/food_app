import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'food_card.dart';
import 'search_bar.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHelloMessage(),
          SizedBox(height: kDefaultPadding),
          SearchBar(
            hinText: "Search for fruit salad combos",
            onChange: (value) {},
            filterPress: () {},
          ),
          SizedBox(height: kDefaultPadding + 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              "Recommended Combo",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding),
          _buidlRecommendCombo(),
        ],
      ),
    );
  }

  Widget _buidlRecommendCombo() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FoodCard(
            imageSrc: "assets/images/honey-lime-combo.png",
            title: "Honey lime combo",
            price: "2,000",
            favoritePress: () {},
            addPress: () {},
          ),
          FoodCard(
            imageSrc: "assets/images/honey-lime-combo.png",
            title: "Honey lime combo",
            price: "2,000",
            favoritePress: () {},
            addPress: () {},
          ),
          FoodCard(
            imageSrc: "assets/images/honey-lime-combo.png",
            title: "Honey lime combo",
            price: "2,000",
            favoritePress: () {},
            addPress: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildHelloMessage() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: RichText(
        text: TextSpan(
          text: "Hello Tony, ",
          style: TextStyle(fontSize: 18, color: kTextColor),
          children: [
            TextSpan(
              text: "What fruit salad \ncombo do you want today?",
              style: TextStyle(
                fontSize: 16,
                color: kTextColor,
                fontWeight: FontWeight.w600,
                height: 1.5,
              ),
            )
          ],
        ),
      ),
    );
  }
}
