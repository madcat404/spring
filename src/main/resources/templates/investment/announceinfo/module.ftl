<!DOCTYPE html>
<html>

<head>
    <#include "../../head_root.ftl">
</head>

<body>
<header id="header" class="">
    <#include "../../nav.ftl">
</header>
<main>
    <!-- Hero Start-->
    <div class="slider-area slider-bg main-sub-slider-02">
        <div class="single-slider d-flex align-items-center slider-height2 main-sub-slider-02" style="opacity: 0.9;" data-aos="fade-left">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center pt-50">
                            <h2 data-aos="fade-left">투자정보</h2>
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
                    <span>Investment</span>
                </a>
                <ul class="js-nav2depth">
                    <li>
                        <a href="/investment">About Us</a>
                    </li>
                    <li>
                        <a href="/product">Product</a>
                    </li>
                    <li>
                        <a href="/hr/talent">HR</a>
                    </li>
                </ul>
            </div>
            <div class="nav_tap js-navTap">
                <a href="javascript:void(0);">
                    <span>공시정보</span>
                </a>
                <ul class="js-nav2depth">
                    <li>
                        <a href="/investment">재무정보</a>
                    </li>
                    <li>
                        <a href="/investment/stock">공고</a>
                    </li>
                    <li>
                        <a href="/investment/rules">내부정보관리 규정</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- 중간 네비게이션 -->
    <!-- 결산공고 -->
    <div id="doc" class="isPage">
        <div id="pg-mart" class="doc-pg pg-type-c">
            <script>$(document).ready(function () {
                    $(".btn-popups").remove();
                });</script>
            <div id="contents-wrap">
                <div id="contents">
                    <div class="krxAPI-wr gongsi">
                        <div id="stockTabInfo">
                            <div id="viewInfoTbl1">
                                <div class="is-wauto-box">
                                    <table class="tbl-type01 gongsiTbl">
                                        <colgroup>
                                            <col style="width:20%">
                                            <col style="width:*%">
                                            <col style="width:25%">
                                        </colgroup>
                                        <thead>
                                        <tr>
                                            <th scope="colgroup">접수일자</th>
                                            <th scope="colgroup">보고서명</th>
                                            <th scope="colgroup">제출인</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <#if disclosureList??>
                                        <#list disclosureList as info>
                                        <tr>
                                            <td>${info.rceptDT?substring(0,4)}-${info.rceptDT?substring(4,6)}-${info.rceptDT?substring(6,8)}</td>
                                            <td><a target="_blank" title="새창열기"
                                                   href="http://kind.krx.co.kr/common/disclsviewer.do?method=search&acptno=${info.rceptNO}">${info.reportNM}</a>
                                            </td>
                                            <td>${info.flrNM}</td>
                                        </tr>
                                        </#list>
                                        <#else>
                                            <tr><td colspan="3" style="height: 150px;text-align: center;vertical-align: middle;">조회된 정보가 없습니다.</td></tr>
                                        </#if>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="btnBox num1 mt-50 text-center">
                                <a href="http://dart.fss.or.kr/html/search/SearchCompany_M2.html?textCrpNM=아이윈"
                                   class="bw-btn" target="_blank" title="새창열기">
                                    <span class="nw">금융감독원 전자공시 시스템</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end #container-wrap -->
            </div><!-- end .doc-pg //-->
        </div>
        <!-- 결산공고 -->
    </div>
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
    $(document).ready(function () {
        try {
            resetFormStyle();
        } catch (e) {
        }

        //레이어팝업 포커스 오류 보정
        //접근성 필수일경우 닫기 버튼으로 포커스 초기화 되지 않으므로 문제생길 수 있음.
        try {
            if (parent.msgPopArr.length > 0) {
                $("input,select,a,button").not("[type='text']").eq(0).focus();
            }
        } catch (e) {
        }
        try {
            $(".calendar").datepicker({});
        } catch (e) {
        }

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