<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<div class="m_left">
    <div class="left_n">管理中心</div>
    <div class="left_m">
        <div class="left_m_t t_bg1">订单中心</div>
        <ul>
            <li><a href="/user/getMyHasPayedOrder.action?page=1" >我的订单</a></li>
        </ul>
    </div>
    <div class="left_m">
        <div class="left_m_t t_bg2">会员中心</div>
        <ul>
            <li><a href="../userInfo.jsp" >用户信息</a></li>
        </ul>
    </div>
    <div class="left_m">
        <div class="left_m_t t_bg2">资讯中心</div>
        <ul>
            <li><a href="/main/getAllNews.action?page=1" >资讯列表</a></li>
        </ul>
    </div>
</div>