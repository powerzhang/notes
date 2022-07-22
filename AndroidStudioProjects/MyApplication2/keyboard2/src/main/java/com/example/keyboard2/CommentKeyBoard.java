package com.example.keyboard2;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

import androidx.annotation.Nullable;

public class CommentKeyBoard extends LinearLayout {
    private static final String TAG ="CommentKeyBoard";
    private Context mContext;
    private EditText editText;

    public CommentKeyBoard(Context context) {
        this(context,null);
    }

    public CommentKeyBoard(Context context, @Nullable AttributeSet attrs) {
        this(context, attrs,0);
    }

    public CommentKeyBoard(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr,0);
    }

    public CommentKeyBoard(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        mContext = context;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        editText = (EditText) findViewById(R.id.comment_edit_input);
        checkKeyboardHeight(editText);
    }

    private void checkKeyboardHeight(final View chatRootLayout) {
        chatRootLayout.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {
            @Override

            public void onGlobalLayout() {
                Rect r = new Rect();

                chatRootLayout.getWindowVisibleDisplayFrame(r);

                final int screenHeight = chatRootLayout.getRootView().getHeight();

                Log.d(TAG, "screenHeight: " + screenHeight);

                final int keyboardHeight = screenHeight - (r.bottom);

//                if (keyboardHeight > KeyboardHeightLimit) {
                Log.d(TAG, "keyboardHeight: " + keyboardHeight);
                onKeyboardHeightChanged(keyboardHeight);
//                }

            }

        });

    }

    public void onKeyboardHeightChanged(int height) {
        int orientation = getOrientation();
        String orientationLabel = orientation == Configuration.ORIENTATION_PORTRAIT ? "portrait" : "landscape";
        Log.i(TAG, "onKeyboardHeightChanged in pixels: " + height + " " + orientationLabel);

        TextView tv = (TextView)findViewById(R.id.test);
        tv.setText(Integer.toString(height) + " " + orientationLabel);
        Log.d(TAG,"height:"+height);
        // color the keyboard height view, this will remain visible when you close the keyboard
        if (height > 0) {
            View view = findViewById(R.id.test);
            LayoutParams params = (LayoutParams)view .getLayoutParams();
            params.height = height;
            view.setLayoutParams(params);
        }
    }

    public Dialog creteDialog(){
        Dialog dialog = new Dialog(mContext, R.style.Widget_AppCompat_ActionBar);
        dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
        dialog.setContentView(R.layout.comment_keyboard);
        Window window = dialog.getWindow();
        if(window !=null){
            window.setGravity(Gravity.TOP|Gravity.START);
            window.setType(WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY);
            window.setFlags(WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE);
            WindowManager.LayoutParams lp = window.getAttributes();
            lp.x =0;
            Rect r = new Rect();

            editText.getWindowVisibleDisplayFrame(r);
            int height = editText.getRootView().getHeight();
            int keyboardHeight = height - r.bottom;
            Log.d(TAG,"keyboardHeight:"+keyboardHeight +",r:"+r +",height:"+height);
            lp.y=r.bottom;
            lp.width= WindowManager.LayoutParams.MATCH_PARENT;
            lp.height= WindowManager.LayoutParams.WRAP_CONTENT;
            window.setAttributes(lp);

        }
        return dialog;

    }
}
