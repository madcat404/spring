<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
    <#include "../head_root.ftl">
</head>

<body>
<div id="wrap" class="fullpage-wrapper">
<header id="header" class="">
    <#include "../nav.ftl">
</header>
</div>
<main>
    <div class="slider-area slider-bg main-sub-slider-01">
        <div class="single-slider d-flex align-items-center slider-height2 main-sub-slider-01" style="opacity: 0.9;" data-aos="fade-up">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center pt-50">
                            <h2 data-aos="fade-up">인사말</h2>
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
                <#include "../middle_nav.ftl">
            </div>
            <div class="nav_tap js-navTap">
                <a href="javascript:void(0);">
                    <span>인사말</span>
                </a>
                <ul class="js-nav2depth">
                    <li><a href="/company/site">사업장소개</a></li>
                    <li><a href="/company/certi">인증</a></li>
                    <li><a href="/history">연혁수상</a></li>
                    <li><a href="/contact">오시는길</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- 중간 네비게이션 -->
    <!-- 대표이사 인사말 -->
    <section id="content" class="area">
        <!-- ****************** 상단정보 ********************** -->
        <!-- 상단정보 (기본/센터정렬) -->
        <aside id="contentInfoCon">
            <h3 class="content-tit font-noto">CEO 인사말</h3>
        </aside>
        <article class="greeting-content">
            <div class="greeting-inner clearfix">
                <div class="greeting-txt">
                    <h4 class="txt01">
                        아이윈 홈페이지를 방문해 주신 <br class="pc-br">여러분을 진심으로 환영합니다. </h4>
                    <p class="txt02">
                        <span>국내 최초로 시트히터분야를 개척한 아이윈은 우수한 품질과 기술력을 자랑하고 있습니다.</span>
                        <span>글로벌 경제환경이 하루가 다르게 변하고 있는 가운데, 아이윈은 시대가 요구하는 글로벌 경쟁력 강화를 위해 발빠르게 대응하고, 어떠한 상황에도 흔들림 없는 전진과 지속가능한 성장을 이루기 위한 노력을 멈추지 않겠습니다.</span>
                        <span>끊임없는 변화와 혁신, 긍정적인 사고와 도전정신을 바탕으로 고객들에게 신뢰받고 주주들에게 매력적인 기업의 모습으로 보답하겠습니다.</span>
                        <span>감사합니다.</span>
                    </p>
                </div>
                <div class="greeting-img">
                    <span class="ceo-img"><img src="/images/ceo2.png" alt="대표이사 신규진"></span>
                </div>
            </div>
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