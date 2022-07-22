package com.example.recyclerviewdemo;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import java.util.ArrayList;
import java.util.List;

/** @Author: Messi Mei @Date: 2020/8/24 13:46 @Email: 709909986@qq.com */
public class Card2Adapter extends RecyclerView.Adapter<Card2Adapter.MyViewHolder> {
    private List<Card> list = new ArrayList<>();

    public void setList(List<Card> list) {
        this.list = list; //一定要记得加，否则视图不会更新！！！
        notifyDataSetChanged();
    }

    @NonNull
    @Override
    public MyViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.layout_rv_card, parent, false);
        return new MyViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull MyViewHolder holder, int position) {
        holder.tvId.setText(list.get(position).getId());
        holder.tvState.setText(list.get(position).getState());
    }

    @Override
    public int getItemCount() {
        return list == null ? 0 : list.size();
    }

    static class MyViewHolder extends RecyclerView.ViewHolder {
        private TextView tvId, tvState;
        MyViewHolder(@NonNull View itemView) {
            super(itemView);
            tvId = itemView.findViewById(R.id.tv_id);
            tvState = itemView.findViewById(R.id.tv_state);
        }
    }
}
