import 'dart:math' as math;
import 'package:flutter/material.dart';

class SkillsIndicator extends StatelessWidget {
  final double widgetSize;
  final double progressValue;
  final Widget child;

  const SkillsIndicator({
    super.key,
    required this.progressValue,
    this.widgetSize = 60.0,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CircularProgressPainter(progressPercentage: progressValue),
      size: Size(widgetSize, widgetSize),
      child: Container(
        padding: EdgeInsets.all(widgetSize / 4),
        width: widgetSize,
        height: widgetSize,
        child: child,
      ),
    );
  }
}

class CircularProgressPainter extends CustomPainter {
  final double progressPercentage;
  final double outerStrokeWidth, progressStrokeWidth;
  final Paint backgroundPaint, outerCirclePaint, progressPaint;

  CircularProgressPainter({
    required this.progressPercentage,
    this.outerStrokeWidth = 6.0,
    this.progressStrokeWidth = 4.0,
  }) : backgroundPaint = Paint()..color = const Color(0xff510201),
       outerCirclePaint = Paint()..color = const Color(0xff3D0200),
       progressPaint =
           Paint()
             ..color = const Color(0xffB70401)
             ..style = PaintingStyle.stroke
             ..strokeWidth = progressStrokeWidth
             ..strokeCap = StrokeCap.round;

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    canvas.drawCircle(center, radius, backgroundPaint);
    canvas.drawCircle(center, radius - outerStrokeWidth, outerCirclePaint);
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius - (outerStrokeWidth / 2)),
      -math.pi / 2,
      (progressPercentage / 100) * math.pi * 2,
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
