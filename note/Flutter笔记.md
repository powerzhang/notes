# Flutter笔记

1. MaterialApp 是Material库中提供的Flutter APP框架， 通过它可以设置应⽤的名称、 主题、 语⾔、 ⾸⻚及路由列表等。 MaterialApp 也是⼀个widget。 

2. Scaffold 是Material库中提供的⻚⾯脚⼿架， 它包含导航栏和Body以及FloatingActionButton（如果需要的
   话） 。 本书后⾯示例中， 路由默认都是通过 Scaffold 创建 

3. Scaffold 是 Material库中提供的⼀个widget, 它提供了默认的导航栏、 标题和包含主屏幕widget树的body属性。widget树可以很复杂。 

4. setState ⽅法的作⽤是通知Flutter框架， 有状态发⽣了改变， Flutter框架收到通知后， 会执⾏ build ⽅法来根据新的状态重新构建界⾯， Flutter 对此⽅法做了优化， 使重新执⾏变的很快， 所以你可以重新构建任何需要更新的东⻄， ⽽⽆需分别去修改各个widget。 

5. 路由(Route)在移动开发中通常指⻚⾯（Page） ， 这跟web开发中单⻚应⽤的Route概念意义是相同的， Route在Android中通常指⼀个Activity， 在iOS中指⼀个ViewController。 所谓路由管理， 就是管理⻚⾯之间如何跳转， 通常也可被称为导航管理。 这和原⽣开发类似， ⽆论是Android还是iOS， 导航管理都会维护⼀个**路由栈**， 路由⼊栈(push)操作对应打开⼀个新⻚⾯， 路由出栈(pop)操作对应⻚⾯关闭操作， ⽽路由管理主要是指如何来管理路由栈。 

6. MaterialPageRoute 继承⾃ PageRoute 类， PageRoute 类是⼀个抽象类， 表示占有整个屏幕空间的⼀个模态路由⻚⾯，它还定义了路由构建及切换时过渡动画的相关接⼝及属性。 MaterialPageRoute 是Material组件库的⼀个Widget， 它可以针对不同平台， 实现与平台⻚⾯切换动画⻛格⼀致的路由切换动画：

7. 命名路由。所谓命名路由（Named Route） 即给路由起⼀个名字， 然后可以通过路由名字直接打开新的路由。 这为路由管理带来了⼀种直观、 简单的⽅式。 

   ```dart
   return new MaterialApp(
     title: 'Flutter Demo',
     theme: new ThemeData(
   	primarySwatch: Colors.blue,
     ),
   //注册路由表
     routes:{
     	"new_page":(context)=>NewRoute(),
     } ,
     home: new MyHomePage(title: 'Flutter Demo Home Page'),
   );
   ```

   ​

8.  ```dart
   debugDumpApp() 
   debugDumpRenderTree()
   debugDumpLayerTree()
   debugDumpSemanticsTree()
   ```

## 基础Widgets

首先，widget 有着不一样的生命周期：它们是不可变的，一旦需要变化则生命周期终止。任何时候 widget 或它们的状态变化时， Flutter 框架都会创建一个新的 widget 树的实例。对比来看，一个 Android View 只会绘制一次，除非调用 `invalidate` 才会重绘。

在Flutter中， Widget的功能是“描述⼀个UI元素的配置数据”， 它就是说， Widget其实并不是表示最终绘制在设备屏幕上的显示元素， ⽽只是显示元素的⼀个配置数据。 实际上， Flutter中真正代表屏幕上显示元素的类是 Element ， 也就是说Widget只是描述 Element 的⼀个配置， 有关 Element 的详细介绍我们将在本书后⾯的⾼级部分深⼊介绍， 读者现在只需要知道， Widget只是UI元素的⼀个配置数据， 并且⼀个Widget可以对应多个 Element ， 这是因为同⼀个Widget对象可以被添加到UI树的不同部分， ⽽真正渲染时， UI树的每⼀个Widget节点都会对应⼀个 Element 对象。 总结⼀下：

- Widget实际上就是Element的配置数据， Widget树实际上是⼀个配置树， ⽽真正的UI渲染树是由Element构成； 不过， 由于Element是通过Widget⽣成， 所以它们之间有对应关系， 所以在⼤多数场景， 我们可以宽泛地认为Widget树就是指UI控件树或UI渲染树。
- ⼀个Widget对象可以对应多个Element对象。 这很好理解， 根据同⼀份配置（Widget） ， 可以创建多个实例（Element） 。 


本质上就是⼀个 StatefulElement 对应⼀个State实例。 



Flutter提供了丰富的widget， 在实际的开发中你可以随意使⽤它们， 不要怕引⼊过多widget库会让你的应⽤安装包变⼤， 这不是web开发， dart在编译时只会编译你使⽤了的代码。  

我们在前⾯说过Element树才是最终的绘制树， Element树是通过widget树来创建的（通过 Widget.createElement() ） ， widget其实就是Element的配置数据。 

```
EdgeInsets 
```

通过上⾯示例， 我们发现有多重限制时， 对于minWidth和minHeight来说， 是取⽗⼦中相应数值较⼤的。  



