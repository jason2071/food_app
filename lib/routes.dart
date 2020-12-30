import 'package:flutter/material.dart';
import 'package:food_app/pages/intro/intro_screen.dart';
import 'package:food_app/pages/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  IntroScreen.routeName: (context) => IntroScreen(),
};
