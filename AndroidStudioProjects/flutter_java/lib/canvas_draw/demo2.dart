import 'dart:math';

import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyApp createState() => _MyApp();
}

enum GRAPHIC_TYPE { DIST, ELLIPSE, TRACE }

class _MyApp extends State {
  GRAPHIC_TYPE mType = GRAPHIC_TYPE.DIST;

  // List<Offset?> _points = <Offset>[];
  Offset? first = Offset(0, 0);
  Offset? second = Offset(0, 0);
  Offset? third = Offset(0, 0);
  Offset? move;
  int count =0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter Playground",
        home: Scaffold(
            appBar: AppBar(title: Text("Flutter Playground")),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flex(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: TextButton(
                        child: Text("距离"),
                        onPressed: () => {mType = GRAPHIC_TYPE.DIST},
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextButton(
                        child: Text("椭圆"),
                        onPressed: () => {mType = GRAPHIC_TYPE.ELLIPSE},
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextButton(
                        child: Text("描迹"),
                        onPressed: () => {mType = GRAPHIC_TYPE.TRACE},
                      ),
                    )
                  ],
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 30.0,
                    color: Colors.green,
                    child: GestureDetector(
                      onTap: () {
                        count++;
                        if(count==3) count=0;
                        print("onTap");

                      },
                      onPanDown: (DragDownDetails details) {
                        switch(count){
                          case 0:
                            first = details.localPosition;
                            break;
                          case 1:
                            second = details.localPosition;
                            break;
                          case 2:
                            third = details.localPosition;
                            break;

                        }

                      },
                      onPanUpdate: (DragUpdateDetails details) {
                        setState(() {
                          switch(count){
                            case 0:
                              first = details.localPosition;
                              break;
                            case 1:
                              second = details.localPosition;
                              break;
                            case 2:
                              third = details.localPosition;
                              break;

                          }


                        });
                      },
                      // onPanEnd: (DragEndDetails details) => _points.add(null),
                      child: CustomPaint(
                        painter: EllipsePainter(
                            first: first, second: second, third: third),
                        size: Size.infinite,
                      ),
                    ),
                  ),
                )
              ],
            )));
  }
}

class TracePainter extends CustomPainter {
  TracePainter(this.points);

  final List<Offset?> points;

  var mPaint = Paint()
    ..color = Colors.black
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 2.0;

  @override
  void paint(Canvas canvas, Size size) {
    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null)
        canvas.drawLine(points[i]!, points[i + 1]!, mPaint);
    }
  }

  @override
  bool shouldRepaint(TracePainter other) => other.points != points;
}

class DistPainter extends CustomPainter {
  Offset? start;
  Offset? move;
  var mPaint = Paint()
    ..color = Colors.black
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 2.0;

  DistPainter(this.start, this.move);

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(start!, move!, mPaint);
  }

  @override
  bool shouldRepaint(DistPainter oldDelegate) {
    return this != oldDelegate;
  }
}

class EllipsePainter extends CustomPainter {
  Offset? first;
  Offset? second;
  Offset? third;
  var mPaint = Paint()
    ..color = Colors.black
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 2.0;

  EllipsePainter({this.first, this.second, this.third});

  @override
  void paint(Canvas canvas, Size size) {
    if (second != null) {
      canvas.drawLine(first!, second!, mPaint);
      double longAxisLength = getLength(first!, second!);
      double angle = getAngle(first!, second!);
      double aa = angle * 180 / pi;
      print("EllipsePainter third $third ");
      double short_axis = longAxisLength;
      if (third != null) {
        double angle_02 = getAngle(first!, third!);
        double length_02 = getLength(first!, third!);
        double angle_temp = angle_02 - angle;

        short_axis = (sin(angle_temp) * length_02 * 2 + longAxisLength).abs();
      }

      double left = first!.dx;
      double top = first!.dy - short_axis / 2;
      double right = first!.dx + longAxisLength;
      double bottom = first!.dy + short_axis / 2;
      print(
          "EllipsePainter left: $left ,top: $top, right: $right ,bottom: $bottom");

      Rect rect = Rect.fromLTRB(left, top, right, bottom);
      canvas.translate(first!.dx, first!.dy);
      canvas.rotate(angle);
      canvas.translate(-first!.dx, -first!.dy);

      canvas.drawOval(rect, mPaint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return this != oldDelegate;
  }

  double getLength(Offset p1, Offset p2) {
    double x = (p1.dx - p2.dx).abs();
    double y = (p1.dy - p2.dy).abs();
    return sqrt(x * x + y * y);
  }

  double getAngle(Offset p1, Offset p2) {
    double dx = (p2.dx - p1.dx);
    double dy = (p2.dy - p1.dy);
    if (dx == 0) {
      if (dy > 0) {
        return pi / 2;
      } else if (dy < 0) {
        return pi + pi / 2;
      } else {
        return 0.0;
      }
    }

    if (dx > 0 && dy >= 0) {
      return atan(dy / dx);
    }
    if (dx > 0 && dy < 0) {
      return 2 * pi + atan(dy / dx);
    }

    if (dx < 0 && dy >= 0) {
      return pi + atan(dy / dx);
    }
    if (dx < 0 && dy < 0) {
      return pi + atan(dy / dx);
    }
    return -1;
  }
}
