/**
 * Created by bdqn on 2016/5/3.
 */
/**
 * 商品详情页添加到购物车
 */
// function addCart() {
// 	alert(123);
// 	// 获取到当前的商品id和购买商品的数量
// 	var entityId = $("input[name='entityId']").val();
// 	var quantity = $("input[name='quantity']").val();
// 	// 跳转到后台取出商品   main_addToCar.action?productId=${product.id}
// 	window.location.href = "main_addToCar.action?productId="
// 			+entityId+ "&count="+quantity;
//
// }
// function addOrder() {
// 	alert("123");
// }
/**
 * 商品列表页添加到购物车
 * 
 * @param entityId
 *            商品id
 * @param quantity
 */
function  addCount(obj,orderId,productPrice) {
    var index = $(".car_btn_2").index(obj);
    var count = $("input[name= 'quantit']").eq(index).val();
    var  m = $(".allMoney").html();
    var allMoney = parseInt(m)+ parseInt(productPrice);
    $(".allMoney").html(allMoney);
    $(".carMoney").html(allMoney);
    count  =  ++count;
    var money = count*productPrice;
        $("input[name='quantit']").eq(index).val(count);
    $(".qprice").eq(index).html(money);
    $(".count").eq(index).html(count);
    // $(".car_ipt").eq(index).val(count);
    $.ajax({
        "url" : "/user/updateOrderCount.action",
        "data" : "orderId="+orderId+"&count="+count,
        "type" : "post",
        "dataType" : "text"
    })
}
function downCount(obj,orderId,productPrice) {
    var index = $(".car_btn_1").index(obj);
    var count = $("input[name= 'quantit']").eq(index).val();
    var  m = $(".carMoney").html();
    //js的等于和java中的一样是双等
    if(count == 0){
       return false;
    }
    count  =  --count;
    var allMoney = m-productPrice;
    $(".allMoney").html(allMoney);
    $(".carMoney").html(allMoney);
    var money = count*productPrice;
   $(".qprice").eq(index).html(money);
    $(".count").eq(index).html(count);
    $("input[name='quantit']").eq(index).val(count);
    // $(".car_ipt").eq(index).val(count);
    $.ajax({
        "url" : "/user/updateOrderCount.action",
        "data" : "orderId="+orderId+"&count="+count,
        "type" : "post",
        "dataType" : "text"
    })
}
function addCartByParam(entityId, quantity) {
	// 添加到购物车
	$.ajax({
		"url" : "cart_add",
		"type" : "post",
		"data" : "entityId=" + entityId + "&quantity=" + quantity,
		"dataType" : "json",
		success : function(jsonStr) {

			var j = JSON.stringify(jsonStr);
			alert(j);
			window.location.href = "http://localhost:8989/eb/toSettlement.jsp?product="
					+ jsonStr;

			// var result = eval("(" + jsonStr + ")");
			// // 状态判断
			// if (result.status == 1) {
			// showMessage("操作成功");
			// refreshCart();
			// } else {
			// showMessage(result.message);
			// }
		}
	})
}
/**
 * 刷新购物车 searchBar DIV
 */
function refreshCart() {
	$.ajax({
		url : contextPath + "/Cart",
		method : "post",
		data : {
			action : "refreshCart"
		},
		success : function(jsonStr) {
			$("#searchBar").html(jsonStr);
		}
	})
}
/**
 * 结算 加载购物车列表
 */
function settlement1() {
	$.ajax({
		url : contextPath + "/Cart",
		method : "post",
		data : {
			action : "settlement1"
		},
		success : function(jsonStr) {
			refreshCart();
			$("#settlement").html(jsonStr);
		}
	});
}
/**
 * 结算  进行购物车校验
 */
function settlement2() {
	//判断购物车是否有东西
	var index = $(".goods").size();
//	alert(index);
	if(index != 0){
		//有东西   
		window.location.href = "http://localhost:8989/eb/cart_addOrder";//后台判断是否登录
	}else{
		//无东西
		alert("您好，购物车为空，请购物！");
		window.location.href = "http://localhost:8989/eb/easybuy_queryAll";//主页
		
	}
	
	
//	$.ajax({
//		"url" : "cart_ajaxLogin",
//		"type" : "post",
//		"data" : "",
//		"dataType" : "text",
//		success : function(jsonStr) {
//			
//			window.location.href = "";
//
//		}
//	})
	
	
	
//	$.ajax({
//		url : contextPath + "/Cart",
//		method : "post",
//		data : {
//			action : "settlement2"
//		},
//		success : function(jsonStr) {
//			$("#settlement").html(jsonStr);
//		}
//	});
}
/**
 * 结算 订单支付提醒
 */
function settlement3() {
	// 判断地址 redio 类型的选择框可以选择标签后：checcked  表示被选择的那个input输入框
	var addressId = $("input[name='selectAddress']:checked").val();
	var newAddress = $("input[name='address']").val();
	var newRemark = $("input[name='remark']").val();
	var zfmoney = $(".zfmoney").html();
	if (addressId == "" || addressId == null) {
		alert("请选择收货地址");
		return;
	} else if (addressId == "-1") {
		if (newAddress == "" || newAddress == null) {
			alert("请填写新的收货地址");
			return;
		} else if (newAddress.length <= 2 || newAddress.length >= 50) {
			alert("收货地址为2-50个字符");
			return;
		}
	}
	//新地址需要存储进表里
	if (addressId == "-1"){
		window.location.href = "/user/addNewUserAddress.action?newAddress="+newAddress+"&zfmoney="+zfmoney;
	}
	// //不是新地址
	if (addressId > 0){
		window.location.href = "/user/updateOrderAddress.action?addressId="+addressId+"&zfmoney="+zfmoney;
	}
	
}
/**
 * 商品详情页的 数量加
 * 
 * @param obj
 * @param entityId
 */
