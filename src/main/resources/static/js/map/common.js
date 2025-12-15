///////////////////////////////////////
	var _thisLayout_style = {};var _orgLayout_style = {};var _thisPage_cfg  = {};
	function checkPageStyle(){
		_orgLayout_style =  $.extend({},_thisLayout_style);  _thisLayout_style = getPageStyle();
	}

	function getPageStyle(){
		var pg_type = {};
		var chkW = $("body").width();
		if(_isLowBr_ && chkW >999) chkW = wsize.win.w;
		return pg_type;
	}

	function _getLayoutHeaderHeight(){
		return	$("#header-wrap").height();
	}

	function _getLayoutFooterHeight(){
		return	$("#footer-wrap").height();
	}

	function resetTabSize(){
		var tabLimit = 4;
		try{	if(_thisPage_cfg.tab_line_limit!=undefined && _thisPage_cfg.tab_line_limit) tabLimit = _thisPage_cfg.tab_line_limit;}catch(e){}
		try{
			/*
			if($(".c-tab01").not(".wfull").not(".noAutoTab").length>0){
				$(".c-tab01").not(".wfull").not(".noAutoTab").rspnsvTab_fwidth({height:50,showCtrlBtns:true,line_limit: tabLimit});
			}
			*/
		}catch(e){}

		try{
			// ** $(".b-tab01").not(".noAutoTab").rspnsvTab_auto({height:57,showCtrlBtns:true,ctrlBtnWidth:46,line_limit:5});
		}catch(e){}
	}
