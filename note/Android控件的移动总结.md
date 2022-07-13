# Android控件的移动总结 #

## 1.Android坐标系介绍 ##

View 提供了如下 5 种方法获取 View 的坐标：

1. View.getTop()、View.getLeft()、View.getBottom()、View.getRight()，这四个方法用于获取View相对于父容器的坐标。
2. View.getX()、View.getY()，获取的是View左上角相对于父容器的坐标。
3. View.getTranslationX()、View.getTranslationY(),，translationX与 translationY是View左上角相对于父容器的偏移量。
4. View.getLocationOnScreen(int[] position)，获取View相对于整个屏幕的坐标。
5. View.getLocationInWindow(int[] position)，获取View相对于Window的坐标（忽略状态栏及ActionBar）。

----------

当重写View的onTouchEvent(MotionEvent event)方法时android会把触摸事件封装成MotionEvent成提供给开发者，MotionEvent提供了两组用于获取用户点击点坐标的方法：

1. getX()、getY()，获取到的是相对于当前View左上角的坐标。
2. getRawX、getRawY()，获取的是相对于屏幕左上角的坐标。
## 2.五种移动方式介绍 ##


1. 改变坐标X，Y,设置translate的值来产生动画 .View.setX()、View.SetY() / View.setTranslationX()、View.setTranslationY()
2. 改变scrollX scrollY 属性。 通过scrollTo() scrollBy()函数来改变视图,ScrollBy实际上也是调用了ScrollTo方法，它实现了基于当前位置的相对滑动，而ScrollTo实现了基于所传递参数的绝对滑动。
3. 改变布局参数。通过设LayoutParams 的margin来改变布局，达到移动的目的
4. 调用offsetTopAndBottom/offsetLeftAndRight。改变了View 的mTop 的值，但是一旦调用requestLayout，OffsetTopAndBottom 发生的改变就会被清除，View 又会回到最开始的位置，因为mTop 被重新赋值了
5. 采用ViewDragHelper，ViewDragHelper本质上是对MotionEvent的分析及处理，并提供了一系列的监听回调方法，来帮助我们减轻开发负担，更为方便地处理控件的滑动拖拽逻辑,其内部调用的还是offsetLeftAndRight/offsetTopAndBottom方法来处理移动。

![](image\Move.gif)


| 方式                 | 影响                           | 效果                           | 作用场景                                     |
| ------------------ | ---------------------------- | ---------------------------- | ---------------------------------------- |
| 改变布局参数layoutParams | 需要重新走视图 测量 布局 绘制 三部曲，代价大     | 会影响到兄弟节点一起变化，效果差             | 大部分只用在有少数布局调整的操作                         |
| scroll方式           | 只需要走重新绘制即可，代价小               | 只能滑动内容，不能把背景跟着一起滑动，不影响布局参数   | 常常配合ontouch一起处理内容的滑动 ， 可能受到requestlayout影响则会复位 |
| translate方式        | 只需要走重新绘制即可，代价小               | 真正的平移滑动，可以移动整个视图， 不影响布局参数    | 常常作用于动画，不受requestlayout的影响               |
| offsetTopAndBottom | 只需要走重新绘制即可，代价小只需要走重新绘制即可，代价小 | 影响布局参数，受到requestlayout影响则会复位 | 有一些自定义控件中用到了                             |

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
	            //moveView.setX(initX+dx);
	            //moveView.setY(initY+dy);
	              //setX和setY内部调用的setTranslationX和setTranslationY
	            //moveView.setTranslationX(dx);
	            //moveView.setTranslationY(dy);
	            //方式2 ScrollBy实际上也是调用了ScrollTo方法，它实现了基于当前位置的相对滑动，而ScrollTo实现了基于所传递参数的绝对滑动。
	            //scrollBy(-(int)(dx),-(int)(dy));
	            //firstX = event.getRawX();
	            //firstY = event.getRawY();
	            //scrollTo(-(int)(dx),-(int)(dy));
	            //方式3 改变布局参数layoutParams
	            //layoutParams.leftMargin = (int)(dx);
	            //layoutParams.topMargin = (int)(dy);
	            //requestLayout();
	            //方式4
	            moveView.offsetLeftAndRight((int)dx);
	            moveView.offsetTopAndBottom((int)dy);
	            firstX = event.getRawX();
	            firstY = event.getRawY();
	
	            break;
	        case MotionEvent.ACTION_UP:
	            break;
	        default:
	            throw new IllegalStateException("Unexpected value: " + action);
	    }
	    return true;
	}



----------



	//方式5
	viewDragHelper = ViewDragHelper.create(this, new ViewDragHelper.Callback() {


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
     });
    
    @Override
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        return viewDragHelper.shouldInterceptTouchEvent(ev);
    }
    @Override
    public boolean onTouchEvent(MotionEvent event) {
        viewDragHelper.processTouchEvent(event);
        return true;
    }





  