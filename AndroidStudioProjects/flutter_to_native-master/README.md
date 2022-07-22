# flutter_app

A new Flutter application.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

### flutter调用原生安卓的方法
**这边通过两种方式**
1. 在flutter项目中的android目录进行编写原生代码
2. 导入的plugin中的android目录中进行编写原生代码

**第一种方式**
1. 首先创建FlutterAppPlugin文件，CHANNEL和flutter中lib中的相互对应，用于建立联系
2. FlutterAppPlugin中的方法与flutter中lib中相互对应
3. MainActivity继承FlutterActivity，注册
```
FlutterAppPlugin.registerWith(this.flutterEngine)
```
4. 调用的话就看代码了

**第二种方式**
1. 首先新建一个plugin，在pubspec.yaml中引入，地址一定要正确
```
live_plugin:
    path: plugin\live_plugin
```
2. 通过上面的pub get会在flutter项目中的GeneratedPluginRegistrant类中自动生成
```
    flutterEngine.getPlugins().add(new com.llayjun.live_plugin.LivePlugin());
```
3. 同上面的3，不过是注册
```
// 注册plugin
GeneratedPluginRegistrant.registerWith(this.flutterEngine!!)
```
4. 调用的话就看代码了
