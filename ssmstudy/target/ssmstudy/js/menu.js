$(function(){
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
	)
})