UnconstrainedBox对⽗限制的“去除”并⾮是真正的去除， 上⾯例⼦中虽然红⾊区域⼤⼩是90×20，
但上⽅仍然有80的空⽩空间。 也就是说⽗限制的minHeight(100.0)仍然是⽣效的， 只不过它不影响最终⼦元素的⼤⼩，但仍然还是占有相应的空间， 可以认为此时的⽗ConstrainedBox是作⽤于⼦ConstrainedBox上， ⽽redBox只受⼦ConstrainedBox限制， 这⼀点请读者务必注意。 



Transform的变换是应⽤在绘制阶段， ⽽并不是应⽤在布局(layout)阶段， 所以⽆论对⼦widget应⽤何种变化， 其占⽤空间的⼤⼩和在屏幕上的位置都是固定不变的， 因为这些是在布局阶段就确定的。  



```dart
Padding(
  padding: EdgeInsets.all(20.0),
  child: DecoratedBox(
    decoration: BoxDecoration(color: Colors.orange),
    child: Text("Hello world!"),
	),
),
DecoratedBox(
  decoration: BoxDecoration(color: Colors.orange),
  child: Padding(
    padding: const EdgeInsets.all(20.0),
    child: Text("Hello world!"),
   ),
), 
```

## ViewPort视⼝

 在Flutter中， 术语ViewPort（视⼝） ， 如⽆特别说明， 则是指⼀个Widget的实际显示区域。  

```
ListTile 
```



Sliver有细⽚、 ⼩⽚之意， 在Flutter中， Sliver通常指具有特定滚动效果的可滚动块。 可滚动widget， 如ListView、GridView等都有对应的Sliver实现如SliverList、 SliverGrid等。 对于⼤多数Sliver来说， 它们和可滚动Widget最主要的区别是Sliver不会包含Scrollable Widget， 也就是说Sliver本身不包含滚动交互模型 ， 正因如此， CustomScrollView才可以将多个Sliver"粘"在⼀起， 这些Sliver共⽤CustomScrollView的Scrollable， 最终实现统⼀的滑动效果。 



## 功能型Widget简介

功能型Widget指的是不会影响UI布局及外观的Widget， 它们通常具有⼀定的功能， 如事件监听、 数据存储等， 我们之前介绍过的FocusScope（焦点控制） 、 PageStorage（数据存储） 、 NotificationListener（事件监听） 都属于功能型Widget。 由于Widget是Flutter的⼀等公⺠， 功能型Widget⾮常多， 我们不会去⼀⼀介绍， 本章中主要介绍⼏种常⽤的功能型Widget。 

## 事件处理与通知 

Flutter中的⼿势系统有两个独⽴的层。 第⼀层为原始指针(pointer)事件， 它描述了屏幕上指针（例如， 触摸、 ⿏标和触控笔） 的位置和移动。 第⼆层为⼿势， 描述由⼀个或多个指针移动组成的语义动作， 如拖动、 缩放、 双击等。  

## flutter 获取屏幕宽高

```
var width=MediaQuery.of(context).size.width;
var height=MediaQuery.of(context).size.height;
```

注意： Dart中实现单例模式的标准做法就是使⽤static变量+⼯⼚构造函数的⽅式， 这样就可以保证 new
EventBus() 始终返回都是同⼀个实例， 读者应该理解并掌握这种⽅法。 

```
//私有构造函数
EventBus._internal();
//保存单例
static EventBus _singleton = new EventBus._internal();
//⼯⼚构造函数
factory EventBus()=> _singleton;
```

Notification是Flutter中⼀个重要的机制， 在Widget树中， 每⼀个节点都可以分发通知， 通知会沿着当前节点（context）向上传递， 所有⽗节点都可以通过NotificationListener来监听通知， Flutter中称这种通知由⼦向⽗的传递为“通知冒泡”（Notification Bubbling） ， 这个和⽤户触摸事件冒泡是相似的， 但有⼀点不同： 通知冒泡可以中⽌， 但⽤户触摸事件不⾏。 



context实际上就是操作Element的⼀个接⼝， 它与Element树上的节点是对应的， 通知会从context对应的Element节点向上冒泡。



# 动画 

Flutter中也对动画进⾏了抽象， 主要涉及Tween、 Animation、 Curve、 Controller这些⻆⾊。  

# 路由

普通路由

命名路由

[路由栈](https://liyuanjinglyj.blog.csdn.net/article/details/105014586?spm=1001.2101.3001.6650.2&utm_medium=distribute.pc_relevant.none-task-blog-2%7Edefault%7ECTRLIST%7ERate-2-105014586-blog-110633149.pc_rele)

```
Navigator.of(context).pop(); //返回到上一级
Navigator.of(context).pushReplacementNamed('/registerSecond');
//返回到跟路由
Navigator.of(context).pushAndRemoveUntil(
new MaterialPageRoute(builder: (context) => new Tabs(index:1)),
(route) => route == null
);
```

Flutter使⽤Skia作为其2D渲染引擎， Skia是Google的⼀个2D图形处理函数库， 包含字型、 坐标转换， 以及点阵图都有⾼效能且简洁的表现， Skia是跨平台的， 并提供了⾮常友好的API， ⽬前Google Chrome浏览器和Android均采⽤Skia作为其绘图引擎， 值得⼀提的是， 由于Android系统已经内置了Skia， 所以Flutter在打包APK(Android应⽤安装包)时， 不需要再将Skia打⼊APK中， 但iOS系统并未内置Skia， 所以构建iPA时， 也必须将Skia⼀起打包， 这也是为什么**FlutterAPP的Android安装包⽐iOS安装包⼩的主要原因**。 