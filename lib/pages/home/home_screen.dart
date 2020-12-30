import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String name;
  @override
  void initState() {
    super.initState();
    _getNamePrefs();
  }

  Future<void> _getNamePrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    name = prefs.getString(PREF_INTRO_NAME);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
      ),
      body: Center(
        child: Text(
          'this is the home screen. $name',
        ),
      ),
    );
  }
}
