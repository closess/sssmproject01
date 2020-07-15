<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ include file="header.jsp"%>
</head>
<body>
	<%@ include file="searchBar.jsp"%>
	<!--End Header End-->
	<div class="i_bg bg_color">
		<!--Begin 用户中心 Begin -->
		<div class="m_content">
			<%@ include file="leftBar.jsp"%>
			<div class="m_right" id="content">
				<p></p>
				<p></p>
				<div class="mem_tit">订单列表</div>
				<table border="0" class="order_tab"
					style="width: 930px; text-align: center; margin-bottom: 30px;"
					cellspacing="0" cellpadding="0">
					<tbody>

						<tr class="td_bg">
							<td>用户名:${user.name}</td>
							<td>金额：￥${payMoney}</td>
						</tr>
						<tr>
						</tr>
						<tr>
							<td colspan="4">
								<table border="0" class="order_tab"
									style="width: 930px; text-align: center; margin-bottom: 30px;"
									cellspacing="0" cellpadding="0">
									<tbody>
										<tr>
											<td width="20%">商品名称</td>
											<td width="20%">商品图片</td>
											<td width="20%">数量</td>
											<td width="20%">单价</td>
											<td width="20%">总金额</td>
										</tr>
										<c:forEach items="${payOrder}" var="order">
										<tr>
												<td>${order.product.name}</td>
												<td><a
														href="../user/getProductDetaile.action?productId=${order.product.id}"> <img src="../images/${order.product.fileName}" width="50"
																			  height="50"></a></td>
												<td>${order.count}</td>
												<td>${order.product.price}</td>
												<td>${order.product.price*order.count}</td>
										</tr>
										</c:forEach>
									</tbody>
								</table>
							</td>
						</tr>

					</tbody>
				</table>
				<div class="pages">
				<a href="/user/getMyHasPayedOrder.action?page=1" class="p_pre" >首页</a>
				<a href="/user/getMyHasPayedOrder.action?page=${page-1}" class="p_pre">上一页</a>
				<a href="javascript:void(0);" class="cur">${page }/${allPageCount }</a>
				<a href="/user/getMyHasPayedOrder.action?page=${page+1}" class="p_pre">下一页</a>
				<a href="/user/getMyHasPayedOrder.action?page=${allPageCount }" class="p_pre">尾页</a>
				</div>
				<%@ include file="pagerBar.jsp"%>
			</div>
		</div>
		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>


