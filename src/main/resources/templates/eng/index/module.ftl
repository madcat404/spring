<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>IWIN</title>
    <meta name="Title" content="아이윈">
    <meta name="Subject" content="아이윈">
    <meta name="Keywords" content="">
    <meta name="Description" content="">
    <meta property="og:type" content="website">
    <meta property="og:title" content="아이윈">
    <meta property="og:description" content=""> <!-- 아이윈 URL 입력 -->
    <meta property="og:url" content=""> <!-- 아이윈 URL 입력 -->
    <meta name="twitter:card" content="summary">
    <meta name="twitter:title" content="아이윈">
    <meta name="twitter:description" content=""> <!-- 아이윈 URL 입력 -->
    <meta name="twitter:domain" content=""> <!-- 아이윈 URL 입력 -->
    <meta name="google-site-verification" content="">
    <meta name="naver-site-verification" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1"><!-- 모바일사이트, 반응형사이트 제작시 사용 -->
    <meta name="format-detection" content="telephone=no"/><!-- ios 자동전화걸기 방지 -->
    <meta name="NaverBot" content="All"/>
    <meta name="NaverBot" content="INDEX,FOLLOW"/>
    <meta name="Yeti" content="All"/>
    <meta name="Yeti" content="INDEX,FOLLOW"/>
    <meta name="Googlebot" content="All" />
    <meta name="Googlebot" content="INDEX,FOLLOW" />
    <meta name="Robots" content="INDEX,FOLLOW">
    <link rel="shortcut icon" type="image/x-icon" href="/images/favicon.ico">
    <link rel="canonical" href=""> <!-- 아이윈 URL 입력 -->

    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/board.css">
    <link rel="stylesheet" href="/css/fontawesome-all.min.css">

    <!-- Plugin -->
    <link rel="stylesheet" type="text/css" href="/css/exclude/slick.css">
    <link rel="stylesheet" type="text/css" href="/css/exclude/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" type="text/css" href="/css/exclude/magnific-popup.css">
    <link rel="stylesheet" type="text/css" href="/css/exclude/aos.css" />
    <link rel="stylesheet" type="text/css" href="/css/exclude/swiper.css" />
    <link rel="stylesheet" type="text/css" href="/css/exclude/jquery.fullPage.css" />

    <link rel="stylesheet" href="/css/exclude/default.css">
    <link rel="stylesheet" href="/css/exclude/layout.css">
    <link rel="stylesheet" href="/css/exclude/content.css">
    <link rel="stylesheet" href="/css/exclude/main.css" />
    <#--    <link rel="stylesheet" href="/css/exclude/language.css" /><!-- 해당언어에서만 사용하는 css &ndash;&gt;-->
    <link rel="stylesheet" href="/css/exclude/layout_responsive.css">
    <link rel="stylesheet" href="/css/exclude/content_responsive.css">
    <link rel="stylesheet" href="/css/exclude/main_responsive.css" />
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/icon?family=Material+Icons"><!-- google -->
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css"><!-- naver -->

    <script type="text/javascript" src="/js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript">
        // 숫자 카운트
        function numberCounter2(target_frame, target_number) {
            this.count = 0; this.diff = 0;
            this.target_count = parseInt(target_number);
            this.target_frame = document.getElementById(target_frame);
            this.timer = null;
            this.counter();
        };
        numberCounter2.prototype.counter = function() {
            var self = this;
            this.diff = this.target_count - this.count;

            if(this.diff > 0) {
                self.count += Math.ceil(this.diff / 5);
            }

            this.target_frame.innerHTML = this.count.toString();

            if(this.count < this.target_count) {
                this.timer = setTimeout(function() { self.counter(); }, 30);
            } else {
                clearTimeout(this.timer);
            }
        };
        function callCount2(target, number) {
            return new numberCounter2(target, number);
        }
    </script>
</head>

<body>
<!--[if lt IE 7]>
<p class="cm-alert-ie">현재 웹브라우저에서는 사이트가 정상적으로 표시되지 않을 수 있습니다. <strong><a href="http://browsehappy.com/" target="_blank">여기를 클릭</a></strong>하여 웹브라우저를 업그레이드 하세요.</p>
<![endif]-->
<!-- accessibility -->
<div class="cm-accessibility">
    <a href="#mainVisual">본문바로가기</a>
