
import 'dart:async';

import 'package:flutter/services.dart';

class LivePlugin {
  static const MethodChannel _channel = const MethodChannel('live_plugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String> get goActivity async {
    final String goActivity = await _channel.invokeMethod('goActivity');
    return goActivity;
  }

}
