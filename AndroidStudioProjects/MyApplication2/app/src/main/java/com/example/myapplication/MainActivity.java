package com.example.myapplication;

import androidx.appcompat.app.AppCompatActivity;

import android.animation.ObjectAnimator;
import android.os.Bundle;
import android.view.animation.BounceInterpolator;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        //正常调用，初始值40
//        MyPointView view = (MyPointView) findViewById(R.id.view);
//        ObjectAnimator animator = ObjectAnimator.ofInt(view, "circleAlpha",0,255);
////        ObjectAnimator animator = ObjectAnimator.ofInt(view, "circleRadius",40,400);
//        animator.setInterpolator(new BounceInterpolator());
//        animator.setDuration(2000);
//        animator.start();

    }
}