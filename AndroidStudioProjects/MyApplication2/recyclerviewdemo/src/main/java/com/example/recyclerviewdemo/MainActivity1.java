package com.example.recyclerviewdemo;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.os.Bundle;
import android.widget.CompoundButton;
import android.widget.ToggleButton;

import java.util.ArrayList;
import java.util.List;

public class MainActivity1 extends AppCompatActivity {
    private RecyclerView recyclerView;
    private Card2Adapter cardAdapter;
    private List<Card> list;
    private LinearLayoutManager linearLayoutManager;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        ToggleButton button = (ToggleButton)findViewById(R.id.test_layout);
        initData();
        initView();
        button.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                if(isChecked){
                    linearLayoutManager = new GridLayoutManager(MainActivity1.this, 5, RecyclerView.VERTICAL, false);

                }else {
                    linearLayoutManager = new LinearLayoutManager(MainActivity1.this);
                    linearLayoutManager.setOrientation(LinearLayoutManager.HORIZONTAL);


                }
                recyclerView.setLayoutManager(linearLayoutManager);
                recyclerView.setAdapter(cardAdapter);
            }
        });
    }

    private void initData() {
        list = new ArrayList<>();
        for (int i = 0; i < 100; i++) {
            Card card = new Card();
            card.setId(i+1+"");
            if (i%2 == 1){
                card.setState("在线");
            }else{
                card.setState("离线");
            }
            list.add(card);
        }
    }
    private void initView() {
        recyclerView = findViewById(R.id.rv_card);
        cardAdapter = new Card2Adapter();
        cardAdapter.setList(list);

//        gridLayoutManager = new GridLayoutManager(this, 5, RecyclerView.VERTICAL, false);
//        gridLayoutManager.get
        linearLayoutManager = new LinearLayoutManager(this);
        linearLayoutManager.setOrientation(LinearLayoutManager.HORIZONTAL);
        recyclerView.setLayoutManager(linearLayoutManager);
        recyclerView.setAdapter(cardAdapter);
    }
}