package com.ahrtolia.entity;

public class Order {
    private int id;
    private User user;
    private Product product;
    private int count;
    private float cost;
    private String creatTime;
    private String serialNumber;
    private UserAddress userAddresses;
    private int state;

    public UserAddress getUserAddresses() {
        return userAddresses;
    }

    public void setUserAddresses(UserAddress userAddresses) {
        this.userAddresses = userAddresses;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }



    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public float getCost() {
        return cost;
    }

    public void setCost(float cost) {
        this.cost = cost;
    }

    public String getCreatTime() {
        return creatTime;
    }

    public void setCreatTime(String creatTime) {
        this.creatTime = creatTime;
    }

    public String getSerialNumber() {
        return serialNumber;
    }

    public void setSerialNumber(String serialNumber) {
        this.serialNumber = serialNumber;
    }
}
