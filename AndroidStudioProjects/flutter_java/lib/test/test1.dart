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

class SampleAppPage extends StatefulWidget {
  SampleAppPage({Key? key}) : super(key: key);

  @override
  _SampleAppPageState createState() => _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {
  // Default placeholder text.
  String textToShow = 'I Like Flutter';
  int i=0;
  void _updateText() {
    setState(() {
      // Update the text.
      textToShow = 'Flutter is Awesome!'+(i++).toString();
    });
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text('Sample App'),
  //     ),
  //     body: Center(child: Text(textToShow)),
  //     floatingActionButton: FloatingActionButton(
  //       onPressed: _updateText,
  //       tooltip: 'Update Text',
  //       child: Icon(Icons.update),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample App'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.only(left: 30.0, right: 30.0),
          ),
          onPressed: () {},
          child: Text('Hello'),
        ),
      ),
    );
  }

}
