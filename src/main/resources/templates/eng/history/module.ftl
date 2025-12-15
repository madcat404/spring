<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
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
    <script src="/js/scrollreveal.min.js"></script>
    <script src="/js/jquery.inview.min.js"></script>
    <script src="/js/skrollr.min.js"></script>

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
    <div class="slider-area slider-bg main-sub-slider-01">
        <div class="single-slider d-flex align-items-center slider-height2 main-sub-slider-01" style="opacity: 0.9;" data-aos="fade-up">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center pt-50">
                            <h2 data-aos="fade-up">Company Introduction</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 중간 네비게이션 -->
    <nav class="section__nav">
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
                        <a href="/eng/product#seatheat">Product</a>
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
                    <span>History</span>
                </a>
                <ul class="js-nav2depth">
                    <li><a href="/eng/about">Greeting</a></li>
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
            </div>
        </div>
    </nav>
    <!-- 중간 네비게이션 -->
    <!-- 회사 연혁 -->
    <section class="section section__content section__history">
        <div class="section__inner" style="height: auto;">
            <h3 class="section__title02" style="margin-bottom: 2%;">Company History</h3>
            <ol class="year__selector">
                <li class="js-hs_tap"><a href="javascript:void(0);">2010 ~</a></li>
                <li class="js-hs_tap"><a href="javascript:void(0);">2000 ~ 2008</a></li>
                <li class="js-hs_tap"><a href="javascript:void(0);">1982 ~ 1999</a></li>
            </ol>
        </div>
        <ol class="history__range__list">
            <li class="history__range__listitem js-hs_item">
                <div class="history__head">
                    <div class="history-column history-column--right">
                        <h3 class="sub__title">2010 ~</h3>
                    </div>
                </div>

                <div class="history__block">
                    <div class="history-column history-column--left">

                        <div class="img_box">
<#--                            <img src="/upload/aboutus/history/20210121_145639_617.jpg" alt="21-4.jpg">-->
                            <span>관련 이미지 있는 경우 삽입</span>
                        </div>

                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>2019.06</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>Opened Seoul office</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="history__block">
                    <div class="history-column history-column--left">

                        <div class="img_box">
<#--                            <img src="/upload/aboutus/history/20210121_145639_617.jpg" alt="21-4.jpg">-->
                            <span></span>
                        </div>

                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>2017.12</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li><Deputy Prime Minister and Minister of Education Citation_National and Social Developmentsssssssssssssssssssssssssssssssssssssssssssss/li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="history__block">
                    <div class="history-column history-column--left">

                        <div class="img_box">
<#--                            <img src="/upload/aboutus/history/20210121_145639_617.jpg" alt="21-4.jpg">-->
                            <span></span>
                        </div>

                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>2017.11</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>Commendation from the Mayor of Busan City_Contribution to the community</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="history__block">
                    <div class="history-column history-column--left">

                        <div class="img_box">
<#--                            <img src="/upload/aboutus/history/20210121_145639_617.jpg" alt="21-4.jpg">-->
                            <span></span>
                        </div>

                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>2017.05</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>Selected as a small hidden champion_Designated by the Ministry of Employment and Labor</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="history__block">
                    <div class="history-column history-column--left">

                        <div class="img_box">
<#--                            <img src="/upload/aboutus/history/20210121_145639_617.jpg" alt="21-4.jpg">-->
                            <span></span>
                        </div>

                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>2017.01</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>Selected as a leading company in Busan_Convergence parts and materials industry</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="history__block">
                    <div class="history-column history-column--left">

                        <div class="img_box">
<#--                            <img src="/upload/aboutus/history/20210121_145639_617.jpg" alt="21-4.jpg">-->
                            <span></span>
                        </div>

                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>2015.04</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>AEO Comprehensive Certification Excellent Company Certification</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="history__block">
                    <div class="history-column history-column--left">

                        <div class="img_box">
<#--                            <img src="/upload/aboutus/history/20210121_145639_617.jpg" alt="21-4.jpg">-->
                            <span></span>
                        </div>

                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>2014.12</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>Awarded the 30 Million Dollar Export Tower on the 51st Trade Day</li>
                                <li>Received a commendation from the Minister of Trade, Industry and Energy-CEO</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="history__block">
                    <div class="history-column history-column--left">

                        <div class="img_box">
<#--                            <img src="/upload/aboutus/history/20210121_145639_617.jpg" alt="21-4.jpg">-->
                            <span></span>
                        </div>

                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>2014.11</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>Designated as a global hidden champion (Pre-World class)</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="history__block">
                    <div class="history-column history-column--left">

                        <div class="img_box">
<#--                            <img src="/upload/aboutus/history/20210121_145639_617.jpg" alt="21-4.jpg">-->
                            <span></span>
                        </div>

                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>2014.10</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>Received the first prize in the business sector for excellent cases of FTA utilization</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="history__block">
                    <div class="history-column history-column--left">

                        <div class="img_box">
