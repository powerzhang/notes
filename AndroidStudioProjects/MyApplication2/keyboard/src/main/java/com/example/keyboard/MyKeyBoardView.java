package com.example.keyboard;

import android.content.Context;
import android.inputmethodservice.Keyboard;
import android.inputmethodservice.KeyboardView;
import android.util.AttributeSet;

public class MyKeyBoardView extends KeyboardView {

    private Keyboard wordKeyboard;

    public MyKeyBoardView(Context context, AttributeSet attrs) {
        this(context, attrs,0);
    }

    public MyKeyBoardView(Context context, AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr,0);
    }

    public MyKeyBoardView(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        wordKeyboard = new Keyboard(context, R.xml.custom_keyboard);
        //将你的keyboard与keyboardview绑定起来
        this.setKeyboard(wordKeyboard);
    }
}
