<!DOCTYPE html>
<html>

<meta http-equiv="content-type" content="text/html;charset=utf-8"/>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>IWIN</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="/images/favicon.ico">

    <!-- CSS here -->
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="/css/style.css">

    <!-- das css & js -->
    <script src="/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="/js/jquery.easing.1.3.js"></script>
    <script src="/js/swiper.min.js"></script>
    <script src="/js/aos.js"></script>
    <script src="/js/common.js"></script>
    <script src="/js/scrollreveal.min.js"></script>
    <script src="/js/jquery.inview.min.js"></script>
    <script src="/js/skrollr.min.js"></script>

    <link rel="stylesheet" href="/css/board.css">
    <link rel="stylesheet" href="/css/common.css">

    <link rel="stylesheet" href="/css/exclude/default.css">
    <link rel="stylesheet" href="/css/exclude/layout.css">
    <link rel="stylesheet" href="/css/exclude/content.css">
    <link rel="stylesheet" href="/css/exclude/layout_responsive.css">
    <link rel="stylesheet" href="/css/exclude/content_responsive.css">
    <link rel="stylesheet" type="text/css" href="/css/exclude/jquery.fullPage.css" />
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/icon?family=Material+Icons"><!-- google -->
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css"><!-- naver -->

</head>

<body>
<header id="header" class="">
    <div class="gnb-overlay-bg"></div>
    <div id="headerInnerWrap">
        <!-- ****************** 헤더상단 ********************** -->
        <div id="headerInner" class="clearfix">
            <h1 class="logo">
                <a href="/eng/index">
                    <em class="blind">메인으로</em>
                    <#if device == "pc" >
                        <img src="/images/logo/logo_e_m.png" alt="아이윈" class="off-logo"/>
                        <img src="/images/logo/logo_e_g_m.png" alt="아이윈" class="on-logo"/>
                    </#if>
                    <#if device == "mobile">
                        <img src="/images/logo/logo_e_mobile.png" alt="아이윈" class="off-logo"/>
                        <img src="/images/logo/logo_e_g_mobile.png" alt="아이윈" class="on-logo"/>
                    </#if>
                </a>
            </h1>
            <div class="header-util-box">
                <!-- 외국어선택 -->
                <div class="header-lang">
                    <ul class="lang-list clearfix">
                        <li><a href="/index">KOR</a></li>
                        <li class="selected"><a href="/eng/index">ENG</a></li>
                    </ul>
                </div>
                <!-- 사이트맵 버튼 ( 기본 ) -->
                <a href="/sitemap" class="sitemap-line-btn cm-modal-open-btn" title="사이트맵 열기">
                    <span class="line line1"></span><span class="line line2"></span><span class="line line3"></span>
                </a>
            </div>
        </div>
        <!-- ****************** GNB ********************** -->
        <!-- GNB PC  -->
        <nav id="gnb" class="total-menu">
            <h2 class="blind">주메뉴</h2>
            <div id="gnbBg"></div>
            <ul class="clearfix menu5 area">
                <li class="gnb1">
                    <a href="/eng/about">About Us</a>
                    <div class="gnb-2dep">
                        <ul>
                            <li><a href="/eng/about"><span>Greeting</span></a></li>
                            <li><a href="/eng/company/site"><span>Business site introduction</span></a></li>
                            <li><a href="/eng/company/certi"><span>Certification</span></a></li>
                            <li><a href="/eng/history"><span>History</span></a></li>
                            <li><a href="/eng/contact"><span>Contact</span></a></li>
                        </ul>
                    </div>
                </li>
                <li class="gnb2">
                    <a href="/eng/product#seatheat">Product</a>
                    <div class="gnb-2dep">
                        <ul>
                            <li><a href="/eng/product#seatheat"><span>SeatHeater</span></a></li>
                            <li><a href="/eng/product#handle"><span>Heating handle</span></a></li>
                            <li><a href="/eng/product#ventseat"><span>Ventilation seater</span></a></li>
                            <li><a href="/eng/product#warmer"><span>Warmer</span></a></li>
                            <li><a href="/eng/product#ecu"><span>ECU</span></a></li>
                        </ul>
                    </div>
                </li>
                <li class="gnb3">
                    <a href="/eng/investment/finance/cfs">Investment</a>
                    <div class="gnb-2dep">
                        <ul>
                            <li><a href="/eng/investment/finance/cfs"><span>Financial information</span></a></li>
                            <li><a href="/eng/investment/stock"><span>Announcement</span></a></li>
                            <li><a href="/eng/investment/announceinfo"><span>Disclosure Information</span></a></li>
                            <li><a href="/eng/investment/rules"><span>Regulations</span></a></li>
                        </ul>
                    </div>
                </li>
                <li class="gnb3">
                    <a href="/eng/hr/talent">HR</a>
                    <div class="gnb-2dep">
                        <ul>
                            <li><a href="/eng/hr/talent"><span>Talent</span></a></li>
                            <li><a href="/eng/hr/welfare"><span>Welfare</span></a></li>
                            <li><a href="/eng/hr/recruit"><span>Recruit</span></a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </nav>
    </div>
    <!-- GNB Mobile -->
    <button class="nav-open-btn" title="네비게이션 열기">
        <span class="line line1"></span><span class="line line2"></span><span class="line line3"></span>
    </button>
    <div class="gnb-overlay-bg-m"></div>
    <nav id="gnbM" class="gnb-style-basic">
        <h2 class="blind">주메뉴</h2>
        <div class="gnb-navigation-wrapper">
            <div class="gnb-navigation-inner">
                <ul id="navigation">
                    <li>
                        <a href="/eng/about">About Us</a>
                        <ul class="gnb-2dep">
                            <li><a href="/eng/about"><span>Greeting</span></a></li>
                            <li><a href="/eng/company/site"><span>Business site introduction</span></a></li>
                            <li><a href="/eng/company/certi"><span>Certification</span></a></li>
                            <li><a href="/eng/history"><span>History</span></a></li>
                            <li><a href="/eng/contact"><span>Contact</span></a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="/eng/product#seatheat">Product</a>
                        <ul class="gnb-2dep">
                            <li><a href="/eng/product#seatheat"><span>SeatHeater</span></a></li>
                            <li><a href="/eng/product#handle"><span>Heating handle</span></a></li>
                            <li><a href="/eng/product#ventseat"><span>Ventilation seater</span></a></li>
                            <li><a href="/eng/product#warmer"><span>Warmer</span></a></li>
                            <li><a href="/eng/product#ecu"><span>ECU</span></a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="/eng/investment/finance/cfs">Investment</a>
                        <ul class="gnb-2dep">
                            <li><a href="/eng/investment/finance/cfs"><span>Financial information</span></a></li>
                            <li><a href="/eng/investment/stock"><span>Announcement</span></a></li>
                            <li><a href="/eng/investment/announceinfo"><span>Disclosure Information</span></a></li>
                            <li><a href="/eng/investment/rules"><span>Regulations</span></a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="/eng/hr/talent">HR</a>
                        <ul class="gnb-2dep">
                            <li><a href="/eng/hr/talent"><span>Talent</span></a></li>
                            <li><a href="/eng/hr/welfare"><span>Welfare</span></a></li>
                            <li><a href="/eng/hr/recruit"><span>Recruit</span></a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
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
                <a href="/eng/index">
                    <img src="/images/home.png" alt="">
                </a>
            </div>
            <div class="nav_tap mobile_hidden js-navTap">
                <a href="javascript:void(0);">
                    <span>About Us</span>
                </a>
                <ul class="js-nav2depth">
                    <li>
                        <a href="/eng/product">Product</a>
                    </li>
                    <li>
                        <a href="/eng/investment">Investment</a>
                    </li>
                    <li>
                        <a href="/eng/hr/talent">HR</a>
                    </li>
                </ul>
            </div>
            <div class="nav_tap js-navTap"  style="z-index: 99;">
                <a href="javascript:void(0);">
                    <span>Business site introduction</span>
                </a>
                <ul class="js-nav2depth">
                    <li>
                        <a href="/eng/about">Greeting</a>
                    </li>
                    <li>
                        <a href="/eng/company/certi">Certification</a>
                    </li>
                    <li><a href="/eng/history">History</a></li>
                    <li>
                        <a href="/eng/contact">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- 중간 네비게이션 -->
    <!-- content -->
    <section id="content" class="wide">
        <!-- ****************** 상단정보 ********************** -->
        <!-- 상단정보 (기본/센터정렬) -->
        <aside id="contentInfoCon" style="margin-top: 100px;">
            <h3 class="content-tit font-noto">IWIN Business Instruction</h3>
        </aside>
        <article class="company-notice-content">
            <!-- 상단 탭 -->
            <article class="company-notice-inner notice-global-con">
                <div class="global-map-wrap">
                    <div class="area-big">
                        <div class="global-map-con">
                            <img src="https://www.uni-test.com/images/content/global_img_bg.png" alt="세계지도" />
                            <div class="global-nation-box">
                                <div class="nation-circle china" title="IWIN China" style="margin-left:-19%; margin-top:-9.5%"><span></span><span></span><span></span><i></i><p>IWIN China</p></div>
                                <div class="nation-circle korea" title="IWIN korea" style="margin-left:-13.5%; margin-top:-9.3%"><span></span><span></span><span></span><i></i><p>IWIN Korea</p></div>
                                <div class="nation-circle america" title="IWIN America" style="margin-left:13%; margin-top:-8.5%"><span></span><span></span><span></span><i></i><p>IWIN USA</p></div>
                                <div class="nation-circle Slovakia" title="IWIN Slovakia" style="margin-left:-34%; margin-top:-9.5%"><span></span><span></span><span></span><i></i><p>IWIN Slovakia</p></div>
                                <div class="nation-circle vietnam" title="IWIN vietnam" style="margin-left:-18.5%; margin-top:-5%"><span></span><span></span><span></span><i></i><p>IWIN Vietnam</p></div>
                            </div>
                        </div>
                        <div class="global-map-con-m">
                            <span class="global-img"></span>
                        </div>
                        <!-- <span class="global-img"></span> -->
                    </div>
                </div>

                <!-- 지점주소, 전화번호, 대표이메일 고객이 관리 가능 -->
                <div class="global-store-con mb-100">
                    <div class="area">
                        <ul class="global-store-list clearfix">
                            <li>
                                <div class="inner">
                                    <div class="global-nation">
                                        <div class="global-nation-tit">
                                            <h4 class="nation-tit">
                                                IWIN Headquarters
                                                <em>IWIN</em>
                                            </h4>
                                            <span class="national-flag"><img src="/images/logo/korea.png" alt="한국본사" /></span>
                                        </div>
                                    </div>
                                    <div class="global-store-info">
                                        <dl class="info-sec">
                                            <dt>Address</dt>
                                            <dd>Jangan-eup, Gijang-gun, Busan 110, Jangansandan 9-ro</dd>
                                        </dl>
                                        <dl class="info-sec">
                                            <dt>Call</dt>
                                            <dd>+82-51-711-2222</dd>
                                        </dl>
                                        <dl class="info-sec">
                                            <dt>Email</dt>
                                            <dd>hr@iwin.kr</dd>
                                        </dl>
                                    </div>
                                </div>
                            </li>
                            <li class="mb-10">
                                <div class="inner">
                                    <div class="global-nation">
                                        <div class="global-nation-tit">
                                            <h4 class="nation-tit">
                                                Vietnam Corporation
                                                <em>Vietnam Corporation</em>
                                            </h4>
                                            <span class="national-flag"><img src="/images/logo/vietnam.png" alt="베트남 지사" /></span>
                                        </div>
                                    </div>
                                    <div class="global-store-info">
                                        <dl class="info-sec">
                                            <dt>Address</dt>
                                            <dd>BCD Industrial complex, Ong Dong quarter, Tan Hiep Ward, Tan Uyen Commune, Binh Duong province, VN.</dd>
                                        </dl>
                                        <dl class="info-sec">
                                            <dt>Call</dt>
                                            <dd>+84-93-810-7099</dd>
                                        </dl>
                                        <dl class="info-sec">
                                            <dt>Email</dt>
                                            <dd>jilee83@iwin.kr</dd>
                                        </dl>
                                    </div>
                                </div>
                            </li>

                            <li>
                                <div class="inner">
                                    <div class="global-nation">
                                        <div class="global-nation-tit">
                                            <h4 class="nation-tit">
                                                China Corporation
                                                <em>BEIJING KWANGJIN CO.,Ltd.</em>
                                            </h4>
                                            <span class="national-flag"><img src="/images/logo/china.png" alt="중국 지사" /></span>
                                        </div>
                                    </div>
                                    <div class="global-store-info">
                                        <dl class="info-sec">
                                            <dt>Address</dt>
                                            <dd>CAIYUAN INDUSTRIAL ZONE, QIANFENGBO NANCAI TOWN, SHUNYI DISTRICT, BEIJING</dd>
                                        </dl>
                                        <dl class="info-sec">
                                            <dt>Call</dt>
                                            <dd>+86-10-8947-3751</dd>
                                        </dl>
                                        <dl class="info-sec">
                                            <dt>Email</dt>
                                            <dd>sungsik6@iwin.kr</dd>
                                        </dl>
                                    </div>
                                </div>
                            </li>
                            <li class="mb-10">
                                <div class="inner">
                                    <div class="global-nation">
                                        <div class="global-nation-tit">
                                            <h4 class="nation-tit">
                                                Slovakia Corporation
                                                <em>Slovakia Corporation</em>
                                            </h4>
                                            <span class="national-flag"><img src="/images/logo/slovekia.png" alt="슬로바키아 지사" /></span>
                                        </div>
                                    </div>
                                    <div class="global-store-info">
                                        <dl class="info-sec">
                                            <dt>Address</dt>
                                            <dd>Pavla Mudrona 5, 010 01 Zilina Slovakia</dd>
                                        </dl>
                                        <dl class="info-sec">
                                            <dt>Call</dt>
                                            <dd>+421-914-278-690</dd>
                                        </dl>
                                        <dl class="info-sec">
                                            <dt>Email</dt>
                                            <dd>jcwang@iwin.kr</dd>
                                        </dl>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="inner">
                                    <div class="global-nation">
                                        <div class="global-nation-tit">
                                            <h4 class="nation-tit">
                                                USA Corporation
                                                <em>USA Corporation</em>
                                            </h4>
                                            <span class="national-flag"><img src="/images/logo/usa.png" alt="미국 지사" /></span>
                                        </div>
                                    </div>
                                    <div class="global-store-info">
                                        <dl class="info-sec">
                                            <dt>Address</dt>
                                            <dd>1305 Wilbanks street Montgomery AL 36108</dd>
                                        </dl>
                                        <dl class="info-sec">
                                            <dt>Call</dt>
                                            <dd>+1-334-819-8693</dd>
                                        </dl>
                                        <dl class="info-sec">
                                            <dt>Email</dt>
                                            <dd>kjshin@iwin.kr</dd>
                                        </dl>
                                    </div>
                                </div>
                            </li>
                            <li class="mb-10">
                                <div class="inner">
                                    <div class="global-nation">
                                        <div class="global-nation-tit">
                                            <h4 class="nation-tit">
                                                Seetech System
                                                <em>Seetech System Corporation</em>
                                            </h4>
                                            <span class="national-flag"><img src="/images/logo/korea.png" alt="씨텍시스템" /></span>
                                        </div>
                                    </div>
                                    <div class="global-store-info">
                                        <dl class="info-sec">
                                            <dt>Address</dt>
                                            <dd>131, Gunsu 1-gil, Jiksan-eup, Seobuk-gu, Cheonan-si, Chungcheongnam-do, Republic of Korea</dd>
                                        </dl>
                                        <dl class="info-sec">
                                            <dt>Call</dt>
                                            <dd>+82-41-418-9410</dd>
                                        </dl>
                                        <dl class="info-sec">
                                            <dt>Email</dt>
                                            <dd>kimjh@iwin.kr</dd>
                                        </dl>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </article>
        </article>
    </section>
    <!-- //content -->
