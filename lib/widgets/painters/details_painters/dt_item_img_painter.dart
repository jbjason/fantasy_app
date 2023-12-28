import 'package:fantasy_app/constants/my_color.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:vector_math/vector_math_64.dart' as vector;
import 'dart:math' as math;

class DtItemImgpainter extends CustomPainter {
  final bool isProfile;
  const DtItemImgpainter(this.isProfile);

  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width, h = size.height;
    final center = Offset(w / 2, h / 2);
    final rect = Rect.fromCenter(center: center, width: w, height: h);

    ///
    /// outer Circular RoundedLine from the image
    const gradient1 = SweepGradient(
      colors: [
        Colors.white10,
        Colors.white12,
        Colors.white24,
        MyColor.ashhLight,
        MyColor.ashhLight,
      ],
    );
    final paint = _getPaint(gradient1, rect, 6);
    final path = Path();
    path.addArc(rect, vector.radians(10), vector.radians(260));
    canvas.drawPath(path, paint);

    ///
    /// inside Circular RoundedLine of Outer Circular RoundedLine from the image
    const gradient2 = SweepGradient(
      colors: [
        Colors.black26,
        Colors.black38,
        Colors.black26,
        MyColor.bluePrimary,
        MyColor.bluePrimary,
      ],
    );
    final paint2 = _getPaint(gradient2, rect, 1.2);
    final path2 = Path();
    path2.addArc(rect, vector.radians(0), vector.radians(270));
    canvas.drawPath(path2, paint2);

    ///
    /// star or green status widgets
    if (isProfile) {
      final path3 = Path();
      // for profile pic only a circular green active status light
      // at around 300 radians like( (360-270) / 2 == 305 )
      final paint4 = Paint()..color = Colors.green;
      final x3 = 4 + center.dx + w / 2 * math.cos(vector.radians(310));
      final y3 = center.dy + w / 2 * math.sin(vector.radians(310));
      path3.addOval(Rect.fromPoints(Offset(x3, y3), Offset(x3 + 10, y3 + 10)));
      //canvas.drawCircle(Offset(x3, y3), 6, paint4);
      canvas.drawPath(path3, paint4);
      canvas.drawShadow(path3, Colors.limeAccent[400]!, 7, false);
    } else {
      /// radian 270 to 360 is available for drawing stars
      /// will draw 3 stars, so adding 270+ (360 - 270.0)/ 3
      final paint3 = Paint()..color = MyColor.skyPrimary;
      const star = (370 - 270.0) / 4.5;
      final path3 = Path();
      for (int i = 1; i <= 4; i++) {
        final sideDiff = 4 + ((i - 1) * 2), closeDiff = i * 1;
        final x3 =
            center.dx + w / 2 * math.cos(vector.radians(380 - (star * i)));
        final y3 =
            center.dy + w / 2 * math.sin(vector.radians(380 - (star * i)));
        path3.moveTo(x3 - sideDiff, y3);
        path3.lineTo(x3 - closeDiff, y3 - closeDiff);
        path3.lineTo(x3, y3 - sideDiff);

        path3.lineTo(x3 + closeDiff, y3 - closeDiff);
        path3.lineTo(x3 + sideDiff, y3);
        path3.lineTo(x3 + closeDiff, y3 + closeDiff);
        path3.lineTo(x3, y3 + sideDiff);
        path3.lineTo(x3 - closeDiff, y3 + closeDiff);
        path3.close();
        canvas.drawPath(path3, paint3);
      }
    }
  }

  Paint _getPaint(SweepGradient gradient, Rect rect, double width) {
    return Paint()
      ..strokeWidth = width
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..shader = gradient.createShader(rect);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
