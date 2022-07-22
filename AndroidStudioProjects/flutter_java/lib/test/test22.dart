import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(title : "Flutter Playground",
        home : Scaffold(
          appBar:AppBar(
              title : Text("Padding Test!")
          ) ,
          body : Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.orange),
                child: Text("Hello world!",
                textDirection: TextDirection.ltr),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.orange),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text("Hello world!",
                textDirection: TextDirection.ltr)),
              ),

    ])));
  }
  
}