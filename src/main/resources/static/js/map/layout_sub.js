////////////////////////////////////////////////////
	function resizeVisImg(){
		var limit_w =(_isLowBr_)? wsize.win.w : $(".div-wrap:eq(0)").width();
		if(limit_w > 1000 ) limit_w = 1000;
		$(".visimg-wr").each(function(){
			var $bg = $(".visImg-bg",this);
			var $img = $(".visimg-img img",this);
			var imgSize = {w:$img.attr("org_width"),h:$img.attr("org_height")};
			var resizeRate = (imgSize.w > 1000)? (limit_w / 1000) : (limit_w / imgSize.w);
			var resizeTo = {w: resizeRate * imgSize.w , h: resizeRate * imgSize.h};
			$img.css({"width":resizeTo.w,"height":resizeTo.h});
			$img.parent().css({"position":"absolute","margin-left":-1 * ((resizeTo.w)/2 ),"left":"50%","width":resizeTo.w,"height":resizeTo.h});
			$bg.css({height:resizeTo.h});
			$(this).parent().css({"height":resizeTo.h});
		});
	}

	//레이아웃 초기화(ready)
	function initPageLayout(){
		initNavigation();
		//resizeVisImg();
		resetTabSize();
		resetImgZoom();
		setContAutoWidth();
		if(_thisPage.initAction!=undefined && _thisPage.initAction.length>0){		$(_thisPage.initAction).each(function(i,func){			try{func();}catch(e){ alert(e);}		});	}
	}

	//레이아웃 셋팅 (ready -> docLoding After , window.load 후에 실행)
	function setPageLayout(){
		//resizeVisImg();
		if(_thisPage.initAction!=undefined && _thisPage.initAction.length>0){		$(_thisPage.initAction).each(function(i,func){			try{func();}catch(e){ alert(e);}		});	}
		try{ thisPageResizeAction(); }catch(e){}
	}

	//레이아웃 리셋
	function resetPageLayout(){
		mainNavi._reset();
		//resizeVisImg();
		resetTabSize();
		setContAutoWidth();
		resetImgZoom();
		//이미지,미디어iframe 리사이징 처리
		try{autoResizeContentObject();}catch(e){alert(e);}
		if(_thisPage.resizeAction!=undefined && _thisPage.resizeAction.length>0){		$(_thisPage.resizeAction).each(function(i,func){			try{func();}catch(e){ alert(e);}		});	}
		try{ thisPageResizeAction(); }catch(e){}
	}

	//레이아웃 높이 리셋
	function resizePageLayoutHeight(){
	}

	//스크롤 완료후 레이아웃 변경
	function setScrollEndLayout(){
		var scrTop = $(window).scrollTop();
		var chkH = $("#header-wrap").height();
		if(_thisPage.scrollAction!=undefined && _thisPage.scrollAction.length>0){		$(_thisPage.scrollAction).each(function(i,func){			try{func();}catch(e){ alert(e);}		});	}
	}

	//스크롤 완료후 레이아웃 변경2 (Time delay 5000);
	function setScrollAfertLayout(){
	}

	//윈도우 회전시 실행할 함수
	function setWindowRotation(){
		if(typeof(thisPageRotation)=="function" && thisPageRotation!=undefined){  thisPageRotation(); }
		else {
			//기본 회전시 실행할 함수
		}
	}

	//document.addEventListener('DOMContentLoaded', loaded, false);
	if('onorientationchange' in window){	window.addEventListener('onorientationchange', setWindowRotation, false);}
