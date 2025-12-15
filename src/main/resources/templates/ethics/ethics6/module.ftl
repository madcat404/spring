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
    <div class="slider-area slider-bg main-sub-slider-01">
        <div class="single-slider d-flex align-items-center slider-height2 main-sub-slider-01" style="opacity: 0.9;" data-aos="fade-up">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center pt-50">
                            <h2 data-aos="fade-up">정보공개</h2>
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
                    <span>ESG</span>
                </a>
                <#include "../../middle_nav.ftl">
            </div>
            <div class="nav_tap js-navTap">
                <a href="javascript:void(0);">
                    <span>정보공개</span>
                </a>
                <#include "../../middle_ethics_nav.ftl">
            </div>
        </div>
    </nav>
    <!-- 중간 네비게이션 -->

    <!-- content -->
    <section id="content" class="area" style="margin-bottom: 100px;">
        <article class="cm-style-tab-content-02">
            <article class="recruit-sec">
                <div class="recruit-notice-con">
                    <h2 style="font-weight:500; font-size:30px; letter-spacing:-0.5px; color:#222; margin-bottom:20px">정보공개</h2>
                    <br>
                    <div style="text-align:center; max-width:1400px; padding:0 0 0 0; background-color:#f4f5f9; border:1px solid #dbdbdb; ">
                        <iframe width="100%" height="1500" src="https://fms.iwin.kr/kjwt_esg/esg_homepage_data.php" name="opendata">이 브라우저는 iframe을 지원하지 않습니다</iframe>
                    </div>
                </div>
            </article>
        </article>
    </section>
</main>

<#include "../../footer.ftl">

</body>
</html>