function addUpdate(entityId, stock) {
	// 获取当前输入框的商品数量
	var quantity = $("input[name='quantity']").val();
	if (stock <= quantity) {
		alert("商品数量不足");
		return false;
	}
	quantity = ++quantity;
	// 将数据写入到原有的输入框内
	$("input[name='quantity']").val(quantity);
}
function buy() {
	var temp = $(".carMoney").html();
	if(temp == "0"){
		alert("您的购物车里面没有商品！");
		return false;
	}
	if(temp != "0"){
		window.location.href="http://localhost:8989/toSettlement.jsp";
	}
}
/**
 * 减去 数量减
 * 
 * @param obj
 * @param entityId
 */
function jianUpdate(entityId) {
	var quantity = $("input[name='quantity']").val();
	quantity = --quantity;
	if (quantity == 0) {
		quantity = 1;
	}
	// 将数据写入到原有的输入框内
	$("input[name='quantity']").val(quantity);

}

function addQuantity(obj,price,entityId, stock) {
	//获取被点击的事件在数组之中的小标  obj代表当前的点击事件的input输入框
	var index = $(".car_btn_2").index(obj);
//	alert(index);
//	var index2 = $(".qprice").index();
//	alert(index2);
	// 获取当前输入框的商品数量
	var quantity = $("input[name='quantit']").eq(index).val();
	if (stock <= quantity) {
		alert("商品数量不足");
		return false;
	}
	quantity = ++quantity;
	// 将数据写入到原有的输入框内
	$("input[name='quantit']").eq(index).val(quantity);
//	var prices = quantity*price;
//	$(".qprice").eq(index).html("￥"+prices); 
	
	//将数据持久化到购物车之中
	$.ajax({
		"url" : "cart_addQuantity", 
		"type" : "post",
		"data" : "quantity="+quantity+"&entityId="+entityId,
		"dataType" : "text",
		success : function(jsonStr) {
			//获取到总价格  写入到相应的地方
//			$("#totleprice").html("￥"+jsonStr); 
		}
	});
	window.location.href = "http://localhost:8989/eb/toSettlement.jsp";
}
/**
 * 减去 数量减
 * 
 * @param obj
 * @param entityId
 */
function subQuantity(obj,price,entityId) {
	//获取被点击的事件在数组之中的小标  obj代表当前的点击事件的input输入框
	var index = $(".car_btn_1").index(obj);
//	alert(index);
	var quantity = $("input[name='quantit']").eq(index).val();
	quantity = --quantity;
	if (quantity == 0) {
		return false;
	}
	// 将数据写入到原有的输入框内
	$("input[name='quantit']").eq(index).val(quantity);
	//改变小计的价格 
//	var prices = quantity*price;
//	$(".qprice").eq(index).html("￥"+prices); 
	
	//将数据持久化到购物车之中 
	$.ajax({
		"url" : "cart_addQuantity",
		"type" : "post",
		"data" : "quantity="+quantity+"&entityId="+entityId,
		"dataType" : "text",
		success : function(jsonStr) {
			//获取到总价格  写入到相应的地方
//			$("#totleprice").html("￥"+jsonStr); 
		}
	});
	window.location.href = "http://localhost:8989/eb/toSettlement.jsp";
}

/**
 * 删除购物车
 * 
 * @param entityId
 */
function removeCart(obj,entityId) {
	//删除当前的购物车里的东西
//	var obje = $(obj).parent().parent();
//	obje.remove();
	//同时删除购物车的对应商品
	$.ajax({
		"url" : "cart_deleteCart",
		"type" : "post",
		"data" : "entityId="+entityId,
		"dataType" : "text",
		success : function(jsonStr) {
			//获取到总价格  写入到相应的地方
//			$("#totleprice").html("￥"+jsonStr); 
		}
	});
	//转发到购物车页面   再次取出更新后的值
	window.location.href = "http://localhost:8989/eb/toSettlement.jsp";
}


/**
 * 修改购物车列表
 * 
 * @param entityId
 * @param quantity
 */
function modifyCart(entityId, quantity) {
	$.ajax({
		"url" : "cart_",
		"type" : "post",
		"data" : "entityId=" + entityId + "&quantity=" + quantity,
		"dataType" : "text",
		success : function(jsonStr) {
		
			
		}
	});
}
/**
 * 清空购物车
 */
function clearCart() {
	$.ajax({
		url : contextPath + "/Cart",
		method : "post",
		data : {
			action : "clearCart"
		},
		success : function(jsonStr) {
			$("#settlement").html(jsonStr);
			showMessage("操作成功");
		}
	});
}

/**
 * 喜欢的列表
 */
function favoriteList() {
	$.ajax({
		url : contextPath + "/Favorite",
		method : "post",
		data : {
			action : "toFavoriteList"
		},
		success : function(jsonStr) {
			$("#favoriteList").html(jsonStr);
		}
	});
}
/**
 * 添加到收藏列表
 * 
 * @param productId
 */
function addFavorite(productId) {
	$.ajax({
		url : contextPath + "/Favorite",
		method : "post",
		data : {
			action : "addFavorite",
			id : productId
		},
		success : function(jsonStr) {
			favoriteList();
		}
	});
}