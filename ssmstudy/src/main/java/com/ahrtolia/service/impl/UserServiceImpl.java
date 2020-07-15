package com.ahrtolia.service.impl;

import com.ahrtolia.dao.UserMapper;
import com.ahrtolia.entity.Order;
import com.ahrtolia.entity.Product;
import com.ahrtolia.entity.User;
import com.ahrtolia.entity.UserAddress;
import com.ahrtolia.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Override
    public User login(User user) {
        return userMapper.login(user);
    }

    @Override
    public void register(User user) {
        userMapper.register(user);
    }

    @Override
    public List<Order> getMyHasPayedOrder(User user,int page,int limit) {
        int begin = (page - 1)*limit;
        return userMapper.getMyHasPayedOrder(user.getId(),begin,limit);
    }

    @Override
    public int getMyHasPayedOrderCount(User user,int limit) {
        int count = userMapper.getMyHasPayedOrderCount(user.getId());
        int pageCount = count/limit;
        if(count%limit != 0){
            pageCount += 1;
        }
        return pageCount;
    }

    @Override
    public Product getProductDetaile(int productId) {
        return userMapper.getProductDetaile(productId);
    }

    @Override
    public void addToCar(int userId, int productId, int count, int state) {
        userMapper.addToCar(userId,productId,count,state);
    }

    @Override
    public List<Order> getMyProductCar(int userId) {
        List<Order> list = userMapper.getMyProductCar(userId);
        return list;
    }

    @Override
    public void deleteCarProduct(int orderId) {
        userMapper.deleteCarProduct(orderId);
    }

    @Override
    public void updateOrderCount(int orderId, int count) {
        userMapper.updateOrderCount(orderId,count);
    }

    @Override
    public List<UserAddress> getUserAddress(int userId) {
        return userMapper.getUserAddress(userId);
    }

    @Override
    public void updateOrder(int addressId, int userId) {
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String createTime = simpleDateFormat.format(date);
        userMapper.updateOrder(createTime,getSerialNumber(),addressId,userId);
    }

    @Override
    public void addAddress(int userId, String newAddress) {
        userMapper.addAddress(userId,newAddress);
    }

    @Override
    public int getNewAddressId(int userId, String newAddress) {
        return userMapper.getNewAddressId(userId,newAddress);
    }

    @Override
    public String getSerialNumber(int orderId) {
        return userMapper.getSerialNumber(orderId);
    }

    @Override
    public String getOrderAddress(int addressId) {
        return userMapper.getOrderAddress(addressId);
    }

    public String getSerialNumber(){
        String str ="A1B2C3D4E5F6G7HI8G3K23L9MN0O214PQ2R5ST6UV32W3XY2Z";
        StringBuffer ddh = new StringBuffer();
        int num = 0;
        for(int i = 0;i<10;i++){
            num = (int) (Math.random()*str.length());
            ddh.append(str.charAt(num));
        }
        return ddh.toString();
    }
}
