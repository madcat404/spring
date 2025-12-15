<!DOCTYPE html>
<html>

<meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>IWIN DEMO ENGLISH</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="/images/favicon.ico">

    <!-- CSS here -->
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/css/slicknav.css">
    <link rel="stylesheet" href="/css/flaticon.css">
    <link rel="stylesheet" href="/css/animate.min.css">
    <link rel="stylesheet" href="/css/magnific-popup.css">
    <link rel="stylesheet" href="/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="/css/themify-icons.css">
    <link rel="stylesheet" href="/css/slick.css">
    <link rel="stylesheet" href="/css/nice-select.css">
    <link rel="stylesheet" href="/css/style.css">

    <!-- das css & js -->
    <link rel="stylesheet" href="/css/base.css">
    <link rel="stylesheet" href="/css/board.css">
    <link rel="stylesheet" href="/css/swiper.min.css">
    <link rel="stylesheet" href="/css/aos.css">
    <link rel="stylesheet" href="/css/common.css">

    <!-- 지도 -->
    <link rel="stylesheet" media="all" href="/css/map/common.css" />
    <link rel="stylesheet" media="all" href="/css/map/style.common.css" />
    <link rel="stylesheet" media="all" href="/css/map/style.default.css" />
    <link rel="stylesheet" media="all" href="/css/map/owl.carousel.v2.3.4.css" />
    <link rel="stylesheet" media="all" href="/css/map/prgr.default.css" />
    <link rel="stylesheet" media="all" href="/css/map/rspnsv01.css" />
    <link rel="stylesheet" media="all" href="/css/map/layout/common.css" />
    <link rel="stylesheet" media="all" href="/css/map/layout/layout.css" />
    <link rel="stylesheet" media="all" href="/css/map/kr/common.css" />
    <link rel="stylesheet" media="all" href="/css/map/kr/sitemap.css" />
    <script>
        var _thisSite = {}, _thisPage = {initAction:[],resizeAction:[],scrollAction:[]};
        var _site_path = "/kr", _site_type = "R", _site_url = "/kr"; _site_code = "kr";
        var _page_url = "/kr/index.php?pCode=mart", _page_vars = "pCode=mart", _pvars = "pCode=mart";
        var _page_code = "mart";var _isLowBr_ = false,_isMobile_ = false;
        var editor_type = "mceEditor";
    </script>
    <script src="/js/vendor/jquery-1.12.4.min.js"></script>
    <script  src="/js/map/common.simple.js"></script>
    <script src="/js/map/common.layerPopup.js"></script>
    <script src="/js/map/common.msgPopup.js"></script>

    <script src="/js/jquery.easing.1.3.js"></script>
    <script src="/js/swiper.min.js"></script>
    <script src="/js/aos.js"></script>
    <script src="/js/scrollreveal.min.js"></script>
    <script src="/js/jquery.inview.min.js"></script>
    <script src="/js/skrollr.min.js"></script>

    <script src="/js/map/formcheck.js"></script>
    <script src="/js/map/countUp.js"></script>
    <script src="/js/map/userfunc.js"></script>
    <script src="/js/map/common.js"></script>
    <script  src="/js/map/jquery.cs_tab.js"></script>
    <script  src="/js/map/owl.carousel.v2.3.4.js"></script>
    <script type="text/javascript" src="/js/exclude/sitemap.js"></script>

    <!-- 메뉴 클릭 -->
    <style>
        .header-submenus {display: none;transition: 1s ease-in-out;height: 200px;}
        a.current {display: block;}
        div.current{display: block;}
        * {font-family: 'Noto Sans KR', '맑은 고딕', 'Malgun Gothic', Dotum, "돋움",Gulim, "굴림", Verdana, Tahoma, AppleGothic, sans-serif;}
        #navigation li a {font-weight: bold;}
        div.sub_contents{ max-width: 1120px;position: relative;margin: 0 auto;height: 500px; }
        div.header-menu{ position: absolute;background-color: white;top: 0;left: 0;width: 100%;height: 0px;}
        div.sub_contents > ul > li > a > span{font-size: 20px;font-weight: bold;}
        #navigation li ul.header-title1 > li > a {display: none;}
        #navigation li ul.header-title-sub li {display: list-item;margin: 0;padding: 0;}
        #navigation li ul.header-title-sub li a {color: #000000;display: inline-block;vertical-align: top;white-space: nowrap;width: 100%;font-size: 12px;position: relative;text-align: left;}
        /*.header-submenu1 > .header-title-sub {display: none;position: absolute;width: 100%;left: 0;margin-top: 0;box-sizing: border-box;transition: margin 0.2s ease-in-out;padding: 0 20%;}*/
    </style>

    <script>
        $(document).ready(function () {

            $('.menus:not(.slicknav_nav li .menus)').mouseenter(function(){
                var menu_id = $(this).attr('data-sel');
                var title_id = $(this).attr('sub-sel');
                $(".menus").removeClass('current');
                $(".header-submenus").removeClass('current');
                $("." + menu_id).addClass('current');
                $(this).addClass('current');
                $("." + menu_id).attr('style','height:500px;');
                $(".menus").attr('style','color:#000000;');
                $(".logo > a > img").attr('src', '/images/logo/logo_e_g.png');
                $("a.btn_contact").attr('style','border: solid 1px #000000;');
                $("a.btn_contact > span").attr('style','color:#000000;');
                $(".btn_all_menu > span").attr('style','background-color:#000000;');
                $(".header-title-sub").attr('style', 'display:block;');
                $(".headerLang > p").attr('style','color:#000000;');
                $(".headerLang > ul > li > a").attr('style','color:#000000;');
                $("." + title_id +" > li > a.submenu").attr('style','color:#000000;display:block;');

            });
            $('.header-submenu1').mouseleave(function(){
                $(".menus").removeClass('current');
                $(".header-submenus").removeClass('current');
                $(".menus").attr('style','color:#ffffff;');
                $(".logo > a > img").attr('src', '/images/logo/logo_e.png');
                $(".btn_contact").attr('style','border: solid 1px #ffffff;');
                $(".btn_contact > span").attr('style','color:#ffffff;');
                $(".btn_all_menu > span").attr('style','background-color:#ffffff;');
                $(".headerLang > p").attr('style','color:#ffffff;');
                $(".headerLang > ul > li > a").attr('style','color:#ffffff;');
                $(".header-title-sub").attr('style', 'display:none;');
            });

        })
    </script>

