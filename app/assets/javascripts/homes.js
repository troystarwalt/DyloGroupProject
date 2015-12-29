$(document).ready(function(){
	$(".projecttext").hover(function(){
		$(this).animate({fontSize: "3em"});
	}, function(){
		$(this).animate({fontSize: "2em"});
	});
});

$(document).ready(function(){
	$("#catchphrase1").fadeIn(1500);
});