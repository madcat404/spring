<!DOCTYPE html>
<html>

<head>
    <#include "../../head_root.ftl">
    <style>
        .hover_on:hover {color: black;}
    </style>
</head>

<body>
<!-- header -->
<header id="header" class="">s
    <#include "../../nav.ftl">
</header>
<main>
    <div class="slider-area slider-bg main-sub-slider-01">
        <div class="single-slider d-flex align-items-center slider-height2 main-sub-slider-01" style="opacity: 0.9;" data-aos="fade-up">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center pt-50">
                            <h2 data-aos="fade-up">정책</h2>
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
                    <span>정책</span>
                </a>
                <#include "../../middle_ethics_nav.ftl">
            </div>
        </div>
    </nav>
    <!-- 중간 네비게이션 -->

    <!-- 탭 -->
    <div id="snb" class="snb_s01">
        <a href="#"><span>정책</span></a>
        <ul class="snbSize_2">
            <li class="snb01 on"><a href="/ethics/ethics1"><span>정책</span></a></li>
            <li class="snb04"><a href="/ethics/ethics4"><span>부정비리제보</span></a></li>
        </ul>
    </div>
    <!-- 탭 -->

    <!-- content -->
    <section id="content" class="area" style="margin-bottom: 100px;">
        <!-- 상단정보 (기본/센터정렬) -->
        <article class="welfare-content">
            <!-- // -->
            <article class="cm-style-tab-content-02">
                <ul class="welfare-list">
                    <li>
                        <div class="inner">
                            <div class="tit"><strong>윤리헌장 및 실천규범</strong></div>
                            <div class="icon pl-5">
                                <a class="hover_on" href="https://fms.iwin.kr/files/ESG_ethics.pdf" target="_blank" title="윤리헌장 및 실천규범"><i class="fas fa-download fa-3x"></i></a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="inner">
                            <div class="tit"><strong>인권정책</strong></div>
                            <div class="icon pl-5">
                                <a class="hover_on" href="https://fms.iwin.kr/files/ESG_HumanRights.pdf" target="_blank" title="인권정책"><i class="fas fa-download fa-3x"></i></a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="inner">
                            <div class="tit"><strong>협력사 행동규범</strong></div>
                            <div class="icon pl-5">
                                <a class="hover_on" href="https://fms.iwin.kr/files/ESG_Partner.pdf" target="_blank" title="협력사 행동규범"><i class="fas fa-download fa-3x"></i></a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="inner">
                            <div class="tit"><strong>개인정보보호 정책</strong></div>
                            <div class="icon pl-5">
                                <a class="hover_on" href="https://fms.iwin.kr/files/ESG_PrivateInfo.pdf" target="_blank" title="개인정보보호 정책"><i class="fas fa-download fa-3x"></i></a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="inner">
                            <div class="tit"><strong>분쟁광물 정책</strong></div>
                            <div class="icon pl-5">
                                <a class="hover_on" href="https://fms.iwin.kr/files/ESG_Minerals.pdf" target="_blank" title="분쟁광물 정책"><i class="fas fa-download fa-3x"></i></a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="inner">
                            <div class="tit"><strong>환경경영 정책</strong></div>
                            <div class="icon pl-5">
                                <a class="hover_on" href="https://fms.iwin.kr/files/ESG_Environment.pdf" target="_blank" title="환경경영 정책"><i class="fas fa-download fa-3x"></i></a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="inner">
                            <div class="tit"><strong>안전보건 경영 정책</strong></div>
                            <div class="icon pl-5">
                                <a class="hover_on" href="https://fms.iwin.kr/files/ESG_Safety.pdf" target="_blank" title="안전보건 경영 정책"><i class="fas fa-download fa-3x"></i></a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="inner">
                            <div class="tit"><strong>안전보건 목표 및 경영방침</strong></div>
                            <div class="icon pl-5">
                                <a class="hover_on" href="https://fms.iwin.kr/files/ESG_Safety2.pdf" target="_blank" title="안전보건 목표 및 경영방침"><i class="fas fa-download fa-3x"></i></a>
                            </div>
                        </div>
                    </li>
                </ul>
            </article>
        </article>
    </section>
</main>

<#include "../../footer.ftl">

</body>
</html>