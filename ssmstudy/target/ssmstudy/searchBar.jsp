<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script charset="UTF-8" type="text/javascript" language="javascript" src="../js/cart.js"></script>
    <script type="application/javascript" src="../js/cart.js"></script>
</head>
<body>
<div class="top">
    <div class="logo">
        <a href="../main.jsp"><img src="../images/logo.png" width="202" height="50"></a>
    </div>
    <div class="search">
        <form action="/main/searchProduct.action?page=1" method="post">
            <input type="text"  name="keyWord" class="s_ipt">
            <input type="submit" value="搜索" class="s_btn">
        </form>
    </div>
    <div class="i_car">
        <div class="car_t">
            购物车 [
            <span>
                <c:if test="${sessionScope.orders!=null && sessionScope.orders.size()>0}">
                    ${sessionScope.orders.size()}
                </c:if>
                <c:if test="${sessionScope.orders==null || sessionScope.orders.size()<=0}">
                    空
                </c:if>
            </span>]
        </div>
        <div class="car_bg">
            <!--Begin 购物车未登录 Begin-->

                <div class="un_login">我的购物车</div>

            <!--End 购物车未登录 End-->
            <!--Begin 购物车已登录 Begin-->
            <ul class="cars">
                <c:forEach items="${sessionScope.orders}" var="order">
                        <li>
                            <div class="img"><a href="goodsList_getProductById?id=${order.product.id}"><img src="../images/${order.product.fileName }" width="58" height="58" /></a></div>
                            <div class="name"><a href="goodsList_getProductById?id=${order.product.id}">${order.product.name}</a></div>
                            <div class="price"><font color="#ff4e00">￥${order.product.price}</font> X<span class="count">${order.count}</span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="/user/deleteCarProduct.action?orderId=${order.id}">删除</a></div>
                        </li>
                </c:forEach>
            </ul>
            <div class="price_sum">共计&nbsp;<font color="#ff4e00">￥</font><span class="carMoney">${sessionScope.money}</span></div>
           <%--  <c:if test="${sessionScope.user==null}">
                <div class="price_a"><a href="login.jsp">去登录</a></div>
            </c:if> --%>
            <%-- <c:if test="${sessionScope.user!=null}"> --%>
                <div class="price_a"><a href="javascript:void(0);" onclick="buy()">去结算</a></div>
           <%--  </c:if> --%>
            <!--End 购物车已登录 End-->
        </div>
    </div>
</div>

</body>

</html>