</head>

<body>
<header>
    <!-- Header Start -->
    <div class="header-area header-transparent">
        <div class="main-header">
            <div class="header-bottom  header-sticky">
                <div class="container-fluid">
                    <div class="row align-items-center">
                        <div class="header-menu header-submenus">
                            <div class="sub_contents">
                                <div class="header-submenu1"
                                     style="height: 800px;display: table-cell;vertical-align: middle;width: 1120px;transition: top 0.5s ease-in-out;">
                                </div>
                            </div>
                        </div>
                        <!-- Logo -->
                        <div class="col-xl-2 col-lg-2 col-md-2">
                            <div class="logo">
                                <a href="/eng/index"><img src="/images/logo/logo_e.png" alt=""></a>
                            </div>
                        </div>
                        <div class="col-xl-7 col-lg-7 col-md-7" style="text-align: center;">
                            <!-- Main-menu -->
                            <div class="main-menu d-none d-lg-block pl-85">
                                <nav>
                                    <ul id="navigation">
                                        <li><a href="/eng/index" class="navi-text menus" data-sel="header-menu">HOME</a>
                                        </li>
                                        <li><a href="#" class="navi-text menus" data-sel="header-menu" sub-sel="header-title1">Company Information</a>
                                            <ul class="submenu">
                                                <li>
                                                    <a href="/eng/about">Company Introduction</a>
                                                </li>
                                                <li>
                                                    <a href="/eng/company/site">Business site introduction</a>
                                                </li>
                                                <li>
                                                    <a href="/eng/company/certi">Certification</a>
                                                </li>
                                                <li>
                                                    <a href="/eng/contact">Contact</a>
                                                </li>
                                            </ul>
                                            <ul class="header-title-sub">
                                                <li>
                                                    <a href="/eng/about">Company Introduction</a>
                                                </li>
                                                <li>
                                                    <a href="/eng/company/site">Business site introduction</a>
                                                </li>
                                                <li>
                                                    <a href="/eng/company/certi">Certification</a>
                                                </li>
                                                <li>
                                                    <a href="/eng/contact">Contact</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li><a href="#" class="navi-text menus" data-sel="header-menu" sub-sel="header-title2">Product</a>
                                            <ul class="submenu">
                                                <li>
                                                    <a href="/eng/product/seatheat">SeatHeater</a>
                                                </li>
                                                <li>
                                                    <a href="/eng/product/handle">Heating handle</a>
                                                </li>
                                                <li>
                                                    <a href="/eng/product/coolseat">Ventilation seater</a>
                                                </li>
                                            </ul>
                                            <ul class="header-title-sub">
                                                <li>
                                                    <a href="/eng/product/seatheat">SeatHeater</a>
                                                </li>
                                                <li>
                                                    <a href="/eng/product/handle">Heating handle</a>
                                                </li>
                                                <li>
                                                    <a href="/eng/product/coolseat">Ventilation seater</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li><a href="#" class="navi-text menus" data-sel="header-menu" sub-sel="header-title3">Investment</a>
                                            <ul class="submenu">
                                                <li>
                                                    <a href="/eng/investment">Financial information</a>
                                                </li>
                                                <li>
                                                    <a href="/eng/investment/stock">Announcement</a>
                                                </li>
                                                <li>
                                                    <a href="/eng/investment/announceinfo">Disclosure Information</a>
                                                </li>
                                                <li>
                                                    <a href="/eng/investment/rules">Regulations</a>
                                                </li>
                                            </ul>
                                            <ul class="header-title-sub">
                                                <li>
                                                    <a href="/eng/investment">Financial information</a>
                                                </li>
                                                <li>
                                                    <a href="/eng/investment/stock">Announcement</a>
                                                </li>
                                                <li>
                                                    <a href="/eng/investment/announceinfo">Disclosure Information</a>
                                                </li>
                                                <li>
                                                    <a href="/eng/investment/rules">Regulations</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-3">
                            <div class="main-menu d-none d-lg-block header-right-btn f-left">
                                <a href="/eng/contact" class="btn_contact"><span>Contact Us</span></a>
                            </div>
                            <div class="main-menu d-none d-lg-block headerLang">
                                <p>English</p>
                                <ul>
                                    <li><a href="/index">Korean</a></li>
                                </ul>
                            </div>
                            <a href="" class="main-menu d-none d-lg-block btn_all_menu">
                                <span class="barTop"></span>
                                <span class="barMid"></span>
                                <span class="barBot"></span>
                            </a>
                        </div>
                        <!-- Mobile Menu -->
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="allMenuWrap">
        <div class="allMenuWrap_inner">
            <div class="allMenu_inner">
                <ul class="allMenu clearfix">
                    <li class="">
                        <em>01</em>
                        <span>About Us</span>
                        <a href="/eng/about">About Us</a>
                        <ul>
                            <li><a href="/eng/about">Company Introduction</a></li>
                            <li><a href="/eng/company/site">Business site introduction</a></li>
                            <li><a href="/eng/company/certi">Certification</a></li>
                            <li><a href="/eng/contact">Contact</a></li>
                        </ul>
                    </li>
                    <li class="">
                        <em>02</em>
                        <span>Product</span>
                        <a href="/eng/product/seatheat">Product</a>
                        <ul>
                            <li><a href="/eng/product/seatheat">SeatHeater</a></li>
                            <li><a href="/eng/product/handle">Heating handle</a></li>
                            <li><a href="/eng/product/coolseat">Ventilation seater</a></li>
                        </ul>
                    </li>
                    <li class="">
                        <em>03</em>
                        <span>Investment</span>
                        <a href="/eng/investment">Investment</a>
                        <ul>
                            <li><a href="/eng/investment">Financial information</a></li>
                            <li><a href="/eng/investment/stock">Announcement</a></li>
                            <li><a href="/eng/investment/announceinfo">Disclosure Information</a></li>
                            <li><a href="/eng/investment/rules">Regulations</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <!-- <div class="allMenuWrap_dim winH"></div>  -->
    </div>
    <!-- Header End -->
