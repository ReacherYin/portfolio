$(document).ready(->
	$('.works').mixItUp()
	$('.filter_web').click()
	scroller()	
	$("#logo").click(->
		$('body').animate({ scrollTop :0 },600)
	)
	$('.cd-nav-trigger').click(->
		$('body').toggleClass('hidden')
	)
	showWork()
	hideWork()
)
$(window).resize(->
	slide_fixed()
)

scroller =->
	$(window).scroll(->
		h = $('body').scrollTop()
		gate = $('#header').height() - $('nav').height()
		# console.log h + " " +$('body').height()+ " " + $(window).height()
		if h >= gate 
			$('nav').addClass('over')
			if $('#skills').offset().top - $('nav').height() <= h
				$('nav li a').removeClass()
				$('nav li:eq(0) a').addClass('active')
			if $('#about').offset().top - $('nav').height() <= h
				$('nav li a').removeClass()
				$('nav li:eq(1) a').addClass('active')
			if $('#portfolio').offset().top - $('nav').height() <= h
				$('nav li a').removeClass()
				$('nav li:eq(2) a').addClass('active')
			if $('body').height()-$(window).height() is h
				$('nav li a').removeClass()
				$('nav li:eq(3) a').addClass('active')
		else 
			$('nav').attr('class','')
	)

showWork = ->
	$('.open').click(->
		showTarget = $(this).find('a').attr('target')
		$.get(showTarget,(data)->
			$('#work_file .container').html(data)
		)
		slide_x = parseInt($('#work_file').css('width'))
		main_slide = -slide_x
		$('body').addClass('hidden')
		$('#preloader').css({'display':'block'})
		$('#work_file').attr('class','isShow')
		$('#main_content').animate({'margin-left':main_slide},600)
		$('#work_file').animate({'right': 0},600)
	)
hideWork = ->
	$('#preloader').click(->
		slide_x = parseInt($('#work_file').css('width'))
		main_slide = -slide_x
		$('#work_file').animate({'right': main_slide},600).attr('class','notShow')
		$('#main_content').animate({'margin-left':0},600)
		$('#preloader').css({'display':'none'})
		$('body').removeClass('hidden')	
	)
	$('#close_work').click(->
		slide_x = parseInt($('#work_file').css('width'))
		main_slide = -slide_x
		$('#work_file').animate({'right': main_slide},600).attr('class','notShow')
		$('#main_content').animate({'margin-left':0},600)
		$('#preloader').css({'display':'none'})
		$('body').removeClass('hidden')	
	)

slide_fixed =->
	slide_x = parseInt($('#work_file').css('width'))
	main_slide = -slide_x
	if $('#work_file').attr('class') is "notShow" then $('#work_file').css({'right': main_slide})
