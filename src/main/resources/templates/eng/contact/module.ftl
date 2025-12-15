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
    <!-- Hero Start-->
    <div class="slider-area slider-bg main-sub-slider-01">
        <div class="single-slider d-flex align-items-center slider-height2 main-sub-slider-01" style="opacity: 0.9;" data-aos="fade-up">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center pt-50">
                            <h2 data-aos="fade-up">Contact</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Hero End -->

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
                        <a href="/eng/product/seatheat">Product</a>
                    </li>
                    <li>
                        <a href="/eng/investment">Investment</a>
                    </li>
                    <li>
                        <a href="/eng/hr/talent">HR</a>
                    </li>
                </ul>
            </div>
            <div class="nav_tap js-navTap">
                <a href="javascript:void(0);">
                    <span>Contact</span>
                </a>
                <ul class="js-nav2depth">
                    <li>
                        <a href="/eng/about">Greeting</a>
                    </li>
                    <li>
                        <a href="/eng/company/site">Business site introduction</a>
                    </li>
                    <li>
                        <a href="/eng/company/certi">Certification</a>
                    </li>
                    <li><a href="/eng/history">History</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- 중간 네비게이션 -->

    <!-- ================ contact section start ================= -->
    <section id="content" class="area">
        <!-- ****************** 상단정보 ********************** -->
        <article class="location-content">
            <article class="location-con cm-style-tab-content">
                <div class="location-sec clearfix">
                    <div class="lf-con">
                        <ul class="location-info font-noto">
                            <li>
                                <dl class="inner">
                                    <dt class="info-tit">Address</dt>
                                    <dd class="info-txt">Jangan-eup, Gijang-gun, Busan, 110, Jangansandan 9-ro</dd>
                                </dl>
                            </li>
                            <li>
                                <dl class="inner">
                                    <dt class="info-tit">Call</dt>
                                    <dd class="info-txt">051-711-2222</dd>
                                </dl>
                            </li>
                            <li>
                                <dl class="inner">
                                    <dt class="info-tit mb-0">Product</dt>
                                    <dd class="info-txt mb-3">
                                        <div class="question-info">
                                            <p class="front-bar">sales@iwin.kr</p>
                                        </div>
                                    </dd>
                                    <dt class="info-tit mb-0">Investment</dt>
                                    <dd class="info-txt mb-3">
                                        <div class="question-info">
                                            <p class="front-bar">ir@iwin.kr</p>
                                        </div>
                                    </dd>
                                    <dt class="info-tit mb-0">ETC.</dt>
                                    <dd class="info-txt mb-3">
                                        <div class="question-info">
                                            <p class="front-bar">hr@iwin.kr</p>
                                        </div>
                                    </dd>
                                </dl>
                            </li>
                        </ul>
                    </div>
                    <div class="rt-con">
                        <div id="daumRoughmapContainer1624859607432" class="root_daum_roughmap root_daum_roughmap_landing" style="margin: 0 auto;width: 100%;"></div>
                        <!-- * 카카오맵 - 지도퍼가기 -->
                        <script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
                        <!-- 3. 실행 스크립트 -->
                        <script charset="UTF-8">
                            new daum.roughmap.Lander({
                                "timestamp" : "1624859607432",
                                "key" : "26eg2",
                                "mapHeight" : "450"
                            }).render();
                        </script>
                    </div>
                </div>
            </article>
        </article>
    </section>
    <!-- ================ contact section end ================= -->
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

<!-- Nice-select, sticky -->
<script src="/js/jquery.nice-select.min.js"></script>
<script src="/js/jquery.sticky.js"></script>
<script src="/js/jquery.magnific-popup.js"></script>

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