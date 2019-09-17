$(document).ready(function($){
  /*$('.ipdate').on('focusin', function(event) {
    event.preventDefault();
    $(this).attr('type', 'date');
  });
  $('.ipdate').on('focusout', function(event) {
    event.preventDefault();
    $(this).attr('type', 'text');
  });*/

  if($('header.top').length){
    $(window).scroll(function(){
      /*var anchor = $('header.top').offset().top;*/
      var anchor = $('header.top').offset().top;
      /*console.log(anchor);*/
      if(anchor >= 130){
          $('header.top').addClass('cmenu');
          $('.cate-list').removeClass('on');
      }
      else{
          $('header.top').removeClass('cmenu');
      }
    });
  }
  
  $('.p-aside-list li').on('click', function(event){
    /*event.preventDefault();*/
    $(this).children('input').prop( "checked", true );
    $(this).toggleClass('active');
  });

  new WOW().init();
  if($('.to-top').length){
    $('.to-top').on('click',function(event){
        event.preventDefault();
    $('body, html').stop().animate({scrollTop:0},800)});
    $(window).scroll(function(){
        var anchor=$('.to-top').offset().top;
        if(anchor>1000){
            $('.to-top').css('opacity','1')
        }
        else{
            $('.to-top').css('opacity','0')
        }
    });
  }

  $("#menu").mmenu({
    "slidingSubmenus": false,
    "extensions": [
          "pagedim-black",
          "shadow-panels"
       ]
      // options
      /*"offCanvas": {
              "position": "right"
          }*/
    }, {
        // configuration
        clone: true,
        classNames: {
            fixedElements: {
               fixed: "fix",
               sticky: "stick"
            }
         }
  });

  //Tooltip
  $('[data-toggle="tooltip"]').tooltip();

   /* nivoSlider */ 
  $("#slider").nivoSlider({ 
    effect: 'random',                 // Specify sets like: 'fold,fade,sliceDown' 
    slices: 15,                       // For slice animations 
    boxCols: 8,                       // For box animations 
    boxRows: 4,                       // For box animations 
    animSpeed: 1300,                   // Slide transition speed 
    pauseTime: 5000,                  // How long each slide will show 
    startSlide: 0,                    // Set starting Slide (0 index) 
    directionNav: false,               // Next & Prev navigation 
    controlNav: false,                 // 1,2,3... navigation 
    controlNavThumbs: false,          // Use thumbnails for Control Nav 
    pauseOnHover: true,               // Stop animation while hovering 
    manualAdvance: false,             // Force manual transitions 
    randomStart: true,               // Start on a random slide 
    beforeChange: function(){},       // Triggers before a slide transition 
    afterChange: function(){},        // Triggers after a slide transition 
    slideshowEnd: function(){},       // Triggers after all slides have been shown 
    lastSlide: function(){},          // Triggers when last slide is shown 
    afterLoad: function(){}           // Triggers when slider has loaded 
  });

  $('.tes-slider').slick({
    dots: false,
    arrows: true,
    infinite: true,
    speed: 300,
    autoplay: true,
    nextArrow: '<button type="button" class="slick-next"><img src="images/right1.png" alt="" title=""></button>',
    prevArrow: '<button type="button" class="slick-prev"><img src="images/left1.png" alt="" title=""></button>',
  });
  

  $(".button").on("click", function() {
    var $button = $(this);
    var oldValue = $button.parent().find("input").val();
    if ($button.text() == "+") {
      var newVal = parseFloat(oldValue) + 1;
    } else {
      // Don't allow decrementing below zero
      if (oldValue > 0) {
        var newVal = parseFloat(oldValue) - 1;
      } else {
        newVal = 0;
      }
    }
    $button.parent().find("input").val(newVal);
  });
  $('.nav-link .custom-control.custom-radio').on('click', function(e){
    e.preventDefault();
    /*var a = $(this).children('.custom-control-input').prop('value');*/
    $(this).children('.custom-control-input').prop('checked',true);
  });
  $('.p-aside-price-value').on('click', function(){
    $(this).next('.p-aside-plist').slideToggle('fast');
  });
  $('.p-aside-plist li').on('click', function(event) {
    event.preventDefault();
    var a = $(this).text();
    console.log(a);
    $('.p-aside-price-value input').val(a);
    $('.p-aside-plist').slideUp('fast');
  });
  $('.pdetail-color li:not(:first-child)').on('click', function(event) {
    event.preventDefault();
    console.log('dsfdfds');
    $('.pdetail-color li').removeClass('active');
    $(this).addClass('active');
  });

  /* cart-modal */
  $('.cart-modal-close').on('click', function(event) {
    event.preventDefault();
    $('.cart-modal').fadeOut();
    $('.over').fadeOut();
  });

  $('.top-cart-btn').on('click', function(event) {
    event.preventDefault();
    $('.cart-modal').fadeIn();
    $('.over').fadeIn();
  });
  $('.over').on('click', function(event) {
    event.preventDefault();
    $(this).fadeOut();
    $('.cart-modal').fadeOut();
  });

  if($("[data-fancybox]").length){
    $("[data-fancybox]").fancybox({});
    if($('.linkyoutube').length) {
      var url = $('.linkyoutube').attr('href').replace('watch?v=', 'embed/');
      $('.linkyoutube').attr('href', url);
    }
    
  }
  /*stt = $('.cart-modal').css('display');
  console.log(stt);
  if(stt === 'block') {
  $(document).click(function() {
      console.log(stt);
      if( this.class != 'cart-modal' && stt === 'block') {
        $(".cart-modal").fadeOut();
      }  
    });
  }*/
});
/*
http://jsfiddle.net/LCB5W/
https://stackoverflow.com/questions/152975/how-do-i-detect-a-click-outside-an-element*/