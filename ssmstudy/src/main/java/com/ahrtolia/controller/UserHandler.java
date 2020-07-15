package com.ahrtolia.controller;

import com.ahrtolia.entity.Order;
import com.ahrtolia.entity.Product;
import com.ahrtolia.entity.User;
import com.ahrtolia.entity.UserAddress;
import com.ahrtolia.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;


@Controller
@RequestMapping("/user")
public class UserHandler {
    @Autowired
    private UserService userService;
    @RequestMapping("/login.action")
    public String login(User user, HttpSession session ,HttpServletResponse response) throws IOException {
        User user1 = userService.login(user);
        if(user1 != null){
            session.setAttribute("user",user1);
            List<Order> orderCar = userService.getMyProductCar(user1.getId());
            session.setAttribute("orders",orderCar);
            int money = 0;
            for(Order o : orderCar){
                money +=  o.getCount()*o.getProduct().getPrice();
            }
            session.setAttribute("money",money);
            response.sendRedirect("/main/getAll.action");

        }
        return "login";
    }
    @RequestMapping("/logout.action")
    public String logout(HttpSession session){
        session.invalidate();
        return "main";
    }
    @RequestMapping("/register.action")
    public String register(User user){
        userService.register(user);
        return "login";
    }
    @RequestMapping("/getMyHasPayedOrder.action")
    public ModelAndView getMyHasPayedOrder(HttpSession session,int page){
        User user = (User) session.getAttribute("user");
        ModelAndView modelAndView = new ModelAndView();
        if(page < 1){
            page = 1;
        }else if(page > userService.getMyHasPayedOrderCount(user,8) && userService.getMyHasPayedOrderCount(user,8) != 0){
            page = userService.getMyHasPayedOrderCount(user,8);
        }
        List<Order> payOrder = userService.getMyHasPayedOrder(user,page,8);
        int money = 0;
        for(Order o : payOrder){
            money +=  o.getCount()*o.getProduct().getPrice();
        }
        session.setAttribute("payMoney",money);
       int allPageCount = userService.getMyHasPayedOrderCount(user,8);
        modelAndView.addObject("payOrder",payOrder);
        modelAndView.addObject("page",page);
        modelAndView.addObject("allPageCount",allPageCount);
       modelAndView.setViewName("orderList");
        return modelAndView;
    }
    @RequestMapping("/getProductDetaile.action")
    public  ModelAndView getProductDetaile(int productId,HttpSession session){
            ModelAndView modelAndView = new ModelAndView();
            Product product = userService.getProductDetaile(productId);
            session.setAttribute("product",product);
            modelAndView.setViewName("productDeatil");
            return  modelAndView;
    }
    @RequestMapping("/addToCar.action")
    public ModelAndView addToCar(int productId,int count,HttpSession session){
       int userId = ((User)session.getAttribute("user")).getId();
        ModelAndView modelAndView = new ModelAndView();
        userService.addToCar(userId,productId,count,0);
        //更新一下session中的购物车
        List<Order> orderCar = userService.getMyProductCar(userId);
        session.setAttribute("orders",orderCar);
        int money = 0;
        for(Order o : orderCar){
            money +=  o.getCount()*o.getProduct().getPrice();
        }
        session.setAttribute("money",money);
        modelAndView.setViewName("productDeatil");
        return modelAndView;
    }
    @RequestMapping("/deleteCarProduct.action")
    public ModelAndView deleteCarProduct(int orderId,HttpSession session){
        int userId = ((User)session.getAttribute("user")).getId();
        ModelAndView modelAndView = new ModelAndView();
       userService.deleteCarProduct(orderId);
        //更新一下session中的购物车
        List<Order> orderCar = userService.getMyProductCar(userId);
        session.setAttribute("orders",orderCar);
        int money = 0;
        for(Order o : orderCar){
            money +=  o.getCount()*o.getProduct().getPrice();
        }
        session.setAttribute("money",money);
        modelAndView.setViewName("main");
        return  modelAndView;
    }
    @RequestMapping("/updateOrderCount.action")
    public void updateOrderCount(int orderId,int count){
        userService.updateOrderCount(orderId,count);
    }
    @RequestMapping("/getUserAddress.action")
    public ModelAndView getUserAddress(HttpSession session){
        int userId = ((User)session.getAttribute("user")).getId();
        ModelAndView modelAndView = new ModelAndView();
        List<UserAddress> list = userService.getUserAddress(userId);
        modelAndView.addObject("address",list);
        modelAndView.setViewName("settlement2");
        return  modelAndView;
    }
    @RequestMapping("/updateOrderAddress.action")
    public ModelAndView updateOrder(int addressId,HttpSession session,int zfmoney){
        int userId = ((User)session.getAttribute("user")).getId();
        ModelAndView modelAndView = new ModelAndView();
        List<Order> orderCar = userService.getMyProductCar(userId);
        int userOrderFirstId = orderCar.get(0).getId();
        userService.updateOrder(addressId,userId);
        String serialNumber = userService.getSerialNumber(userOrderFirstId);
        String address = userService.getOrderAddress(addressId);
        modelAndView.addObject("newAddress",address);
        modelAndView.addObject("serialNumber",serialNumber);
        modelAndView.addObject("zfmoney",zfmoney);
        modelAndView.setViewName("settlement3");
        //维持下session里面关于购物车的信息
        List<Order> orderCar1 = userService.getMyProductCar(userId);
        session.setAttribute("orders",orderCar1);
        int money = 0;
        for(Order o : orderCar1){
            money +=  o.getCount()*o.getProduct().getPrice();
        }
        session.setAttribute("money",money);
        return modelAndView;
    }
    @RequestMapping("addNewUserAddress.action")
    public ModelAndView addNewUserAddress(String newAddress,HttpSession session,int zfmoney){
        int userId = ((User)session.getAttribute("user")).getId();
        ModelAndView modelAndView = new ModelAndView();
        //增加新地址
        userService.addAddress(userId,newAddress);
        //新地址增加完后获取新地址的id
        int addressId = userService.getNewAddressId(userId,newAddress);
        List<Order> orderCar = userService.getMyProductCar(userId);
        int userOrderFirstId = orderCar.get(0).getId();
        updateOrder(addressId,session,zfmoney);
        String serialNumber = userService.getSerialNumber(userOrderFirstId);
        modelAndView.setViewName("settlement3");
        modelAndView.addObject("zfmoney",zfmoney);
        modelAndView.addObject("serialNumber",serialNumber);
        modelAndView.addObject("newAddress",newAddress);
        //维持下session里面关于购物车的信息
        List<Order> orderCar1 = userService.getMyProductCar(userId);
        session.setAttribute("orders",orderCar1);
        int money = 0;
        for(Order o : orderCar1){
            money +=  o.getCount()*o.getProduct().getPrice();
        }
        session.setAttribute("money",money);
        return modelAndView;
    }
   }