</header>
<main>
    <div class="slider-area slider-bg main-sub-slider-03">
        <div class="single-slider d-flex align-items-center slider-height2 main-sub-slider-03" style="opacity: 0.9;" data-aos="fade-right">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center pt-50">
                            <h2 data-aos="fade-right">Business site introduction</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 중간 네비게이션 -->
    <nav class="section__nav" style="margin-bottom: 0;">
        <div class="section__inner">
            <div class="nav_tap">
                <a href="/">
                    <img src="/images/home.png" alt="">
                </a>
            </div>
            <div class="nav_tap mobile_hidden js-navTap">
                <a href="javascript:void(0);">
                    <span>About Us</span>
                </a>
                <ul class="js-nav2depth">
                    <li>
                        <a href="/product">Product</a>
                    </li>
                    <li>
                        <a href="/investment/finance/cfs">Investment</a>
                    </li>
                </ul>
            </div>
            <div class="nav_tap js-navTap">
                <a href="javascript:void(0);">
                    <span>Business site introduction</span>
                </a>
                <ul class="js-nav2depth">
                    <li>
                        <a href="/about">Company Introduction</a>
                    </li>
                    <li>
                        <a href="/company/certi">Certification</a>
                    </li>
                    <li>
                        <a href="/contact">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- 중간 네비게이션 -->

    <!-- 지도 -->
    <div id="doc" class="isPage">
        <div id="pg-mart" class="doc-pg pg-type-c">
            <script>$(document).ready(function(){$(".btn-popups").remove();});</script>
            <div id="contents-wrap">
                <div id="contents">
                    <div class="c-tab01"><ul class="depth"><li class=""><a href="/company/site" target="_self" class=""><span>Korea</span></a>
                            </li>
                            <li class="over"><a href="/company/site/world" target="_self" class=""><span>World</span></a>
                            </li>
                        </ul></div><div class="martMain-wr">
                        <div class="pkg-wr" id="foreign">
                            <div class="mart-body estab-body">
                                <div class="markers">
                                    <div class="pkgBox pkgBox3">
                                        <a href="#n" class="maker2-1 makerHasL" data-local="gnet01"><p><span class="city">China</span><span class="name">China Corporation</span></p></a>
                                    </div>
                                    <a href="#n" class="maker2-2 makerHasL" data-local="gnet04"><p><span class="city">Vietnam</span><span class="name">Vietnam Corporation</span></p></a>
                                    <a href="#n" class="maker2-15 makerHasL" data-local="gnet02"><p><span class="city">Slovakia</span><span class="name">Slovakia Corporation</span></p></a>
                                    <a href="#n" class="maker2-17 makerHasR" data-local="gnet03"><p><span class="city">USA</span><span class="name">USA Corporation</span></p></a>
                                </div>
                                <img src="/images/map/estab_map1.png" alt="" class="base">
                            </div>
                        </div>
                    </div>
                    <div class="gap"></div>

                    <div class="knetwork-wr">
                        <h3 class="c-tit01-1">Overseas factory</h3>
                        <div class="network-list-wr">
                            <div class="network-list gnet01 showAni5" id="gnet01">
                                <div class="network-txt">
                                    <span class="pimg"><img src="" alt=""></span>
                                    <h3 class="c-tit01">China Corporation</h3>
                                    <ul class="map-listV es">
                                        <li class="full"><span class="tit">Address</span><span class="ef">Address</span></li>
                                    </ul>
                                    <button type="button" class="btn-map">Map</button>
                                </div>
                                <div class="network-gmap">
                                    <div class="gmap-box">
                                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3334.420507668937!2d120.14134531550665!3d33.30782036403694!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x35b754b96f13d987%3A0xdccc4c642ec1d71c!2s26%20Kaichuang%20Rd%2C%20Yandu%20Qu%2C%20Yancheng%20Shi%2C%20Jiangsu%20Sheng%2C%20China%2C%20224042!5e0!3m2!1sen!2skr!4v1592208751936!5m2!1sen!2skr" frameborder="0" allowfullscreen=""></iframe>
                                    </div>
                                </div>
                            </div>
                            <div class="network-list gnet02 showAni5" id="gnet02">
                                <div class="network-txt">
                                    <span class="pimg"><img src="" alt=""></span>
                                    <h3 class="c-tit01">Slovakia Corporation</h3>
                                    <ul class="map-listV es">
                                        <li class="full"><span class="tit">Address</span><span class="ef">Address</span></li>
                                    </ul>
                                    <button type="button" class="btn-map">Map</button>
                                </div>
                                <div class="network-gmap">
                                    <div class="gmap-box">
                                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3164.659161955959!2d121.21709021558739!3d37.51595623478035!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3590f57f008881a5%3A0x570cd0fc97ce57cb!2s197%20Fu%20Xin%20Lu%2C%20Fushan%20Qu%2C%20Yantai%20Shi%2C%20Shandong%20Sheng%2C%20%EC%A4%91%EA%B5%AD%20265500!5e0!3m2!1sko!2skr!4v1592208503800!5m2!1sko!2skr" frameborder="0" allowfullscreen=""></iframe>
                                    </div>
                                </div>
                            </div>
                            <div class="network-list gnet03 showAni5" id="gnet03">
                                <div class="network-txt">
                                    <span class="pimg"><img src="" alt=""></span>
                                    <h3 class="c-tit01">USA Corporation</h3>
                                    <ul class="map-listV es">
                                        <li class="full"><span class="tit">Address</span><span class="ef">Address</span></li>
                                    </ul>
                                    <button type="button" class="btn-map">Map</button>
                                </div>
                                <div class="network-gmap">
                                    <div class="gmap-box">
                                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3048.9659836041583!2d117.1307843156434!3d40.16531107881521!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x35f16078b153d34b%3A0x5de1163f6d6c5b2b!2s28%20Xing%20Gu%20Lu%2C%20Pinggu%20Qu%2C%20Beijing%20Shi%2C%20%EC%A4%91%EA%B5%AD%20101213!5e0!3m2!1sko!2skr!4v1592208893828!5m2!1sko!2skr" frameborder="0" allowfullscreen=""></iframe>
                                    </div>
                                </div>
                            </div>
                            <div class="network-list gnet04 showAni5" id="gnet04">
                                <div class="network-txt">
                                    <span class="pimg"><img src="" alt=""></span>
                                    <h3 class="c-tit01">Vietnam Corporation</h3>
                                    <ul class="map-listV es">
                                        <li class="full"><span class="tit">Address</span><span class="ef">Address</span></li>
                                    </ul>
                                    <button type="button" class="btn-map">Map</button>
                                </div>
                                <div class="network-gmap">
                                    <div class="gmap-box">
                                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3407.26895503607!2d119.79638631547277!3d31.351556562594606!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x358a4f86a5ef545f!2sNational%20Hi-tech%20Industrial%20Development%20Zone!5e0!3m2!1sko!2skr!4v1592208944964!5m2!1sko!2skr" frameborder="0" allowfullscreen=""></iframe>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <script>
                        var pm1, pm2, ps1, ps2;
                        var dragFlag = false;
                        var x, y, pre_x, pre_y;
                        $(window).load(function() {
                            pointAct.setArea( pointAct.getRatio() );
                        });
                        var facW = $(window).width();
                        var facFnc;
                        $(window).resize(function(){
                            if ( $(window).width() != facW ) {
                                pointAct.chartCentering();	// 브라우저 리사이즈 될때 시설도 base 이미지 가운데로 센터링.
                                clearTimeout(facFnc);
                                facFnc = setTimeout( pointAct.setArea( pointAct.getRatio() ) , 100);
                                facW = $(window).width();
                            }
                        });

                        $(function() {
                            pointAct.init();
                        });
                        var pointAct = {
                            init : function() {
                                $relayIdx = 0;
                                $zoomBtn = $(".martMain-wr .pkg-wr-m > button");
                                $boxCont = $(".martMain-wr .mart-body");
                                $relsBtn = $(".martMain-wr .mart-body .markers a");
                                $mImg = $(".martMain-wr .pkg-wr-m .mart-body .base");
                                $mFlag = $("#centerMenu");

                                this.dragCast();
                                this.zoomController();
                                this.pkgBoxHover();
                                this.getRatio();
                                this.setAreaOrg();
                                // this.setMapH();	// ** 브라우저 반응시 대응 불가

                                // ** 마커클릭 바로가기
                                $markerBtn = $(".martMain-wr #foreign .markers a");
                                $markerContent = $(".network-list");
                                this.markerEvt();

                                // ** lenz 효과
                                $lenzCircle = $(".martMain-wr .mart-body .lenz");
                                this.lenz();

                                // ** centering
                                pointAct.chartCentering();		// 768 이하에서 시설도 base 이미지 가운데로 센터링.
                            },
                            dragCast : function() {		// 편의상 PC에서도 이미지 드래그 기능 삽입.
                                if ( util.isPC() ) {
                                    $boxCont.mousedown(function (e) {
                                        dragFlag = true;
                                        var obj = $(this);
                                        x = obj.scrollLeft();
                                        y = obj.scrollTop();
                                        pre_x = e.screenX;
                                        pre_y = e.screenY;
                                    });
                                    $boxCont.mousemove(function (e) {
                                        if (dragFlag) {
                                            var obj = $(this);
                                            obj.scrollLeft(x - e.screenX + pre_x);
                                            obj.scrollTop(y - e.screenY + pre_y);
                                            return false;
                                        }
                                    });
                                    $boxCont.mouseup(function () {
                                        dragFlag = false;
                                    });
                                    $("body").mouseup(function () {
                                        dragFlag = false;
                                    });
                                }
                            },
                            chartCentering : function() {
                                var chart, chartW, chartH, chartImgW, chartImgH, reW, reH;
                                chart = $(".martMain-wr .pkg-wr .mart-body");
                                chartW = chart.width();
                                chartH = chart.height();
                                chartImgW = $("img.base", chart).width();
                                chartImgH = $("img.base", chart).height();
                                reW = (chartImgW - chartW) / 2;
                                reH = (chartImgH - chartH) / 2;
                                chart.stop().animate({ "scrollLeft" : (reW-100), "scrollTop" : (reH-30) });
                            },
                            getRatio : function() {
                                $natW = new Array();
                                $mImg.each(function( index ) {
                                    $natW[index] = ($(this).width() / 458).toFixed(2);	// ** 브라우저 500 일때 모바일 .base 이미지의 사이즈
                                });
                                return $natW;
                            },
                            setMapH : function() {
                                $mImg.each(function() {
                                    $mapH = $(this).height();
                                    $(this).parent().css({ "height":$mapH });
                                });
                            },
                            setAreaOrg : function() {
                                $mImg.each(function( index ) {
                                    $("a", $(this).prev() ).each(function() {
                                        $a_wB = $(this).width();
                                        $a_hB = $(this).height();
                                        $a_tB = util.getNumberOnly( $(this).css("top") );
                                        $a_lB = util.getNumberOnly( $(this).css("left") );
                                        $(this).attr({ "data-oriw":$a_wB, "data-orih":$a_hB, "data-orit":$a_tB, "data-oril":$a_lB });
                                    });
                                });
                            },
                            setArea : function( $areaRatio ) {
                                // console.log( "setArea ----- $areaRatio : " + $areaRatio );
                                $mImg.each(function( index ) {
                                    // console.log( index + " : -- 시작 --" );
                                    $("a", $(this).prev() ).each(function() {
                                        $a_wB = $(this).data("oriw");
                                        $a_hB = $(this).data("orih");
                                        $a_tB = $(this).data("orit");
                                        $a_lB = $(this).data("oril");
                                        // console.log( "$a_wB : " + $a_wB + " / $a_hB : " + $a_hB + " / $a_tB : " + $a_tB + " / $a_lB : " + $a_lB );

                                        $a_wA = Math.round( $a_wB * $areaRatio[index] );
                                        $a_hA = Math.round( $a_hB * $areaRatio[index] );
                                        $a_tA = Math.round( $a_tB * $areaRatio[index] );
                                        $a_lA = Math.round( $a_lB * $areaRatio[index] );
                                        // console.log( "$a_wA : " + $a_wA + " / $a_hA : " + $a_hA + " / $a_tA : " + $a_tA + " / $a_lA : " + $a_lA );

                                        $(this).css({ "width":$a_wA, "height":$a_hA, "top":$a_tA, "left":$a_lA });
                                    });
                                    // console.log( index + " : -- 종료 --" );
                                });
                            },
                            zoomController : function() {
                                $zoomRange_1 = 1;
                                $zoomRange_2 = 1;
                                $zoomBtn.on("click", function() {
                                    // ** 현재 버튼 표식 설정.
                                    $(this).addClass("over");
                                    $zoomBtn.not( $(this) ).removeClass("over");

                                    // ** 현재 버튼의 조작대상 설정.
                                    $category = $(this).parent().attr("id");

                                    // ** 현재 클릭된 버튼이 조정할 이미지.
                                    $zoomBase = $("img", $(this).closest(".pkg-wr-m"));

                                    // ** 확대/축소별 기능 설정.
                                    if ( $(this).hasClass("zoomP") )			$zoomRange = $zoomBase.data("zoomrange") + 1;
                                    else if ( $(this).hasClass("zoomM") )		$zoomRange = $zoomBase.data("zoomrange") - 1;

                                    if ( $zoomRange == -1 ) {
                                        alert( "더이상 축소할 수 없습니다." );
                                        return false;
                                    } else if ( $zoomRange == 0 ) {
                                        $zoomRatio = "100%";
                                    } else if ( $zoomRange == 1 ) {
                                        $zoomRatio = "110%";
                                    } else if ( $zoomRange == 2 ) {
                                        $zoomRatio = "120%";
                                    } else if ( $zoomRange == 3 ) {
                                        $zoomRatio = "130%";
                                    } else if ( $zoomRange == 4 ) {
                                        $zoomRatio = "140%";
                                    } else if ( $zoomRange == 5 ) {
                                        $zoomRatio = "150%";
                                    } else if ( $zoomRange == 6 ) {
                                        alert( "더이상 확대할 수 없습니다." );
                                        return false;
                                    }
                                    $zoomBase.data("zoomrange", $zoomRange);

                                    // ** 이미지 확대 / 축소
                                    $(".mart-body img", $(this).parent() ).css({ "width":$zoomRatio });

                                    // ** 이미지맵 확대 / 축소
                                    $imgForRatio = $(".mart-body img", $(this).parent() );
                                    $imgRatio = ($imgForRatio.width() / 458).toFixed(2);
                                    // console.log( "-------------" );
                                    // console.log( "$imgRatio : " + $imgRatio );

                                    $thisArea = $(".baseBox a", $(this).parent() );
                                    // console.log( "-------------" );
                                    $thisArea.each(function( index ) {
                                        $a_wB = $(this).data("oriw");
                                        $a_hB = $(this).data("orih");
                                        $a_tB = $(this).data("orit");
                                        $a_lB = $(this).data("oril");
                                        // console.log( "$a_wB : " + $a_wB + " / $a_hB : " + $a_hB + " / $a_tB : " + $a_tB + " / $a_lB : " + $a_lB );

                                        $a_wA = Math.round( $a_wB * $imgRatio );
                                        $a_hA = Math.round( $a_hB * $imgRatio );
                                        $a_tA = Math.round( $a_tB * $imgRatio );
                                        $a_lA = Math.round( $a_lB * $imgRatio );
                                        // console.log( "$a_wA : " + $a_wA + " / $a_hA : " + $a_hA + " / $a_tA : " + $a_tA + " / $a_lA : " + $a_lA );

                                        $(this).css({ "width":$a_wA, "height":$a_hA, "top":$a_tA, "left":$a_lA });

                                    });
                                    // console.log( "-------------" );
                                });
                            },
                            pkgBoxHover : function() {
                                $relsBtn.on("mouseenter", function() {
                                    $isPksBox = $(this).parent().parent();
                                    if ( $isPksBox.hasClass("pkgBox") ) {
                                        $isPksBox.addClass("over")
                                    }
                                });
                                $relsBtn.parent().parent().on("mouseleave", function() {
                                    if ( $(this).hasClass("pkgBox") ) {
                                        $(this).removeClass("over")
                                    }
                                });
                            },
                            markerEvt : function() {
                                $markerBtn.on("click", function() {
                                    $subDep3Flag = $subDep3Caster.css("display");
                                    $markerStr = $(this).data("local");
                                    if ( $mFlag.hasClass("fixedCast") ) {
                                        if ( $("#"+$markerStr).hasClass("showAni5Cast") ) {
                                            $extraOperand = $("#subNavi-wrap").outerHeight() + $("#subDep3-wrap").outerHeight();
                                        } else {
                                            $extraOperand = $("#subNavi-wrap").outerHeight() + $("#subDep3-wrap").outerHeight() + 50;
                                        }
                                    } else {
                                        if ( $subDep3Flag == "block" ) {
                                            $extraOperand = 0;
                                        } else {
                                            //$extraOperand = $("#subNavi-wrap").outerHeight() + $("#subDep3-wrap").outerHeight() - 50;
                                            $extraOperand = 94 + 71 + 50;
                                        }
                                    }
                                    $("html, body").stop().animate({
                                        "scrollTop" : $("#"+$markerStr).offset().top - $extraOperand
                                    });
                                });
                            }
                        }
                    </script>
                    <script>
                        $(function(){
                            var gmapObj = $(".network-list-wr .network-list");
                            var gmapBtn = $(".btn-map",gmapObj);
                            gmapBtn.on("click", function() {
                                if($(this).hasClass("is-open")){
                                    $(this).parent().parent().find(".network-gmap").slideUp("fast",function(){});
                                    $(this).removeClass("is-open").text("지도보기");
                                } else{
                                    $(this).parent().parent().find(".network-gmap").slideDown("fast",
                                        function(){
                                            $(this).addClass("is-open");
                                            if ( $mFlag.hasClass("fixedCast") ) {
                                            } else {
                                                $("html, body").stop().animate({
                                                    "scrollTop" : $(".c-tit01", $(this).prev() ).offset().top - 10
                                                });
                                            }
                                        }
                                    );
                                    $(this).addClass("is-open").text("지도닫기");
                                }
                            });
                        });
                    </script><div class="contOutput editor-out"></div>
                </div><!-- end #contents -->
            </div>
            <!-- end #container-wrap -->
        </div><!-- end .doc-pg //-->
    </div>
    <!-- 지도 -->

