(function() {
  var hideWork, scroller, showWork, slide_fixed;

  $(document).ready(function() {
    $('.works').mixItUp();
    $('.filter_web').click();
    scroller();
    $("#logo").click(function() {
      return $('body').animate({
        scrollTop: 0
      }, 600);
    });
    $('.cd-nav-trigger').click(function() {
      return $('body').toggleClass('hidden');
    });
    showWork();
    return hideWork();
  });

  $(window).resize(function() {
    return slide_fixed();
  });

  scroller = function() {
    return $(window).scroll(function() {
      var gate, h;
      h = $('body').scrollTop();
      gate = $('#header').height() - $('nav').height();
      if (h >= gate) {
        $('nav').addClass('over');
        if ($('#skills').offset().top - $('nav').height() <= h) {
          $('nav li a').removeClass();
          $('nav li:eq(0) a').addClass('active');
        }
        if ($('#about').offset().top - $('nav').height() <= h) {
          $('nav li a').removeClass();
          $('nav li:eq(1) a').addClass('active');
        }
        if ($('#portfolio').offset().top - $('nav').height() <= h) {
          $('nav li a').removeClass();
          $('nav li:eq(2) a').addClass('active');
        }
        if ($('body').height() - $(window).height() === h) {
          $('nav li a').removeClass();
          return $('nav li:eq(3) a').addClass('active');
        }
      } else {
        return $('nav').attr('class', '');
      }
    });
  };

  showWork = function() {
    return $('.open').click(function() {
      var main_slide, showTarget, slide_x;
      showTarget = $(this).find('a').attr('target');
      $.get(showTarget, function(data) {
        return $('#work_file .container').html(data);
      });
      slide_x = parseInt($('#work_file').css('width'));
      main_slide = -slide_x;
      $('body').addClass('hidden');
      $('#preloader').css({
        'display': 'block'
      });
      $('#work_file').attr('class', 'isShow');
      $('#main_content').animate({
        'margin-left': main_slide
      }, 600);
      return $('#work_file').animate({
        'right': 0
      }, 600);
    });
  };

  hideWork = function() {
    $('#preloader').click(function() {
      var main_slide, slide_x;
      slide_x = parseInt($('#work_file').css('width'));
      main_slide = -slide_x;
      $('#work_file').animate({
        'right': main_slide
      }, 600).attr('class', 'notShow');
      $('#main_content').animate({
        'margin-left': 0
      }, 600);
      $('#preloader').css({
        'display': 'none'
      });
      return $('body').removeClass('hidden');
    });
    return $('#close_work').click(function() {
      var main_slide, slide_x;
      slide_x = parseInt($('#work_file').css('width'));
      main_slide = -slide_x;
      $('#work_file').animate({
        'right': main_slide
      }, 600).attr('class', 'notShow');
      $('#main_content').animate({
        'margin-left': 0
      }, 600);
      $('#preloader').css({
        'display': 'none'
      });
      return $('body').removeClass('hidden');
    });
  };

  slide_fixed = function() {
    var main_slide, slide_x;
    slide_x = parseInt($('#work_file').css('width'));
    main_slide = -slide_x;
    if ($('#work_file').attr('class') === "notShow") {
      return $('#work_file').css({
        'right': main_slide
      });
    }
  };

}).call(this);
