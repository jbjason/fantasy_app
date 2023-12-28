import 'package:flutter/material.dart';

class HomeItemBodyClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final h = size.height, w = size.width;
    final path = Path();
    path.moveTo(w, 0);
    path.lineTo(w, h);
    path.lineTo(0, h);
    path.lineTo(0, h * .5);
    path.quadraticBezierTo(0, h * .4, w * .2, h * .42);
    path.cubicTo(w * .35, h * .4, w * .4, h * .25, w * .35, h * .08);
    path.quadraticBezierTo(w * .35, 0, w * .4, 0);
    path.lineTo(w * .6, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

// class HomeItemBodyClipper extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final h = size.height, w = size.width;
//     final path = Path();
//     path.moveTo(w, 0);
//     path.lineTo(w, h);
//     path.lineTo(0, h);
//     path.lineTo(0, h * .5);
//     path.quadraticBezierTo(0, h * .4, w * .2, h * .42);
//     path.cubicTo(w * .35, h * .4, w * .4, h * .25, w * .35, h * .08);
//     path.quadraticBezierTo(w * .35, 0, w * .4, 0);
//     // path.cubicTo(w * .15, h * .45, w * .5, h * .3, w * .3, h * .05);
//     // path.quadraticBezierTo(w * .2, h * .05, w * .3, 0);
//     path.lineTo(w * .6, 0);
//     path.close();

//     final paint = Paint()..color = Colors.red;
//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
// }
