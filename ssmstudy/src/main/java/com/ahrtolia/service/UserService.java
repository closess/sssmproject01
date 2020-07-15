package com.ahrtolia.service;

import com.ahrtolia.entity.Order;
import com.ahrtolia.entity.Product;
import com.ahrtolia.entity.User;
import com.ahrtolia.entity.UserAddress;

import java.util.List;

public interface UserService {
    public User login(User user);
    public void register(User user);
    public List<Order> getMyHasPayedOrder(User user,int page,int limit);
    public  int getMyHasPayedOrderCount(User user,int limit);
    public Product getProductDetaile(int productId);
    public void addToCar(int userId,int productId,int count,int state);
    public List<Order> getMyProductCar(int userId);
    public  void deleteCarProduct(int orderId);
    public void updateOrderCount(int orderId,int count);
    public List<UserAddress> getUserAddress(int userId);
    public void updateOrder(int addressId,int userId);
    public void addAddress(int userId,String newAddress);
    public int getNewAddressId(int userId,String newAddress);
    public String getSerialNumber(int orderId);
    public String getOrderAddress(int addressId);
}
