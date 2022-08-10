import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBubble extends CustomPainter {
  final Color color;

  const CustomBubble({this.color = Colors.white});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = 1
      ..style = PaintingStyle.fill;
    const double triangleW = 25.0;
    final double width = size.width;
    final double height = size.height;

    final Path trianglePath = Path()
      ..moveTo(width / 10 - triangleW / 2, 0)
      ..lineTo(width / 10, -12)
      ..lineTo(width / 10 + triangleW / 2, 0);
    canvas.drawPath(trianglePath, paint);
    final BorderRadius borderRadius = BorderRadius.circular(6.r);
    final Rect rect = Rect.fromLTRB(0, 0, width, height);
    final RRect outer = borderRadius.toRRect(rect);
    canvas.drawRRect(outer, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
