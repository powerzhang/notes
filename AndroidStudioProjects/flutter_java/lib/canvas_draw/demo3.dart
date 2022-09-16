import 'dart:math';

import "package:flutter/material.dart";
import 'package:flutter_java/canvas_draw/demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyApp createState() => _MyApp();
}

enum GRAPHIC_TYPE { DIST, ELLIPSE, TRACE }

class _MyApp extends State {
  GRAPHIC_TYPE mType = GRAPHIC_TYPE.DIST;
  TraceGraphicData mTraceGraphicData = TraceGraphicData();
  LineGraphicData mLineGraphicData = LineGraphicData();
  EllipseGraphicData mEllipseGraphicData = EllipseGraphicData();
  int step=-1;
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
                        onPressed: () {
                          mType = GRAPHIC_TYPE.DIST;
                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextButton(
                        child: Text("椭圆"),
                        onPressed: () {
                          mType = GRAPHIC_TYPE.ELLIPSE;
                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextButton(
                        child: Text("描迹"),
                        onPressed: () {
                          mType = GRAPHIC_TYPE.TRACE;
                          mTraceGraphicData.points.clear();
                        },
                      ),
                    )
                  ],
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 100.0,
                    color: Colors.green,
                    child: GestureDetector(
                      onTap: () {
                        step++;
                        switch(mType){
                          case GRAPHIC_TYPE.DIST:
                            if(step==2){
                              step=0;
                            }
                            // if(mLineGraphicData.end !=null){  //交换start和move
                            //   Offset ?temp = mLineGraphicData.start;
                            //   mLineGraphicData.start = mLineGraphicData.end;
                            //   mLineGraphicData.end = temp;
                            // }
                            break;
                          case GRAPHIC_TYPE.ELLIPSE:
                            if(step==3){
                              step=0;
                            }

                            break;
                          case GRAPHIC_TYPE.TRACE:
                            break;
                        }
                      },
                      onPanDown: (DragDownDetails details) {
                        if(mType==GRAPHIC_TYPE.DIST) {
                          mLineGraphicData.start = details.localPosition;
                        }else if(mType == GRAPHIC_TYPE.ELLIPSE){
                          switch(step){
                            case 0:
                              mEllipseGraphicData.first = details.localPosition;
                              break;
                            case 1:
                              mEllipseGraphicData.second = details.localPosition;
                              break;
                            case 2:
                              mEllipseGraphicData.third = details.localPosition;
                              break;

                          }
                        }

                      },
                      onPanUpdate: (DragUpdateDetails details) {
                        setState(() {
                          setData(details);

                        });
                      },
                      // onPanEnd: (DragEndDetails details) => _points.add(null),
                      child: CustomPaint(
                        painter: getPainter(),
                        size: Size.infinite,
                      ),
                    ),
                  ),
                )
              ],
            )));
  }

  void setData(DragUpdateDetails details){
    switch(mType){
      case GRAPHIC_TYPE.DIST:
          mLineGraphicData.end = details.localPosition;
        break;
      case GRAPHIC_TYPE.ELLIPSE:
        switch(step){
          case 0:
            mEllipseGraphicData.first = details.localPosition;
            break;
          case 1:
            mEllipseGraphicData.second = details.localPosition;
            break;
          case 2:
            mEllipseGraphicData.third = details.localPosition;
            break;

        }
        break;
      case GRAPHIC_TYPE.TRACE:
        mTraceGraphicData..points.add(details.localPosition)
          ..step=step;
        print("onPanUpdate $mTraceGraphicData");

        break;
      default:

        break;
    }
  }
  CustomPainter? getPainter(){
      switch(mType){
        case GRAPHIC_TYPE.DIST:
          return LineGraphic(mLineGraphicData);
        case GRAPHIC_TYPE.ELLIPSE:
          print("getPainter $mEllipseGraphicData");

          return EllipseGraphic(mEllipseGraphicData);
        case GRAPHIC_TYPE.TRACE:
          print("TRACE $mTraceGraphicData");
          return TraceGraphic(mTraceGraphicData);
        default:
          return TraceGraphic(mTraceGraphicData);
      }
  }
}





abstract class BaseGraphicPainter extends CustomPainter {
  var mPaint = Paint()
    ..color = Colors.black
    ..strokeCap = StrokeCap.round
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2.0;

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return this != oldDelegate;
  }

}
class LineGraphicData {
  int step=-1;
  Offset? start;
  Offset? end;

}
class LineGraphic extends BaseGraphicPainter with LineGraphicData {
  LineGraphicData?lineGraphicData;

