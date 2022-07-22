package com.example.myapplication;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.BounceInterpolator;
import android.view.animation.LinearInterpolator;

import java.lang.ref.WeakReference;

public class MyPointView extends View {
    private Circle mCircle = new Circle(0);
    private boolean isDrawCircle = false;
    private final GestureDetector gestureDetector;
    private final Paint paint;
    private final Paint paint1;
    private final ObjectAnimator animator;

    public MyPointView(Context context, AttributeSet attrs) {
        super(context, attrs);
        gestureDetector = new GestureDetector(context, new MoveGestureListener(this));
        paint = new Paint();
        paint.setAntiAlias(true);
        paint.setStrokeWidth(10);
        paint.setColor(Color.BLACK);
        paint.setStyle(Paint.Style.STROKE);
        paint1 = new Paint(paint);
        animator = ObjectAnimator.ofInt(this, "circleAlpha",0,0);
        animator.setInterpolator(new LinearInterpolator());
        animator.setDuration(2000);
    }
    @Override
    protected void onDraw(Canvas canvas) {
        if (mCircle != null){

            canvas.drawLine(200,200,500,500,paint);
            Log.d("MyPointView","isDrawCircle:"+isDrawCircle);
//                Log.d("MyPointView","isDrawCircle getAlpha AAAAAAAAAAAAAAAA:"+mCircle.getAlpha());
                paint1.setAlpha(mCircle.getAlpha());
                canvas.drawCircle(200,200,50,paint1);
                canvas.drawCircle(500,500,50,paint1);

        }
        super.onDraw(canvas);
    }
    //get函数
//    public int getCircleRadius(){
//        return 800;
//    }
//    //set函数
//    public void setCircleRadius(int radius){
//        mCircle.setRadius(radius);
//        invalidate();
//    }

    public int getCircleAlpha(){
        return 0;
    }

    public void setCircleAlpha(int alpha){
        mCircle.setAlpha(alpha);
        invalidate();
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent event) {

        return gestureDetector.onTouchEvent(event);
    }

    class MoveGestureListener extends GestureDetector.SimpleOnGestureListener{
        private WeakReference<MyPointView> myPointViewWeakReference;

        public MoveGestureListener(MyPointView myPointView) {
            this.myPointViewWeakReference = new WeakReference<>(myPointView);
        }

        @Override
        public boolean onSingleTapUp(MotionEvent e) {
            isDrawCircle = !isDrawCircle;
            int start=0;
            int end=0;
            Log.d("MyPointView","onSingleTapUp isDrawCircle :"+isDrawCircle);
            if(isDrawCircle){
                start =0;
                end =255;
            }else{
                start =255;
                end=0;
            }
            paint1.setAlpha(start);
            Log.d("MyPointView","isDrawCircle start:"+start+",end:"+end);

            animator.setIntValues(start,end);
            animator.start();
            myPointViewWeakReference.get().invalidate();
            return super.onSingleTapUp(e);
        }

        @Override
        public boolean onDown(MotionEvent e) {
            return true;
        }
    }
}