import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFFFA451);
const kSecondaryColor = Color(0xFFF3F1F1);
const kTextColor = Color(0xFF27214D1);
const kSubTextColor = Color(0xFF5D577E);
const kActiveColor = Color(0xFF4CD964);

const kDefaultPadding = 20.0;

final kShadow = BoxShadow(
  spreadRadius: 1,
  blurRadius: 20,
  color: Colors.black12,
);

const kAnimationDuration = Duration(milliseconds: 250);

// Key SharedPreferences
const PREF_READ_INTRO_VIEW = "PREF_READ_INTRO_VIEW";
const PREF_INTRO_NAME = "PREF_INTRO_NAME";
