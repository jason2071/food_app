import 'package:flutter/material.dart';
import 'package:food_app/pages/splash/splash_screen.dart';
import 'package:food_app/routes.dart';
import 'package:food_app/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      theme: theme(),
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
