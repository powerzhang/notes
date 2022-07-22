package com.example.commentkeyboard2;

import androidx.appcompat.app.AppCompatActivity;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.Gravity;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ToggleButton;

public class MainActivity extends AppCompatActivity {
    //记录原始窗口高度
    private int mWindowHeight = 0;
    private int keyboardHeight = 0;
    private Dialog mDialog;
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
                    keyboardHeight= mWindowHeight - height;
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
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        EditText editText = (EditText) findViewById(R.id.comment_edit_input);
        CommentKeyBoard commentzone = (CommentKeyBoard) findViewById(R.id.commentlibarytips);
        ToggleButton toggleButton = (ToggleButton) findViewById(R.id.soft_keyboard_conntroller);
        toggleButton.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                InputMethodManager imm = (InputMethodManager) getSystemService(Activity.INPUT_METHOD_SERVICE);

                if (imm.isActive()) {
                    commentzone.setVisibility(View.GONE);
                    imm.toggleSoftInput(InputMethodManager.HIDE_IMPLICIT_ONLY, 0); // 隐藏
                } else {
                    commentzone.setVisibility(View.VISIBLE);
                    imm.toggleSoftInput(0, InputMethodManager.HIDE_IMPLICIT_ONLY); // 显示
                }

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
}