import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/size_config.dart';

import 'components/body.dart';

class IntroFirstnameScreen extends StatelessWidget {
  static const routeName = '/intro_firstname';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Body(),
    );
  }
}
