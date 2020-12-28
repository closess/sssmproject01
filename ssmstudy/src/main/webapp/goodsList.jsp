<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>网上商城</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<%@ include file="header.jsp"%>
<script type="text/javascript">
	$(function() {
		$(".nav").hover(function() {
			$(this).find(".leftNav").show();
		}, function() {
			$(this).find(".leftNav").hide();
		});
		$(".leftNav ul li").hover(function() {
			$(this).find(".fj").addClass("nuw");
			$(this).find(".zj").show();
		}, function() {
			$(this).find(".fj").removeClass("nuw");
			$(this).find(".zj").hide();
		});
	})
</script>
<title>网上商城</title>
</head>
<body>
	<!--Begin Header Begin-->

	<div id="searchBar">
		<%@ include file="searchBar.jsp"%>
	</div>
	<!--End Header End-->
	<!--Begin Menu Begin-->
	<div class="menu_bg">
		<div class="menu">
			<!--Begin 商品分类详情 Begin-->
			<%@ include file="categoryBar.jsp"%>
			<!--End 商品分类详情 End-->
		</div>
	</div>
	<!--End Menu End-->
	<div class="i_bg">
		<!--Begin 筛选条件 Begin-->
		<!--End 筛选条件 End-->
		<div class="content mar_20">
			<div id="favoriteList"></div>
			<div class="l_list">
				<div class="list_t">
					<span class="fr">共发现${productCount}件</span>
				</div>
				<div class="list_c">
					<ul class="cate_list">
						<c:forEach items="${type1Product}" var="product">
							<li>
								<div class="name">
									<a href="#">${product.name}</a>
								</div>
								<div class="price">
									<font>￥<span>${product.price}</span></font> &nbsp;
								</div>
								<div class="img">
									<a
<%--										href="main_getProductDetaile.action?productId=${product.id}">//商品详情暂时使用用户的代替--%>
										href="/user/getProductDetaile.action?productId=${product.id}">
										<img src="images/${product.fileName} " width="185"
										height="155" />
									</a>
								</div>
								<div class="carbg">
		                            <a href="javascript:void(0);" class="ss" >收藏</a>
		                            <a href="/user/getProductDetaile.action?productId=${product.id}" class="j_car" >加入购物车</a>
                        		</div>
							</li>
						</c:forEach>
					</ul>
					<%@ include file="pagerBar.jsp"%>
				</div>
				<div class="pages">
					<c:if test="${st eq 's'}">
					<a href="/main/searchProduct.action?page=1" class="p_pre">首页</a>
					<a href="/main/searchProduct.action?page=${page-1}" class="p_pre">上一页</a>
					<a href="javascript:void(0);" class="cur">${page }/${allPageCount }</a>
					<a href="/main/searchProduct.action?page=${page+1}" class="p_pre">下一页</a>
					<a href="/main/searchProduct.action?page=${allPageCount }" class="p_pre">尾页</a>
					</c:if>
					<c:if test="${st eq 't'}">
						<a href="/main/getProductByType1.action?page=1" class="p_pre">首页</a>
						<a href="/main/getProductByType1.action?page=${page-1}" class="p_pre">上一页</a>
						<a href="javascript:void(0);" class="cur">${page }/${allPageCount }</a>
						<a href="/main/getProductByType1.action?page=${page+1}" class="p_pre">下一页</a>
						<a href="/main/getProductByType1.action?page=${allPageCount }" class="p_pre">尾页</a>
					</c:if>
					<c:if test="${st eq 't2'}">
						<a href="/main/getProductByType2.action?page=1" class="p_pre">首页</a>
						<a href="/main/getProductByType2.action?page=${page-1}" class="p_pre">上一页</a>
						<a href="javascript:void(0);" class="cur">${page }/${allPageCount }</a>
						<a href="/main/getProductByType2.action?page=${page+1}" class="p_pre">下一页</a>
						<a href="/main/getProductByType2.action?page=${allPageCount }" class="p_pre">尾页</a>
					</c:if>
					<c:if test="${st eq 't3'}">
						<a href="/main/getProductByType3.action?page=1" class="p_pre">首页</a>
						<a href="main_queryProductByType3.action?page=${page-1}" class="p_pre">上一页</a>
						<a href="javascript:void(0);" class="cur">${page }/${allPageCount }</a>
						<a href="/main/getProductByType3.action?page=${page+1}" class="p_pre">下一页</a>
						<a href="/main/getProductByType3.action?page=${allPageCount }" class="p_pre">尾页</a>
					</c:if>
				</div>
			</div>
		</div>
		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>
