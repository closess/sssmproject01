$(function(){
	$(".c_h span").click(function(){
		var value = $(this).text();
		$("#s_city_title").text(value);
		$(".c_h span").removeClass("c_check");
		$(this).addClass("c_check");
	});
});