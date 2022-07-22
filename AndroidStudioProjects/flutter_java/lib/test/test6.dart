import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyAppHome(), // Becomes the route named '/'.
    routes: <String, WidgetBuilder> {
      '/a': (BuildContext context) => MyPage(title: 'page A'),
      '/b': (BuildContext context) => MyPage(title: 'page B'),
      '/c': (BuildContext context) => MyPage(title: 'page C'),
    },
  ));
}


class MyAppHome extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppHome createState() => _MyAppHome();

}

class _MyAppHome extends State<MyAppHome> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text('Sample App'),),
          floatingActionButton: FloatingActionButton(
            onPressed: _toggle,
            tooltip: 'Update Text',
            child: Icon(Icons.update),
          ),
    );
  }
  void _toggle() {
    Navigator.of(context).pushNamed('/b');
  }

}

class MyPage extends StatefulWidget {
  // This widget is the root of your application.
  MyPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyPage createState() => _MyPage();
  

}

class _MyPage extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(child: Text(widget.title)),

    );
  }
  


}
