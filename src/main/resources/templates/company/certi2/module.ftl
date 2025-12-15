<!DOCTYPE html>
<html>

<head>
    <#include "../../head_root.ftl">
</head>

<body>
<!-- header -->
<header id="header" class="">
    <#include "../../nav.ftl">
</header>
<main>
    <!-- Hero Start-->
    <div class="slider-area slider-bg main-sub-slider-01">
        <div class="single-slider d-flex align-items-center slider-height2 main-sub-slider-01" style="opacity: 0.9;" data-aos="fade-up">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center pt-50">
                            <h2 data-aos="fade-up">주요 사상 및 인증 현황</h2>
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
                <a href="/">
                    <img src="/images/home.png" alt="">
                </a>
            </div>
            <div class="nav_tap mobile_hidden js-navTap">
                <a href="javascript:void(0);">
                    <span>About Us</span>
                </a>
                <#include "../../middle_nav.ftl">
            </div>
            <div class="nav_tap js-navTap">
                <a href="javascript:void(0);">
                    <span>인증</span>
                </a>
                <ul class="js-nav2depth">
                    <li><a href="/about">인사말</a></li>
                    <li><a href="/company/site">사업장 소개</a> </li>
                    <li><a href="/history">연혁수상</a></li>
                    <li><a href="/contact">오시는길</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- 중간 네비게이션 -->
    <div id="snb" class="snb_s01">
        <a href="#"><span>환경경영</span></a>
        <ul class="snbSize_2">
            <li class="snb01 "><a href="/company/certi"><span>품질경영</span></a></li>
            <li class="snb02 on"><a href="/company/certi2"><span>환경경영</span></a></li>
        </ul>
    </div>

    <section id="content" class="area" style="margin-bottom: 100px;">
        <!-- ****************** 상단정보 ********************** -->
        <aside id="contentInfoCon">
            <h3 class="content-tit font-noto" style="line-height: 1.6;">주식회사 아이윈은 환경친화적인 기업으로서 법규준수 등 지속적인 환경예방과 개선, 합리적인 환경시스템 운영을 통해,
                21세기 세계최고의 경쟁력을 가진 초일류기업을 지향한다</h3>
        </aside>
        <h4 style="font-size: 16px;font-weight: bold;"></h4>
        <h3 class="content-tit font-noto"></h3>
        <article class="talent-content">
            <article class="cm-style-tab-content-02">
                <article class="recruit-sec">
                    <article class="recruit-step-con">
                        <#if device == "pc">
                        <ul class="recruit-step-list clearfix" style="border: none;">
                            </#if>
                            <#if device == "mobile">
                            <ul class="recruit-step-list clearfix">
                                </#if>

                                <#if device == "pc">
                                <li style="width: 100%;">
                                    </#if>
                                    <#if device == "mobile">
                                <li>
                                    </#if>
                                    <div class="inner" style="width: 100%;">

                                        <#if device == "mobile">
                                            <img src="/images/certi/certi2.png" alt="환경경영" style="width: 100%;" />
                                        </#if>
                                        <#if device == "pc">
                                            <img src="/images/certi/certi2.png" alt="환경경영" />
                                        </#if>
                                    </div>
                                </li>
                            </ul>
                    </article>
                    <article class="certi-step-detail">

                        <div class="inner">
                            <div class="left-con">
                                <p class="txt">친환경 경영</p>
                            </div>
                            <div class="right-con font-noto">
                                <div class="txt">
                                    <p>환경영향에 적합한 경영시스템</p>
                                </div>
                            </div>
                        </div>
                        <div class="inner">
                            <div class="left-con">
                                <p class="txt">법규 준수와 환경예방</p>
                            </div>
                            <div class="right-con font-noto">
                                <div class="txt">
                                    <p>법규준수 및 지속적인 환경예방 개선</p>
                                </div>
                            </div>
                        </div>
                        <div class="inner">
                            <div class="left-con">
                                <p class="txt">친환경 기업 조성</p>
                            </div>
                            <div class="right-con font-noto">
                                <div class="txt">
                                    <p>국가정책과 함께하는 친환경 기업 조성</p>
                                </div>
                            </div>
                        </div>
                    </article>
                </article>
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