////////////////////////////////////////////////////
$(document).ready(function(){
	console.log("1.ready");
	try{initPageCssFiles();}catch(e){}
	try{initPageJavascript();}catch(e){}
	try{	getWindowSize();	}catch(e){ alert(e);}
	try{	getPageSize();	}catch(e){}
	try{		setLowBrowser();	}catch(e){	}
	try{		initPageLayout();	}catch(e){	}
	try{		setMediaObjectFunc();	}catch(e){	}
	try{ _thisLayout_style = getPageStyle(); }catch(e){}
	docLoading(function(){
		console.log("3.docLoad");
		$("body").addClass("loaded");
	});
});
$(window).load(function(){
	console.log("2.Load");
	try{		initImgSizeInfo();	}catch(e){	}
	setPageLayout();
});
$(window).resize(function(e){
	//var resizeTimeGap = (_isLowBr_)?  250 : 10;
	var resizeTimeGap = 10;
	if(_isLowBr_) resizeTimeGap=100;
	clearTimeout(window.resizeEvt);
	window.resizeEvt = setTimeout(function() {
		//console.log("Resize" );
		getWindowSize();getPageSize();
		try{
		if(old_wsize.win== undefined ||  wsize.win.w!=old_wsize.win.w){
			resetPageLayout();
		}else{
			resizePageLayoutHeight();
		}
		}catch(e){
			resetPageLayout();
		}
		//레이어팝업 리사이징
		try{ 		$(msgPopArr).each(function(k,pp){ 			pp._resize(); 		});		}catch(e){}
	}, resizeTimeGap);
});
$(window).scroll(function(){
	var scrTimeGap = 10;
	if(_isLowBr_) scrTimeGap=200;
	clearTimeout(window.scrollEvt);
	window.scrollEvt = setTimeout(function() {
		////srolling
		try{ setScrollEndLayout();}catch(e){}
	}, scrTimeGap);
	clearTimeout(window.scrollAfterEvt);
	window.scrollAfterEvt = setTimeout(function() {
		////srolling End After
		try{ setScrollAfertLayout();}catch(e){}
	}, 5000);
});
////////////////////////////////////////////////////
/*
function snsToggle(){
	if($(".cont-sns-link .sns-tit").hasClass("is-open")){
		$(".sns-link-list").slideUp(300);
		$(".cont-sns-link .sns-tit").removeClass("is-open");
	} else {
		$(".sns-link-list").slideDown(300);
		$(".cont-sns-link .sns-tit").addClass("is-open");
	}
}
// */
/////////////////////////////////////////////////////////////
$(window).load(function(){
	showAni1.scTopListener( $(window).scrollTop() );
});
$(function() {
	$limW = 600;
	showAni1.customSet();
	showAni2.init();
	showAni3.init();
	showAni4.init();
	showAni5.init();
	showAni6.init();
	subVisPkg.init();
	videoPkg.init();
});
$(window).on("scroll", function() {
	showAni1.scTopListener( $(this).scrollTop() );
});

var showAni1 = {
	init : function() {
	},
	customSet : function() {
		// ** 서브메인등 예외처리. 사업분야 서브메인은 #content 이하 엘레멘트가 없으므로 #leftmenu 에 애니메이션 삽입.
		$customCompul = new Array("business", "rels");
		$pCode = util.getQueryStr( "pCode" );
		$cCompulNum = $.inArray( $pCode, $customCompul );
		if ( $cCompulNum >= 0 ) {
			// $("#leftmenu .depth2 .lm_l2").addClass("showReady1"); // ** 더 어색함. 애니메이션 사용않함.
		}
	},
	scTopListener : function( sc ) {
		$scbGap = 100;
		$motherLimit = $("#container");
		// ** doc.ready 시점에서는 NaN 으로 검출 대비. 윈도우 스크롤 높이 재계산.
		if ( isNaN( sc ) ) {
			$scB = $(window).height() - $scbGap;
		} else {
			$scB = sc + $(window).height() - $scbGap;
		}

		//console.log( "-----------------" );
		// ** 윈도우 스크롤 높이와 *=showReady 의 offset().top 비교.
		$(".showReady1", $motherLimit ).each(function( index ) {
			$thisTop = Math.floor( $(this).offset().top );
			//console.log( "$scB : " + $scB + " / $thisTop (" + index + "번째:" + $(this).attr("class") + "): " + $thisTop );

			if ( index == 0 ) {
				$(this).addClass("on");
			} else {
				if ( $scB >= $thisTop ) {
					$(this).addClass("on");
				} else {
					$(this).removeClass("on");
				}
			}
		});
	}
}

