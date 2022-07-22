package com.example.myapplication;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.Scroller;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.customview.widget.ViewDragHelper;

public class CustomLinearLayout extends LinearLayout {
    private static final String TAG ="CustomLinearLayout";
    private MoveView moveView;
    private float initX;
    private float initY;
    private LayoutParams layoutParams;
    private ViewDragHelper viewDragHelper;
    private Scroller mScroller;


    public CustomLinearLayout(Context context) {
        this(context,null);
    }

    public CustomLinearLayout(Context context, @Nullable AttributeSet attrs) {
        this(context, attrs,0);
    }

    public CustomLinearLayout(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr,0);
    }

    public CustomLinearLayout(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        mScroller = new Scroller(context);
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        findView();
    }

    @Override
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        super.onLayout(changed, l, t, r, b);
        initX = moveView.getX();
        initY = moveView.getY();
        int left = moveView.getLeft();
        int top = moveView.getTop();
        Log.d(TAG,"initX :"+initX + ",initY:"+initY +",left:"+left +",top:"+top);
    }

    private void findView(){
        moveView = (MoveView)findViewById(R.id.textview);
        layoutParams = (LayoutParams) moveView.getLayoutParams();
      /*  viewDragHelper = ViewDragHelper.create(this, new ViewDragHelper.Callback() {


            @Override
            public boolean tryCaptureView(@NonNull View child, int pointerId) {
                return true;
            }

            @Override
            public int clampViewPositionHorizontal(@NonNull View child, int left, int dx) {
                return left;
            }

            @Override
            public int clampViewPositionVertical(@NonNull View child, int top, int dy) {
                return top;
            }

            @Override
            public void onViewReleased(@NonNull View releasedChild, float xvel, float yvel) {
                super.onViewReleased(releasedChild, xvel, yvel);
            }
        });*/
    }

//    @Override
//    public boolean onInterceptTouchEvent(MotionEvent ev) {
//        return viewDragHelper.shouldInterceptTouchEvent(ev);
//    }

    float firstX =0f;
    float firstY =0f;
    @Override
    public boolean onTouchEvent(MotionEvent event) {
        int action = event.getAction();

        Log.d(TAG,"onTouchEvent action:"+action);
        switch (action){
            case MotionEvent.ACTION_DOWN:
                firstX = event.getRawX();
                firstY = event.getRawY();
                Log.d(TAG,"firstX:"+firstX +",firstY:"+firstY);
                break;
            case MotionEvent.ACTION_MOVE:
                float dx = event.getRawX() - firstX;
                float dy = event.getRawY() - firstY;

                Log.d(TAG,"dx:"+dx +",dy:"+dy);
                //方式1
                moveView.setX(initX+dx);
//                moveView.setY(initY+dy);
                  //setX和setY内部调用的setTranslationX和setTranslationY
//                moveView.setTranslationX(dx);
//                moveView.setTranslationY(dy);
                //方式2 ScrollBy实际上也是调用了ScrollTo方法，它实现了基于当前位置的相对滑动，而ScrollTo实现了基于所传递参数的绝对滑动。
                scrollBy(-(int)(dx),-(int)(dy));
                firstX = event.getRawX();
                firstY = event.getRawY();
//                scrollTo(-(int)(dx),-(int)(dy));
                //方式2
//                layoutParams.leftMargin = (int)(dx);
//                layoutParams.topMargin = (int)(dy);
//                requestLayout();
                //方式4
//                moveView.offsetLeftAndRight((int)dx);
//                moveView.offsetTopAndBottom((int)dy);
                firstX = event.getRawX();
                firstY = event.getRawY();
//                Log.d(TAG,"x:"+(initX) +",y:" +(initY));
                break;
            case MotionEvent.ACTION_UP:
                break;
            default:
                throw new IllegalStateException("Unexpected value: " + action);
        }
        return true;
    }
//        return super.onTouchEvent(event);



/*    @Override
    public boolean onTouchEvent(MotionEvent event) {
        viewDragHelper.processTouchEvent(event);
        return true;
    }

    public void computeScroll() {
        super.computeScroll();
        if(mScroller.computeScrollOffset()) {
            ((View)getParent()).scrollTo(mScroller.getCurrX(),
                    mScroller.getCurrY());
        }
        invalidate();//必须要调用
    }*/
}