</main>
<footer>
    <!-- Footer Start-->
    <div class="footer-area">
        <div class="container">
            <div class="footer-top footer-padding">
                <div class="row justify-content-between">
                    <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6">
                        <div class="single-footer-caption mb-50">
                            <div class="single-footer-caption mb-30">
                                <!-- logo -->
                                <div class="footer-logo">
                                    <a href="/eng/index"><img src="/images/logo/logo_e_footer.png" alt=""></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-2 col-md-4 col-sm-6">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>About Us</h4>
                                <ul>
                                    <li><a href="/eng/about">Company Introduction</a></li>
                                    <li><a href="/eng/company/site">Business site introduction</a></li>
                                    <li><a href="/eng/company/certi">Certification</a></li>
                                    <li><a href="/eng/contact">Contact</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>Product</h4>
                                <ul>
                                    <li><a href="/eng/product/seatheat">SeatHeater</a></li>
                                    <li><a href="/eng/product/handle">Heating handle</a></li>
                                    <li><a href="/eng/product/coolseat">Heating handle</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>Investment</h4>
                                <ul>
                                    <li><a href="/eng/investment">Financial information</a></li>
                                    <li><a href="/eng/investment/stock">Announcement</a></li>
                                    <li><a href="/eng/investment/announceinfo">Disclosure Information</a></li>
                                    <li><a href="/eng/investment/rules">Regulations</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4 style="text-transform: lowercase;">051-711-2222</h4>
                                <ul>
                                    <li><a href="#">hr@iwin.kr</a></li>
                                </ul>
                                <p>Jangan-eup, Gijang-gun, Busan <br>110, Jangansandan 9-ro</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="row d-flex justify-content-between align-items-center">
                    <div class="col-xl-9 col-lg-9 ">
                        <div class="footer-copy-right">
                            <p>
                                Copyright &copy;
                                <script>
                                    document.write(new Date().getFullYear());
                                </script>. IWIN Inc. All rights reserved</p>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3">
                        <!-- Footer Social -->
                        <div class="footer-social f-right">
                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fas fa-globe"></i></a>
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End-->
</footer>
<!-- Scroll Up -->
<div id="back-top" >
    <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
