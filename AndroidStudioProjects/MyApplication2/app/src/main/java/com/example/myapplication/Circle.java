package com.example.myapplication;

/**
 可以添加多种圆的属性，可以设置半径、颜色等，这里仅设置半径
 */
public class Circle {
    //圆的半径
//    private int radius;
    private int alpha;

//    public Circle(int radius) {
//        this.radius = radius;
//    }
//    public int getRadius() {
//        return radius;
//    }
//    public void setRadius(int radius) {
//        this.radius = radius;
//    }


    public Circle(int alpha) {
        this.alpha = alpha;
    }

    public int getAlpha() {
        return alpha;
    }

    public void setAlpha(int alpha) {
        this.alpha = alpha;
    }
}