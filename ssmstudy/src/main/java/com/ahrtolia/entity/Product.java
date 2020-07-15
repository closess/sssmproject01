package com.ahrtolia.entity;

import java.util.Set;

public class Product {
    private int id;
    private String name;
    private String description;
    private float price;
    private int count;
    private Type1 type1;
    private Type2 type2;
    private Type3 type3;
    private String fileName;
    private int isDelete;
    private Set<Order> orders;

    public Set<Order> getOrders() {
        return orders;
    }

    public void setOrders(Set<Order> orders) {
        this.orders = orders;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public Type1 getType1() {
        return type1;
    }

    public void setType1(Type1 type1) {
        this.type1 = type1;
    }

    public Type2 getType2() {
        return type2;
    }

    public void setType2(Type2 type2) {
        this.type2 = type2;
    }

    public Type3 getType3() {
        return type3;
    }

    public void setType3(Type3 type3) {
        this.type3 = type3;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public int getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(int isDelete) {
        this.isDelete = isDelete;
    }
}
