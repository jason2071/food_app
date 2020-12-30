import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    @required this.title,
    @required this.press,
  }) : super(key: key);

  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