var showAni2 = {
	init : function() {
		$sprdImg = $(".spreadImage");
		this.detectScroll();
	},
	detectScroll : function() {
		$(window).on("scroll", function() {
			$scr_t = $(window).scrollTop();
			$win_w = $(window).width();
			$win_h = $(window).height();
			$sprdImg.each(function() {
				$sprd_w = $(this).width();
				$sprd_h = $(this).outerHeight();
				$sprd_l = $(this).offset().left;
				$sprd_t = $(this).offset().top;
				$sprd_bot = $sprd_t - $win_h + $sprd_h;

				// ** console.log( "$scr_t : " + $scr_t + " / $sprd_bot : " + $sprd_bot );
				if ( $(this).hasClass("typeEdgeL") ) {
					$sprd_targetW = $win_w - $sprd_l;
				} else if ( $(this).hasClass("typeEdgeR") ) {
					$sprd_targetW = $sprd_l + $sprd_w;
				} else if ( $(this).hasClass("typeFull") ) {
					$sprd_targetW = $win_w;
				}

				if ( $sprd_bot <= $scr_t ) {
					$(this).addClass("spredExec").css({ "width":$sprd_targetW+"px" });
				} else {
					$(this).removeClass("spredExec").removeAttr("style");
				}
			});
			$(".tit-con2").each(function() {
				$sprd_w = $(this).width();
				$sprd_h = $(this).outerHeight();
				$sprd_l = $(this).offset().left;
				$sprd_t = $(this).offset().top;
				$sprd_bot = $sprd_t - $win_h + $sprd_h;
				if ( $sprd_bot <= $scr_t ) {
					$(this).css({"opacity":1})
				} else {
					$(this).css({"opacity":0})
				}
			});
			// ** console.log(  "------------------------------"  );
		});
	}
}

var showAni3 = {
	init : function() {
		$sideFixedBox = $(".sideFixedBox");
		if ( util.getQueryStr("pCode") == "carIntro" ) {
			$sideFixedGap = 0;
		} else {
			$sideFixedGap = 40;
		}
		this.detectScroll();
	},
	detectScroll : function() {
		var prevScrollTop = $(window).scrollTop(),
			nowScrollTop = $(window).scrollTop(),
			nowDir = "down",
			prevDir = "down";
		$(window).on("scroll touchmove", function() {
			// ** http://jsfiddle.net/tSkU4/3/
			$scrT = nowScrollTop = $(this).scrollTop();
			if ( nowScrollTop > prevScrollTop ) {
				nowDir = "down";
				//console.log( "DOWN" );
			} else if (nowScrollTop < prevScrollTop) {
				nowDir = "up";
				//console.log( "UP" );
			}

			if (nowDir != prevDir) {
				//console.log( "방향 바뀜 : " + prevDir + " -> " + nowDir );
			}
			prevDir = nowDir;
			prevScrollTop = nowScrollTop;
			$subNh = $("#subNavi-wrap").outerHeight();
			$sub3h = $("#subDep3-wrap").outerHeight();
			$sideFixedBox.each( function() {
				// ** SCROLL TOP
				$sideFBtop = $(this).offset().top - $sideFixedGap;
				$sideFBoffsetTop = $sideFBtop - $subNh - $sub3h;

				// ** SCROLL BOTTOM
				$win_h = $(window).height();
				$sld_h = $(this).outerHeight();
				$sld_t = $(this).offset().top;
				$sideFBoffsetBottom = $sld_t - $win_h + $sld_h; // .sldBox scrollBottom 좌표 구하기
				$initSetTop = ( $subNh + $sub3h + $sideFixedGap );
				/** console.log( "$sideFBoffsetTop : " + $sideFBoffsetTop + " / $scrT : " + $scrT + " / $sideFBoffsetBottom : " + $sideFBoffsetBottom ); // */

				if ( $sideFBoffsetTop < $scrT && $scrT < $sideFBoffsetBottom ) {
					$(this).addClass("sideFixedBoxCast");
					$(".sideFixTarget", $(this) ).css({ "top":$initSetTop+"px" });
				}

				if ( $sideFBoffsetBottom < $scrT ) {
					$originalTop = util.getNumberOnly( $(".sideFixTarget", $(this) ).css("top") );
					$fixGap = ($scrT - $sideFBoffsetBottom);
					$fixTop = $initSetTop - $fixGap;
					// ** console.log( "$originalTop : " + $originalTop + " / $sideFBoffsetBottom : " + $sideFBoffsetBottom + " / $scrT : " + $scrT + " / $fixGap : " + $fixGap + " / $initSetTop : " + $initSetTop );
					$(".sideFixTarget", $(this) ).css({ "top":$fixTop+"px" });
				}

				if ( $sideFBoffsetTop > $scrT ) {
					$(this).removeClass("sideFixedBoxCast");
					$(".sideFixTarget", $(this) ).removeAttr("style");
				}

				// ** console.log( "nowDir : " + nowDir );
			});
		});
	}
}

