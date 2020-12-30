import 'package:flutter/material.dart';
import 'package:food_app/components/custom_app_bar.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leftPress: () {},
        rightPress: () {},
      ),
      body: Center(
        child: Text(
          'this is the home screen.',
        ),
      ),
    );
  }
}
