<!doctype html>
<html class="no-js" lang="zxx">
<meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
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

    <script src="/js/jquery.easing.1.3.js"></script>
    <script src="/js/swiper.min.js"></script>
    <script src="/js/aos.js"></script>
    <script src="/js/common.js"></script>
    <script src="/js/scrollreveal.min.js"></script>
    <script src="/js/jquery.inview.min.js"></script>
    <script src="/js/skrollr.min.js"></script>

    <!-- 지도 -->
    <script  src="/js/exclude/common.simple.js"></script>
    <script  src="/js/exclude/jquery-ui.centumsoft.js"></script>
    <link rel='stylesheet' href='/css/excludejquery-ui.centumsoft.css'>

    <script>
        var _thisSite = {}, _thisPage = {initAction:[],resizeAction:[],scrollAction:[]};
        var _isLowBr_ = false,_isMobile_ = false;
        var editor_type = "mceEditor";
    </script>

</head>

<body>
<header>
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
                            <a href="/hr/talent">HR</a>
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
</header>
<main>
    <!-- Hero Start-->
    <div class="slider-area slider-bg main-sub-slider-02">
        <div class="single-slider d-flex align-items-center slider-height2 main-sub-slider-02" style="opacity: 0.9;" data-aos="fade-left">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center pt-50">
                            <h2 data-aos="fade-left">Investment information</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Hero End -->
    <!--================Blog Area =================-->
    <section class="blog_area single-post-area section-padding" style="background: #e2e4ea;">
        <div class="container">
            <div id="content-core">
                <div id="main">
                    <div id="main-core">
                        <article id="post-12135" class="post-12135 page type-page status-publish hentry">

                            <div class="panel-grid" id="pg-12135-0">
                                <div class="panel-grid-core">
                                    <div class="panel-grid-cell" id="pgc-12135-0-0">
                                        <div class="panel-widget-style animated fadeInUp">
                                            <div class="textwidget">
                                                <div class="sub_title">
<#--                                                    <small>IR NOTICE</small>-->
                                                    <h2 style="margin: 0 0 0.8em;">Announcement</h2>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel-grid animated fadeInUp" id="pg-12135-1">
                                <div class="panel-grid-core">
                                    <div class="panel-grid-cell" id="pgc-12135-1-0">
                                        <div class="panel-widget-style">
                                            <div class="textwidget"><p>
                                                <div id="kboard-document">
                                                    <div id="kboard-customer-document">
                                                        <div class="kboard-document-wrap" itemscope
                                                             itemtype="http://schema.org/Article">
                                                            <div class="kboard-title" itemprop="name">
                                                                <h1>${notice.title}</h1>
                                                            </div>

                                                            <div class="kboard-detail">
                                                                <div class="detail-attr detail-writer">
                                                                    <div class="detail-name">Author</div>
                                                                    <div class="detail-value">${notice.memberId}</div>
                                                                </div>
                                                                <div class="detail-attr detail-date">
                                                                    <div class="detail-name">Date</div>
                                                                    <div class="detail-value">${notice.registerDatetime?string("yyyy-MM-dd")}</div>
                                                                </div>
                                                            </div>

                                                            <div class="kboard-content" itemprop="description">
                                                                <div class="content-view">
                                                                    <#if (notice.subject?length > 0)>
                                                                            ${notice.subject}
                                                                    </#if>
                                                                    <#if notice.imgPath?? >
                                                                        <#if notice.imgPath?contains(".jpg") || notice.imgPath?contains(".jpeg") || notice.imgPath?contains(".png") >
                                                                            <img src="${notice.imgPath}" style="margin: 5% auto;display: block;width: 50%;">
                                                                        </#if>
                                                                    </#if>
                                                                </div>
                                                            </div>


                                                            <div class="kboard-attach">
                                                                <#if notice.imgPath?? >
                                                                    <#if !notice.imgPath?contains(".jpg") && !notice.imgPath?contains(".jpeg") && !notice.imgPath?contains(".png") >
                                                                <button type="button"
                                                                        class="kboard-button-action kboard-button-download"
                                                                        onclick="window.location.href='${notice.imgPath}'">
                                                                    ${notice.imgPath?substring(25, (notice.imgPath?length))}
                                                                </button>
                                                                    </#if>
                                                                </#if>
                                                            </div>
                                                        </div>

                                                        <div class="kboard-document-navi">
                                                            <div class="kboard-prev-document">
                                                                <span class="navi-document-title kboard-customer-cut-strings">
                                                                    <#if (prev != 0) >
                                                                        <a href="/eng/board_details?idx=${prev}">
                                                                        <h4>Prev</h4>
                                                                    </a>
                                                                    </#if>
                                                                </span>
                                                            </div>

                                                            <div class="kboard-next-document">
                                                                <span class="navi-document-title kboard-customer-cut-strings">
                                                                    <#if (next != 0) >
                                                                        <a href="/eng/board_details?idx=${next}">
                                                                            <h4>Next</h4>
                                                                        </a>
                                                                    </#if>
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </article>
                    </div><!-- #main-core -->
                </div><!-- #main -->
            </div>
        </div>
    </section>
    <!--================ Blog Area end =================-->
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
<script src="/js/vendor/jquery-1.12.4.min.js"></script>
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

</body>


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
</html>