</div>
<!-- //accessibility -->
<div id="wrap" class="fullpage-wrapper">
    <!-- header -->
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
    <!-- container -->
    <div id="fullpage">
        <!-- ****************** 메인비주얼 ********************** -->
        <section id="mainVisual" class="section">
            <div class="main-visual-con">
                <div class="main-visual-item" data-dot="IWIN">
                    <div class="main-visual-pc-img" style="background:#fff url(/images/unitest/main01.jpg) no-repeat 50% 50%;"></div>
                    <div class="main-visual-m-img"><span style="background:#fff url(/images/unitest/main01.jpg) no-repeat 50% 50%;"></span></div>	<!-- 모바일이미지 -->
                    <div class="main-visual-txt-con">
                        <div class="main-visual-txt-inner area-box">
                            <div class="visual-txt-wrap">
                                <#--                                <p class="main-visual-txt2">-->
                                <strong class="main-visual-txt1 cm-word-sxplit-JS" data-splitting data-css-property="animation" data-speed="0.03" data-speed-delay="0.3">Global company
                                    <br/>for comfort driving
                                </strong>
                                <#--                                 </p>-->
                                <p class="main-visual-txt2">IWIN leading the world with technology</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="main-visual-item" data-dot="IWIN">
                    <div class="main-visual-pc-img" style="background:#fff url(/images/main/mainvisual02.png) no-repeat 50% 50%;"></div>
                    <div class="main-visual-m-img"><span style="background:#fff url(/images/main/mainvisual02.png) no-repeat 50% 50%;"></span></div>	<!-- 모바일이미지 -->
                    <div class="main-visual-txt-con">
                        <div class="main-visual-txt-inner area-box">
                            <div class="visual-txt-wrap">
                                <strong class="main-visual-txt1 cm-word-sxplit-JS" data-splitting data-css-property="animation" data-speed="0.03" data-speed-delay="0.3">Global company
                                    <br/>for comfort driving
                                </strong>
                                <p class="main-visual-txt2">IWIN leading the world with technology</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="main-visual-item" data-dot="IWIN">
                    <div class="main-visual-pc-img" style="background:#fff url(/images/main/mainvisual03.png) no-repeat 50% 50%;"></div>
                    <div class="main-visual-m-img"><span style="background:#fff url(/images/main/mainvisual03.png) no-repeat 50% 50%;"></span></div>	<!-- 모바일이미지 -->
                    <div class="main-visual-txt-con">
                        <div class="main-visual-txt-inner area-box">
                            <div class="visual-txt-wrap">
                                <strong class="main-visual-txt1 cm-word-sxplit-JS" data-splitting data-css-property="animation" data-speed="0.03" data-speed-delay="0.3">Global company
                                    <br/>for comfort driving
                                </strong>
                                <p class="main-visual-txt2">IWIN leading the world with technology</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="main-visual-item" data-dot="IWIN">
                    <div class="main-visual-pc-img" style="background:#fff url(/images/main/mainvisual04.png) no-repeat 50% 50%;"></div>
                    <div class="main-visual-m-img"><span style="background:#fff url(/images/main/mainvisual04.png) no-repeat 50% 50%;"></span></div>	<!-- 모바일이미지 -->
                    <div class="main-visual-txt-con">
                        <div class="main-visual-txt-inner area-box">
                            <div class="visual-txt-wrap">
                                <strong class="main-visual-txt1 cm-word-sxplit-JS" data-splitting data-css-property="animation" data-speed="0.03" data-speed-delay="0.3">Global company
                                    <br/>for comfort driving
                                </strong>
                                <p class="main-visual-txt2">IWIN leading the world with technology</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="main-scroll-icon">
                <span><em class="icon"></em>Scroll down</span>
            </div>
        </section>
        <!-- ****************** 메인 컨텐츠1 ********************** -->
        <section id="mainContent1" class="section">
            <article class="main-con-01">
                <div class="area-big">
                    <div class="main-tit-box">
                        <h3 class="main-tit">About Us</h3>
                    </div>
                    <ul class="main-about-us clearfix">
                        <li class="about-us-item about-us-item1">
                            <div class="item-inner" style="background:url('/images/main/con01.jpg') no-repeat 50% 0">
                                <div class="about-us-item-inner">
                                    <p class="item-txt-box">
                                        <span class="item-tit">Founding date</span>
                                        <!-- 카운트되는 숫자들 관리가능. data-num, 지금 숫자부분 동일한 값 들어가게 해주세요  -->
                                        <span class="item-num"><strong class="num counter" id="counter1-1" data-num="1999">1999</strong><b class="unit">Year</b></span>
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li class="about-us-item about-us-item2">
                            <div class="item-inner" style="background:url('/images/main/con02.jpg') no-repeat 50% 0">
                                <div class="about-us-item-inner">
                                    <p class="item-txt-box">
                                        <span class="item-tit">Sales amount</span>
                                        <span class="item-num"><strong class="num counter" id="counter1-2" data-num="953+">953+</strong><em class="plus">+</em><b class="unit">billion won</b></span>
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li class="about-us-item about-us-item3">
                            <div class="item-inner" style="background:url('/images/main/con03.jpg') no-repeat 50% 0">
                                <div class="about-us-item-inner">
                                    <p class="item-txt-box">
                                        <span class="item-tit">Listing date</span>
                                        <span class="item-num"><strong class="num counter" id="counter1-3" data-num="2006">2006</strong><b class="unit">Year</b></span>
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li class="about-us-item about-us-item4">
                            <div class="item-inner" style="background:url('/images/main/con04.jpg') no-repeat 50% 0">
                                <div class="about-us-item-inner">
                                    <p class="item-txt-box">
                                        <span class="item-tit">Executives</span>
                                        <span class="item-num"><strong class="num counter" id="counter1-4" data-num="700+">700+</strong><em class="plus">+</em><b class="unit">persons</b></span>
                                    </p>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <div class="invest-info-con clearfix">
                        <div class="lf-tit" style="width: 480px;">
                            <span class="icon"><img src="/images/unitest/invest_info_icon.png" alt="투자정보" /></span>
                            <span class="tit">
                                <strong>Investment information</strong><em>Investment information</em>
                            </span>
                        </div>
                        <#if current.VAL gt previous.VAL >
                        <div class="rt-invest up"><!-- 상한가일 경우 : up / 하한가일 경우 : down클래스 붙게 해주세요. -->
                            <#else >
                            <div class="rt-invest down"><!-- 상한가일 경우 : up / 하한가일 경우 : down클래스 붙게 해주세요. -->
                                </#if>
                                <span class="price">${current.VAL}</span>
                                <dl class="price-info clearfix price-info-01">
                                    <dt>Day-to-Day</dt>
                                    <dd>
                                        <span><em class="icon"></em>${current.VAL - previous.VAL}</span>
                                        <span>${((current.VAL - previous.VAL) * 100 / previous.VAL)?number?string("0.00")}%</span>
                                    </dd>
                                </dl>
                                <dl class="price-info clearfix price-info-02">
                                    <dt>Previous day's closing price</dt>
                                    <dd>${previous.VAL}</dd>
                                </dl>
                                <div class="more-btn"><a href="/eng/investment/finance/cfs">more +</a></div>
                            </div>
                        </div>
                    </div>
            </article>
        </section>
        <!-- ****************** 메인 컨텐츠2 ********************** -->
        <section id="mainContent2" class="section">
            <article class="main-con-02 clearfix">
                <div class="main-02-lf">
                    <a href="/eng/product/seatheat" class="main-02-inner">
                        <div class="inner-con">
                            <#--                            <span class="txt-kr">Seat Heater</span>-->
                            <span class="txt-en cm-word-split-JS" data-splitting data-css-property="animation" data-speed="0.03" data-speed-delay="0.5">Seat Heater</span>
                            <#--                            <p class="txt-explain">성장과 변화를 두려워하지 않는 <br>아이윈은 글로벌 성장하고 있습니다.</p>-->
                        </div>
                        </a>
                </div>
                <div class="main-02-rt">
                    <a href="/eng/product/coolseat" class="main-02-inner">
                        <div class="inner-con">
                            <#--                            <span class="txt-kr">Ventilated Seat</span>-->
                            <span class="txt-en cm-word-split-JS" data-splitting data-css-property="animation" data-speed="0.03" data-speed-delay="0.5">Ventilated Seat</span>
                            <#--                            <p class="txt-explain">성장과 변화를 두려워하지 않는 <br>아이윈은 글로벌 성장하고 있습니다.</p>-->
                        </div>
                    </a>
                </div>
                <div class="main-02-rt2">
                    <a href="/eng/product/handle" class="main-02-inner">
                        <div class="inner-con">
                            <#--                            <span class="txt-kr">Heated Steering Wheel</span>-->
                            <span class="txt-en cm-word-split-JS" data-splitting data-css-property="animation" data-speed="0.03" data-speed-delay="0.5">Heated Steering Wheel</span>
                            <#--                            <p class="txt-explain">성장과 변화를 두려워하지 않는 <br>아이윈은 글로벌 성장하고 있습니다.</p>-->
                        </div>
                    </a>
                </div>
                <div class="main-02-lf2">
                    <a href="/eng/product/ecu" class="main-02-inner">
                        <div class="inner-con">
                            <#--                            <span class="txt-kr">ECU</span>-->
                            <span class="txt-en cm-word-split-JS" data-splitting data-css-property="animation" data-speed="0.03" data-speed-delay="0.5">ECU</span>
                            <#--                            <p class="txt-explain">성장과 변화를 두려워하지 않는 <br>아이윈은 글로벌 성장하고 있습니다.</p>-->
                        </div>
                    </a>
                </div>
                <div class="main-02-rt3">
                    <a href="/eng/product/irwarmer" class="main-02-inner">
                        <div class="inner-con">
                            <#--                            <span class="txt-kr">IR Warmer</span>-->
                            <span class="txt-en cm-word-split-JS" data-splitting data-css-property="animation" data-speed="0.03" data-speed-delay="0.5">IR Warmer</span>
                            <#--                            <p class="txt-explain">성장과 변화를 두려워하지 않는 <br>아이윈은 글로벌 성장하고 있습니다.</p>-->
                        </div>
                    </a>
                </div>
            </article>
        </section>
        <!-- ****************** 메인 컨텐츠3  ********************** -->
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
    </div>
    <!-- //container -->
</div>
<script>
    dep1 = 0,
        dep2 = 0;
</script>
<script type="text/javascript" src="/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="/js/slick.min.js"></script>
<script type="text/javascript" src="/js/exclude/jquery.mCustomScrollbar.concat.min.js"></script>
<script type="text/javascript" src="/js/exclude/jquery.magnific-popup.js"></script>
<script type="text/javascript" src="/js/aos.js"></script>
<script type="text/javascript" src="/js/swiper.min.js"></script>
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
<![endif]-->
</body>
</html>