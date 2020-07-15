<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="nav">
	<div class="nav_t">全部商品分类</div>
	<div class="leftNav none" style="display: none;">
		<ul>
			<%-----------------------------------type1开始-------------------------------------------%>
			<c:forEach items="${type1List}" var="type1">
				<li>
					<div class="fj">
						<span class="n_img"><span></span> <img src="" /></span> <span
							class="fl">${type1.name }</span>
					</div>
					<div class="zj">
						<div class="zj_l">
								<%-----------------------------------type2开始-------------------------------------------%>
							<c:forEach items="${type1.type2 }" var="type2">
							<div class="zj_l_c">
								<h2>
									<a
											href="/main/getProductByType2.action?type2Id=${type2.id }&page=1">${type2.name}
									</a>
								</h2>
									<%-----------------------------------type2结束-------------------------------------------%>
								<c:forEach items="${type2.type3}" var="type3">
									<a href="/main/getProductByType3.action?type3Id=${type3.id }&page=1">${type3.name }</a>|
								</c:forEach>
									<%-----------------------------------type3结束-------------------------------------------%>



								</c:forEach>
							</div>


						</div>
					</div>
				</li>
			</c:forEach>
		</ul>
	</div>
</div>
<ul class="menu_r">
	<li><a href="main.jsp">首页</a></li>
	<c:forEach items="${type1List }" var="type1" begin="0" end="7">
	<li><a
			href="/main/getProductByType1.action?type1Id=${type1.id }&page=1">${type1.name
			}</a></li>
</c:forEach>
</ul>
<div class="m_ad">优惠信息</div>