<#--                            <img src="/upload/aboutus/history/20210121_145639_617.jpg" alt="21-4.jpg">-->
                            <span></span>
                        </div>

                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>2013.12</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>Awarded the 20 Million Dollar Export Tower on the 50th Trade Day</li>
                                <li>Selected as a leading company in Busan</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="history__block">
                    <div class="history-column history-column--left">

                        <div class="img_box">
<#--                            <img src="/upload/aboutus/history/20210121_145639_617.jpg" alt="21-4.jpg">-->
                            <span></span>
                        </div>

                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>2013.02</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>Completion of the Cheonan factory of Seetek System Co., Ltd.</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="history__block">
                    <div class="history-column history-column--left">

                        <div class="img_box">
<#--                            <img src="/upload/aboutus/history/20210121_145639_617.jpg" alt="21-4.jpg">-->
                            <span></span>
                        </div>

                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>2012.11</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>Received the grand prize at the Busan Employment Awards</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="history__block">
                    <div class="history-column history-column--left">

                        <div class="img_box">
                            <img src="" alt="">
                            <span></span>
                        </div>

                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>2012.09</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>Completed the 2nd factory of Kwangjin Wintech Co., Ltd.</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="history__block">
                    <div class="history-column history-column--left">

                        <div class="img_box">
<#--                            <img src="/upload/aboutus/history/20210121_145524_979.jpg" alt="20.jpg">-->
                            <span></span>
                        </div>

                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>2011.12</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>Awarded the technology sector at Busan Industrial Award</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="history__block">
                    <div class="history-column history-column--left">

                        <div class="img_box">
                            <img src="" alt="">
                            <span></span>
                        </div>

                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>2011.11</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>Export Strong Small Business Certification</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="history__block">
                    <div class="history-column history-column--left">

                        <div class="img_box">
<#--                            <img src="/upload/aboutus/history/20210121_145403_515.jpg" alt="16--.jpg">-->
                            <span></span>
                        </div>

                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>2011.07</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>Awarded the grand prize for small business in Busan</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="history__block">
                    <div class="history-column history-column--left">

                        <div class="img_box">
                            <img src="" alt="">
                            <span></span>
                        </div>

                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>2010.07</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>Factory relocation (Busan Jangan Regional Industrial Complex)</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </li>
            <li class="history__range__listitem js-hs_item" data-range="2000 ~ 2009">
                <div class="history__head">
                    <div class="history-column history-column--left">
                        <h3 class="sub__title3">Growing season</h3>
                    </div>
                    <div class="history-column history-column--right">
                        <h3 class="sub__title">2000 ~ 2008</h3>
                    </div>
                </div>
                <div class="history__block">
                    <div class="history-column history-column--left">

                        <div class="img_box">
                            <img src="" alt="">
                            <span>관련 이미지 있는 경우 삽입</span>
                        </div>

                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>2008.12</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>Addition of a subsidiary of Seetech System Co., Ltd.</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="history__block">
                    <div class="history-column history-column--left">

                        <div class="img_box">
                            <img src="" alt="">
                            <span></span>
                        </div>

                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>2008.01</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>Completion of local factory in Vietnam</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="history__block">
                    <div class="history-column history-column--left">

                        <div class="img_box">
                            <img src="" alt="">
                            <span></span>
                        </div>

                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>2007.10</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>ISO 14001 certification</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="history__block">
                    <div class="history-column history-column--left">

                        <div class="img_box">
                            <img src="" alt="">
                            <span></span>
                        </div>

                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>2007.06</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>Vietnam corporation established</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="history__block">
                    <div class="history-column history-column--left">

                        <div class="img_box">
                            <img src="" alt="">
                            <span></span>
                        </div>

                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>2007.01</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>Established US corporation</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="history__block">
                    <div class="history-column history-column--left">

                        <div class="img_box">
                            <img src="" alt="">
                            <span></span>
                        </div>

                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>2006.12</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>Opened Seoul office</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="history__block">
                    <div class="history-column history-column--left">

                        <div class="img_box">
                            <img src="" alt="">
                            <span></span>
                        </div>

                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>2006.11</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>Established Slovakia corporation</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="history__block">
                    <div class="history-column history-column--left">

                        <div class="img_box">
                            <img src="" alt="">
                            <span></span>
                        </div>

                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>2006.10</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>Listed on KOSDAQ</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="history__block">
                    <div class="history-column history-column--left">

                        <div class="img_box">
                            <img src="" alt="">
                            <span></span>
                        </div>

                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>2005.08</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>Inauguration of CEO Shin-jin Shin</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="history__block">
                    <div class="history-column history-column--left">

                        <div class="img_box">
                            <img src="" alt="">
                            <span></span>
                        </div>

                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>2004.10</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>Acquired ISO/TS16949 quality certification system</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="history__block">
                    <div class="history-column history-column--left">

                        <div class="img_box">
                            <img src="" alt="">
                            <span></span>
                        </div>

                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>2004.04</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>CI, company name change (Kwangjin Wintech Co., Ltd.)</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="history__block">
                    <div class="history-column history-column--left">

                        <div class="img_box">
                            <img src="" alt="">
                            <span></span>
                        </div>

                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>2004.02</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>Established overseas subsidiary in Beijing, China</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="history__block">
                    <div class="history-column history-column--left">

                        <div class="img_box">
