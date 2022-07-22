import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyApp createState() => _MyApp();
}

class _MyApp extends State {
  PointerEvent ?_event;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter Playground",
        home: Scaffold(
            appBar: AppBar(title: Text("Flutter Playground")),
            body: Listener(
              child: Container(
                alignment: Alignment.center,
                color: Colors.blue,
                width: 300.0,
                height: 150.0,
                child: Text(_event?.toString() ?? "",
                    style: TextStyle(color: Colors.white)),
              ),
              onPointerDown: (PointerDownEvent event) =>
                  setState(() => _event = event),
              onPointerMove: (PointerMoveEvent event) =>
                  setState(() => _event = event),
              onPointerUp: (PointerUpEvent event) =>
                  setState(() => _event = event),

            )));
  }
}

// //定义⼀个状态， 保存当前指针位置
// PointerEvent _event;
//
// Listener(
// child: Container(
// alignment: Alignment.center,
// color: Colors.blue,
// width: 300.0,
// height: 150.0,
// child: Text(_event?.toString()??"",style: TextStyle(color: Colors.white)),
// ),
// onPointerDown: (PointerDownEvent event) => setState(()=>_event=event),
// onPointerMove: (PointerMoveEvent event) => setState(()=>_event=event),
// onPointerUp: (PointerUpEvent event) => setState(()=>_event=event),
// ),
