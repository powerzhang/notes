package com.example.myapplication;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class MoveView extends androidx.appcompat.widget.AppCompatTextView {

    private static final String TAG ="MoveView";
    private float initX;
    private float initY;
    private float firstX;
    private float firstY;
    private LinearLayout.LayoutParams layoutParams;

    public MoveView(@NonNull Context context) {
        this(context,null);
    }

    public MoveView(@NonNull Context context, @Nullable AttributeSet attrs) {
        this(context, attrs,0);
    }

    public MoveView(@NonNull Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        initX = getX();
        initY = getY();
        Log.d(TAG,"initX:"+initX +",initY:"+initY);

    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        layoutParams = (LinearLayout.LayoutParams) getLayoutParams();
    }

    @Override
    public void requestLayout() {
        super.requestLayout();
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
     /*   int action = event.getAction();
        Log.d(TAG,"onTouchEvent action:"+action);
        switch (action){
            case MotionEvent.ACTION_DOWN:
                firstX = event.getX() ;
                firstY = event.getY() ;
                break;
            case MotionEvent.ACTION_MOVE:
                float dx = event.getX() - firstX ;
                float dy = event.getY() - firstY;
                initX += dx;
                initY += dy;
//                setX(initX);
//                setY(initY);

//                layoutParams.leftMargin = (int)initX;
//                layoutParams.topMargin = (int)initY;
//                requestLayout();

//                this.scrollBy((int)initX,(int)initY);
                Log.d(TAG,"x:"+(initX) +",y:" +(initY));
                break;
            case MotionEvent.ACTION_UP:
                break;
        }
        return true;*/
        return super.onTouchEvent(event);
    }
}
