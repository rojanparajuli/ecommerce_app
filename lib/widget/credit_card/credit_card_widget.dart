import 'package:flutter/material.dart';

class CardPainter extends CustomPainter {
  final bool isDefault;

  CardPainter(this.isDefault);

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..shader = LinearGradient(
        colors: isDefault
            ? [Colors.blueGrey.shade900, Colors.black]
            : [Colors.grey.shade800, Colors.grey.shade600],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height))
      ..style = PaintingStyle.fill;

    final Path path = Path()
      ..moveTo(0, size.height * 0.3)
      ..quadraticBezierTo(
          size.width * 0.5, size.height * 0.4, size.width, size.height * 0.2)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();

    canvas.drawRRect(
      RRect.fromRectAndRadius(Rect.fromLTWH(0, 0, size.width, size.height),
          const Radius.circular(12)),
      paint,
    );

    canvas.drawPath(path, Paint()..color = Colors.white.withValues(alpha: 0.1));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}