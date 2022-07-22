package com.live.flutter_app

import android.os.Bundle
import io.flutter.embedding.android.FlutterActivity
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity : FlutterActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        // 注册本地的
        FlutterAppPlugin.registerWith(this.flutterEngine)
        // 注册plugin
        GeneratedPluginRegistrant.registerWith(this.flutterEngine!!)
    }

}
