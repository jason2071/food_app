import 'package:flutter/material.dart';

Route buildPageRouteBuilder({@required Widget child}) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, animationTime) {
      return child;
    },
    transitionDuration: Duration(milliseconds: 500),
    reverseTransitionDuration: Duration(milliseconds: 250),
    transitionsBuilder: (
      context,
      animation,
      animationTime,
      child,
    ) {
      animation = CurvedAnimation(
        parent: animation,
        curve: Curves.fastOutSlowIn,
      );

      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
  );
}