var showAni4 = {
	init : function() {
		$showAni4 = $(".showAni4Pkg");
		this.pageInit();
		this.detectScroll();
	},
	pageInit : function () {
		$sa4sct = $(window).scrollTop();
		$win_h = $(window).height();
		showAni4.coreEffect( $sa4sct, $win_h );
	},
	detectScroll : function() {
		$(window).on("scroll", function() {
			$sa4sct = $(this).scrollTop();
			$win_h = $(window).height();
			showAni4.coreEffect( $sa4sct, $win_h );
		});
	},
	coreEffect : function( winScrPos, winHeight ) {
		$showAni4.each( function() {
			$thisH = $(this).outerHeight();
			$thisT = $(this).offset().top;
			$thisBottom = ($thisT - winHeight + $thisH);
			// ** console.log( "winScrPos : " + winScrPos + " / $thisBottom : " + $thisBottom + " / winHeight : " + winHeight );
			if ( $(".showAni4", $(this) ).length > 0 ) {
				if ( $(window).width() > $limW ) {
					if ( $thisBottom <= winScrPos ) {
						var delayTime1 = 0;
						$(".showAni4", $(this) ).each(function( index, item ) {
							$(this).removeClass("showAniRelease");
							var $this = $(this);
							function delayFnc1() {
								$this.addClass("showAni4Cast");
							}
							setTimeout( delayFnc1, delayTime1 );
							delayTime1 += 200;
						});
					} else {
						/* ** 성우하이텍 : 한번 실행된 애니메이션은 회귀하지 않음.
						var delayTime2 = 0;
						$(".showAni4", $(this) ).each(function( index, item ) {
							$(this).removeClass("showAniRelease");
							var $this = $(this);
							function delayFnc2() {
								$this.removeClass("showAni4Cast");
							}
							setTimeout( delayFnc2, delayTime2 );
							delayTime2 += 200;
						});
						// */
					}
				} else {
					$(".showAni4", $(this) ).each(function( index, item ) {
						$(this).addClass("showAniRelease");
					});
				}
			}
		});
	}
}

var showAni5 = {
	init : function() {
		$showAni5 = $(".showAni5");
		this.pageInit();
		this.detectScroll();
	},
	pageInit : function () {
		$sa5sct = $(window).scrollTop();
		$win_h = $(window).height();
		showAni5.coreEffect( $sa5sct, $win_h );
	},
	detectScroll : function() {
		$(window).on("scroll", function() {
			$sa5sct = $(this).scrollTop();
			$win_h = $(window).height();
			showAni5.coreEffect( $sa5sct, $win_h );
		});
	},
	coreEffect : function( winScrPos, winHeight ) {
		if ( $showAni5.length > 0 ) {
			if ( $(window).width() > $limW ) {
				$showAni5.each( function() {
					$(this).removeClass("showAniRelease");
					$thisH = $(this).outerHeight();
					$thisT = $(this).offset().top;
					$thisBottom = $thisT - winHeight + $thisH;
					if ( $thisBottom <= winScrPos ) {
						$(this).addClass("showAni5Cast");
					} else {
						// ** $(this).removeClass("showAni5Cast"); // ** 성우하이텍 : 한번 실행된 애니메이션은 회귀하지 않음.
					}
				});
			} else {
				$showAni5.each( function() {
					$(this).addClass("showAniRelease");
				});
			}
		}
	}
}

var showAni6 = {
	init : function() {
		$showAni6 = $(".showAni6");
		this.pageInit();
		this.detectScroll();
	},
	pageInit : function () {
		$sa6sct = $(window).scrollTop();
		$win_h = $(window).height();
		showAni6.coreEffect( $sa6sct, $win_h );
	},
	detectScroll : function() {
		$(window).on("scroll", function() {
			$sa6sct = $(this).scrollTop();
			$win_h = $(window).height();
			showAni6.coreEffect( $sa6sct, $win_h );
		});
	},
	coreEffect : function( winScrPos, winHeight ) {
		if ( $showAni6.length > 0 ) {
			if ( $(window).width() > $limW ) {
				$showAni6.each( function() {
					$(this).removeClass("showAniRelease");
					$thisH = $(this).outerHeight();
					$thisT = $(this).offset().top;
					$thisBottom = $thisT - winHeight + $thisH;
					if ( $thisBottom <= winScrPos ) {
						$(this).addClass("showAni6Cast");
					} else {
						// ** $(this).removeClass("showAni6Cast");	// ** 성우하이텍 : 한번 실행된 애니메이션은 회귀하지 않음.
					}
				});
			} else {
				$showAni6.each( function() {
					$(this).addClass("showAniRelease");
				});
			}
		}
	}
}