</div>


<!-- JS here -->
<!-- All JS Custom Plugins Link Here here -->
<script src="/js/vendor/modernizr-3.5.0.min.js"></script>
<!-- Jquery, Popper, Bootstrap -->
<script src="/js/popper.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<!-- Jquery Mobile Menu -->
<script src="/js/jquery.slicknav.min.js"></script>

<!-- Jquery Slick , Owl-Carousel Plugins -->
<script src="/js/owl.carousel.min.js"></script>
<script src="/js/slick.min.js"></script>
<!-- One Page, Animated-HeadLin -->
<script src="/js/wow.min.js"></script>
<script src="/js/animated.headline.js"></script>
<script src="/js/jquery.magnific-popup.js"></script>

<!-- Nice-select, sticky -->
<script src="/js/jquery.nice-select.min.js"></script>
<script src="/js/jquery.sticky.js"></script>

<!-- contact js -->
<script src="/js/contact.js"></script>
<script src="/js/jquery.form.js"></script>
<script src="/js/jquery.validate.min.js"></script>
<script src="/js/mail-script.js"></script>
<script src="/js/jquery.ajaxchimp.min.js"></script>

<!-- Jquery Plugins, main Jquery -->
<script src="/js/plugins.js"></script>
<script src="/js/main.js"></script>

