import 'package:flutter/material.dart';

class LineChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.orange.shade300
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    final dotPaint = Paint()
      ..color = Colors.orange.shade300
      ..style = PaintingStyle.fill;

    final path = Path();

    // Sample data points for the chart (you can replace with real data)
    final points = [
      Offset(0, size.height * 0.6),
      Offset(size.width * 0.2, size.height * 0.4),
      Offset(size.width * 0.4, size.height * 0.7),
      Offset(size.width * 0.6, size.height * 0.3),
      Offset(size.width * 0.8, size.height * 0.5),
      Offset(size.width, size.height * 0.2),
    ];

    // Draw the path connecting all points
    path.moveTo(points[0].dx, points[0].dy);
    for (int i = 1; i < points.length; i++) {
      path.lineTo(points[i].dx, points[i].dy);
    }

    // Draw the path
    canvas.drawPath(path, paint);

    // Draw dots at each data point
    for (final point in points) {
      canvas.drawCircle(point, 5, dotPaint);
    }

    // Draw base line (x-axis)
    final basePaint = Paint()
      ..color = Colors.grey.shade700
      ..strokeWidth = 1;
    canvas.drawLine(
      Offset(0, size.height),
      Offset(size.width, size.height),
      basePaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}