import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quick_path/src/common/common.dart';

class CanvasScreen extends StatefulWidget {
  const CanvasScreen({super.key, required this.doodlingModel});

  final DoodlingModel? doodlingModel;

  @override
  State<CanvasScreen> createState() => _CanvasScreenState();
}

class _CanvasScreenState extends State<CanvasScreen> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(duration: const Duration(milliseconds: 800), vsync: this,)..forward();
    animation = Tween<double>(begin: 0, end: 1).animate(animationController);

    animationController.addListener(() {
      setState(() {});
    });
  }

  @override
  void didUpdateWidget(covariant CanvasScreen oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.doodlingModel != oldWidget.doodlingModel) {
      animationController.reset();
      animationController.forward();
    }
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: QuickPathCanvas(animationValue: animation.value, doodlingPaths: widget.doodlingModel!.drawing,),
      child: Container(),
    );
  }
}

class QuickPathCanvas extends CustomPainter {
  final double animationValue;
  final List<List<List<int>>> doodlingPaths;

  QuickPathCanvas({super.repaint, required this.animationValue, required this.doodlingPaths,});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..style = PaintingStyle.stroke ..strokeWidth = 4;
    for (final stroke in doodlingPaths) {
      List xPoints = stroke.first;
      final yPoints = stroke[1];
      final path = Path();

      path.moveTo(xPoints.first.toDouble(), yPoints.first.toDouble());
      for (int i = 0; i < xPoints.length; i++) {
        final offset = Offset(xPoints[i].toDouble(), yPoints[i].toDouble());
        path.lineTo(offset.dx, offset.dy);
      }
      // canvas.drawPath(path, paint);

      animatePath(path, paint, canvas, animationValue);
    }

  }

  void animatePath(Path path, Paint paint, Canvas canvas, double animationValue) {
    PathMetrics pathMetrics = path.computeMetrics();

    for (PathMetric metric in pathMetrics) {
      final extractedPath = metric.extractPath(
        .0,
        metric.length * animationValue,
      );
      canvas.drawPath(extractedPath, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