<#--                            <img src="/upload/aboutus/history/20210121_150007_136.jpg" alt="10-3.jpg">-->
                            <span></span>
                        </div>

                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>2002.01</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>Acquired Hyundai Motors SQ mark certification</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="history__block">
                    <div class="history-column history-column--left">

                        <div class="img_box">
                            <img src="" alt="">
                            <span></span>
                        </div>

                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>2001.11</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>Acquired QS 9000, ISO 9001 certification (KFQ)</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="history__block">
                    <div class="history-column history-column--left">

                        <div class="img_box">
                            <img src="" alt="">
                            <span></span>
                        </div>

                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>2001.08</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>Established Kwangjin Industrial Technology Research Institute</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="history__block">
                    <div class="history-column history-column--left">

                        <div class="img_box">
<#--                            <img src="/upload/aboutus/history/20210121_145034_999.jpg" alt="10-1.jpg">-->
                            <span></span>
                        </div>

                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>2001.04</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>Registered as a venture company</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="history__block">
                    <div class="history-column history-column--left">

                        <div class="img_box">
                            <img src="" alt="">
                            <span>관련 이미지 있는 경우 삽입</span>
                        </div>

                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>2000.01</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>Technical alliance with Austrian SCHUKRA</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </li>
            <li class="history__range__listitem js-hs_item">
                <div class="history__head">
                    <div class="history-column history-column--left">
                        <h3 class="sub__title3">Foundation builder</h3>
                    </div>
                    <div class="history-column history-column--right">
                        <h3 class="sub__title"> 1982 ~ 1999</h3>
                    </div>
                </div>

                <div class="history__block">
                    <div class="history-column history-column--left">
                        <div class="img_box">
<#--                            <img src="/upload/aboutus/history/20210121_150207_191.jpg" alt="3.jpg">-->
                            <span>관련 이미지 있는 경우 삽입</span>
                        </div>
                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>1999.01</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>Established Kwangjin Industrial Co., Ltd.</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="history__block">
                    <div class="history-column history-column--left">
                        <div class="img_box">
<#--                            <img src="/upload/aboutus/history/20210121_150207_191.jpg" alt="3.jpg">-->
                            <span></span>
                        </div>
                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>1998.11</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>Technical alliance with German IGB</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="history__block">
                    <div class="history-column history-column--left">
                        <div class="img_box">
<#--                            <img src="/upload/aboutus/history/20210121_150207_191.jpg" alt="3.jpg">-->
                            <span></span>
                        </div>
                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>1995.07</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>Acquired ISO 9002 certification (KMA-QA)</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="history__block">
                    <div class="history-column history-column--left">
                        <div class="img_box">
<#--                            <img src="/upload/aboutus/history/20210121_150207_191.jpg" alt="3.jpg">-->
                            <span></span>
                        </div>
                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>1993.12</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>Acquired Hyundai Motor Company Partner</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="history__block">
                    <div class="history-column history-column--left">
                        <div class="img_box">
<#--                            <img src="/upload/aboutus/history/20210121_150207_191.jpg" alt="3.jpg">-->
                            <span></span>
                        </div>
                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>1993.10</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>Technical alliance with Sweden SCANDMEC</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="history__block">
                    <div class="history-column history-column--left">
                        <div class="img_box">
<#--                            <img src="/upload/aboutus/history/20210121_150207_191.jpg" alt="3.jpg">-->
                            <span></span>
                        </div>
                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>1989.10</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>Started production of passenger car SLC seat covers</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="history__block">
                    <div class="history-column history-column--left">
                        <div class="img_box">
<#--                            <img src="/upload/aboutus/history/20210121_150207_191.jpg" alt="3.jpg">-->
                            <span></span>
                        </div>
                    </div>
                    <div class="history-column history-column--right">
                        <div class="history__year">
                            <span>1982.06</span>
                        </div>
                        <div class="history__content">
                            <ol>
                                <li>Established Gwangjin Textile</li>
                            </ol>
                        </div>
                    </div>
                </div>

            </li>
        </ol>
    </section>
    <!-- 회사 연혁 끝 -->

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
    window.addEventListener('resize',historyTapSelector);

    subNavTap();
    historyTapSelector();
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