</main>
<!-- Footer Start-->
<section id="mainFooter" class="section fp-auto-height">
    <!-- Footer Start-->
    <div class="footer-area">
        <div class="container">
            <div class="footer-bottom">
                <div class="row d-flex justify-content-between align-items-center">
                    <div class="col-xl-7 col-lg-7 ">
                    </div>
                    <div class="col-xl-5 col-lg-5">
                        <div class="footer-copy-right text-right">
                            <img src="/images/logo/logo_e_footer.png">
                        </div>
                        <div class="footer-copy-right text-right">
                            <p>
                                Copyright &copy;
                                <script>
                                    document.write(new Date().getFullYear());
                                </script>. IWIN Inc. All rights reserved</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End-->
</section>
<!-- Footer End-->
<!-- Scroll Up -->
<div id="back-top">
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
    $(function () {
        $("#top_btn").on("click", function () {
            $("html, body").animate({scrollTop: 0}, '500');
            return false;
        });
    });
</script>
<script>

    function subNavTap() {
        var navTap = document.querySelectorAll('.js-navTap'),
            nav2depth = document.querySelectorAll('.js-nav2depth');

        Array.prototype.forEach.call(navTap, function (el) {
            el.addEventListener('click', function () {
                var siblings = getSiblings(el);
                for (var i = 0; i < siblings.length; i++) {
                    if (siblings[i].classList.contains('js-navTap')) {
                        siblings[i].classList.remove('show');
                    }
                }
                el.classList.toggle('show');
            })
            el.addEventListener('mouseleave', function () {
                el.classList.remove('show');
            })
        })
    }

    function getSiblings(t) {
        var children = t.parentElement.children;
        var temp = [];

        for (var i = 0; i < children.length; i++) {
            temp.push(children[i]);
        }

        return temp.filter(function (el) {
            return el != t;
        })
    }
    subNavTap();
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
<script>
    dep1 = 0,
        dep2 = 0;
</script>
<script type="text/javascript" src="/js/exclude/jquery.mCustomScrollbar.concat.min.js"></script>
<script type="text/javascript" src="/js/exclude/jquery.magnific-popup.js"></script>
<script type="text/javascript" src="/js/exclude/TweenMax.min.js"></script>
<script type="text/javascript" src="/js/exclude/splitting.min.js"></script>
<script type="text/javascript" src="/js/exclude/functions.js"></script>
<script type="text/javascript" src="/js/exclude/common.js"></script>
<script type="text/javascript" src="/js/exclude/layer_popup.js"></script>
<script type="text/javascript" src="/js/exclude/nav.js"></script>
<!--[if lt IE 9]>
<script src="/js/exclude/html5shiv.js"></script>
<script src="/js/exclude/respond.min.js"></script>
<![endif]--><!-- Fullpage JS  -->
<script type="text/javascript" src="/js/exclude/jquery.fullPage.js"></script>
<!-- // -->
<script type="text/javascript" src="/js/exclude/main.js"></script>
</body>
</html>