import 'package:flutter/material.dart';

class CustomCurvedEdge extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double h = size.height;
    double w = size.width;
    var path = Path();

    //point -1: (0,0)
    path.lineTo(0, h); // point-2 i.e. current-pont

    final firstStart = Offset(0, h - 20); //control point between 2 and 3
    final firstEnd = Offset(30, h - 20); // point 3

    // adds quadratic beizer segment from point 2 - 3 using control point
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

// after first curver segment added: start point = point3 and  point 4
    final secondStart =
        Offset(0, h - 20); //control point between point 3 and point 4
    final secondEnd = Offset(w - 30, h - 20); // point 4
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

// after second curve segment ie straight line: start point: point 4
    final thirdStart = Offset(w, h - 20);
    final thirdEnd = Offset(w, h);
    path.quadraticBezierTo(
        thirdStart.dx, thirdStart.dy, thirdEnd.dx, thirdEnd.dy);

    path.lineTo(w, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
