import 'package:flutter/material.dart';

// The svg we were given was weird, we have the two points either side of
// the base so we calculated the midpoint: (12019 + 01588) / 2 = 6803
const arrowOrigin = Offset(34627, 6803);
const arrowOriginX = 34627;
const arrowOriginY = 6803;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
          width: 360,
          height: 480,
          child: CustomPaint(
            painter: ArrowPainter(),
          ),
        ),
      ),
    );
  }
}

class ArrowPainter extends CustomPainter {
  final Path outerArrowPath = Path()
    ..moveTo(34627, 12019)
    ..lineTo(48643, 07692)
    ..lineTo(48652, 09648)
    ..lineTo(53117, 06804)
    ..lineTo(48628, 03960)
    ..lineTo(48637, 05914)
    ..lineTo(47807, 05658)
    ..lineTo(34585, 01588)
    ..lineTo(34629, 12019)
    ..moveTo(34097, 13099)
    ..cubicTo(34009, 13029, 33948, 12894, 33948, 12735)
    ..lineTo(33898, 00870)
    ..cubicTo(33895, 00606, 34064, 00408, 34242, 00463)
    ..lineTo(47948, 04682)
    ..lineTo(47941, 03071)
    ..cubicTo(47941, 02771, 48151, 02571, 48341, 02690)
    ..lineTo(54230, 06420)
    ..cubicTo(54236, 06427, 54248, 06432, 54256, 06438)
    ..cubicTo(54460, 06601, 54453, 07041, 54233, 07181)
    ..lineTo(48375, 10912)
    ..cubicTo(48186, 11032, 47974, 10832, 47973, 10532)
    ..lineTo(47966, 08920)
    ..lineTo(34295, 13140)
    ..cubicTo(34225, 13162, 34155, 13144, 34098, 13098)
    ..close();

  final Paint outerArrowPaint = Paint()
    ..style = PaintingStyle.fill
    ..color = const Color(0xff24adc0).withOpacity(0.8);

  final Path innerArrowPath = Path()
    ..moveTo(34627, 12019)
    ..lineTo(48643, 07692)
    ..lineTo(48652, 09648)
    ..lineTo(53117, 06804)
    ..lineTo(48628, 03960)
    ..lineTo(48637, 05914)
    ..lineTo(47807, 05658)
    ..lineTo(34585, 01588)
    ..close();

  final Paint innerArrowPaint = Paint()
    ..style = PaintingStyle.fill
    ..color = const Color(0xffffffff).withOpacity(0.8);

  final Paint circlePaint = Paint()
    ..style = PaintingStyle.fill
    ..color = const Color(0xffff0000).withOpacity(0.8);

  @override
  void paint(Canvas canvas, Size size) {
    canvas.translate(180, 240);
    canvas.scale(0.01);
    canvas.translate(-34627, 6803);

    canvas.drawPath(outerArrowPath, outerArrowPaint);
    canvas.drawPath(innerArrowPath, innerArrowPaint);
    canvas.drawCircle(arrowOrigin, 500, circlePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
