package com.live.flutter_app

import android.content.Context
import com.llayjun.live_plugin.LiveApplication
import com.reyun.tracking.sdk.Tracking
import io.flutter.app.FlutterApplication

class MyFlutterApplication : FlutterApplication() {

    val appkey = "xxx"
    val appsecret = "xxx"

    companion object {
        lateinit var context: Context
    }

    override fun onCreate() {
        super.onCreate()
        context = this
        LiveApplication.init(this)
        Tracking.setDebugMode(true)
        Tracking.initWithKeyAndChannelId(this, appkey, appsecret)
    }

}