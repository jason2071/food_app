import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/pages/intro/intro_screen.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/splash';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    new Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.of(context)..pushReplacement(_createRoute()),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => IntroScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/logo.svg"),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 2),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kDefaultPadding),
                  bottomRight: Radius.circular(kDefaultPadding),
                ),
              ),
              child: Text(
                "Fruit Hub",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
