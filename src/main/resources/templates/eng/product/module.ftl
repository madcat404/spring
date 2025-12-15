<!DOCTYPE html>
<html>

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
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

    <script src="/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="/js/jquery.easing.1.3.js"></script>
    <script src="/js/swiper.min.js"></script>
    <script src="/js/aos.js"></script>
    <script src="/js/common.js"></script>
    <script src="https://unpkg.com/scrollreveal@4.0.0/dist/scrollreveal.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/protonet-jquery.inview/1.1.2/jquery.inview.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/skrollr/0.6.30/skrollr.min.js"></script>

</head>

<body>
<header id="header" class="">
    <div class="gnb-overlay-bg"></div>
    <div id="headerInnerWrap">
        <!-- ****************** 헤더상단 ********************** -->
        <div id="headerInner" class="clearfix">
            <h1 class="logo">
                <a href="/index">
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
                <a href="/sitemap" class="sitemap-line-btn cm-modal-open-btn" title="sitemap">
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
                            <h2 data-aos="fade-right">Product</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- 중간 네비게이션 -->
    <nav class="section__nav" style="margin-bottom: 0px;">
        <div class="section__inner">
            <div class="nav_tap">
                <a href="/">
                    <img src="/images/home.png" alt="">
                </a>
            </div>
            <div class="nav_tap mobile_hidden js-navTap">
                <a href="javascript:void(0);">
                    <span>Product</span>
                </a>
                <ul class="js-nav2depth">
                    <li>
                        <a href="/eng/about">About Us</a>
                    </li>
                    <li>
                        <a href="/eng/investment/finance/cfs">Investment</a>
                    </li>
                    <li>
                        <a href="/eng/hr/talent">HR</a>
                    </li>
                </ul>
            </div>
            <div class="nav_tap js-navTap">
                <a href="javascript:void(0);">
                    <span>Product</span>
                </a>
                <ul class="js-nav2depth">
                    <li><a href="/eng/product#seatheat"><span>SeatHeater</span></a></li>
                    <li><a href="/eng/product#handle"><span>Heating handle</span></a></li>
                    <li><a href="/eng/product#ventseat"><span>Ventilation seater</span></a></li>
                    <li><a href="/eng/product#warmer"><span>Warmer</span></a></li>
                    <li><a href="/eng/product#ecu"><span>ECU</span></a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- 중간 네비게이션 -->
    <!-- 시트히터 -->
    <section class="section section__content section__comp_seat" style="margin-bottom: 0px;">
        <div class="views-row">
            <style>
                video {
                    width: 100%;
                }
                .tile_1_full_img {
                    /*height: 100vh;*/
                    background: white;
                    overflow: hidden;
                }
                .tile_1_full_img .image-container {
                    /*height: 100vh;*/
                    background-size: cover !important;
                    background-position: center center !important;
                    background-repeat: no-repeat;
                }

                .tile_1_full_img .image {
                    display: inline-block;
                    width: 100%;
                    vertical-align: top;
                    height: 100%;
                    background-size: cover !important;
                    background-position: center center !important;
                    background-repeat: no-repeat !important;
                }

                .tile_1_header {
                    color: orange;
                    font-size: 25px;
                    font-weight: 700;
                    margin-bottom: 20px;
                }
                .tile_2_header {
                    color: orange;
                    font-size: 25px;
                    font-weight: 700;
                    margin-bottom: 20px;
                }
                .tile_1_subheader {
                    font-size: 70px;
                    color: gray;
                    font-weight: 300;
                    margin-bottom: 40px;
                    line-height: 90px;
                }
                .tile_2_subheader {
                    font-size: 70px;
                    color: gray;
                    font-weight: 300;
                    margin-bottom: 40px;
                    line-height: 90px;
                }
                .tile_1_body {
                    font-weight: 300;
                    color: dimgrey;
                    font-size: 18px;
                }
                .tile_2_body {
                    font-weight: 300;
                    color: dimgrey;
                    font-size: 18px;
                }
                .tile_1_img_left .row,
                .tile_1_img_right .row {
                    margin-right: 0 !important;
                }
                .tile_2_img_left .row,
                .tile_2_img_right .row {
                    margin-right: 0 !important;
                }
                .tile_1_img_left,
                .tile_1_img_right {
                    background: white;
                    /*min-height: 85vh !important;*/
                    height: auto !important;
                    width: 100% !important;
                }
                .tile_2_img_left,
                .tile_2_img_right {
                    background: white;
                    min-height: 50vh !important;
                    height: auto !important;
                    width: 100% !important;
                }
                .tile_1_img_left .col-6.image-container,
                .tile_1_img_right .col-6.image-container {
                    /*min-height: 85vh;*/
                    height: auto !important;
                    padding: 0px !important;
                    display: flex;
                }
                .tile_2_img_left .col-6.image-container,
                .tile_2_img_right .col-6.image-container {
                    min-height: 50vh;
                    height: auto !important;
                    padding: 0px !important;
                    display: flex;
                }
                .tile_1_img_left .image,
                .tile_1_img_right .image {
                    display: inline-block;
                    width: 100%;
                    vertical-align: top;
                    /*min-height: 85vh !important;*/
                    height: auto !important;
                    background-position: center center !important;
                    background-repeat: no-repeat !important;
                    -webkit-background-size: 100% !important;
                    -moz-background-size: 100% !important;
                    -o-background-size: 100% !important;
                    background-size: 100% !important;
                    -webkit-background-size: cover !important;
                    -moz-background-size: cover !important;
                    -o-background-size: cover !important;
                    background-size: cover !important;
                }
                .tile_2_img_left .image,
                .tile_2_img_right .image {
                    display: inline-block;
                    width: 100%;
                    vertical-align: top;
                    min-height: 50vh !important;
                    height: auto !important;
                    background-position: center center !important;
                    background-repeat: no-repeat !important;
                    -webkit-background-size: 100% !important;
                    -moz-background-size: 100% !important;
                    -o-background-size: 100% !important;
                    background-size: 100% !important;
                    -webkit-background-size: cover !important;
                    -moz-background-size: cover !important;
                    -o-background-size: cover !important;
                    background-size: cover !important;
                }

                .tile_1_img_left .col-6.tile_1_info,
                .tile_1_img_right .col-6.tile_1_info {
                    min-height: 100% !important;
                    height: auto !important;
                    padding: 30px 50px;
                    padding-right: 100px;
                    overflow: initial !important;
                }
                .tile_2_img_left .col-6.tile_2_info,
                .tile_2_img_right .col-6.tile_2_info {
                    min-height: 100% !important;
                    height: auto !important;
                    padding: 30px 50px;
                    padding-right: 100px;
                    overflow: initial !important;
                }
                .tile_1_img_left .row,
                .tile_1_img_right .row {
                    margin-left: 0 !important;
                    margin-right: 0 !important;
                }
                .tile_2_img_left .row,
                .tile_2_img_right .row {
                    margin-left: 0 !important;
                    margin-right: 0 !important;
                }
                .tile_1_header, .tile_1_header * {
                    text-transform: uppercase !important;
                    text-decoration: none !important;
                    color: #e8842e !important;
                }
                .tile_2_header, .tile_2_header * {
                    text-transform: uppercase !important;
                    text-decoration: none !important;
                    color: #e8842e !important;
                }
                .tile_1_subheader, .tile_1_subheader * {
                    text-decoration: none !important;
                    color: gray !important;
                    font-size: 55px !important;
                    line-height: 60px !important;
                    margin-bottom: 20px !important;
                }
                .tile_2_subheader, .tile_2_subheader * {
                    text-decoration: none !important;
                    color: gray !important;
                    font-size: 55px !important;
                    line-height: 60px !important;
                    margin-bottom: 20px !important;
                }

                #seatheat .desktopOnly { display: block !important; }
                #seatheat .desktopOnlyInline { display: inline-block !important; }
                #seatheat .desktopOnlyFlex { display: flex !important; }
                #seatheat .mobileOnly,
                #seatheat .mobileOnlyInline,
                #seatheat .mobileOnlyFlex { display: none !important; }

                #title-1-section-2 .desktopOnly { display: block !important; }
                #title-1-section-2 .desktopOnlyInline { display: inline-block !important; }
                #title-1-section-2 .desktopOnlyFlex { display: flex !important; }
                #title-1-section-2 .mobileOnly,
                #title-1-section-2 .mobileOnlyInline,
                #title-1-section-2 .mobileOnlyFlex { display: none !important; }

                #title-1-section-3 .desktopOnly { display: block !important; }
                #title-1-section-3 .desktopOnlyInline { display: inline-block !important; }
                #title-1-section-3 .desktopOnlyFlex { display: flex !important; }
                #title-1-section-3 .mobileOnly,
                #title-1-section-3 .mobileOnlyInline,
                #title-1-section-3 .mobileOnlyFlex { display: none !important; }

                #handle .desktopOnly { display: block !important; }
                #handle .desktopOnlyInline { display: inline-block !important; }
                #handle .desktopOnlyFlex { display: flex !important; }
                #handle .mobileOnly,
                #handle .mobileOnlyInline,
                #handle .mobileOnlyFlex { display: none !important; }

                #title-2-section-2 .desktopOnly { display: block !important; }
                #title-2-section-2 .desktopOnlyInline { display: inline-block !important; }
                #title-2-section-2 .desktopOnlyFlex { display: flex !important; }
                #title-2-section-2 .mobileOnly,
                #title-2-section-2 .mobileOnlyInline,
                #title-2-section-2 .mobileOnlyFlex { display: none !important; }

                #title-2-section-3 .desktopOnly { display: block !important; }
                #title-2-section-3 .desktopOnlyInline { display: inline-block !important; }
                #title-2-section-3 .desktopOnlyFlex { display: flex !important; }
                #title-2-section-3 .mobileOnly,
                #title-2-section-3 .mobileOnlyInline,
                #title-2-section-3 .mobileOnlyFlex { display: none !important; }

                #ventseat .desktopOnly { display: block !important; }
                #ventseat .desktopOnlyInline { display: inline-block !important; }
                #ventseat .desktopOnlyFlex { display: flex !important; }
                #ventseat .mobileOnly,
                #ventseat .mobileOnlyInline,
                #ventseat .mobileOnlyFlex { display: none !important; }

                #title-3-section-2 .desktopOnly { display: block !important; }
                #title-3-section-2 .desktopOnlyInline { display: inline-block !important; }
                #title-3-section-2 .desktopOnlyFlex { display: flex !important; }
                #title-3-section-2 .mobileOnly,
                #title-3-section-2 .mobileOnlyInline,
                #title-3-section-2 .mobileOnlyFlex { display: none !important; }

                #title-3-section-3 .desktopOnly { display: block !important; }
                #title-3-section-3 .desktopOnlyInline { display: inline-block !important; }
                #title-3-section-3 .desktopOnlyFlex { display: flex !important; }
                #title-3-section-3 .mobileOnly,
                #title-3-section-3 .mobileOnlyInline,
                #title-3-section-3 .mobileOnlyFlex { display: none !important; }

                #warmer .desktopOnly { display: block !important; }
                #warmer .desktopOnlyInline { display: inline-block !important; }
                #warmer .desktopOnlyFlex { display: flex !important; }
                #warmer .mobileOnly,
                #warmer .mobileOnlyInline,
                #warmer .mobileOnlyFlex { display: none !important; }

                #title-4-section-2 .desktopOnly { display: block !important; }
                #title-4-section-2 .desktopOnlyInline { display: inline-block !important; }
                #title-4-section-2 .desktopOnlyFlex { display: flex !important; }
                #title-4-section-2 .mobileOnly,
                #title-4-section-2 .mobileOnlyInline,
                #title-4-section-2 .mobileOnlyFlex { display: none !important; }

                #title-4-section-3 .desktopOnly { display: block !important; }
                #title-4-section-3 .desktopOnlyInline { display: inline-block !important; }
                #title-4-section-3 .desktopOnlyFlex { display: flex !important; }
                #title-4-section-3 .mobileOnly,
                #title-4-section-3 .mobileOnlyInline,
                #title-4-section-3 .mobileOnlyFlex { display: none !important; }

                #ecu .desktopOnly { display: block !important; }
                #ecu .desktopOnlyInline { display: inline-block !important; }
                #ecu .desktopOnlyFlex { display: flex !important; }
                #ecu .mobileOnly,
                #ecu .mobileOnlyInline,
                #ecu .mobileOnlyFlex { display: none !important; }

                #title-5-section-2 .desktopOnly { display: block !important; }
                #title-5-section-2 .desktopOnlyInline { display: inline-block !important; }
                #title-5-section-2 .desktopOnlyFlex { display: flex !important; }
                #title-5-section-2 .mobileOnly,
                #title-5-section-2 .mobileOnlyInline,
                #title-5-section-2 .mobileOnlyFlex { display: none !important; }

                #title-5-section-3 .desktopOnly { display: block !important; }
                #title-5-section-3 .desktopOnlyInline { display: inline-block !important; }
                #title-5-section-3 .desktopOnlyFlex { display: flex !important; }
                #title-5-section-3 .mobileOnly,
                #title-5-section-3 .mobileOnlyInline,
                #title-5-section-3 .mobileOnlyFlex { display: none !important; }

                @media all and (max-width: 1000px) {
                    .tile_1_full_img {
                        height: auto !important;
                        overflow: initial !important;
                    }
                    .tile_1_img_left,
                    .tile_1_img_right {
                        min-height: auto !important;
                    }
                    .tile_1_img_left .col-6,
                    .tile_1_img_right .col-6 {
                        flex: 0 0 100%;
                        max-width: 100%;
                    }
                    .tile_2_img_left .col-6,
                    .tile_2_img_right .col-6 {
                        flex: 0 0 100%;
                        max-width: 100%;
                    }
                    .tile_1_img_left .col-6.image-container,
                    .tile_1_img_right .col-6.image-container {
                        /*min-height: 50vh !important;*/
                        /*height: 50vh !important;*/
                        padding: 0 !important;
                    }
                    .tile_2_img_left .col-6.image-container,
                    .tile_2_img_right .col-6.image-container {
                        min-height: 50vh !important;
                        height: 50vh !important;
                        padding: 0 !important;
                    }
                    .tile_1_img_left .image,
                    .tile_1_img_right .image {
                        width: 100% !important;
                    }
                    .tile_2_img_left .image,
                    .tile_2_img_right .image {
                        width: 100% !important;
                    }
                    .tile_1_img_left .image,
                    .tile_1_img_right .image,
                    .tile_1_full_img .image {
                        /*min-height: 50vh !important;*/
                        /*height: 50vh !important;*/
                    }
                    .tile_2_img_left .image,
                    .tile_2_img_right .image,
                    .tile_2_full_img .image {
                        min-height: 50vh !important;
                        height: 50vh !important;
                    }
                    .tile_1_img_left .col-6.tile_1_info,
                    .tile_1_img_right .col-6.tile_1_info {
                        height: auto !important;
                        padding: 30px;
                        overflow: initial !important;
                    }
                    .tile_2_img_left .col-6.tile_2_info,
                    .tile_2_img_right .col-6.tile_2_info {
                        height: auto !important;
                        padding: 30px;
                        overflow: initial !important;
                    }
                    .tile_1_img_left,
                    .tile_1_img_right,
                    .tile_1_full_img {
                        height: auto !important;
                        overflow: initial !important;
                    }
                    .tile_2_img_left,
                    .tile_2_img_right,
                    .tile_2_full_img {
                        height: auto !important;
                        overflow: initial !important;
                    }
                    .tile_1_img_left *,
                    .tile_1_img_right *,
                    .tile_1_full_img *{
                        overflow: initial !important;
                    }
                    .tile_2_img_left *,
                    .tile_2_img_right *,
                    .tile_2_full_img *{
                        overflow: initial !important;
                    }
                    .tile_1_full_img .row {
                        height: auto !important;
                        position: static !important;
                        width: calc(100vw - 15px) !important;
                    }
                    .tile_1_full_img .image-container {
                        /*height: 50vh !important;*/
                    }
                    .tile_1_full_img .tile_1_text_container {
                        height: auto !important;
                        width: 100vw !important;
                    }
                    .tile_1_full_img .tile_1_text_container * {
                        color: gray !important;
                    }
                    .tile_1_header, .tile_1_header * {
                        font-size: 20px !important;
                        line-height: 25px !important;
                    }
                    .tile_2_header, .tile_2_header * {
                        font-size: 20px !important;
                        line-height: 25px !important;
                    }
                    .tile_1_subheader, .tile_1_subheader * {
                        font-size: 40px !important;
                        line-height: 45px !important;
                    }
                    .tile_2_subheader, .tile_2_subheader * {
                        font-size: 40px !important;
                        line-height: 45px !important;
                    }
                    .tile_1_body, .tile_1_body * {
                        font-size: 15px !important;
                        line-height: 20px !important;
                    }
                    .tile_2_body, .tile_2_body * {
                        font-size: 15px !important;
                        line-height: 20px !important;
                    }
                    #seatheat .desktopOnly,
                    #seatheat .desktopOnlyInline,
                    #seatheat .desktopOnlyFlex { display: none !important; }
                    #seatheat .mobileOnly { display: block !important; }
                    #seatheat .mobileOnlyInline { display: inline-block !important; }
                    #seatheat .mobileOnlyFlex { display: flex !important; }

                    #title-1-section-2 .desktopOnly,
                    #title-1-section-2 .desktopOnlyInline,
                    #title-1-section-2 .desktopOnlyFlex { display: none !important; }
                    #title-1-section-2 .mobileOnly { display: block !important; }
                    #title-1-section-2 .mobileOnlyInline { display: inline-block !important; }
                    #title-1-section-2 .mobileOnlyFlex { display: flex !important; }

                    #title-1-section-3 .desktopOnly,
                    #title-1-section-3 .desktopOnlyInline,
                    #title-1-section-3 .desktopOnlyFlex { display: none !important; }
                    #title-1-section-3 .mobileOnly { display: block !important; }
                    #title-1-section-3 .mobileOnlyInline { display: inline-block !important; }
                    #title-1-section-3 .mobileOnlyFlex { display: flex !important; }

                    #handle .desktopOnly,
                    #handle .desktopOnlyInline,
                    #handle .desktopOnlyFlex { display: none !important; }
                    #handle .mobileOnly { display: block !important; }
                    #handle .mobileOnlyInline { display: inline-block !important; }
                    #handle .mobileOnlyFlex { display: flex !important; }

                    #title-2-section-2 .desktopOnly,
                    #title-2-section-2 .desktopOnlyInline,
                    #title-2-section-2 .desktopOnlyFlex { display: none !important; }
                    #title-2-section-2 .mobileOnly { display: block !important; }
                    #title-2-section-2 .mobileOnlyInline { display: inline-block !important; }
                    #title-2-section-2 .mobileOnlyFlex { display: flex !important; }

                    #title-2-section-3 .desktopOnly,
                    #title-2-section-3 .desktopOnlyInline,
                    #title-2-section-3 .desktopOnlyFlex { display: none !important; }
                    #title-2-section-3 .mobileOnly { display: block !important; }
                    #title-2-section-3 .mobileOnlyInline { display: inline-block !important; }
                    #title-2-section-3 .mobileOnlyFlex { display: flex !important; }

                    #ventseat .desktopOnly,
                    #ventseat .desktopOnlyInline,
                    #ventseat .desktopOnlyFlex { display: none !important; }
                    #ventseat .mobileOnly { display: block !important; }
                    #ventseat .mobileOnlyInline { display: inline-block !important; }
                    #ventseat .mobileOnlyFlex { display: flex !important; }

                    #title-3-section-2 .desktopOnly,
                    #title-3-section-2 .desktopOnlyInline,
                    #title-3-section-2 .desktopOnlyFlex { display: none !important; }
                    #title-3-section-2 .mobileOnly { display: block !important; }
                    #title-3-section-2 .mobileOnlyInline { display: inline-block !important; }
                    #title-3-section-2 .mobileOnlyFlex { display: flex !important; }

                    #title-3-section-3 .desktopOnly,
                    #title-3-section-3 .desktopOnlyInline,
                    #title-3-section-3 .desktopOnlyFlex { display: none !important; }
                    #title-3-section-3 .mobileOnly { display: block !important; }
                    #title-3-section-3 .mobileOnlyInline { display: inline-block !important; }
                    #title-3-section-3 .mobileOnlyFlex { display: flex !important; }

                    #warmer .desktopOnly,
                    #warmer .desktopOnlyInline,
                    #warmer .desktopOnlyFlex { display: none !important; }
                    #warmer .mobileOnly { display: block !important; }
                    #warmer .mobileOnlyInline { display: inline-block !important; }
                    #warmer .mobileOnlyFlex { display: flex !important; }

                    #title-4-section-2 .desktopOnly,
                    #title-4-section-2 .desktopOnlyInline,
                    #title-4-section-2 .desktopOnlyFlex { display: none !important; }
                    #title-4-section-2 .mobileOnly { display: block !important; }
                    #title-4-section-2 .mobileOnlyInline { display: inline-block !important; }
                    #title-4-section-2 .mobileOnlyFlex { display: flex !important; }

                    #title-4-section-3 .desktopOnly,
                    #title-4-section-3 .desktopOnlyInline,
                    #title-4-section-3 .desktopOnlyFlex { display: none !important; }
                    #title-4-section-3 .mobileOnly { display: block !important; }
                    #title-4-section-3 .mobileOnlyInline { display: inline-block !important; }
                    #title-4-section-3 .mobileOnlyFlex { display: flex !important; }

                    #ecu .desktopOnly,
                    #ecu .desktopOnlyInline,
                    #ecu .desktopOnlyFlex { display: none !important; }
                    #ecu .mobileOnly { display: block !important; }
                    #ecu .mobileOnlyInline { display: inline-block !important; }
                    #ecu .mobileOnlyFlex { display: flex !important; }

                    #title-5-section-2 .desktopOnly,
                    #title-5-section-2 .desktopOnlyInline,
                    #title-5-section-2 .desktopOnlyFlex { display: none !important; }
                    #title-5-section-2 .mobileOnly { display: block !important; }
                    #title-5-section-2 .mobileOnlyInline { display: inline-block !important; }
                    #title-5-section-2 .mobileOnlyFlex { display: flex !important; }

                    #title-5-section-3 .desktopOnly,
                    #title-5-section-3 .desktopOnlyInline,
                    #title-5-section-3 .desktopOnlyFlex { display: none !important; }
                    #title-5-section-3 .mobileOnly { display: block !important; }
                    #title-5-section-3 .mobileOnlyInline { display: inline-block !important; }
                    #title-5-section-3 .mobileOnlyFlex { display: flex !important; }

                }
                @supports (-webkit-overflow-scrolling: touch){
                    .tile_1_full_img {
                        height: auto !important;
                        overflow: initial !important;
                    }
                    .tile_1_img_left,
                    .tile_1_img_right {
                        min-height: auto !important;
                    }
                    .tile_2_img_left,
                    .tile_2_img_right {
                        min-height: auto !important;
                    }
                    .tile_1_img_left .col-6,
                    .tile_1_img_right .col-6 {
                        flex: 0 0 100%;
                        max-width: 100%;
                    }
                    .tile_2_img_left .col-6,
                    .tile_2_img_right .col-6 {
                        flex: 0 0 100%;
                        max-width: 100%;
                    }
                    .tile_1_img_left .col-6.image-container,
                    .tile_1_img_right .col-6.image-container {
                        /*min-height: 50vh !important;*/
                        /*height: 50vh !important;*/
                        padding: 0 !important;
                    }
                    .tile_2_img_left .col-6.image-container,
                    .tile_2_img_right .col-6.image-container {
                        min-height: 50vh !important;
                        height: 50vh !important;
                        padding: 0 !important;
                    }
                    .tile_1_img_left .image,
                    .tile_1_img_right .image {
                        width: 100% !important;
                    }
                    .tile_2_img_left .image,
                    .tile_2_img_right .image {
                        width: 100% !important;
                    }
                    .tile_1_img_left .image,
                    .tile_1_img_right .image,
                    .tile_1_full_img .image {
                        /*min-height: 50vh !important;*/
                        /*height: 50vh !important;*/
                    }
                    .tile_2_img_left .image,
                    .tile_2_img_right .image,
                    .tile_2_full_img .image {
                        min-height: 50vh !important;
                        height: 50vh !important;
                    }
                    .tile_1_img_left .col-6.tile_1_info,
                    .tile_1_img_right .col-6.tile_1_info {
                        height: auto !important;
                        padding: 30px;
                        overflow: initial !important;
                    }
                    .tile_2_img_left .col-6.tile_2_info,
                    .tile_2_img_right .col-6.tile_2_info {
                        height: auto !important;
                        padding: 30px;
                        overflow: initial !important;
                    }
                    .tile_1_img_left,
                    .tile_1_img_right,
                    .tile_1_full_img {
                        height: auto !important;
                        overflow: initial !important;
                    }
                    .tile_2_img_left,
                    .tile_2_img_right,
                    .tile_2_full_img {
                        height: auto !important;
                        overflow: initial !important;
                    }
                    .tile_1_img_left *,
                    .tile_1_img_right *,
                    .tile_1_full_img *{
                        overflow: initial !important;
                    }
                    .tile_2_img_left *,
                    .tile_2_img_right *,
                    .tile_2_full_img *{
                        overflow: initial !important;
                    }
                    .tile_1_full_img .row {
                        height: auto !important;
                        position: static !important;
                        width: calc(100vw - 15px) !important;
                    }
                    .tile_1_full_img .image-container {
                        height: 50vh !important;
                    }
                    .tile_1_full_img .tile_1_text_container {
                        height: auto !important;
                        width: 100vw !important;
                    }
                    .tile_1_full_img .tile_1_text_container * {
                        color: gray !important;
                    }
                    .tile_1_header, .tile_1_header * {
                        font-size: 20px !important;
                        line-height: 25px !important;
                    }
                    .tile_2_header, .tile_2_header * {
                        font-size: 20px !important;
                        line-height: 25px !important;
                    }
                    .tile_1_subheader, .tile_1_subheader * {
                        font-size: 40px !important;
                        line-height: 45px !important;
                    }
                    .tile_2_subheader, .tile_2_subheader * {
                        font-size: 40px !important;
                        line-height: 45px !important;
                    }
                    .tile_1_body, .tile_1_body * {
                        font-size: 15px !important;
                        line-height: 20px !important;
                    }
                    .tile_2_body, .tile_2_body * {
                        font-size: 15px !important;
                        line-height: 20px !important;
                    }

                    #seatheat .desktopOnly,
                    #seatheat .desktopOnlyInline,
                    #seatheat .desktopOnlyFlex { display: none !important; }
                    #seatheat .mobileOnly { display: block !important; }
                    #seatheat .mobileOnlyInline { display: inline-block !important; }
                    #seatheat .mobileOnlyFlex { display: flex !important; }

                    #title-1-section-2 .desktopOnly,
                    #title-1-section-2 .desktopOnlyInline,
                    #title-1-section-2 .desktopOnlyFlex { display: none !important; }
                    #title-1-section-2 .mobileOnly { display: block !important; }
                    #title-1-section-2 .mobileOnlyInline { display: inline-block !important; }
                    #title-1-section-2 .mobileOnlyFlex { display: flex !important; }

                    #title-1-section-3 .desktopOnly,
                    #title-1-section-3 .desktopOnlyInline,
                    #title-1-section-3 .desktopOnlyFlex { display: none !important; }
                    #title-1-section-3 .mobileOnly { display: block !important; }
                    #title-1-section-3 .mobileOnlyInline { display: inline-block !important; }
                    #title-1-section-3 .mobileOnlyFlex { display: flex !important; }

                    #handle .desktopOnly,
                    #handle .desktopOnlyInline,
                    #handle .desktopOnlyFlex { display: none !important; }
                    #handle .mobileOnly { display: block !important; }
                    #handle .mobileOnlyInline { display: inline-block !important; }
                    #handle .mobileOnlyFlex { display: flex !important; }

                    #title-2-section-2 .desktopOnly,
                    #title-2-section-2 .desktopOnlyInline,
                    #title-2-section-2 .desktopOnlyFlex { display: none !important; }
                    #title-2-section-2 .mobileOnly { display: block !important; }
                    #title-2-section-2 .mobileOnlyInline { display: inline-block !important; }
                    #title-2-section-2 .mobileOnlyFlex { display: flex !important; }

                    #title-2-section-3 .desktopOnly,
                    #title-2-section-3 .desktopOnlyInline,
                    #title-2-section-3 .desktopOnlyFlex { display: none !important; }
                    #title-2-section-3 .mobileOnly { display: block !important; }
                    #title-2-section-3 .mobileOnlyInline { display: inline-block !important; }
                    #title-2-section-3 .mobileOnlyFlex { display: flex !important; }

                    #ventseat .desktopOnly,
                    #ventseat .desktopOnlyInline,
                    #ventseat .desktopOnlyFlex { display: none !important; }
                    #ventseat .mobileOnly { display: block !important; }
                    #ventseat .mobileOnlyInline { display: inline-block !important; }
                    #ventseat .mobileOnlyFlex { display: flex !important; }

                    #title-3-section-2 .desktopOnly,
                    #title-3-section-2 .desktopOnlyInline,
                    #title-3-section-2 .desktopOnlyFlex { display: none !important; }
                    #title-3-section-2 .mobileOnly { display: block !important; }
                    #title-3-section-2 .mobileOnlyInline { display: inline-block !important; }
                    #title-3-section-2 .mobileOnlyFlex { display: flex !important; }

                    #title-3-section-3 .desktopOnly,
                    #title-3-section-3 .desktopOnlyInline,
                    #title-3-section-3 .desktopOnlyFlex { display: none !important; }
                    #title-3-section-3 .mobileOnly { display: block !important; }
                    #title-3-section-3 .mobileOnlyInline { display: inline-block !important; }
                    #title-3-section-3 .mobileOnlyFlex { display: flex !important; }

                    #warmer .desktopOnly,
                    #warmer .desktopOnlyInline,
                    #warmer .desktopOnlyFlex { display: none !important; }
                    #warmer .mobileOnly { display: block !important; }
                    #warmer .mobileOnlyInline { display: inline-block !important; }
                    #warmer .mobileOnlyFlex { display: flex !important; }

                    #title-4-section-2 .desktopOnly,
                    #title-4-section-2 .desktopOnlyInline,
                    #title-4-section-2 .desktopOnlyFlex { display: none !important; }
                    #title-4-section-2 .mobileOnly { display: block !important; }
                    #title-4-section-2 .mobileOnlyInline { display: inline-block !important; }
                    #title-4-section-2 .mobileOnlyFlex { display: flex !important; }

                    #title-4-section-3 .desktopOnly,
                    #title-4-section-3 .desktopOnlyInline,
                    #title-4-section-3 .desktopOnlyFlex { display: none !important; }
                    #title-4-section-3 .mobileOnly { display: block !important; }
                    #title-4-section-3 .mobileOnlyInline { display: inline-block !important; }
                    #title-4-section-3 .mobileOnlyFlex { display: flex !important; }

                    #ecu .desktopOnly,
                    #ecu .desktopOnlyInline,
                    #ecu .desktopOnlyFlex { display: none !important; }
                    #ecu .mobileOnly { display: block !important; }
                    #ecu .mobileOnlyInline { display: inline-block !important; }
                    #ecu .mobileOnlyFlex { display: flex !important; }

                    #title-5-section-2 .desktopOnly,
                    #title-5-section-2 .desktopOnlyInline,
                    #title-5-section-2 .desktopOnlyFlex { display: none !important; }
                    #title-5-section-2 .mobileOnly { display: block !important; }
                    #title-5-section-2 .mobileOnlyInline { display: inline-block !important; }
                    #title-5-section-2 .mobileOnlyFlex { display: flex !important; }

                    #title-5-section-3 .desktopOnly,
                    #title-5-section-3 .desktopOnlyInline,
                    #title-5-section-3 .desktopOnlyFlex { display: none !important; }
                    #title-5-section-3 .mobileOnly { display: block !important; }
                    #title-5-section-3 .mobileOnlyInline { display: inline-block !important; }
                    #title-5-section-3 .mobileOnlyFlex { display: flex !important; }
                }
            </style>
            <section id="seatheat">
                <div class="tile_1_img_left">
                    <div class="row">
                        <#if device == "pc">
                            <div class="col-6 image-container desktopOnlyFlex" style="padding: 0 !important">
                                <video autoplay muted loop>
                                    <source src="/videos/seatheat01.mp4" type="video/mp4">
                                </video>
                            </div>
                        </#if>
                        <div class="col-6 tile_1_info" style="margin-top: 30px;">
                            <div class="tile_1_header">SeatHeater
                            </div>
                            <div class="tile_1_subheader"><p>Provides a seat environment at an appropriate temperature with excellent and stable heating function</p>
                            </div>
                            <div class="tile_1_body"><p>It provides a warm seat environment by providing an appropriate temperature that meets the needs of the occupants.</p>
                            </div>
                        </div>
                        <#if device == "mobile">
                            <div class="col-6 image-container mobileOnlyFlex" style="padding-left: 0px">
                                <div class="image">
                                    <video autoplay muted loop>
                                        <source src="/videos/seatheat01.mp4" type="video/mp4">
                                    </video>
                                </div>
                            </div>
                        </#if>
                    </div>
                </div>
            </section>
            <div class="custom_html_after">
            </div>
        </div>
        <div class="views-row">
            <section id="handle">
                <div class="tile_1_img_right">
                    <div class="row">
                        <div class="col-6 tile_1_info" style="margin-top: 30px;">
                            <div class="tile_1_header">Heating handle
                            </div>
                            <div class="tile_1_subheader"><p>Removal of coldness of STEERING in winter</p>
                            </div>
                            <div class="tile_1_body"><p>It provides a comfortable driving environment by removing the coolness of steering when driving a vehicle in winter.</p>
                            </div>
                        </div>
                        <#if device == "pc">
                            <div class="col-6 image-container desktopOnlyFlex" style="padding: 0 !important">
                                <div class="image">
                                    <video autoplay muted loop>
                                        <source src="/videos/handle_heat_1.mp4" type="video/mp4">
                                    </video>
                                </div>
                            </div>
                        </#if>
                        <#if device == "mobile">
                            <div class="col-6 image-container mobileOnlyFlex" style="padding-left: 0px">
                                <div class="image">
                                    <video autoplay muted loop>
                                        <source src="/videos/handle_heat_1.mp4" type="video/mp4">
                                    </video>
                                </div>
                            </div>
                        </#if>
                    </div>
                </div>
            </section>
            <div class="custom_html_after">
            </div>
        </div>
        <div class="views-row">
            <section id="ventseat">
                <div class="tile_1_img_left">
                    <div class="row">
                        <#if device == "pc">
                            <div class="col-6 image-container desktopOnlyFlex" style="padding: 0 !important">
                                <div class="image">
                                    <video autoplay muted loop>
                                        <source src="/videos/wind_seat_comp_v1.mp4" type="video/mp4">
                                    </video>
                                </div>
                            </div>
                        </#if>
                        <div class="col-6 tile_1_info" style="margin-top: 30px;">
                            <div class="tile_1_header">Ventilation seater
                            </div>
                            <div class="tile_1_subheader"><p>Providing a comfortable driving environment in summer</p>
                            </div>
                            <div class="tile_1_body"><p>It improves the operating environment by forcibly circulating air using a fan for heat and moisture.</p>
                            </div>
                        </div>
                        <#if device == "mobile">
                            <div class="col-6 image-container mobileOnlyFlex" style="padding-left: 0px">
                                <div class="image">
                                    <video autoplay muted loop>
                                        <source src="/videos/wind_seat_comp_v1.mp4" type="video/mp4">
                                    </video>
                                </div>
                            </div>
                        </#if>
                    </div>
                </div>
            </section>
            <div class="custom_html_after">
            </div>
        </div>
        <div class="views-row">
            <section id="warmer">
                <div class="tile_1_img_right">
                    <div class="row">
                        <div class="col-6 tile_1_info" style="margin-top: 30px;">
                            <div class="tile_1_header">Warmer
                            </div>
                            <div class="tile_1_subheader"><p>Provides a seat environment at an appropriate temperature with excellent and stable heating function</p>
                            </div>
                            <div class="tile_1_body"><p>It provides a warm seat environment by providing an appropriate temperature that meets the needs of the occupants.</p>
                            </div>
                        </div>
                        <#if device == "pc">
                            <div class="col-6 image-container desktopOnlyFlex" style="padding: 0 !important">
                                <video autoplay muted loop>
                                    <source src="/videos/new_seat_heat_7s.mp4" type="video/mp4">
                                </video>
                            </div>
                        </#if>
                        <#if device == "mobile">
                            <div class="col-6 image-container mobileOnlyFlex" style="padding-left: 0px">
                                <video autoplay muted loop>
                                    <source src="/videos/new_seat_heat_7s.mp4" type="video/mp4">
                                </video>
                            </div>
                        </#if>
                    </div>
                </div>
            </section>
            <div class="custom_html_after">
            </div>
        </div>
        <div class="views-row">
            <section id="ecu">
                <div class="tile_2_img_left">
                    <div class="row">
                        <#if device == "pc">
                            <div class="col-6 image-container desktopOnlyFlex" style="padding: 0 !important">
                                <div class="image" style="background: url('/images/prod/ecu2.jpg');height: 100%;">
                                </div>
                            </div>
                        </#if>
                        <div class="col-6 tile_2_info" style="margin-top: 30px;">
                            <div class="tile_2_header">ECU
                            </div>
                            <div class="tile_2_subheader"><p>Provides a seat environment at an appropriate temperature with excellent and stable heating function</p>
                            </div>
                            <div class="tile_2_body"><p>It provides a warm seat environment by providing an appropriate temperature that meets the needs of the occupants.</p>
                            </div>
                        </div>
                        <#if device == "mobile">
                            <div class="col-6 image-container mobileOnlyFlex" style="padding-left: 0px">
                                <div class="image" style="background: url('/images/prod/ecu2.jpg');height: 100%;">
                                </div>
                            </div>
                        </#if>
                    </div>
                </div>
            </section>
            <div class="custom_html_after">
            </div>
        </div>

        <div class="views-row">
            <style>
                .tile_1_full_img, {
                    height: 100vh;
                    background: white;
                    overflow: hidden;
                }
                .tile_1_full_img .image-container {
                    height: 100vh;
                    background-size: cover !important;
                    background-position: center center !important;
                    background-repeat: no-repeat;
                }

                .tile_1_full_img .image {
                    display: inline-block;
                    width: 100%;
                    vertical-align: top;
                    height: 100%;
                    background-size: cover !important;
                    background-position: center center !important;
                    background-repeat: no-repeat !important;
                }

                .tile_1_header {
                    color: orange;
                    font-size: 25px;
                    font-weight: 700;
                    margin-bottom: 20px;
                }
                .tile_1_subheader {
                    font-size: 70px;
                    color: gray;
                    font-weight: 300;
                    margin-bottom: 40px;
                    line-height: 90px;
                }
                .tile_1_body {
                    font-weight: 300;
                    color: dimgrey;
                    font-size: 18px;
                }

                .tile_1_img_left .row,
                .tile_1_img_right .row {
                    margin-right: 0 !important;
                }

                .tile_1_img_left,
                .tile_1_img_right {
                    background: white;
                    /*min-height: 85vh !important;*/
                    height: auto !important;
                    width: 100% !important;
                }
                .tile_1_img_left .col-6.image-container,
                .tile_1_img_right .col-6.image-container {
                    /*min-height: 85vh;*/
                    height: auto !important;
                    padding: 0px !important;
                    display: flex;
                }
                .tile_1_img_left .image,
                .tile_1_img_right .image {
                    display: inline-block;
                    width: 100%;
                    vertical-align: top;
                    /*min-height: 85vh !important;*/
                    height: auto !important;
                    background-position: center center !important;
                    background-repeat: no-repeat !important;
                    -webkit-background-size: 100% !important;
                    -moz-background-size: 100% !important;
                    -o-background-size: 100% !important;
                    background-size: 100% !important;
                    -webkit-background-size: cover !important;
                    -moz-background-size: cover !important;
                    -o-background-size: cover !important;
                    background-size: cover !important;
                }

                .tile_1_img_left .col-6.tile_1_info,
                .tile_1_img_right .col-6.tile_1_info {
                    min-height: 100% !important;
                    height: auto !important;
                    padding: 30px 50px;
                    padding-right: 100px;
                    overflow: initial !important;
                }
                .tile_1_img_left .row,
                .tile_1_img_right .row {
                    margin-left: 0 !important;
                    margin-right: 0 !important;
                }
                .tile_1_header, .tile_1_header * {
                    text-transform: uppercase !important;
                    text-decoration: none !important;
                    color: #e8842e !important;
                }
                .tile_1_subheader, .tile_1_subheader * {
                    text-decoration: none !important;
                    color: gray !important;
                    font-size: 45px !important;
                    line-height: 60px !important;
                    margin-bottom: 20px !important;
                }

                #seatheat .desktopOnly {
                    display: block !important;
                }
                #seatheat .desktopOnlyInline {
                    display: inline-block !important;
                }
                #seatheat .desktopOnlyFlex {
                    display: flex !important;
                }
                #seatheat .mobileOnly,
                #seatheat .mobileOnlyInline,
                #seatheat .mobileOnlyFlex {
                    display: none !important;
                }

                @media all and (max-width: 1000px) {
                    .tile_1_full_img {
                        height: auto !important;
                        overflow: initial !important;
                    }
                    .tile_1_img_left,
                    .tile_1_img_right {
                        min-height: auto !important;
                    }
                    .tile_1_img_left .col-6,
                    .tile_1_img_right .col-6 {
                        flex: 0 0 100%;
                        max-width: 100%;
                    }
                    .tile_1_img_left .col-6.image-container,
                    .tile_1_img_right .col-6.image-container {
                        /*min-height: 50vh !important;*/
                        /*height: 50vh !important;*/
                        padding: 0 !important;
                    }
                    .tile_1_img_left .image,
                    .tile_1_img_right .image {
                        width: 100% !important;
                    }
                    .tile_1_img_left .image,
                    .tile_1_img_right .image,
                    .tile_1_full_img .image {
                        /*min-height: 50vh !important;*/
                        /*height: 50vh !important;*/
                    }
                    .tile_1_img_left .col-6.tile_1_info,
                    .tile_1_img_right .col-6.tile_1_info {
                        height: auto !important;
                        padding: 30px;
                        overflow: initial !important;
                    }
                    .tile_1_img_left,
                    .tile_1_img_right,
                    .tile_1_full_img {
                        height: auto !important;
                        overflow: initial !important;
                    }
                    .tile_1_img_left *,
                    .tile_1_img_right *,
                    .tile_1_full_img *{
                        overflow: initial !important;
                    }
                    .tile_1_full_img .row {
                        height: auto !important;
                        position: static !important;
                        width: calc(100vw - 15px) !important;
                    }
                    .tile_1_full_img .image-container {
                        /*height: 50vh !important;*/
                    }
                    .tile_1_full_img .tile_1_text_container {
                        height: auto !important;
                        width: 100vw !important;
                    }
                    .tile_1_full_img .tile_1_text_container * {
                        color: gray !important;
                    }
                    .tile_1_header, .tile_1_header * {
                        font-size: 20px !important;
                        line-height: 25px !important;
                    }
                    .tile_1_subheader, .tile_1_subheader * {
                        font-size: 45px !important;
                        line-height: 45px !important;
                    }
                    .tile_1_body, .tile_1_body * {
                        font-size: 15px !important;
                        line-height: 20px !important;
                    }

                    #seatheat .desktopOnly,
                    #seatheat .desktopOnlyInline,
                    #seatheat .desktopOnlyFlex {
                        display: none !important;
                    }
                    #seatheat .mobileOnly {
                        display: block !important;
                    }
                    #seatheat .mobileOnlyInline {
                        display: inline-block !important;
                    }
                    #seatheat .mobileOnlyFlex {
                        display: flex !important;
                    }

                }
                @supports (-webkit-overflow-scrolling: touch){
                    .tile_1_full_img {
                        height: auto !important;
                        overflow: initial !important;
                    }
                    .tile_1_img_left,
                    .tile_1_img_right {
                        min-height: auto !important;
                    }
                    .tile_1_img_left .col-6,
                    .tile_1_img_right .col-6 {
                        flex: 0 0 100%;
                        max-width: 100%;
                    }
                    .tile_1_img_left .col-6.image-container,
                    .tile_1_img_right .col-6.image-container {
                        /*min-height: 50vh !important;*/
                        /*height: 50vh !important;*/
                        padding: 0 !important;
                    }
                    .tile_1_img_left .image,
                    .tile_1_img_right .image {
                        width: 100% !important;
                    }
                    .tile_1_img_left .image,
                    .tile_1_img_right .image,
                    .tile_1_full_img .image {
                        /*min-height: 50vh !important;*/
                        /*height: 50vh !important;*/
                    }
                    .tile_1_img_left .col-6.tile_1_info,
                    .tile_1_img_right .col-6.tile_1_info {
                        height: auto !important;
                        padding: 30px;
                        overflow: initial !important;
                    }
                    .tile_1_img_left,
                    .tile_1_img_right,
                    .tile_1_full_img {
                        height: auto !important;
                        overflow: initial !important;
                    }
                    .tile_1_img_left *,
                    .tile_1_img_right *,
                    .tile_1_full_img *{
                        overflow: initial !important;
                    }
                    .tile_1_full_img .row {
                        height: auto !important;
                        position: static !important;
                        width: calc(100vw - 15px) !important;
                    }
                    .tile_1_full_img .image-container {
                        /*height: 50vh !important;*/
                    }
                    .tile_1_full_img .tile_1_text_container {
                        height: auto !important;
                        width: 100vw !important;
                    }
                    .tile_1_full_img .tile_1_text_container * {
                        color: gray !important;
                    }
                    .tile_1_header, .tile_1_header * {
                        font-size: 20px !important;
                        line-height: 25px !important;
                    }
                    .tile_1_subheader, .tile_1_subheader * {
                        font-size: 45px !important;
                        line-height: 45px !important;
                    }
                    .tile_1_body, .tile_1_body * {
                        font-size: 15px !important;
                        line-height: 20px !important;
                    }

                    #seatheat .desktopOnly,
                    #seatheat .desktopOnlyInline,
                    #seatheat .desktopOnlyFlex {
                        display: none !important;
                    }
                    #seatheat .mobileOnly {
                        display: block !important;
                    }
                    #seatheat .mobileOnlyInline {
                        display: inline-block !important;
                    }
                    #seatheat .mobileOnlyFlex {
                        display: flex !important;
                    }

                }
            </style>

            <section id="seatheat">
                <div class="tile_1_img_left">
                    <div class="row">
                        <div class="col-6 image-container" style="padding-right: 0px">
                            <video autoplay muted loop>
                                <source src="/videos/seatheat01.mp4" type="video/mp4">
                            </video>
                        </div>
                        <div class="col-6 tile_1_info" style="margin-top: 30px;">
                            <div class="tile_1_header">SEATHEATER
                            </div>
                            <div class="tile_1_subheader"><p>Provides a seat environment at an appropriate temperature with excellent and stable heating function</p>
                            </div>
                            <div class="tile_1_body">
                                <p>It provides a warm seat environment by providing an appropriate temperature that meets the needs of the occupants.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- 1 Tile - Custom HTML that appears after the Main Content -->
            <div class="custom_html_after"></div>
        </div>
        <div class="views-row">
            <style>
                .tile_1_full_img, {
                    height: 100vh;
                    background: white;
                    overflow: hidden;
                }
                .tile_1_full_img .image-container {
                    height: 100vh;
                    background-size: cover !important;
                    background-position: center center !important;
                    background-repeat: no-repeat;
                }

                .tile_1_full_img .image {
                    display: inline-block;
                    width: 100%;
                    vertical-align: top;
                    height: 100%;
                    background-size: cover !important;
                    background-position: center center !important;
                    background-repeat: no-repeat !important;
                }

                .tile_1_header {
                    color: orange;
                    font-size: 25px;
                    font-weight: 700;
                    margin-bottom: 20px;
                }
                .tile_1_subheader {
                    font-size: 70px;
                    color: gray;
                    font-weight: 300;
                    margin-bottom: 40px;
                    line-height: 90px;
                }
                .tile_1_body {
                    font-weight: 300;
                    color: dimgrey;
                    font-size: 18px;
                }

                .tile_1_img_left .row,
                .tile_1_img_right .row {
                    margin-right: 0 !important;
                }

                .tile_1_img_left,
                .tile_1_img_right {
                    background: white;
                    /*min-height: 85vh !important;*/
                    height: auto !important;
                    width: 100% !important;
                }
                .tile_1_img_left .col-6.image-container,
                .tile_1_img_right .col-6.image-container {
                    /*min-height: 85vh;*/
                    height: auto !important;
                    padding: 0px !important;
                    display: flex;
                }
                .tile_1_img_left .image,
                .tile_1_img_right .image {
                    display: inline-block;
                    width: 100%;
                    vertical-align: top;
                    /*min-height: 85vh !important;*/
                    height: auto !important;
                    background-position: center center !important;
                    background-repeat: no-repeat !important;
                    -webkit-background-size: 100% !important;
                    -moz-background-size: 100% !important;
                    -o-background-size: 100% !important;
                    background-size: 100% !important;
                    -webkit-background-size: cover !important;
                    -moz-background-size: cover !important;
                    -o-background-size: cover !important;
                    background-size: cover !important;
                }

                .tile_1_img_left .col-6.tile_1_info,
                .tile_1_img_right .col-6.tile_1_info {
                    min-height: 100% !important;
                    height: auto !important;
                    padding: 30px 50px;
                    padding-right: 100px;
                    overflow: initial !important;
                }
                .tile_1_img_left .row,
                .tile_1_img_right .row {
                    margin-left: 0 !important;
                    margin-right: 0 !important;
                }
                .tile_1_header, .tile_1_header * {
                    text-transform: uppercase !important;
                    text-decoration: none !important;
                    color: #e8842e !important;
                }
                .tile_1_subheader, .tile_1_subheader * {
                    text-decoration: none !important;
                    color: gray !important;
                    font-size: 45px !important;
                    line-height: 60px !important;
                    margin-bottom: 20px !important;
                }

                #handle .desktopOnly {
                    display: block !important;
                }
                #handle .desktopOnlyInline {
                    display: inline-block !important;
                }
                #handle .desktopOnlyFlex {
                    display: flex !important;
                }
                #handle .mobileOnly,
                #handle .mobileOnlyInline,
                #handle .mobileOnlyFlex {
                    display: none !important;
                }

                @media all and (max-width: 1000px) {
                    .tile_1_full_img {
                        height: auto !important;
                        overflow: initial !important;
                    }
                    .tile_1_img_left,
                    .tile_1_img_right {
                        min-height: auto !important;
                    }
                    .tile_1_img_left .col-6,
                    .tile_1_img_right .col-6 {
                        flex: 0 0 100%;
                        max-width: 100%;
                    }
                    .tile_1_img_left .col-6.image-container,
                    .tile_1_img_right .col-6.image-container {
                        /*min-height: 50vh !important;*/
                        /*height: 50vh !important;*/
                        padding: 0 !important;
                    }
                    .tile_1_img_left .image,
                    .tile_1_img_right .image {
                        width: 100% !important;
                    }
                    .tile_1_img_left .image,
                    .tile_1_img_right .image,
                    .tile_1_full_img .image {
                        /*min-height: 50vh !important;*/
                        /*height: 50vh !important;*/
                    }
                    .tile_1_img_left .col-6.tile_1_info,
                    .tile_1_img_right .col-6.tile_1_info {
                        height: auto !important;
                        padding: 30px;
                        overflow: initial !important;
                    }
                    .tile_1_img_left,
                    .tile_1_img_right,
                    .tile_1_full_img {
                        height: auto !important;
                        overflow: initial !important;
                    }
                    .tile_1_img_left *,
                    .tile_1_img_right *,
                    .tile_1_full_img *{
                        overflow: initial !important;
                    }
                    .tile_1_full_img .row {
                        height: auto !important;
                        position: static !important;
                        width: calc(100vw - 15px) !important;
                    }
                    .tile_1_full_img .image-container {
                        /*height: 50vh !important;*/
                    }
                    .tile_1_full_img .tile_1_text_container {
                        height: auto !important;
                        width: 100vw !important;
                    }
                    .tile_1_full_img .tile_1_text_container * {
                        color: gray !important;
                    }
                    .tile_1_header, .tile_1_header * {
                        font-size: 20px !important;
                        line-height: 25px !important;
                    }
                    .tile_1_subheader, .tile_1_subheader * {
                        font-size: 45px !important;
                        line-height: 45px !important;
                    }
                    .tile_1_body, .tile_1_body * {
                        font-size: 15px !important;
                        line-height: 20px !important;
                    }

                    #handle .desktopOnly,
                    #handle .desktopOnlyInline,
                    #handle .desktopOnlyFlex {
                        display: none !important;
                    }
                    #handle .mobileOnly {
                        display: block !important;
                    }
                    #handle .mobileOnlyInline {
                        display: inline-block !important;
                    }
                    #handle .mobileOnlyFlex {
                        display: flex !important;
                    }

                }
                @supports (-webkit-overflow-scrolling: touch){
                    .tile_1_full_img {
                        height: auto !important;
                        overflow: initial !important;
                    }
                    .tile_1_img_left,
                    .tile_1_img_right {
                        min-height: auto !important;
                    }
                    .tile_1_img_left .col-6,
                    .tile_1_img_right .col-6 {
                        flex: 0 0 100%;
                        max-width: 100%;
                    }
                    .tile_1_img_left .col-6.image-container,
                    .tile_1_img_right .col-6.image-container {
                        /*min-height: 50vh !important;*/
                        /*height: 50vh !important;*/
                        padding: 0 !important;
                    }
                    .tile_1_img_left .image,
                    .tile_1_img_right .image {
                        width: 100% !important;
                    }
                    .tile_1_img_left .image,
                    .tile_1_img_right .image,
                    .tile_1_full_img .image {
                        /*min-height: 50vh !important;*/
                        /*height: 50vh !important;*/
                    }
                    .tile_1_img_left .col-6.tile_1_info,
                    .tile_1_img_right .col-6.tile_1_info {
                        height: auto !important;
                        padding: 30px;
                        overflow: initial !important;
                    }
                    .tile_1_img_left,
                    .tile_1_img_right,
                    .tile_1_full_img {
                        height: auto !important;
                        overflow: initial !important;
                    }
                    .tile_1_img_left *,
                    .tile_1_img_right *,
                    .tile_1_full_img *{
                        overflow: initial !important;
                    }
                    .tile_1_full_img .row {
                        height: auto !important;
                        position: static !important;
                        width: calc(100vw - 15px) !important;
                    }
                    .tile_1_full_img .image-container {
                        /*height: 50vh !important;*/
                    }
                    .tile_1_full_img .tile_1_text_container {
                        height: auto !important;
                        width: 100vw !important;
                    }
                    .tile_1_full_img .tile_1_text_container * {
                        color: gray !important;
                    }
                    .tile_1_header, .tile_1_header * {
                        font-size: 20px !important;
                        line-height: 25px !important;
                    }
                    .tile_1_subheader, .tile_1_subheader * {
                        font-size: 45px !important;
                        line-height: 45px !important;
                    }
                    .tile_1_body, .tile_1_body * {
                        font-size: 15px !important;
                        line-height: 20px !important;
                    }

                    #handle .desktopOnly,
                    #handle .desktopOnlyInline,
                    #handle .desktopOnlyFlex {
                        display: none !important;
                    }
                    #handle .mobileOnly {
                        display: block !important;
                    }
                    #handle .mobileOnlyInline {
                        display: inline-block !important;
                    }
                    #handle .mobileOnlyFlex {
                        display: flex !important;
                    }

                }
            </style>

            <section id="handle">
                <div class="tile_1_img_right">
                    <div class="row">
                        <div class="col-6 image-container mobileOnlyFlex" style="padding-left: 0px">
                            <video autoplay muted loop>
                                <source src="/videos/handle_heat_1.mp4" type="video/mp4">
                            </video>
                        </div>
                        <div class="col-6 tile_1_info" style="margin-top: 30px;">
                            <div class="tile_1_header">HEATING HANDLE
                            </div>
                            <div class="tile_1_subheader"><p>Removal of coldness of STEERING in winter</p>
                            </div>
                            <div class="tile_1_body">
                                <p>It provides a comfortable driving environment by removing the coolness of steering when driving a vehicle in winter.</p>
                            </div>
                        </div>
                        <div class="col-6 image-container desktopOnlyFlex" style="padding: 0 !important">
                            <video autoplay muted loop>
                                <source src="/videos/handle_heat_1.mp4" type="video/mp4">
                            </video>
                        </div>
                    </div>
                </div>
            </section>

            <!-- 1 Tile - Custom HTML that appears after the Main Content -->
            <div class="custom_html_after"></div>
        </div>
        <div class="views-row">
            <style>
                .tile_1_full_img, {
                    height: 100vh;
                    background: white;
                    overflow: hidden;
                }
                .tile_1_full_img .image-container {
                    height: 100vh;
                    background-size: cover !important;
                    background-position: center center !important;
                    background-repeat: no-repeat;
                }

                .tile_1_full_img .image {
                    display: inline-block;
                    width: 100%;
                    vertical-align: top;
                    height: 100%;
                    background-size: cover !important;
                    background-position: center center !important;
                    background-repeat: no-repeat !important;
                }

                .tile_1_header {
                    color: orange;
                    font-size: 25px;
                    font-weight: 700;
                    margin-bottom: 20px;
                }
                .tile_1_subheader {
                    font-size: 70px;
                    color: gray;
                    font-weight: 300;
                    margin-bottom: 40px;
                    line-height: 90px;
                }
                .tile_1_body {
                    font-weight: 300;
                    color: dimgrey;
                    font-size: 18px;
                }

                .tile_1_img_left .row,
                .tile_1_img_right .row {
                    margin-right: 0 !important;
                }

                .tile_1_img_left,
                .tile_1_img_right {
                    background: white;
                    /*min-height: 85vh !important;*/
                    height: auto !important;
                    width: 100% !important;
                }
                .tile_1_img_left .col-6.image-container,
                .tile_1_img_right .col-6.image-container {
                    /*min-height: 85vh;*/
                    height: auto !important;
                    padding: 0px !important;
                    display: flex;
                }
                .tile_1_img_left .image,
                .tile_1_img_right .image {
                    display: inline-block;
                    width: 100%;
                    vertical-align: top;
                    /*min-height: 85vh !important;*/
                    height: auto !important;
                    background-position: center center !important;
                    background-repeat: no-repeat !important;
                    -webkit-background-size: 100% !important;
                    -moz-background-size: 100% !important;
                    -o-background-size: 100% !important;
                    background-size: 100% !important;
                    -webkit-background-size: cover !important;
                    -moz-background-size: cover !important;
                    -o-background-size: cover !important;
                    background-size: cover !important;
                }

                .tile_1_img_left .col-6.tile_1_info,
                .tile_1_img_right .col-6.tile_1_info {
                    min-height: 100% !important;
                    height: auto !important;
                    padding: 30px 50px;
                    padding-right: 100px;
                    overflow: initial !important;
                }
                .tile_1_img_left .row,
                .tile_1_img_right .row {
                    margin-left: 0 !important;
                    margin-right: 0 !important;
                }
                .tile_1_header, .tile_1_header * {
                    text-transform: uppercase !important;
                    text-decoration: none !important;
                    color: #e8842e !important;
                }
                .tile_1_subheader, .tile_1_subheader * {
                    text-decoration: none !important;
                    color: gray !important;
                    font-size: 45px !important;
                    line-height: 60px !important;
                    margin-bottom: 20px !important;
                }

                #ventseat .desktopOnly {
                    display: block !important;
                }
                #ventseat .desktopOnlyInline {
                    display: inline-block !important;
                }
                #ventseat .desktopOnlyFlex {
                    display: flex !important;
                }
                #ventseat .mobileOnly,
                #ventseat .mobileOnlyInline,
                #ventseat .mobileOnlyFlex {
                    display: none !important;
                }

                @media all and (max-width: 1000px) {
                    .tile_1_full_img {
                        height: auto !important;
                        overflow: initial !important;
                    }
                    .tile_1_img_left,
                    .tile_1_img_right {
                        min-height: auto !important;
                    }
                    .tile_1_img_left .col-6,
                    .tile_1_img_right .col-6 {
                        flex: 0 0 100%;
                        max-width: 100%;
                    }
                    .tile_1_img_left .col-6.image-container,
                    .tile_1_img_right .col-6.image-container {
                        /*min-height: 50vh !important;*/
                        /*height: 50vh !important;*/
                        padding: 0 !important;
                    }
                    .tile_1_img_left .image,
                    .tile_1_img_right .image {
                        width: 100% !important;
                    }
                    .tile_1_img_left .image,
                    .tile_1_img_right .image,
                    .tile_1_full_img .image {
                        /*min-height: 50vh !important;*/
                        /*height: 50vh !important;*/
                    }
                    .tile_1_img_left .col-6.tile_1_info,
                    .tile_1_img_right .col-6.tile_1_info {
                        height: auto !important;
                        padding: 30px;
                        overflow: initial !important;
                    }
                    .tile_1_img_left,
                    .tile_1_img_right,
                    .tile_1_full_img {
                        height: auto !important;
                        overflow: initial !important;
                    }
                    .tile_1_img_left *,
                    .tile_1_img_right *,
                    .tile_1_full_img *{
                        overflow: initial !important;
                    }
                    .tile_1_full_img .row {
                        height: auto !important;
                        position: static !important;
                        width: calc(100vw - 15px) !important;
                    }
                    .tile_1_full_img .image-container {
                        /*height: 50vh !important;*/
                    }
                    .tile_1_full_img .tile_1_text_container {
                        height: auto !important;
                        width: 100vw !important;
                    }
                    .tile_1_full_img .tile_1_text_container * {
                        color: gray !important;
                    }
                    .tile_1_header, .tile_1_header * {
                        font-size: 20px !important;
                        line-height: 25px !important;
                    }
                    .tile_1_subheader, .tile_1_subheader * {
                        font-size: 45px !important;
                        line-height: 45px !important;
                    }
                    .tile_1_body, .tile_1_body * {
                        font-size: 15px !important;
                        line-height: 20px !important;
                    }

                    #ventseat .desktopOnly,
                    #ventseat .desktopOnlyInline,
                    #ventseat .desktopOnlyFlex {
                        display: none !important;
                    }
                    #ventseat .mobileOnly {
                        display: block !important;
                    }
                    #ventseat .mobileOnlyInline {
                        display: inline-block !important;
                    }
                    #ventseat .mobileOnlyFlex {
                        display: flex !important;
                    }

                }
                @supports (-webkit-overflow-scrolling: touch){
                    .tile_1_full_img {
                        height: auto !important;
                        overflow: initial !important;
                    }
                    .tile_1_img_left,
                    .tile_1_img_right {
                        min-height: auto !important;
                    }
                    .tile_1_img_left .col-6,
                    .tile_1_img_right .col-6 {
                        flex: 0 0 100%;
                        max-width: 100%;
                    }
                    .tile_1_img_left .col-6.image-container,
                    .tile_1_img_right .col-6.image-container {
                        /*min-height: 50vh !important;*/
                        /*height: 50vh !important;*/
                        padding: 0 !important;
                    }
                    .tile_1_img_left .image,
                    .tile_1_img_right .image {
                        width: 100% !important;
                    }
                    .tile_1_img_left .image,
                    .tile_1_img_right .image,
                    .tile_1_full_img .image {
                        /*min-height: 50vh !important;*/
                        /*height: 50vh !important;*/
                    }
                    .tile_1_img_left .col-6.tile_1_info,
                    .tile_1_img_right .col-6.tile_1_info {
                        height: auto !important;
                        padding: 30px;
                        overflow: initial !important;
                    }
                    .tile_1_img_left,
                    .tile_1_img_right,
                    .tile_1_full_img {
                        height: auto !important;
                        overflow: initial !important;
                    }
                    .tile_1_img_left *,
                    .tile_1_img_right *,
                    .tile_1_full_img *{
                        overflow: initial !important;
                    }
                    .tile_1_full_img .row {
                        height: auto !important;
                        position: static !important;
                        width: calc(100vw - 15px) !important;
                    }
                    .tile_1_full_img .image-container {
                        /*height: 50vh !important;*/
                    }
                    .tile_1_full_img .tile_1_text_container {
                        height: auto !important;
                        width: 100vw !important;
                    }
                    .tile_1_full_img .tile_1_text_container * {
                        color: gray !important;
                    }
                    .tile_1_header, .tile_1_header * {
                        font-size: 20px !important;
                        line-height: 25px !important;
                    }
                    .tile_1_subheader, .tile_1_subheader * {
                        font-size: 45px !important;
                        line-height: 45px !important;
                    }
                    .tile_1_body, .tile_1_body * {
                        font-size: 15px !important;
                        line-height: 20px !important;
                    }

                    #ventseat .desktopOnly,
                    #ventseat .desktopOnlyInline,
                    #ventseat .desktopOnlyFlex {
                        display: none !important;
                    }
                    #ventseat .mobileOnly {
                        display: block !important;
                    }
                    #ventseat .mobileOnlyInline {
                        display: inline-block !important;
                    }
                    #ventseat .mobileOnlyFlex {
                        display: flex !important;
                    }

                }
            </style>

            <section id="ventseat">
                <div class="tile_1_img_left">
                    <div class="row">
                        <div class="col-6 image-container" style="padding-right: 0px">
                            <video autoplay muted loop>
                                <source src="/videos/wind_seat_comp_v1.mp4" type="video/mp4">
                            </video>
                        </div>
                        <div class="col-6 tile_1_info" style="margin-top: 30px;">
                            <div class="tile_1_header">VENTILATION SEATER
                            </div>
                            <div class="tile_1_subheader"><p>Providing a comfortable driving environment in summer</p>
                            </div>
                            <div class="tile_1_body">
                                <p>It improves the operating environment by forcibly circulating air using a fan for heat and moisture.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- 1 Tile - Custom HTML that appears after the Main Content -->
            <div class="custom_html_after"></div>
        </div>
        <div class="views-row">
            <style>
                .tile_1_full_img, {
                    height: 100vh;
                    background: white;
                    overflow: hidden;
                }
                .tile_1_full_img .image-container {
                    height: 100vh;
                    background-size: cover !important;
                    background-position: center center !important;
                    background-repeat: no-repeat;
                }

                .tile_1_full_img .image {
                    display: inline-block;
                    width: 100%;
                    vertical-align: top;
                    height: 100%;
                    background-size: cover !important;
                    background-position: center center !important;
                    background-repeat: no-repeat !important;
                }

                .tile_1_header {
                    color: orange;
                    font-size: 25px;
                    font-weight: 700;
                    margin-bottom: 20px;
                }
                .tile_1_subheader {
                    font-size: 70px;
                    color: gray;
                    font-weight: 300;
                    margin-bottom: 40px;
                    line-height: 90px;
                }
                .tile_1_body {
                    font-weight: 300;
                    color: dimgrey;
                    font-size: 18px;
                }

                .tile_1_img_left .row,
                .tile_1_img_right .row {
                    margin-right: 0 !important;
                }

                .tile_1_img_left,
                .tile_1_img_right {
                    background: white;
                    /*min-height: 85vh !important;*/
                    height: auto !important;
                    width: 100% !important;
                }
                .tile_1_img_left .col-6.image-container,
                .tile_1_img_right .col-6.image-container {
                    /*min-height: 85vh;*/
                    height: auto !important;
                    padding: 0px !important;
                    display: flex;
                }
                .tile_1_img_left .image,
                .tile_1_img_right .image {
                    display: inline-block;
                    width: 100%;
                    vertical-align: top;
                    /*min-height: 85vh !important;*/
                    height: auto !important;
                    background-position: center center !important;
                    background-repeat: no-repeat !important;
                    -webkit-background-size: 100% !important;
                    -moz-background-size: 100% !important;
                    -o-background-size: 100% !important;
                    background-size: 100% !important;
                    -webkit-background-size: cover !important;
                    -moz-background-size: cover !important;
                    -o-background-size: cover !important;
                    background-size: cover !important;
                }

                .tile_1_img_left .col-6.tile_1_info,
                .tile_1_img_right .col-6.tile_1_info {
                    min-height: 100% !important;
                    height: auto !important;
                    padding: 30px 50px;
                    padding-right: 100px;
                    overflow: initial !important;
                }
                .tile_1_img_left .row,
                .tile_1_img_right .row {
                    margin-left: 0 !important;
                    margin-right: 0 !important;
                }
                .tile_1_header, .tile_1_header * {
                    text-transform: uppercase !important;
                    text-decoration: none !important;
                    color: #e8842e !important;
                }
                .tile_1_subheader, .tile_1_subheader * {
                    text-decoration: none !important;
                    color: gray !important;
                    font-size: 45px !important;
                    line-height: 60px !important;
                    margin-bottom: 20px !important;
                }

                #warmer .desktopOnly {
                    display: block !important;
                }
                #warmer .desktopOnlyInline {
                    display: inline-block !important;
                }
                #warmer .desktopOnlyFlex {
                    display: flex !important;
                }
                #warmer .mobileOnly,
                #warmer .mobileOnlyInline,
                #warmer .mobileOnlyFlex {
                    display: none !important;
                }

                @media all and (max-width: 1000px) {
                    .tile_1_full_img {
                        height: auto !important;
                        overflow: initial !important;
                    }
                    .tile_1_img_left,
                    .tile_1_img_right {
                        min-height: auto !important;
                    }
                    .tile_1_img_left .col-6,
                    .tile_1_img_right .col-6 {
                        flex: 0 0 100%;
                        max-width: 100%;
                    }
                    .tile_1_img_left .col-6.image-container,
                    .tile_1_img_right .col-6.image-container {
                        /*min-height: 50vh !important;*/
                        /*height: 50vh !important;*/
                        padding: 0 !important;
                    }
                    .tile_1_img_left .image,
                    .tile_1_img_right .image {
                        width: 100% !important;
                    }
                    .tile_1_img_left .image,
                    .tile_1_img_right .image,
                    .tile_1_full_img .image {
                        /*min-height: 50vh !important;*/
                        /*height: 50vh !important;*/
                    }
                    .tile_1_img_left .col-6.tile_1_info,
                    .tile_1_img_right .col-6.tile_1_info {
                        height: auto !important;
                        padding: 30px;
                        overflow: initial !important;
                    }
                    .tile_1_img_left,
                    .tile_1_img_right,
                    .tile_1_full_img {
                        height: auto !important;
                        overflow: initial !important;
                    }
                    .tile_1_img_left *,
                    .tile_1_img_right *,
                    .tile_1_full_img *{
                        overflow: initial !important;
                    }
                    .tile_1_full_img .row {
                        height: auto !important;
                        position: static !important;
                        width: calc(100vw - 15px) !important;
                    }
                    .tile_1_full_img .image-container {
                        /*height: 50vh !important;*/
                    }
                    .tile_1_full_img .tile_1_text_container {
                        height: auto !important;
                        width: 100vw !important;
                    }
                    .tile_1_full_img .tile_1_text_container * {
                        color: gray !important;
                    }
                    .tile_1_header, .tile_1_header * {
                        font-size: 20px !important;
                        line-height: 25px !important;
                    }
                    .tile_1_subheader, .tile_1_subheader * {
                        font-size: 45px !important;
                        line-height: 45px !important;
                    }
                    .tile_1_body, .tile_1_body * {
                        font-size: 15px !important;
                        line-height: 20px !important;
                    }

                    #warmer .desktopOnly,
                    #warmer .desktopOnlyInline,
                    #warmer .desktopOnlyFlex {
                        display: none !important;
                    }
                    #warmer .mobileOnly {
                        display: block !important;
                    }
                    #warmer .mobileOnlyInline {
                        display: inline-block !important;
                    }
                    #warmer .mobileOnlyFlex {
                        display: flex !important;
                    }

                }
                @supports (-webkit-overflow-scrolling: touch){
                    .tile_1_full_img {
                        height: auto !important;
                        overflow: initial !important;
                    }
                    .tile_1_img_left,
                    .tile_1_img_right {
                        min-height: auto !important;
                    }
                    .tile_1_img_left .col-6,
                    .tile_1_img_right .col-6 {
                        flex: 0 0 100%;
                        max-width: 100%;
                    }
                    .tile_1_img_left .col-6.image-container,
                    .tile_1_img_right .col-6.image-container {
                        /*min-height: 50vh !important;*/
                        /*height: 50vh !important;*/
                        padding: 0 !important;
                    }
                    .tile_1_img_left .image,
                    .tile_1_img_right .image {
                        width: 100% !important;
                    }
                    .tile_1_img_left .image,
                    .tile_1_img_right .image,
                    .tile_1_full_img .image {
                        /*min-height: 50vh !important;*/
                        /*height: 50vh !important;*/
                    }
                    .tile_1_img_left .col-6.tile_1_info,
                    .tile_1_img_right .col-6.tile_1_info {
                        height: auto !important;
                        padding: 30px;
                        overflow: initial !important;
                    }
                    .tile_1_img_left,
                    .tile_1_img_right,
                    .tile_1_full_img {
                        height: auto !important;
                        overflow: initial !important;
                    }
                    .tile_1_img_left *,
                    .tile_1_img_right *,
                    .tile_1_full_img *{
                        overflow: initial !important;
                    }
                    .tile_1_full_img .row {
                        height: auto !important;
                        position: static !important;
                        width: calc(100vw - 15px) !important;
                    }
                    .tile_1_full_img .image-container {
                        /*height: 50vh !important;*/
                    }
                    .tile_1_full_img .tile_1_text_container {
                        height: auto !important;
                        width: 100vw !important;
                    }
                    .tile_1_full_img .tile_1_text_container * {
                        color: gray !important;
                    }
                    .tile_1_header, .tile_1_header * {
                        font-size: 20px !important;
                        line-height: 25px !important;
                    }
                    .tile_1_subheader, .tile_1_subheader * {
                        font-size: 45px !important;
                        line-height: 45px !important;
                    }
                    .tile_1_body, .tile_1_body * {
                        font-size: 15px !important;
                        line-height: 20px !important;
                    }

                    #warmer .desktopOnly,
                    #warmer .desktopOnlyInline,
                    #warmer .desktopOnlyFlex {
                        display: none !important;
                    }
                    #warmer .mobileOnly {
                        display: block !important;
                    }
                    #warmer .mobileOnlyInline {
                        display: inline-block !important;
                    }
                    #warmer .mobileOnlyFlex {
                        display: flex !important;
                    }

                }
            </style>

            <section id="warmer">
                <div class="tile_1_img_right">
                    <div class="row">
                        <div class="col-6 image-container mobileOnlyFlex" style="padding-left: 0px">
                            <video autoplay muted loop>
                                <source src="/videos/warmer.mp4" type="video/mp4">
                            </video>
                        </div>
                        <div class="col-6 tile_1_info" style="margin-top: 30px;">
                            <div class="tile_1_header">WARMER
                            </div>
                            <div class="tile_1_subheader"><p>Device to warm the driver's knee in winter</p>
                            </div>
                            <div class="tile_1_body">
                                <p>A new concept heating device that removes cold air from the driver's knee area due to radiant heat emission</p>
                                <p>Far-infrared radiation beneficial to human body using CNT heating element</p>
                                <p>Securing stability through the application of self-capacitance-type current-blocking touch sensor</p>
                            </div>
                        </div>
                        <div class="col-6 image-container desktopOnlyFlex" style="padding: 0 !important">
                            <video autoplay muted loop>
                                <source src="/videos/warmer.mp4" type="video/mp4">
                            </video>
                        </div>
                    </div>
                </div>
            </section>

            <!-- 1 Tile - Custom HTML that appears after the Main Content -->
            <div class="custom_html_after"></div>
        </div>
        <div class="views-row">
            <style>
                .tile_1_full_img, {
                    height: 100vh;
                    background: white;
                    overflow: hidden;
                }
                .tile_1_full_img .image-container {
                    height: 100vh;
                    background-size: cover !important;
                    background-position: center center !important;
                    background-repeat: no-repeat;
                }

                .tile_1_full_img .image {
                    display: inline-block;
                    width: 100%;
                    vertical-align: top;
                    height: 100%;
                    background-size: cover !important;
                    background-position: center center !important;
                    background-repeat: no-repeat !important;
                }

                .tile_1_header {
                    color: orange;
                    font-size: 25px;
                    font-weight: 700;
                    margin-bottom: 20px;
                }
                .tile_1_subheader {
                    font-size: 70px;
                    color: gray;
                    font-weight: 300;
                    margin-bottom: 40px;
                    line-height: 90px;
                }
                .tile_1_body {
                    font-weight: 300;
                    color: dimgrey;
                    font-size: 18px;
                }

                .tile_1_img_left .row,
                .tile_1_img_right .row {
                    margin-right: 0 !important;
                }

                .tile_1_img_left,
                .tile_1_img_right {
                    background: white;
                    /*min-height: 85vh !important;*/
                    height: auto !important;
                    width: 100% !important;
                }
                .tile_2_img_left .col-6.image-container,
                .tile_2_img_right .col-6.image-container {
                    min-height: 50vh;
                    height: auto !important;
                    padding: 0px !important;
                    display: flex;
                }
                .tile_1_img_left .image,
                .tile_1_img_right .image {
                    display: inline-block;
                    width: 100%;
                    vertical-align: top;
                    min-height: 50vh !important;
                    height: auto !important;
                    background-position: center center !important;
                    background-repeat: no-repeat !important;
                    -webkit-background-size: 100% !important;
                    -moz-background-size: 100% !important;
                    -o-background-size: 100% !important;
                    background-size: 100% !important;
                    -webkit-background-size: cover !important;
                    -moz-background-size: cover !important;
                    -o-background-size: cover !important;
                    background-size: cover !important;
                }

                .tile_1_img_left .col-6.tile_1_info,
                .tile_1_img_right .col-6.tile_1_info {
                    min-height: 100% !important;
                    height: auto !important;
                    padding: 30px 50px;
                    padding-right: 100px;
                    overflow: initial !important;
                }
                .tile_1_img_left .row,
                .tile_1_img_right .row {
                    margin-left: 0 !important;
                    margin-right: 0 !important;
                }
                .tile_1_header, .tile_1_header * {
                    text-transform: uppercase !important;
                    text-decoration: none !important;
                    color: #e8842e !important;
                }
                .tile_1_subheader, .tile_1_subheader * {
                    text-decoration: none !important;
                    color: gray !important;
                    font-size: 45px !important;
                    line-height: 60px !important;
                    margin-bottom: 20px !important;
                }

                #ecu .desktopOnly {
                    display: block !important;
                }
                #ecu .desktopOnlyInline {
                    display: inline-block !important;
                }
                #ecu .desktopOnlyFlex {
                    display: flex !important;
                }
                #ecu .mobileOnly,
                #ecu .mobileOnlyInline,
                #ecu .mobileOnlyFlex {
                    display: none !important;
                }

                @media all and (max-width: 1000px) {
                    .tile_1_full_img {
                        height: auto !important;
                        overflow: initial !important;
                    }
                    .tile_1_img_left,
                    .tile_1_img_right {
                        min-height: auto !important;
                    }
                    .tile_1_img_left .col-6,
                    .tile_1_img_right .col-6 {
                        flex: 0 0 100%;
                        max-width: 100%;
                    }
                    .tile_1_img_left .col-6.image-container,
                    .tile_1_img_right .col-6.image-container {
                        /*min-height: 50vh !important;*/
                        /*height: 50vh !important;*/
                        padding: 0 !important;
                    }
                    .tile_1_img_left .image,
                    .tile_1_img_right .image {
                        width: 100% !important;
                    }
                    .tile_1_img_left .image,
                    .tile_1_img_right .image,
                    .tile_1_full_img .image {
                        /*min-height: 50vh !important;*/
                        /*height: 50vh !important;*/
                    }
                    .tile_1_img_left .col-6.tile_1_info,
                    .tile_1_img_right .col-6.tile_1_info {
                        height: auto !important;
                        padding: 30px;
                        overflow: initial !important;
                    }
                    .tile_1_img_left,
                    .tile_1_img_right,
                    .tile_1_full_img {
                        height: auto !important;
                        overflow: initial !important;
                    }
                    .tile_1_img_left *,
                    .tile_1_img_right *,
                    .tile_1_full_img *{
                        overflow: initial !important;
                    }
                    .tile_1_full_img .row {
                        height: auto !important;
                        position: static !important;
                        width: calc(100vw - 15px) !important;
                    }
                    .tile_1_full_img .image-container {
                        /*height: 50vh !important;*/
                    }
                    .tile_1_full_img .tile_1_text_container {
                        height: auto !important;
                        width: 100vw !important;
                    }
                    .tile_1_full_img .tile_1_text_container * {
                        color: gray !important;
                    }
                    .tile_1_header, .tile_1_header * {
                        font-size: 20px !important;
                        line-height: 25px !important;
                    }
                    .tile_1_subheader, .tile_1_subheader * {
                        font-size: 45px !important;
                        line-height: 45px !important;
                    }
                    .tile_1_body, .tile_1_body * {
                        font-size: 15px !important;
                        line-height: 20px !important;
                    }

                    #ecu .desktopOnly,
                    #ecu .desktopOnlyInline,
                    #ecu .desktopOnlyFlex {
                        display: none !important;
                    }
                    #ecu .mobileOnly {
                        display: block !important;
                    }
                    #ecu .mobileOnlyInline {
                        display: inline-block !important;
                    }
                    #ecu .mobileOnlyFlex {
                        display: flex !important;
                    }

                }
                @supports (-webkit-overflow-scrolling: touch){
                    .tile_1_full_img {
                        height: auto !important;
                        overflow: initial !important;
                    }
                    .tile_1_img_left,
                    .tile_1_img_right {
                        min-height: auto !important;
                    }
                    .tile_1_img_left .col-6,
                    .tile_1_img_right .col-6 {
                        flex: 0 0 100%;
                        max-width: 100%;
                    }
                    .tile_1_img_left .col-6.image-container,
                    .tile_1_img_right .col-6.image-container {
                        /*min-height: 50vh !important;*/
                        /*height: 50vh !important;*/
                        padding: 0 !important;
                    }
                    .tile_1_img_left .image,
                    .tile_1_img_right .image {
                        width: 100% !important;
                    }
                    .tile_1_img_left .image,
                    .tile_1_img_right .image,
                    .tile_1_full_img .image {
                        /*min-height: 50vh !important;*/
                        /*height: 50vh !important;*/
                    }
                    .tile_1_img_left .col-6.tile_1_info,
                    .tile_1_img_right .col-6.tile_1_info {
                        height: auto !important;
                        padding: 30px;
                        overflow: initial !important;
                    }
                    .tile_1_img_left,
                    .tile_1_img_right,
                    .tile_1_full_img {
                        height: auto !important;
                        overflow: initial !important;
                    }
                    .tile_1_img_left *,
                    .tile_1_img_right *,
                    .tile_1_full_img *{
                        overflow: initial !important;
                    }
                    .tile_1_full_img .row {
                        height: auto !important;
                        position: static !important;
                        width: calc(100vw - 15px) !important;
                    }
                    .tile_1_full_img .image-container {
                        /*height: 50vh !important;*/
                    }
                    .tile_1_full_img .tile_1_text_container {
                        height: auto !important;
                        width: 100vw !important;
                    }
                    .tile_1_full_img .tile_1_text_container * {
                        color: gray !important;
                    }
                    .tile_1_header, .tile_1_header * {
                        font-size: 20px !important;
                        line-height: 25px !important;
                    }
                    .tile_1_subheader, .tile_1_subheader * {
                        font-size: 45px !important;
                        line-height: 45px !important;
                    }
                    .tile_1_body, .tile_1_body * {
                        font-size: 15px !important;
                        line-height: 20px !important;
                    }

                    #ecu .desktopOnly,
                    #ecu .desktopOnlyInline,
                    #ecu .desktopOnlyFlex {
                        display: none !important;
                    }
                    #ecu .mobileOnly {
                        display: block !important;
                    }
                    #ecu .mobileOnlyInline {
                        display: inline-block !important;
                    }
                    #ecu .mobileOnlyFlex {
                        display: flex !important;
                    }

                }
            </style>

            <section id="ecu">
                <div class="tile_1_img_left">
                    <div class="row">
                        <div class="col-6 image-container" style="padding-right: 0px">
                            <div class="image" style="background: url('/images/prod/ecu2.jpg');height: 100%;">
                            </div>
                        </div>
                        <div class="col-6 tile_1_info" style="margin-top: 30px;">
                            <div class="tile_1_header">ECU
                            </div>
                            <div class="tile_1_subheader"><p>A device that drives the seat heater, heating handle, IR warmer, and ventilation seat</p></div>
                            <div class="tile_1_body">
                                <p>It maintains the constant performance of each product and prevents malfunctions such as overheating with built-in safety functions</p>
                                <p>Supports the operation and setting of each product through the CAN/LIN communication function in the vehicle</p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- 1 Tile - Custom HTML that appears after the Main Content -->
            <div class="custom_html_after"></div>
        </div>
    </section>
    <!-- 제품 -->
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
    subNavTap();
    AOS.init({
        duration: 1500
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