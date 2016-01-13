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

$(function() {
  $('a[href*=#]:not([href=#])').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html,body').animate({
          scrollTop: target.offset().top
        }, 1000);
        return false;
      }
    }
  });
});

$('body').scrollspy({ target: '#navbar' })