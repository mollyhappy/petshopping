
$(function(){
	$('.images .item:first, .control span:first, .title p:first').addClass('active');
	var index = 0,
		len = $('.images .item').length;
		autoPlay = function(){
			$('.images .item').eq(index++).addClass('active').siblings('.item').removeClass('active');
			$('.title p').eq(index-1).addClass('active').siblings('p').removeClass('active');
			$('.control span').eq(index-1).addClass('active').siblings('span').removeClass('active');
			if(index == len){index = 0;}
		},
		loop = setInterval(autoPlay,3000);
	$('.control span').hover(function(){
		index = $(this).index();
		autoPlay();
		clearInterval(loop);
	},function(){
		loop = setInterval(autoPlay,3000);
	})
})