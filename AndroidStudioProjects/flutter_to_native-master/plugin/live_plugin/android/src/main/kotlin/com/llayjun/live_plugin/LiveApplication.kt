package com.llayjun.live_plugin

import android.content.Context
import io.flutter.app.FlutterApplication

class LiveApplication {

    val appkey = "300f0839838b87777f136036bf991ff9"
    val appsecret = "6BC6112DB4399197E8695582724DB78E"

    companion object {
        lateinit var context: Context

        public fun init(context: Context) {
            this.context = context
//            Tracking.setDebugMode(true)
//            Tracking.initWithKeyAndChannelId(this, appkey, appsecret)
        }
    }

}