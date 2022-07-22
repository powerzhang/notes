import 'package:flutter/material.dart';
AnimationController ? controller;
CurvedAnimation ? curve;

void main() {
  runApp(SampleApp());
}
class SampleApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SampleAppPage(),
    );
  }
}

class SampleAppPage extends StatefulWidget {
  @override
  _SampleAppState createState() => _SampleAppState();
}

class _SampleAppState extends State<SampleAppPage> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );
    curve = CurvedAnimation(
      parent: controller!,
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onDoubleTap: () {
            if (controller!.isCompleted) {
              controller!.reverse();
            } else {
              controller!.forward();
            }
          },
          child: RotationTransition(
            turns: curve!,
            child: FlutterLogo(
              size: 200.0,
            ),
          ),
        ),
      ),
    );
  }
}
