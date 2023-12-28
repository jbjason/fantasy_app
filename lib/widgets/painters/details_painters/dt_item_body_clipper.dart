import 'package:flutter/material.dart';

class DtItemBodyClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final h = size.height, w = size.width;
    final path = Path();
    path.moveTo(w, 0);
    path.lineTo(w, h);
    path.lineTo(0, h);
    path.lineTo(0, h * .8);
    path.cubicTo(0, h * .6, w * .1, h * .83, w * .1, h * .8);
    path.cubicTo(w * .13, h * .83, w * .3, h * .9, w * .3, h * .2);
    path.quadraticBezierTo(w * .3, 0, w * .4, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => false;
}
