import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:live_plugin/live_plugin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter调用原生方法'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // 集成自原有的android目录中
  String result = "";

  // 定义通道，作为通信标志符
  static const platform = const MethodChannel("com.example.jump/plugin");

  // 调用原生方法实现传参数
  Future<Null> _incrementCounter() async {
    Map<String, String> map = {"accountId": "123456"};
    String result = await platform.invokeMethod("getNumber", map);
    //获取结果后改变界面状态,更新界面
    setState(() {
      this.result = result;
    });
  }

  /// 调用LivePlugin
  String _platformVersion = "";

  Future<void> initPlatformState() async {
    String platformVersion;
    platformVersion = await LivePlugin.platformVersion;
    if (!mounted) return;
    setState(() {
      _platformVersion = platformVersion;
    });
  }

  // 跳转到Plugin的Activity
  String _goActivity = "";

  Future<void> goActivityState() async {
    String goActivity;
    goActivity = await LivePlugin.goActivity;
    if (!mounted) return;
    setState(() {
      _goActivity = goActivity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '直接调用Android目录中方法，传参数',
              ),
              Text(
                '$result',
                style: Theme.of(context).textTheme.headline4,
              ),
              RaisedButton(
                child: Text("点击我"),
                onPressed: _incrementCounter,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '调用LivePlugin',
              ),
              Text(
                '$_platformVersion',
                style: Theme.of(context).textTheme.headline4,
              ),
              RaisedButton(
                child: Text("点击我"),
                onPressed: initPlatformState,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '调用LivePlugin中原生Activity',
              ),
              Text(
                '$_goActivity',
                style: Theme.of(context).textTheme.headline4,
              ),
              RaisedButton(
                child: Text("点击我"),
                onPressed: goActivityState,
              ),
            ],
          ),
        ],
      )), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
