<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <%@ include file="header.jsp" %>
    <script type="text/javascript">
    	$(function(){
    		$(".nav").hover(function(){						   
				$(this).find(".leftNav").show();
			},function(){
				$(this).find(".leftNav").hide();
			});
			$(".leftNav ul li").hover(
				function(){
					$(this).find(".fj").addClass("nuw");
					$(this).find(".zj").show();
				}
				,
				function(){
					$(this).find(".fj").removeClass("nuw");
					$(this).find(".zj").hide();
				}
			);
    	})
    </script>
    <title>易买网</title>
</head>
<body>
<!--Begin Header Begin-->
<div id="searchBar">
    <%@ include file="searchBar.jsp" %>
</div>
<!--End Header End-->
<!--Begin Menu Begin-->
<div class="menu_bg">
    <div class="menu">
        <!--Begin 商品分类详情 Begin-->
        <%@ include file="categoryBar.jsp" %>
        <!--End 商品分类详情 End-->
    </div>
</div>
<!--End Menu End-->
<div class="i_bg">
    <div id="settlement">

			<div class="content mar_20">
			    <img src="../images/img3.jpg"/>
			</div>
			<div class="content mar_20">
			    <!--Begin 银行卡支付 Begin -->
			    <div class="warning">
			        <table border="0" style="width:1000px; text-align:center;" cellspacing="0" cellpadding="0">
			            <tr height="35">
			                <td style="font-size:18px;">
			                    感谢您在本店购物！您的订单已提交成功，请记住您的订单号: <font color="#ff4e00">${serialNumber }</font>
			                </td>
			            </tr>
			            <tr>
			                <td style="font-size:14px; font-family:'宋体'; padding:10px 0 20px 0; border-bottom:1px solid #b6b6b6;">
			                    您选定的配送方式为: <font color="#ff4e00">申通快递</font>；    您选定的支付方式为: <font
			                        color="#ff4e00">支付宝</font>；    您的应付款金额为: <font color="#ff4e00">￥${zfmoney }</font>
			                </td>
			            </tr>
			            <tr>
			                <td style="padding:20px 0 30px 0; font-family:'宋体';">
			                    收款人信息：全称 ${user.name } ；地址 ${newAddress} ； <br/>
			                </td>
			            </tr>
			            <tr>
			                <td>
			                    <a href="easybuy_queryAll">首页</a>     <a href="userInfo.jsp">用户中心</a>
			                </td>
			            </tr>
			        </table>
			    </div>
			</div>
    </div>
    <script>
        $(function(){
           // settlement1();
        });
    </script>
    <%@ include file="footer.jsp" %>
</div>
</body>
</html>
