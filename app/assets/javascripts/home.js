$(document).ready(function(){

	$('#sign_link').on('click', function(){
		$('#shade').show();
		$('#sign').show();
		
	});

	$('#log_link').on('click', function(){
		$('#shade').show();
		$('#log').show();
	})

	$('.p').on('click',function(){
		$('#shade').hide();
		$('#log').hide();
		$('#sign').hide();
		
	})

// 	$('#p').on('click', function(){
// 		$('#shade').hide();
// 		$('#sign').hide();
// })


	
});