package com.example.commentkeyboard;

import androidx.appcompat.app.AppCompatActivity;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.util.Log;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ToggleButton;

public class MainActivity extends AppCompatActivity {
    private static final String TAG ="MainActivity";
    private Dialog mDialog;
    private ToggleButton toggleButton;
    private int keyboardHeight;
    //记录原始窗口高度
    private int mWindowHeight = 0;

    private ViewTreeObserver.OnGlobalLayoutListener mGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() {
        @Override
        public void onGlobalLayout() {
            Rect r = new Rect();
            //获取当前窗口实际的可见区域
            getWindow().getDecorView().getWindowVisibleDisplayFrame(r);
            int height = r.height();
            if (mWindowHeight == 0) {
                //一般情况下，这是原始的窗口高度
                mWindowHeight = height;
            } else {
                if (mWindowHeight != height) {
                    //两次窗口高度相减，就是软键盘高度
                    int softKeyboardHeight =keyboardHeight= mWindowHeight - height;
                    System.out.println("SoftKeyboard height = " + keyboardHeight);
                    if(mDialog == null){
                        mDialog = creteDialog();
                        if(!mDialog.isShowing()){
                            mDialog.show();
                        }
                    }
                }
            }
        }
    };
//    private MainActivity mainActivity;

    @Override
    protected void onDestroy() {
        super.onDestroy();
        getWindow().getDecorView().getViewTreeObserver().removeOnGlobalLayoutListener(mGlobalLayoutListener);

    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        toggleButton = (ToggleButton) findViewById(R.id.soft_keyboard_conntroller);
        getWindow().getDecorView().getViewTreeObserver().addOnGlobalLayoutListener(mGlobalLayoutListener);
//        mainActivity = this;
//        checkKeyboardHeight(editText);
        toggleButton.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
//                CommentKeyBoard view = (CommentKeyBoard)LayoutInflater.from(mainActivity).inflate(R.layout.comment_keyboard, null);
//                view.toggle();
                InputMethodManager imm = (InputMethodManager) getSystemService(Activity.INPUT_METHOD_SERVICE);

                if (imm.isActive()) {
                    imm.toggleSoftInput(InputMethodManager.HIDE_IMPLICIT_ONLY, 0); // 隐藏
                } else {
                    imm.toggleSoftInput(0, InputMethodManager.HIDE_IMPLICIT_ONLY); // 显示
                }
//                if(isChecked){
//                    show();
//                }else {
//                    hide();
//                }
//                Log.d(TAG, "dialog:" + mDialog + ",imm.isActive():" + imm.isActive());
                if(mDialog!=null) {
                    if (mDialog.isShowing()) {
                        mDialog.dismiss();
                        mDialog = null;
                    } else {
                        mDialog.show();
                    }
                }
            }
        });


    }
    private void checkKeyboardHeight(final View chatRootLayout) {
        chatRootLayout.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {
            @Override

            public void onGlobalLayout() {
                Rect r = new Rect();

                chatRootLayout.getWindowVisibleDisplayFrame(r);

                final int screenHeight = chatRootLayout.getRootView().getHeight();

                Log.d(TAG, "screenHeight: " + screenHeight);

                keyboardHeight = screenHeight - (r.bottom);

//                if (keyboardHeight > KeyboardHeightLimit) {
                Log.d(TAG, "keyboardHeight: " + keyboardHeight);
//                onKeyboardHeightChanged(keyboardHeight);
//                }

            }

        });

    }

    public Dialog creteDialog(){
        Dialog dialog = new Dialog(this, R.style.Widget_AppCompat_ActionBar);
        dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
        dialog.setContentView(R.layout.comment_keyboard);
        Window window = dialog.getWindow();
        if(window !=null){
            window.setGravity(Gravity.TOP|Gravity.START);
            window.setType(WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY);
            window.setFlags(WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE);
            WindowManager.LayoutParams lp = window.getAttributes();
            lp.x =0;
//            Rect r = new Rect();
//
//            editText.getWindowVisibleDisplayFrame(r);
//            int height = editText.getRootView().getHeight();
//            int keyboardHeight = height - r.bottom;
//            Log.d(TAG,"keyboardHeight:"+keyboardHeight +",r:"+r +",height:"+height);
            System.out.println("SoftKeyboard A height = " + keyboardHeight);
            lp.y=836;
            lp.width= WindowManager.LayoutParams.MATCH_PARENT;
            lp.height= WindowManager.LayoutParams.WRAP_CONTENT;
            window.setAttributes(lp);
//            dialog.show();

        }
        return dialog;

    }

    public void show(){
        InputMethodManager imm = (InputMethodManager) this.getSystemService(Context.INPUT_METHOD_SERVICE);
//        CommentKeyBoard view = (CommentKeyBoard)LayoutInflater.from(mainActivity).inflate(R.layout.comment_keyboard, null);

        EditText editText = (EditText) findViewById(R.id.comment_edit_input);
        Log.d(TAG,"editText :"+editText);
        if (editText != null && imm != null) {
            editText.setFocusable(true);
            editText.requestFocus();
            imm.showSoftInput(editText, 0);
//            handleOnGlobalLayout();
//             imm.showSoftInput(view, InputMethodManager.SHOW_IMPLICIT); // 或者第二个参数传InputMethodManager.SHOW_IMPLICIT
        }

    }
    public void hide(){
        InputMethodManager imm = (InputMethodManager) this.getSystemService(Context.INPUT_METHOD_SERVICE);
        EditText editText = (EditText) findViewById(R.id.comment_edit_input);
        if (editText != null && imm != null){
            imm.hideSoftInputFromWindow(editText.getWindowToken(), 0);
            // imm.hideSoftInputFromWindow(view.getWindowToken(), InputMethodManager.HIDE_IMPLICIT_ONLY); // 或者第二个参数传InputMethodManager.HIDE_IMPLICIT_ONLY
        }

    }



}