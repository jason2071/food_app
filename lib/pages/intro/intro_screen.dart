import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  static const routeName = '/intro';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Intro"),
      ),
      body: Center(
        child: Text(
          'this is the intro screen.',
        ),
      ),
    );
  }
}