///////////////////////////////////////
$(function() {
	bTab01.init();

    $(window).scroll(function () {
        if ( $(this).scrollTop() > $(window).height() * 0.2) {
            $('.topBt').addClass('over');
        } else {
            $('.topBt').removeClass('over');
        }
    });

    //Click event to scroll to top
    $(".topBt").click(function () {
        $("html, body").animate({ scrollTop: 0 }, 300,
			function() {
				$("#skipNavi").attr("tabindex","-1").focus();
			}
		);
        return false;
    });
});
var bTab01 = {
	init : function() {
		$bTab = $(".b-tab01");
		if ( $bTab.hasClass("noAutoTab") ) {
			return false;
		} else {
			if ( $bTab.length > 0 ) {
				$(".btn-prev", $bTab ).prop( "disabled", true );
				this.tabGen();
			} else {
				return false;
			}
		}
	},
	tabGen : function() {
		$bTabIN = $(".tabinwr", $bTab );
		$bTabUL = $("ul", $bTab );
		$bTabLI = $("li", $bTabUL );
		$bTabLILen = $bTabLI.length;
		$bTabArr = $(".button-wr", $bTab );
		this.sizeSet();
		this.brResize();
		this.edgeLRctrl();
	},
	edgeLRctrl : function() {
		$("a", $bTabLI ).on("mouseenter", function() {
			$bTabLI.removeClass("removeBarEdge");
			$hoverStdLI = $(this).parent();
			$hoverStdLI.prev().addClass("removeBarEdge");
		});
		$bTabIN.on("mouseleave", function() {
			$bTabLI.removeClass("removeBarEdge");
		});
	},
	brResize : function() {
		$(window).resize(function() {
			if(this.resizeTO) {
				clearTimeout(this.resizeTO);
			}
			this.resizeTO = setTimeout(function() {
				$(this).trigger('resizeEnd');
			}, 300 );
		});
		$(window).on('resizeEnd', function() {
			$bTabLI.removeClass("removeBar");	// ** 화면당 최우측 바 제거 클래스 초기화후 삽입.
			bTab01.sizeSet();
		});
	},
	sizeSet : function() {
		$w_w = $(window).width();
		if ( 1400 < $w_w ) {
			$bTabType = 9;
		} else if ( 1200 <= $w_w && $w_w < 1399 ) {
			$bTabType = 8;
		} else if ( 1000 <= $w_w && $w_w < 1199 ) {
			$bTabType = 5;
		} else if ( 700 <= $w_w && $w_w < 999 ) {
			$bTabType = 4;
		} else if ( $w_w < 699 ) {
			$bTabType = 2;
		}
		$bTabUL.css({ "left":0 });
		bTab01.setWidth( $bTabType );
	},
	setWidth : function( type ) {
		if ( type == 2 && $bTabLILen == 2 ) {	// ** 모바일에서 메뉴가 2개일때 미관상 여백제거.
			$bTab.addClass("mExtra1");
		} else {
			$bTab.removeClass("mExtra1");
		}
		/*
		if ( type < $bTabLILen ) {
			$bTabUnit = type;
		} else {
			$bTabUnit = $bTabLILen;
		}
		// */
		$bTabUnit = type;
		console.log( "type : " + type + " / $bTabLILen : " + $bTabLILen );
		if ( $bTabLILen <= type ) {
			$bTabLI.last().addClass("removeBar");	// ** 브라우저 사이즈대비 기준개수보다 버튼노드의 개수보다 작을경우 마지막 노드에 구분선 제거 클래스 삽입.
			$bTabArr.hide();
		} else {
			$bTabLI.eq( ( $bTabUnit - 1 ) ).addClass("removeBar");	// ** 화면당 최우측 바 제거 클래스 삽입.
			$bTabArr.show();
		}

		$bTabLIW = Math.floor( $bTabIN.width() / $bTabUnit * 100 ) / 100;
		$bTabLI.css({ "width":$bTabLIW+"px" });
		$bTab.addClass("stable");
		$(".btn-prev", $bTab ).prop( "disabled", true );
		$(".btn-next", $bTab ).prop( "disabled", false );
		this.arrBtnCast();
	},
	arrBtnCast : function() {
		$clickIdx = 0;
		$clickPlaying = false;
		$("button", $bTabArr ).on("click", function() {
			if ( !$clickPlaying ) {
				$clickPlaying = true;
				$getLeftPosi = Number( $bTabUL.css("left").substr( 0, ($bTabUL.css("left").length-2) ) );	// ** px 글자만 제거. +, - 부호는 제거 하면 안됨. 따라서 getNumberOnly 사용불가.
				$selectedEdge = $bTabLI.filter(".removeBar");
				if ( $(this).hasClass("btn-prev") ) {
					$setLeftPosi = $getLeftPosi + $bTabLIW;
					$selectedNextEdge = $selectedEdge.prev();
				} else if ( $(this).hasClass("btn-next") ) {
					$setLeftPosi = $getLeftPosi - $bTabLIW;
					$selectedNextEdge = $selectedEdge.next();
				}
				$selectedEdge.removeClass("removeBar");		// ** 원래있던 구분선 제거클래스를 우선제거해서 방향 버튼 작동이후 다음 구분선 제거노드 대비.
				$selectedNextEdge.addClass("removeBar");	// ** 방향키 클릭으로 인해 보여질 구성중에 우측끝 버튼의 구분선 제거.
				if ( $clickIdx == 0 ) {
					$maxLimited = (( $bTabLILen - $bTabUnit ) * $setLeftPosi);
				}
				console.log( "$bTabLILen : " + $bTabLILen + " / $bTabUnit : " + $bTabUnit + " / $setLeftPosi : " + $setLeftPosi + " / $maxLimited : " + $maxLimited );
				//console.log( "$setLeftPosi : " + $setLeftPosi + " / $bTabLIW : " + $bTabLIW + " / $maxLimited : " + $maxLimited );

				if ( 0 <= $setLeftPosi ) {
					// ** console.log( "왼쪽 끝" );
					$(".btn-prev", $bTab ).prop( "disabled", true );
					$(".btn-next", $bTab ).prop( "disabled", false );
					$setLeftPosi = 0;
				} else if ( $setLeftPosi <= $maxLimited ) {
					// ** console.log( "우측 끝" );
					$(".btn-prev", $bTab ).prop( "disabled", false );
					$(".btn-next", $bTab ).prop( "disabled", true );
					$setLeftPosi = $maxLimited;
				} else {
					$(".btn-prev", $bTab ).prop( "disabled", false );
					$(".btn-next", $bTab ).prop( "disabled", false );
				}
				$bTabUL.css({ "left":$setLeftPosi+"px" });
				$clickIdx++;
				setTimeout( function() { $clickPlaying = false; }, 300 );	// ** 좌우 이동 시간은 .3초
			}
		});
	}
}

// 반응형 테이블 안내문구
function setContAutoWidth(){
	if ( $(".is-wauto-box").length > 0 ) {
		if( typeof(setMinWidthAutoScrollBox) !="function" )  $.getScript("/_Js/jquery/jquery.cs_wauto.js",function(){ setMinWidthAutoScrollBox(); });
		else{ setMinWidthAutoScrollBox(); }
	}
}

