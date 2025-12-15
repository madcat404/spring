<!DOCTYPE html>
<html>
<meta http-equiv="content-type" content="text/html;charset=utf-8"/>
<head>
    <#include "../head_root.ftl">
</head>

<body>
<header id="header" class="">
    <#include "../nav.ftl">
</header>
<main>
    <!-- Hero Start-->
    <div class="slider-area slider-bg main-sub-slider-01">
        <div class="single-slider d-flex align-items-center slider-height2 main-sub-slider-01" style="opacity: 0.9;" data-aos="fade-up">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center pt-50">
                            <h2 data-aos="fade-up">오시는길</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Hero End -->

    <!-- 중간 네비게이션 -->
    <nav class="section__nav mb-0">
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
                <#include "../middle_nav.ftl">
            </div>
            <div class="nav_tap js-navTap">
                <a href="javascript:void(0);">
                    <span>오시는길</span>
                </a>
                <ul class="js-nav2depth">
                    <li><a href="/about">인사말</a></li>
                    <li><a href="/company/site">사업장소개</a></li>
                    <li><a href="/company/certi">인증</a></li>
                    <li><a href="/history">연혁수상</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- 중간 네비게이션 -->
    <section id="content" class="area">
        <!-- ****************** 상단정보 ********************** -->
        <article class="location-content">
            <article class="location-con cm-style-tab-content">
                <div class="location-sec clearfix">
                    <div class="lf-con">
                        <ul class="location-info font-noto">
                            <li>
                                <dl class="inner">
                                    <dt class="info-tit">주소</dt>
                                    <dd class="info-txt">부산광역시 기장군 장안읍 장안산단9로 110</dd>
                                </dl>
                            </li>
                            <li>
                                <dl class="inner">
                                    <dt class="info-tit">전화번호</dt>
                                    <dd class="info-txt">051-711-2222</dd>
                                </dl>
                            </li>
                            <li>
                                <dl class="inner">
                                    <dt class="info-tit mb-0">제품문의</dt>
                                    <dd class="info-txt mb-3">
                                        <div class="question-info">
                                            <p class="front-bar">sales@iwin.kr</p>
                                        </div>
                                    </dd>
                                    <dt class="info-tit mb-0">투자문의</dt>
                                    <dd class="info-txt mb-3">
                                        <div class="question-info">
                                            <p class="front-bar">ir@iwin.kr</p>
                                        </div>
                                    </dd>
                                    <dt class="info-tit mb-0">기타문의</dt>
                                    <dd class="info-txt">
                                        <div class="question-info">
                                            <p class="front-bar">hr@iwin.kr</p>
                                        </div>
                                    </dd>
                                </dl>
                            </li>
                        </ul>
                    </div>
                    <div class="rt-con">
                        <div id="daumRoughmapContainer1717569417156" class="root_daum_roughmap root_daum_roughmap_landing" style="margin: 0 auto;width: 100%;"></div>
                        <!-- * 카카오맵 - 지도퍼가기 -->
                        <script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
                        <!-- 3. 실행 스크립트 -->
                        <script charset="UTF-8">
                            new daum.roughmap.Lander({
                                "timestamp" : "1717569417156",
                                "key" : "2jjva",
                                "mapHeight" : "450"
                            }).render();
                        </script>
                    </div>
                </div>
            </article>
        </article>
    </section>
</main>
<!-- Footer Start-->
<section id="mainFooter" class="section fp-auto-height">
    <div class="footer-area">
        <div class="container">
            <div class="footer-bottom">
                <div class="row d-flex justify-content-between align-items-center">
                    <div class="col-xl-7 col-lg-7 ">
                    </div>
                    <div class="col-xl-5 col-lg-5">
                        <div class="footer-copy-right text-right">
                            <img src="/images/logo/logo_k_footer.png">
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