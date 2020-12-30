import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/size_config.dart';

import 'components/body.dart';

class IntroScreen extends StatelessWidget {
  static const routeName = '/intro';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Body(),
    );
  }
}
