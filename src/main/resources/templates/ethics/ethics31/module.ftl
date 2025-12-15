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
                            <h2 data-aos="fade-up">사회</h2>
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
                    <span>사회</span>
                </a>
                <#include "../../middle_ethics_nav.ftl">
            </div>
        </div>
    </nav>
    <!-- 중간 네비게이션 -->

    <!-- 탭 -->
    <div id="snb" class="snb_s01">
        <a href="#"><span>환경</span></a>
        <ul class="snbSize_2">
            <li class="snb01"><a href="/ethics/ethics3"><span>Safety Frist</span></a></li>
            <li class="snb02 on"><a href="/ethics/ethics31"><span>사회공헌</span></a></li>
        </ul>
    </div>
    <!-- 탭 -->

    <!-- content -->
    <section id="content" class="area" style="margin-bottom: 10px;">
        <article class="cm-style-tab-content-02">
            <article class="recruit-sec">
                <div class="recruit-notice-con">
                    <h2 style="font-weight:500; font-size:30px; letter-spacing:-0.5px; color:#222; margin-bottom:20px">활동 내역</h2>
                    <div style="text-align:center; background-color: white; max-width:1400px; margin:0 auto; word-break:keep-all; word-wrap:break-word; color:#555;letter-spacing:-0.05em;font-size:16px;line-height:1.706; padding:20px 0 20px; border:1px solid #dbdbdb; ">
                        <table style="padding:10px 10px 10px 10px; width: 100%;">
                            <tr>
                                <td style="padding:0 5px 0 5px;">24.11.18 [보건복지부] 긍정양육 챌린지</td>
                                <td style="padding:0 5px 0 5px;">24.11.22 [금정 청소년 수련회관 지원] 범어복지대회 표창장</td>
                            </tr>
                            <tr>
                                <td><img style="width: 20vw;" src="/images/esg/campaign.png" alt="활동내역1" /></td>
                                <td><img style="width: 20vw;" src="/images/esg/reward.png" alt="활동내역2" /></td>
                            </tr>
              3              <tr>
                                <td style="padding:20px 5px 0 5px;">24.11.29 임랑해수욕장 정화활동</td>
                                <td style="padding:20px 5px 0 5px;">25.04.11 임랑해수욕장 정화활동</td>
                            </tr>
                            <tr>
                                <td><img style="width: 15vw;" src="/images/esg/clean1.jpeg" alt="활동내역3" /></td>
                                <td><img style="width: 15vw;" src="/images/esg/clean2.png" alt="활동내역4" /></td>
                            </tr>
                            <tr>
                                <td style="padding:20px 5px 0 5px;">25.6.12 임랑해수욕장 정화활동</td>
                                <td style="padding:20px 5px 0 5px;">25.10.31 임랑해수욕장 정화활동</td>
                            </tr>
                            <tr>
                                <td><img style="width: 15vw;" src="/images/esg/clean3.png" alt="활동내역4" /></td>
                                <td><img style="width: 15vw;" src="/images/esg/clean4.png" alt="활동내역5" /></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </article>
        </article>
    </section>
</main>

<#include "../../footer.ftl">

</body>
</html>