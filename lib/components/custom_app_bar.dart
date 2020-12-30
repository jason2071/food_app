import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/constants.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    Key key,
    this.leftPress,
    this.rightPress,
  }) : super(key: key);

  final Function leftPress, rightPress;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/icon_menu.svg"),
        onPressed: leftPress,
      ),
      actions: <Widget>[
        GestureDetector(
          onTap: rightPress,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SvgPicture.asset("assets/icons/icon_basket.svg"),
                Text(
                  "My basket",
                  style: TextStyle(
                    fontSize: 12,
                    color: kTextColor,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 20);
}
