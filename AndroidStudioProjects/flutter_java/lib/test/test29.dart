import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "Flutter Playground",
        home: Scaffold(
            appBar: AppBar(title: Text("ThemeTestRoute Test!")),
            body: ThemeTestRoute()));
  }
}

class ThemeTestRoute extends StatefulWidget {
  @override
  _ThemeTestRouteState createState() => new _ThemeTestRouteState();
}

class _ThemeTestRouteState extends State<ThemeTestRoute> {
  MaterialColor _themeColor = Colors.teal; //当前路由主题⾊
  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Theme(
      data: ThemeData(
          primarySwatch: _themeColor, //⽤于导航栏、 FloatingActionButton的背景⾊等
          iconTheme: IconThemeData(color: _themeColor) //⽤于Icon颜⾊
          ),
      child: Scaffold(
        appBar: AppBar(title: Text("主题测试")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //第⼀⾏Icon使⽤主题中的iconTheme
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Icon(Icons.favorite),
              Icon(Icons.airport_shuttle),
              Text(" 颜⾊跟随主题")
            ]),
            //为第⼆⾏Icon⾃定义颜⾊（固定为⿊⾊)
            Theme(
              data: themeData.copyWith(
                iconTheme: themeData.iconTheme.copyWith(color: Colors.black),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.favorite),
                    Icon(Icons.airport_shuttle),
                    Text(" 颜⾊固定⿊⾊")
                  ]),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () => //切换主题
                setState(() => _themeColor =
                    _themeColor == Colors.teal ? Colors.blue : Colors.teal),
            child: Icon(Icons.palette)),
      ),
    );
  }
}
