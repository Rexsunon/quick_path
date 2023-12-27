import 'dart:ui';

import 'package:flutter/material.dart';

class CanvasScreen extends StatefulWidget {
  const CanvasScreen({super.key});

  @override
  State<CanvasScreen> createState() => _CanvasScreenState();
}

class _CanvasScreenState extends State<CanvasScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: QuickPathCanvas(),
      child: Container(),
    );
  }
}

class QuickPathCanvas extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Path path = Path()..
  }

  animatePath(Path path, Paint paint, Canvas canvas, double animationValue) {
    PathMetrics pathMetrics = path.computeMetrics();

    for (PathMetric metric in pathMetrics) {
      final extractedPath = metric.extractPath(
        .0,
        pathMetrics.length * animationValue,
      );
      canvas.drawPath(extractedPath, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
