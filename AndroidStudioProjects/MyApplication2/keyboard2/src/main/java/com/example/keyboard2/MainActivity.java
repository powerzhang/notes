/*
 * This file is part of Siebe Projects samples.
 *
 * Siebe Projects samples is free software: you can redistribute it and/or modify
 * it under the terms of the Lesser GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Siebe Projects samples is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * Lesser GNU General Public License for more details.
 *
 * You should have received a copy of the Lesser GNU General Public License
 * along with Siebe Projects samples.  If not, see <http://www.gnu.org/licenses/>.
 */

package com.example.keyboard2;

import android.app.Dialog;
import android.graphics.Rect;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.Gravity;
import android.view.Window;
import android.view.WindowManager;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.TextView;
import android.view.View;
import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.content.res.Configuration;
import android.widget.RelativeLayout;
import android.widget.ToggleButton;

import androidx.appcompat.app.AppCompatActivity;

/**
 * MainActivity that initializes the keyboardheight provider and observer. 
 */
public final class MainActivity extends AppCompatActivity implements KeyboardHeightObserver {

    private final static String TAG = "sample_MainActivity";
    private KeyboardHeightProvider keyboardHeightProvider;
    private int mY;
    private Dialog dialog;

    /**
     * {@inheritDoc}
     */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity);

        keyboardHeightProvider = new KeyboardHeightProvider(this);

        // make sure to start the keyboard height provider after the onResume
        // of this activity. This is because a popup window must be initialised
        // and attached to the activity root view. 
        View view = findViewById(R.id.activitylayout);
        ToggleButton toggleButton = (ToggleButton)findViewById(R.id.show_hide);
        toggleButton.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                if(isChecked){
                    keyboardHeightProvider.show();
                    if(dialog !=null) {
                        dialog.show();
                    }
                }else {
                    keyboardHeightProvider.hide();
                    if(dialog !=null){
                        dialog.dismiss();
                    }
                }
            }
        });


        view.post(new Runnable() {
                public void run() {
                    keyboardHeightProvider.start();
                }
            });
        view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() {
            @Override
            public void onLayoutChange(View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
                Log.d(TAG,"onLayoutChange bottom:"+bottom +",oldBottom:"+oldBottom);
            }
        });

    }



    /**
     * {@inheritDoc}
     */
    @Override
    public void onPause() {
        super.onPause();
        keyboardHeightProvider.setKeyboardHeightObserver(null);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public void onResume() {
        super.onResume();
        keyboardHeightProvider.setKeyboardHeightObserver(this);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public void onDestroy() {
        super.onDestroy();
        keyboardHeightProvider.close();
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public void onKeyboardHeightChanged(int height, int orientation) {
        String orientationLabel = orientation == Configuration.ORIENTATION_PORTRAIT ? "portrait" : "landscape";
        Log.i(TAG, "onKeyboardHeightChanged in pixels: " + height + " " + orientationLabel);
//        mY = height;
        TextView tv = (TextView)findViewById(R.id.height_text);
        tv.setText(Integer.toString(height) + " " + orientationLabel);
        Log.d(TAG,"height:"+height);
        // color the keyboard height view, this will remain visible when you close the keyboard
        if (height > 0) {
            View view = findViewById(R.id.keyboard);
            mY=/*getWindowManager().getDefaultDisplay().getHeight()-*/height;
            if(dialog==null) {
                dialog = creteDialog(mY);
            }
            RelativeLayout.LayoutParams params = (RelativeLayout.LayoutParams)view .getLayoutParams();
            params.height = height;
            view.setLayoutParams(params);
        }
    }

    public Dialog creteDialog(int keyboardHeight){
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
            Log.d(TAG,"creteDialog keyboardHeight:"+keyboardHeight );
            lp.y=keyboardHeight;
            lp.width= WindowManager.LayoutParams.MATCH_PARENT;
            lp.height= WindowManager.LayoutParams.WRAP_CONTENT;
            window.setAttributes(lp);
//            dialog.show();

        }
        return dialog;

    }
}
