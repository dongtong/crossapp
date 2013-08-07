//= require jquery
//= require jquery_ujs   
//= require bootstrap.min              
$(function(){
	$('.bs-docs-carousel-example').carousel();
	$('.app-block .thumbnail').tooltip();
	$('.download-app').click(function(){
		window.self.location = $(this).data('downloadlink').url;
	})
});

