$(function(){

    var win = $(window);
    var vh = 0;
    $('#header').addClass('load');
    $('#wrap.sub').find('#header').addClass('bgbg');
    $(window).load(function(){
        $('#header').addClass('load');
        $('#wrap.sub').find('#header').addClass('bgbg');
    });

    $('.winH').height(win.height());
    $(window).on('load resize',function(){
        $('.winH').height($(this).height());
        vh = $(window).height();
        if( $(this).width() < 1200 ){
            $('#left_menuWrap').removeClass('load');
            $('.mobileTab').removeClass('active');
        }else{
            $('#left_menuWrap').addClass('load');
        }
    });

    /* gnb */
    $('#header .gnbWrap li').mouseenter(function(){
        $('#header .gnbWrap li ul').show();
        $('#header .dep2bg').show();
    });
    $('#gnb').mouseleave(function(){
        $('#header .gnbWrap li ul').hide();
        $('#header .dep2bg').hide();
    });

    $('.btn_all_menu').click(function(e){
        e.preventDefault();
        if( $(this).hasClass('active') ){
            $('.allMenuWrap ').fadeOut(300);
            //	$('.allMenuWrap ').removeClass('show');
            $('#header').removeClass('active');
            $('.btn_all_menu').removeClass('active');
            $('.allMenu .hasDep2 .dep2').slideUp(250);
        }else{
            $('.allMenuWrap').fadeIn(300);
            //	$('.allMenuWrap ').addClass('show');
            $('#header').addClass('active');
            $('.btn_all_menu').addClass('active');
        }
    });


    $('.allMenu > li > span').click(function(){
        if( $(this).parent().find('ul').css('display') == 'block' ){
            $(this).parent().find('ul').hide();
        }else {
            $('.allMenu li ul').hide();
            $(this).parent().find('ul').show();
        }
    });

    $(window).on('load resize', function(){
        if(window.innerWidth > 1100){
            $('#header .allMenuWrap .allMenu ul').show();
        }else{
            $('#header .allMenuWrap .allMenu ul').hide();
        }
    });




    $(window).on('load resize',function(){
        // Hide Header on on scroll down
        var didScroll = false;
        var lastScrollTop = 0;
        var delta = 5;
        var navbarHeight = $('#header').outerHeight();

        $(window).scroll(function(event){

            //$('#header').addClass('scrolled');
            didScroll = true;
        });


        setInterval(function() {
            if (didScroll) {
                hasScrolled();
                didScroll = false;
            }
        }, 0);




        function hasScrolled() {
            var st = $(this).scrollTop();

            // Make sure they scroll more than delta
            if(Math.abs(lastScrollTop - st) <= delta)
                return;

            // If they scrolled down and are past the navbar, add class .nav-up.
            // This is necessary so you never see what is "behind" the navbar.

            //console.log(st-lastScrollTop);


            if (st > lastScrollTop && st > navbarHeight){
                // Scroll Down
                if($('#header').hasClass('active')){

                }else{
                    $('#header').removeClass('nav-up').addClass('nav-down');
                }

            } else {
                // Scroll Up
                if(st + $(window).height() < $(document).height()) {
                    $('#header').removeClass('nav-down').addClass('nav-up');
                }
            }

            lastScrollTop = st;
        }

        if(window.innerWidth > 1400){
            $('#header .gnbWrap #gnb > li > .dep2').removeAttr('style');
        }
    });

    $(window).on('load scroll', function(){
        $('#header').addClass('load');
        //$('#wrap.sub').find('#header').addClass('bgbg');
        if($('.subVisual ').length > 0 ){
            if($(window).scrollTop() >=  ($('.subVisual ').outerHeight() - $('#header').outerHeight())){
                //$('#header').addClass('bgbg');
            }else{
                //$('#header').removeClass('bgbg');
            }
        }else{
            if($(window).scrollTop() >=  ($(window).height() - $('#header').outerHeight())){
                $('#header').addClass('bgbg');
                $('#gnb').mouseleave(function(){
                    $('#header').addClass('bgbg');
                });
            }else{
                /* gnb */
                $('#gnb').mouseenter(function(){
                    $('#header').addClass('bgbg');
                });
                $('#gnb').mouseleave(function(){
                    $('#header').removeClass('bgbg');
                });
                // if($('#gnb').is(':hover')){
                //     $('#header').addClass('bgbg');
                // }else{
                //     $('#header').removeClass('bgbg');
                // }
            }
        }


    });




    $('#scrTop').click(function(e){
        //e.preventDefault();
        $('html, body').animate({scrollTop: '0'}, 650, 'easeInCubic');
    });

    $(window).on('load resize', function(){

    });

    /* 諛섏쓳�� �뚯씠釉� �ㅼ��댄봽�꾩씠肄� �몄텧 & 鍮꾨끂異�  */
    $(window).on('load resize',function(){
        $('.tblWrap').each(function(){
            if($(this).find('table').width() > $(this).width()){
                $(this).addClass('swipe');
            }else{
                $(this).removeClass('swipe');
            }
        });

        $('.swipeWrap').each(function(){
            if($(this).find('.swipe_item').width() > $(this).width()){
                $(this).addClass('swipe');
            }else{
                $(this).removeClass('swipe');
            }
        });
    });

    $('.tblWrap, .swipeWrap').on({ 'touchstart' : function () {
            $(this).addClass('active');
        }, 'touchend' : function () {
            $(this).removeClass('active');
        }
    });


    /* gogo js */

    $.fn.isInViewport = function() {
        var elementTop = $(this).offset().top;
        var elementBottom = elementTop + $(this).outerHeight();

        var viewportTop = $(window).scrollTop();
        var viewportBottom = viewportTop + $(window).height();

        return (elementBottom > viewportTop + (vh/18))  && (elementTop < viewportBottom - (vh/18)) ;
    };

    $.fn.isInViewport2 = function() {
        var elementTop = $(this).offset().top;
        var elementBottom = elementTop + $(this).outerHeight();

        var viewportTop = $(window).scrollTop();
        var viewportBottom = viewportTop + $(window).height();

        return elementBottom > viewportTop && elementTop < viewportBottom;
    };



    $(window).on('load resize scroll',function(){


        $('.subVisual, .subTit, .subContTit, .solutionSecTit, .solutionSecTit + p, .mc3_slide_sec1 ').each(function(){
            if($(this).isInViewport()){
                $(this).addClass('on');
            }
        });


        $('.aniBox').each(function(){
            if($(this).isInViewport()){
                $(this).addClass('gogo');
            }
        });

        $('.aniBox2').each(function(){
            if($(this).isInViewport2()){
                $(this).addClass('gogo');
            }
        });
    });





    /* elements height �숈씪�섍쾶 */

    function height_set(){
        var heights = $(".sameHeight").map(function (){
            return $(this).height();
        }).get();
        maxHeight = Math.max.apply(null, heights);
        $(".sameHeight").each(function(){
            $(this).height(maxHeight);
        });
    }
    height_set();
    $(window).on('load resize',function(){
        $(".sameHeight").removeAttr('style');
        height_set();
    });



    /* toggle list */
    var $tgbTit = $('.toggleBoard_item_tit');
    $tgbTit.on('click',function(){
        if($(this).parent().hasClass('on')){
            $(this).parent().removeClass('on');
            $(this).next().slideUp(400);
        }else{
            $(this).parent().addClass('on').siblings().removeClass('on').find('.toggleBoard_item_cont').slideUp(400);
            $(this).next().slideDown(400);
        }
    });

    /* file select */
    $('.selectFile').on('click',function(e){
        e.preventDefault();
        $(this).parent().find('input[type=file]').trigger('click');
    });
    $('.uploadFile input[type=file]').on('change',function(){
        var $value = $(this).val();

        if(!$value == ''){
            $(this).next('.input_ty1').val($value);
        }else{
            $(this).next('.input_ty1').val('�좏깮�� �뚯씪 �놁쓬');
        }

    });



    /* tab */
    $('.tabList li a').on('click',function(e){
        if(!$(this).parents('.tabList').hasClass('hasLink')){
            e.preventDefault();
            var idx = $(this).parent().index();
            //console.log(idx);
            $(this).parent().addClass('active').siblings().removeClass('active');
            $(this).parents('.tabList').next('.tabContWrap').find('.tabCont').eq(idx).addClass('active').siblings().removeClass('active');

            $(".sameHeight").removeAttr('style');
            height_set();
        }

    });



    $window = $(window);
    $slick_slider = $('.cert_List > ul');
    //$slick_slider2 = $('.tech2_list');
    $('.cert_List > ul').slick({
        slidesToShow: 5,
        slidesToScroll: 1,
        autoplay:true,
        infinite: true,
        responsive: [
            {
                breakpoint: 1100,
                settings: {
                    slidesToShow: 3,
                }
            },
            {
                breakpoint: 767,
                settings: {
                    slidesToShow: 2,
                }
            },
        ],
    });
    //$slick_slider.slick(settings);
    /*
        $window.on('load resize', function() {
          if (window.innerWidth > 767) {
            if ($slick_slider.hasClass('slick-initialized'))
        //	  $slick_slider.slick('unslick');
            return
          }
          if ( ! $slick_slider.hasClass('slick-initialized'))
            return $slick_slider.slick(settings);
        });
    */
});