  LineGraphic(this.lineGraphicData);

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    canvas.drawLine(lineGraphicData!.start!, lineGraphicData!.end!, mPaint);
  }
}

class EllipseGraphicData{
  Offset? first;
  Offset? second;
  Offset? third;

  @override
  String toString() {
    return 'EllipseGraphicData{first: $first, second: $second, third: $third}';
  }
}
class EllipseGraphic extends BaseGraphicPainter with EllipseGraphicData{
  EllipseGraphicData?ellipseGraphicData;

  EllipseGraphic(this.ellipseGraphicData);

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Offset? first =ellipseGraphicData!.first;
    Offset? second =ellipseGraphicData!.second;
    Offset? third =ellipseGraphicData!.third;
    if (second != null) {
      canvas.drawLine(first!, second, mPaint);
      double longAxisLength = getLength(first, second);
      double angle = getAngle(first, second);
      double aa = angle * 180 / pi;
      print("EllipsePainter third $third ");
      double short_axis = longAxisLength;
      if (third != null) {
        double angle_02 = getAngle(first, third);
        double length_02 = getLength(first, third);
        double angle_temp = angle_02 - angle;

        short_axis = (sin(angle_temp) * length_02 * 2 + longAxisLength).abs();
      }

      double left = first.dx;
      double top = first.dy - short_axis / 2;
      double right = first.dx + longAxisLength;
      double bottom = first.dy + short_axis / 2;
      print(
          "EllipsePainter left: $left ,top: $top, right: $right ,bottom: $bottom");

      Rect rect = Rect.fromLTRB(left, top, right, bottom);
      canvas.translate(first.dx, first.dy);
      canvas.rotate(angle);
      canvas.translate(-first.dx, -first.dy);

      canvas.drawOval(rect, mPaint);
    }
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
class TraceGraphicData {
  int step=-1;
  List<Offset?> points = <Offset>[];
}
class TraceGraphic extends BaseGraphicPainter with TraceGraphicData {
  TraceGraphicData? mTraceGraphicData;


  TraceGraphic(this.mTraceGraphicData);

  @override
  void paint(Canvas canvas, Size size) {
    // canvas.c
    // TODO: implement paint
    int length = mTraceGraphicData!.points.length;
    print("TraceGraphic paint $length" );

    for (int i = 0; i < mTraceGraphicData!.points.length - 1; i++) {
      if (mTraceGraphicData!.points[i] != null && mTraceGraphicData!.points[i + 1] != null)
        canvas.drawLine(mTraceGraphicData!.points[i]!, mTraceGraphicData!.points[i + 1]!, mPaint);
    }
  }
}

///
/// Canvas扩展函数
/// @Author weitianpeng
/// @Create 2021-3-28
///
extension CanvasExt on Canvas {
  ///绘制虚线
  ///[p1] 起点
  ///[p2] 终点
  ///[dashWidth] 实线宽度
  ///[spaceWidth] 空隙宽度
  void drawDashLine(Offset p1,
      Offset p2,
      double dashWidth,
      double spaceWidth,
      Paint paint,) {
    assert(dashWidth > 0);
    assert(spaceWidth > 0);

    double radians;

    if (p1.dx == p2.dx) {
      radians = (p1.dy < p2.dy) ? pi / 2 : pi / -2;
    } else {
      radians = atan2(p2.dy - p1.dy, p2.dx - p1.dx);
    }

    this.save();
    this.translate(p1.dx, p1.dy);
    this.rotate(radians);

    var matrix = Matrix4.identity();
    matrix.translate(p1.dx, p1.dy);
    matrix.rotateZ(radians);
    matrix.invert();

    var endPoint = MatrixUtils.transformPoint(matrix, p2);

    double tmp = 0;
    double length = endPoint.dx;
    double delta;

    while (tmp < length) {
      delta = (tmp + dashWidth < length) ? dashWidth : length - tmp;
      this.drawLine(Offset(tmp, 0), Offset(tmp + delta, 0), paint);
      if (tmp + delta >= length) {
        break;
      }

      tmp = (tmp + dashWidth + spaceWidth < length)
          ? (tmp + dashWidth + spaceWidth)
          : (length);
    }

    this.restore();
  }
}