<!-- DAS 스크립트 -->
<script>

    $(function() {
        $("#top_btn").on("click", function() {
            $("html, body").animate({scrollTop:0}, '500');
            return false;
        });
    });
</script>
<script>

    function sectionOffset(){
        var headerHeight = document.querySelector('.js-header').offsetHeight;
        var pageHeight = innerHeight;
        var scrollY = window.pageYOffset;

        var section01 = document.querySelector('.js-section_main'),
            section02 = document.querySelector('.js-section_02'),
            section03 = document.querySelector('.js-section_03'),
            section04 = document.querySelector('.js-section_04');

        if(innerHeight > 800){
            section01.setAttribute('style','height:'+innerHeight+'px;')
        }else{
            section01.setAttribute('style','height:800px;')
        }

        var section01_Y = section01.getBoundingClientRect().top + pageYOffset,
            section02_Y = section02.getBoundingClientRect().top + pageYOffset - Math.floor(section02.offsetHeight/2),
            section03_Y = section03.getBoundingClientRect().top + pageYOffset - headerHeight - Math.floor(pageHeight/2),
            section04_Y = section04.getBoundingClientRect().top + pageYOffset - headerHeight - Math.floor(pageHeight/2);

        if(scrollY > section04_Y){
            // section02Init()
        }else if(scrollY > section03_Y){
            // section02Init()
        }else if(scrollY > section02_Y){
            section02Counter();
        }else{
            section02Init()
        }
    }

    function section02Counter(){
        var counters = document.querySelectorAll('*[data-number]');

        Array.prototype.forEach.call(counters,function(el){
            function updateNumber(){
                var target = Number(el.getAttribute('data-number')),
                    currentCnt = Number(el.innerText);
                if(el.getAttribute('data-unit') == null){
                    speed = 300;
                    var inc = target/speed;
                }else{
                    var inc = +el.getAttribute('data-unit');
                }
                if(currentCnt < target ){
                    if(currentCnt + inc < 5){
                        el.innerText = (currentCnt + inc).toFixed(3);
                    }else{
                        el.innerText = (currentCnt + inc).toFixed(1);
                    }
                    setTimeout(updateNumber,1);
                }else{
                    el.innerText = target;
                }
            }
            updateNumber();
        })
    }

    function section02Init(){
        var counters = document.querySelectorAll('.js-counter');

        Array.prototype.forEach.call(counters,function(el){
            el.innerText = 0;
        });
    }

    function historyTapSelector(){
        var history_tap = document.querySelectorAll('.js-hs_tap'),
            history_listItem = document.querySelectorAll('.js-hs_item');

        Array.prototype.forEach.call(history_tap,function(hsTap,idx){
            hsTap.addEventListener('click',function(){
                var rangeData = hsTap.innerText;
                history_listItem[idx].setAttribute('data-range',rangeData);

                for(var i = 0; i < history_tap.length; i ++){
                    if(history_listItem[i].getAttribute('data-range') == rangeData){
                        // window.scrollTo(0, history_listItem[i].getBoundingClientRect().top + pageYOffset - 100);

                        $('html, body').animate({
                            scrollTop: history_listItem[i].getBoundingClientRect().top + pageYOffset - 100
                        }, 400, 'linear');
                        break;
                    }
                }
            })
        })
    }

    function subNavTap(){
        var navTap = document.querySelectorAll('.js-navTap'),
            nav2depth = document.querySelectorAll('.js-nav2depth');

        Array.prototype.forEach.call(navTap,function(el){
            el.addEventListener('click',function(){
                var siblings = getSiblings(el);
                for(var i = 0; i < siblings.length; i++){
                    if(siblings[i].classList.contains('js-navTap')){
                        siblings[i].classList.remove('show');
                    }
                }
                el.classList.toggle('show');
            })
            el.addEventListener('mouseleave',function(){
                el.classList.remove('show');
            })
        })
    }

    function getSiblings(t){
        var children = t.parentElement.children;
        var temp = [];

        for(var i = 0; i < children.length; i ++){
            temp.push(children[i]);
        }

        return temp.filter(function(el){
            return el != t;
        })
    }

    function fullMenuAccodian(){
        var menuTap = document.querySelectorAll('.js-fullmenuTap');
        Array.prototype.forEach.call(menuTap,function(el){
            el.addEventListener('click',function(e){
                if(e.target.parentElement.classList.contains('tap_open')){
                    console.log('tick')
                    e.target.parentElement.classList.remove('tap_open');
                    e.target.parentElement.querySelector('ul').setAttribute('style',"max-height:''")
                }else{
                    e.target.parentElement.classList.add('tap_open');
                    e.target.parentElement.querySelector('ul').setAttribute('style',"max-height:"+e.target.parentElement.querySelector('ul').scrollHeight+"px")
                    var sibling = getSiblings(e.target.parentElement);
                    Array.prototype.forEach.call(sibling,function(sibling){
                        sibling.classList.remove('tap_open')
                        sibling.querySelector('ul').setAttribute('style',"");
                    })
                }
            })
        })
    }

    function headerMenuToggle(){
        var fullMenu = document.querySelector('.js-full_menu');
        var overlay = document.querySelector('.js-overlay');
        var body = document.querySelector('body');
        $('.header__menu_icon').click(function(){
            $(this).toggleClass('open');
            fullMenu.classList.toggle('open');
            overlay.classList.toggle('open');
            body.classList.toggle('scroll_lock');
        });
    }

    function globalTap(){
        $('.map_area .country_name > span').click(function(){
            $(this).parent().toggleClass('open');
            $(this).parent().siblings().removeClass('open');
            return false;
        })
    }

    // window.addEventListener('scroll',headerChange);
    window.addEventListener('resize',historyTapSelector);

    // headerChange();
    headerMenuToggle()
    subNavTap()
    globalTap()
    historyTapSelector();
    fullMenuAccodian()
    AOS.init({
        duration: 1500
    });
</script>
<script >
    $(document).ready(function(){
        try{	resetFormStyle();}catch(e){	}

        //레이어팝업 포커스 오류 보정
        //접근성 필수일경우 닫기 버튼으로 포커스 초기화 되지 않으므로 문제생길 수 있음.
        try{	if(parent.msgPopArr.length>0){	$("input,select,a,button").not("[type='text']").eq(0).focus();		}			}catch(e){	}
        try{$(".calendar").datepicker({});		}catch(e){	}

    });
</script>
</body>
</html>