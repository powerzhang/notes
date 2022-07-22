import 'package:flutter/material.dart';

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
class SampleAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Row One'),
        Text('Row Two'),
        Text('Row Three'),
        Text('Row Four'),
      ],
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Column(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: <Widget>[
  //       Text('Column One'),
  //       Text('Column Two'),
  //       Text('Column Three'),
  //       Text('Column Four'),
  //     ],
  //   );
  // }
  // @override
  // Widget build(BuildContext context) {
  //   return ListView(
  //     children: <Widget>[
  //       Text('Row One'),
  //       Text('Row Two'),
  //       Text('Row Three'),
  //       Text('Row Four'),
  //     ],
  //   );
  // }


}