package com.live.flutter_app

import android.widget.Toast
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

/**
 * @author  zyl
 * @date  2020/9/15 9:05 PM
 */
class FlutterAppPlugin : FlutterPlugin, MethodChannel.MethodCallHandler {

    companion object {
        const val CHANNEL = "com.example.jump/plugin"

        public fun registerWith(flutterEngine: FlutterEngine?) {
            flutterEngine?.plugins?.add(FlutterAppPlugin())
        }

    }

    lateinit var channel: MethodChannel

    override fun onAttachedToEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(binding.binaryMessenger, CHANNEL)
        channel.setMethodCallHandler(this)
    }

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            // 带参数
            "getNumber" -> {
                val accountId = call.argument<String>("accountId")
                // 返回给flutter的参数
                Toast.makeText(MyFlutterApplication.context, accountId.toString(), Toast.LENGTH_LONG).show()
                result.success("调用成功")
            }
            else -> {
                result.notImplemented()
            }
        }
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }

}