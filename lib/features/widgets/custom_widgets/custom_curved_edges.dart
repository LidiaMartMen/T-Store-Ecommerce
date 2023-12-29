import 'package:flutter/material.dart';

class CustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    //define path:
    path.lineTo(0, size.height);

//primero curva1:
    final firstPoint = Offset(0, size.height - 20);
    final lastPoint = Offset(30, size.height - 20);
    path.quadraticBezierTo(
        firstPoint.dx, firstPoint.dy, lastPoint.dx, lastPoint.dy);

//segundo línea:
    final secondFirstPoint = Offset(0, size.height - 20);
    final secondLastPoint = Offset(size.width-30, size.height - 20);
    path.quadraticBezierTo(
        secondFirstPoint.dx, secondFirstPoint.dy, secondLastPoint.dx, secondLastPoint.dy);

//tercero curva2:
    final thridFirstPoint = Offset(size.width, size.height - 20);
    final thirdLastPoint = Offset(size.width, size.height);
    path.quadraticBezierTo(
        thridFirstPoint.dx, thridFirstPoint.dy, thirdLastPoint.dx, thirdLastPoint.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
