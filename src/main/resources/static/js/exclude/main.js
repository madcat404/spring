/* *******************************************************
 * filename : main.js
 * description : 메인에만 사용되는 JS
 * date : 2020-11-25
******************************************************** */

$(document).ready(function  () {
	/* ************************
	* Func : fullpage 레이아웃 사용시
	* fullpage.js, checkOffset(), toFit() 필요
	************************ */
	if ($.exists('#fullpage')) {
		var $fullPage = $("#fullpage");
		var $fullPageSection = $fullPage.children(".section");
		if ( detectBrowser() === "ie") {
			var scroll_speed = 700;
		}else {
			var scroll_speed = 800;
		}
		$fullPage.fullpage({
			css3: true,
			fitToSection: false,
			navigation: true,
			scrollBar:false,
			scrollingSpeed:scroll_speed,
			navigationPosition: 'left',
			navigationTooltips: ['Home', 'About us', 'Product', 'News'],
			responsiveWidth: tabletWidth,
			responsiveHeight : 800,
			onLeave : function(origin, destination, direction){
				if ( !($fullPageSection.eq(origin).is(".active-section")) ) {
					setTimeout(function  () {
						$(".section").eq(origin).addClass("active-section");
					},500);

				}
				
				if( destination == 2 ){
					setTimeout(function  () {
						$("#mainContent1").addClass("on");
					},300);
					// About Us 섹션 도달했을때 카운트
					if ( direction === 'down' ) {
						$(".counter").each(function  () {	
							var num1 = $("#counter1-1").data('num');
							var num2 = $("#counter1-2").data('num');
							var num3 = $("#counter1-3").data('num');
							var num4 = $("#counter1-4").data('num');
							setTimeout(function  () {
								callCount2("counter1-1", num1);
								callCount2("counter1-2", num2);
								callCount2("counter1-3", num3);
								callCount2("counter1-4", num4);
							},300);
						});
					}
				}else if( destination == 3 ){
					setTimeout(function  () {
						$("#mainContent2").addClass("on");
					},200);
				}else if( destination == 4 ){
					setTimeout(function  () {
						$("#mainContent3").addClass("on");
					},200);
				}



				// 사이드바 색상변경
				if ( destination == 2 || destination ==4) {
					$("#fp-nav").addClass("black");
				}else {
					$("#fp-nav").removeClass("black");
				}
				
				// 헤더 클래스 추가
				if( destination > 1 ){
					$("#header").addClass("top-fixed");
					$(".to-top-btn").addClass("bottom-fixed");
				}else {
					$("#header").removeClass("top-fixed");
					$(".to-top-btn").removeClass("bottom-fixed");
				}

			},
			//normalScrollElements: '.scrollable-content' // 해당클래스 영역에서 풀페이지 스크롤 막기
		});
	}
	/* *********************** 메인 비주얼 ************************ */
	// 메인 비주얼 높이값 설정
	if ($.exists('#mainVisual.full-height')) {
		mainVisualHeight();
		$(window).on('resize', mainVisualHeight);

		function mainVisualHeight () {
			var visual_height = getWindowHeight()	- $("#header").height();	// header가 fixed or absolute일경우 - $("#header").height() 삭제
			if ( getWindowWidth() > 800 ) {
				$("#mainVisual").height(visual_height);
			}else {
				$("#mainVisual").css("height","auto");
			}
		}
	}
	
	// 메인 비주얼 슬라이드
	var $mainVisualItem = $(".main-visual-con");
	var visualPausePlay = true;		// Pause, play 사용시 변경

	$mainVisualItem.on('init', function(event, slick, currentSlide) {
		$(".main-visual-item").eq(0).addClass("active-item");
		if ($.exists('.main-visual-conuter')) {
			$(".main-visual-conuter .total-num").text(slick.slideCount);
		}
	});
	$mainVisualItem.on('beforeChange', function(event, slick, currentSlide, nextSlide) {	
		$(".main-visual-item").removeClass("active-item");
		$(this).find(".main-visual-item").eq(nextSlide).addClass("active-item");
		if ($.exists('.main-visual-conuter')) {
			$(".main-visual-conuter .cur-num").text(nextSlide+1);
		}
	});

	// 메인 비주얼 슬라이드
	$mainVisualItem.slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		arrows: false,
		fade: true,
		dots:true,
		autoplay: true,
		speed:2000,
		infinite:true,
		autoplaySpeed: 4000,
		easing: 'easeInOutQuint',
		pauseOnHover:false,
		zIndex:1,
		customPaging : function(slider, i) {
			var dot = $(slider.$slides[i]).data('dot');
			return '<span class="dot-txt">'+dot+'</span><em class="line"></em>';
		}	
	});


	$mainVisualItem.find(".slick-dots").wrap("<aside class='slick-dots-wrapper'><div class='area-box'></div></aside>");

	// 일시정지, 재생버튼 사용시
	if ( visualPausePlay ) {
		$(".slick-dots-wrapper").children().append("<span class='slick-control-btns'><button class='slick-pause-btn' title='일시정지'><i class='xi-pause'></i></button><button class='slick-play-btn' title='재생'><i class='xi-play'></i></button></span>");
	
		$(document).on("click",".slick-pause-btn",function  () {
			$mainVisualItem.slick("slickPause");
			$(this).hide();
			$(".slick-play-btn").show();
		});
		$(document).on("click",".slick-play-btn",function  () {
			$mainVisualItem.slick("slickPlay");
			$(this).hide();
			$(".slick-pause-btn").show();
		});
	}

	/* *********************** News&Notice ************************ */
	var swiper = new Swiper('.news-notice-slide', {
		slidesPerView: 2,
		navigation: {
			nextEl: '.swiper-button-next',
			prevEl: '.swiper-button-prev',
		},

		scrollbar: {
			el: '.swiper-scrollbar',
			hide: false,
		},
		breakpoints: {
        800: {
          slidesPerView: 3,
        }
      }
    });



	/* *********************** 사이드바 FIXED ************************ */
	if ($.exists('#rightBar')) {
		$(window).scroll(function  () {
			var rightStartTop = $(window).height() / 2;
			objectFixed($("#rightBar"), rightStartTop);
		});
	}
});
