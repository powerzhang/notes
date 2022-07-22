//实现newIsolate与rootIsolate(默认)建立连接
import 'dart:isolate';

//定义一个newIsolate
late Isolate newIsolate;
//定义一个newIsolateSendPort, 该newIsolateSendPort需要让rootIsolate持有，
//这样在rootIsolate中就能利用newIsolateSendPort向newIsolate发送消息
late SendPort newIsolateSendPort;

void main() {
  establishConn(); //建立连接
}

//特别需要注意:establishConn执行环境是rootIsolate
void establishConn() async {
  //第1步: 默认执行环境下是rootIsolate，所以创建的是一个rootIsolateReceivePort
  ReceivePort rootIsolateReceivePort = ReceivePort();
  //第2步: 获取rootIsolateSendPort
  SendPort rootIsolateSendPort = rootIsolateReceivePort.sendPort;
  //第3步: 创建一个newIsolate实例，并把rootIsolateSendPort作为参数传入到newIsolate中，为的是让newIsolate中持有rootIsolateSendPort, 这样在newIsolate中就能向rootIsolate发送消息了
  newIsolate = await Isolate.spawn(createNewIsolateContext, rootIsolateSendPort); //注意createNewIsolateContext这个函数执行环境就会变为newIsolate, rootIsolateSendPort就是createNewIsolateContext回调函数的参数
  //第7步: 通过rootIsolateReceivePort接收到来自newIsolate的消息，所以可以注意到这里是await 因为是异步消息
  //只不过这个接收到的消息是newIsolateSendPort, 最后赋值给全局newIsolateSendPort，这样rootIsolate就持有newIsolate的SendPort
  var messageList = await rootIsolateReceivePort.first;
  //第8步，建立连接成功
  print(messageList[0] as String);
  newIsolateSendPort = messageList[1] as SendPort;
}

//特别需要注意:createNewIsolateContext执行环境是newIsolate
void createNewIsolateContext(SendPort rootIsolateSendPort) async {
  //第4步: 注意callback这个函数执行环境就会变为newIsolate, 所以创建的是一个newIsolateReceivePort
  ReceivePort newIsolateReceivePort = ReceivePort();
  //第5步: 获取newIsolateSendPort, 有人可能疑问这里为啥不是直接让全局newIsolateSendPort赋值，注意这里执行环境不是rootIsolate
  SendPort newIsolateSendPort = newIsolateReceivePort.sendPort;
  //第6步: 特别需要注意这里，这里是利用rootIsolateSendPort向rootIsolate发送消息，只不过发送消息是newIsolate的SendPort, 这样rootIsolate就能拿到newIsolate的SendPort
  rootIsolateSendPort.send(['connect success from new isolate', newIsolateSendPort]);
}