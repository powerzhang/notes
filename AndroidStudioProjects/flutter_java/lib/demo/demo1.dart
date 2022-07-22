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
  Offset ?start;
  Offset ? move;

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
                      onPanDown: (DragDownDetails details) {
                        start = details.localPosition;
                        if(move !=null){  //交换start和move
                          Offset ?temp = start;
                          start = move;
                          move = temp;
                        }
                      },
                      onPanUpdate: (DragUpdateDetails details) {
                        setState(() {
                          move = details.localPosition;
                          // _points = List.from(_points)
                          //   ..add(details.localPosition);
                        });
                      },
                      // onPanEnd: (DragEndDetails details) => _points.add(null),
                      child: CustomPaint(
                        painter: DistPainter(start, move),
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
    return true;
  }
}