var subVisPkg = {
	init : function() {
		$subTop = $("#subtop-wr");
		$subV = $("#svisual-wrap .visimg-img");
		$subVoverlay = $(".overlay-mask", $subV );
		$subVimg = $("img", $subV );

		$centerMenu = $("#centerMenu");
		$container = $("#container");
		$subDep3 = $("#subDep3-wrap", $centerMenu );
		$subDep3Gap = 93;
		$subDep3Caster = $(".subD3cast", $subDep3 );

		this.subVisEffect();
		this.mSubD3pkg();
		this.fixedCoreCast();
	},
	subVisEffect : function() {
		$sideT = $sideB = 0;
		$(window).on("scroll", function() {
			// ** 서브비쥬얼 이미지 블러 + 오버레이
			$scrT = $(this).scrollTop();
			$subVisH = $subV.height();
			$subVisOverlayRatio = Number( ((( $scrT * 100 ) / $subVisH) / 100).toFixed(2) );
			$subVisBlurRatio = Number( ($subVisOverlayRatio * 10).toFixed(2) ) * 1.5;
			if ( $subVisOverlayRatio > 1 ) {
			} else {
				$subVoverlay.css({ "opacity":$subVisOverlayRatio });
				$subVimg.css({ "filter":"blur(" + $subVisBlurRatio + "px)" });
			}
			subVisPkg.fixedCoreCast();
		});
	},
	mSubD3pkg : function() {
		// ** 3depth on / off 버튼.
		$subDep3Caster.on("click", function() {
			if ( $(this).hasClass("over") ) {
				$(this).removeClass("over");
				$(this).next().slideUp();
			} else {
				$(this).addClass("over");
				$(this).next().slideDown();
			}
		});

		// ** pc 강제보이기, mobile 강제닫기.
		var mSubD3_w = $(window).width();
		$(window).on("resize", function() {
			if ( mSubD3_w != $(window).width() ) {
				$subDep3Mflag = $subDep3Caster.css("display");
				if ( $subDep3Mflag == "block" ) {		// ** mobile
					$subDep3Caster.removeClass("over");
					$subDep3Caster.next().hide();

					// ** centerMenu fix 제거.
					$centerMenu.removeClass("fixedCast");
				} else if ( $subDep3Mflag == "none" ) {	// ** pc
					$subDep3Caster.removeClass("over");
					$subDep3Caster.next().show();
				}
				mSubD3_w = $(window).width();
			}
		});
	},
	fixedCoreCast : function() {
		$scrT = $(window).scrollTop();

		// ** mobile / pc 구분자 플래그
		$subDep3Mflag = $subDep3Caster.css("display");

		// ** 서브비쥬얼 중앙메뉴 고정
		$containerTop = $container.offset().top - $subDep3Gap;
		//console.log( "$containerTop : " + $containerTop + " / $scrT : " + $scrT );
		if ( $subDep3Mflag == "none" ) {
			if ( $containerTop <= $scrT ) {
				$centerMenu.addClass("fixedCast").removeClass("@@");

				// ** leftmenu 가 열려져 있는경우 스크롤 하단으로 내려가면서 닫힌상태로 자동변경.
				if ( $centerMenu.hasClass("fixedCast") ) {
				} else {
					$("#subNavi-wrap").removeClass("over");
					$("#leftmenu").removeClass("h-open").hide();
				}
			} else {
				$centerMenu.removeClass("fixedCast").addClass("@@");
				$("#subtop-wr").removeClass();
				$("#subNavi-wrap").removeClass();
				$("#leftmenu").removeClass("h-open").hide();
			}
		}
	}
}

var videoPkg = {
	init : function() {
		$vdoParent = $(".hasVideo");
		this.effectEvtCast();
		this.detectScroll();
	},
	detectScroll : function() {
		$(window).on("scroll", function() {
			$vdoSct = $(this).scrollTop();
			$win_h = $(window).height();
			videoPkg.coreEffect( $vdoSct, $win_h );
		});
	},
	coreEffect : function( winScrPos, winHeight ) {
		$vdoParent.each( function() {
			$vdoCoreJq = $("video", $(this) );
			$vdoCoreJs = $vdoCoreJq[0];
			$thisH = $(this).outerHeight();
			$thisT = $(this).offset().top;
			$thisBottom = $thisT - winHeight + $thisH;
			if ( $thisBottom <= winScrPos ) {
				$vdoCoreJs.play();
			} else {
				$vdoCoreJs.pause();
				$vdoCoreJs.currentTime = 0;
			}
		});
	},
	effectEvtCast : function() {
		$("video", $vdoParent ).on("mouseenter", function() {
			$(this)[0].currentTime = 0;
			$(this)[0].play();
		});
	}
}