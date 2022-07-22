import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(title : "Flutter Playground",
        home : Scaffold(
            appBar:AppBar(
                title : Text("GridView Test!")
            ) ,
            body : GridView(
              padding: EdgeInsets.zero,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 120.0,
                  childAspectRatio: 2.0 //宽⾼⽐为2
              ),
              children: <Widget>[
                Icon(Icons.ac_unit),
                Icon(Icons.airport_shuttle),
                Icon(Icons.all_inclusive),
                Icon(Icons.beach_access),
                Icon(Icons.cake),
                Icon(Icons.free_breakfast),
              ],
            )


        )
    );
  }

}




class InfiniteGridView extends StatefulWidget {
  @override
  _InfiniteGridViewState createState()=>_InfiniteGridViewState();
}
class _InfiniteGridViewState extends State<InfiniteGridView> {
List<IconData> _icons = []; //保存Icon数据
@override
void initState() {
// 初始化数据
  _retrieveIcons();
} @
override
Widget build(BuildContext context) {
  return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, //每⾏三列
          childAspectRatio: 1.0 //显示区域宽⾼相等
      ),
      itemCount: _icons.length,
      itemBuilder: (context, index) {
//如果显示到最后⼀个并且Icon总数⼩于200时继续获取数据
        if (index == _icons.length - 1 && _icons.length < 200) {
          _retrieveIcons();
        }
        return Icon(_icons[index]);
      }
  );
}
//模拟异步获取数据
void _retrieveIcons() {
  Future.delayed(Duration(milliseconds: 200)).then((e) {
    setState(() {
      _icons.addAll([
        Icons.ac_unit,
        Icons.airport_shuttle,
        Icons.all_inclusive,
        Icons.beach_access, Icons.cake,
        Icons.free_breakfast
      ]);
    });
  });
}
}