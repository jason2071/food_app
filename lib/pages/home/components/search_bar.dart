import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
    this.hinText,
    this.onChange,
    this.filterPress,
  }) : super(key: key);

  final String hinText;
  final ValueChanged<String> onChange;
  final Function filterPress;

  @override
  Widget build(BuildContext context) {
    double sw = SizeConfig.screenWidth;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: sw * 0.77,
          decoration: BoxDecoration(
              color: kSecondaryColor,
              borderRadius: BorderRadius.circular(kDefaultPadding / 2)),
          child: TextField(
            onChanged: onChange,
            style: TextStyle(
              color: kTextColor,
              fontSize: 16,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hinText,
              hintStyle: TextStyle(
                color: kSubTextColor.withOpacity(0.35),
              ),
              prefixIcon: Icon(
                Icons.search,
                size: 24,
                color: kSubTextColor.withOpacity(0.35),
              ),
            ),
          ),
        ),
        IconButton(
          icon: SvgPicture.asset("assets/icons/icon_filter.svg"),
          onPressed: filterPress,
        ),
      ],
    );
  }
}