// 이미지 확대보기
function resetImgZoom(){
	var zwObj =  $('.img-zoom');
	zwObj.each(function(){
		var this_s = $(this);
		var zwObjImg = this_s.children("img");
		var zwObjUrl = zwObjImg.attr("src");
		var win_w = $(window).innerWidth();
		if ( win_w <= 768 ) {
			if($(".btn-zoom", $(this)).length<1 ){
				this_s.append("<a href='" + zwObjUrl + "' class='btn-zoom' target='_blank' title='새창열림'><span class='blind'>이미지 확대보기</span></a>");
				zwObjImg.addClass("zoom");
			}
		} else {
			$(".btn-zoom", $(this).parent()).remove();
			zwObjImg.removeClass("zoom");
		}
	});
}

// 단일폴딩
function viewFolingItem(id,h){
	if ( $('#'+id).hasClass("isOpen") ) {
		$('#'+id).stop().animate({"height":0},400);
		$('#'+id).removeClass("isOpen");
		$("#"+id+"-tit a").removeClass("over");
	} else {
		$('#'+id).stop().animate({"height":h},400);
		$('#'+id).addClass("isOpen");
		$("#"+id+"-tit a").addClass("over");
	}
}

// 다중폴딩
function viewFolingListItem(idx){
	var obj = $(".foldings-list #foldings-data"+idx);
	var obj_other = $(".foldings-list li").not("#foldings-data"+idx);
	$(".foldings-in-cont",$(obj_other)).slideUp("fast");
	$(obj_other).removeClass("over");
	if(obj.hasClass("over")){
		$(".foldings-in-cont",$(obj)).slideUp("fast");
		$(obj).removeClass("over");
	}else{
		$(".foldings-in-cont",$(obj)).slideDown("fast");
		$(obj).addClass("over");
	}
}

// 로그인 팝업
var loginWin = null;
function openLoginPopup2(url){
	/*
	try{callLatestFocus(event);}catch(e){}
	try
	{
		frmWin.close();
	}catch (e){	}
	$(".pop_windoc").remove();
	if(loginWin==undefined){
		var loginWin;
	}
	if(url==undefined || url==""){
		var url = "/Share/loginpop.php?pop=2&url=" + encodeURIComponent(document.location.href);
	}
	frmWin = new msgPopupWin({w:660,h:480,setStyle:true,title:"LOGIN"});
	frmWin.bodyPannel.addClass("ifrmBody");
	frmWin.setContents("<iframe width=100% height=99% frameborder='0' scrolling=no src='"+url+"'></iframe>");
	*/
	return true;
}

var myPlugin = {
	castAnimation : function( opt ) {
		if ( !opt.Box || !opt.Lst || !opt.Interval || !opt.Constant || !opt.Variable ) {
			console.log( "옵션중 적어도 하나가 없음. 실행불가" );
			return false;
		} else {
			$listBox = opt.Box;
			$listEle = opt.Lst;
			$listLen = ($listEle.length) - 1;
			//console.log( "$listLen : " + $listLen );
			$headerA = $(".header-wrap-abs");
			$aniIdx = 0;
			//console.log( "opt.Box : " + opt.Box + " / opt.Lst : " + opt.Lst );

			$(window).on("scroll", function() {
				$st = $(this).scrollTop();
				$talentTOP = $listBox.offset().top;
				$headerAOT = $headerA.outerHeight() + 250;

				if ( $st > ($talentTOP - $headerAOT) ) {
					$exe = true;
					$aniIdx++;
				} else {
					$exe = false;
					$aniIdx = 0;
				}

				if ( $exe && $aniIdx == 1 ) {
					$listCnt = 0;
					$listEle.each(function( index ) {
						$this = $(this);
						setTimeout(function( index ){
							index.addClass("over");
							setTimeout(function( index ){
								index.removeClass("over");
								//console.log( "$listLen : " + $listLen + " / $listCnt : " + $listCnt );
								if ( $listLen == $listCnt ) {
									$listEle.eq(0).addClass("over");
								}
								$listCnt++;
							}, opt.Interval, index);
						}, opt.Constant + ( index * opt.Variable ), $this);

					});
				}
			});

			$listEle.on("mouseenter", function() {
				$listEle.removeClass("over");
			});
		}
	}
}
