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
        <a href="#"><span>사회</span></a>
        <ul class="snbSize_2">
            <li class="snb01 on"><a href="/ethics/ethics3"><span>Safety Frist</span></a></li>
            <li class="snb02"><a href="/ethics/ethics31"><span>사회공헌</span></a></li>
        </ul>
    </div>
    <!-- 탭 -->

    <!-- content -->
    <section id="content" class="area" style="margin-bottom: 100px;">
        <article class="cm-style-tab-content-02">
            <article class="recruit-sec">
                <div class="recruit-notice-con">
                    <h2 style="font-weight:500; font-size:30px; letter-spacing:-0.5px; color:#222; margin-bottom:20px">안전보건관리체계</h2>
                    <p class="notice-txt">
                        ㈜아이윈은 효율적 안전보건관리를 위해 안전보건관리체계를 구축하여 운영하고 있습니다.
                        안전보건 총괄책임자, 안전관리자 등으로 구성된 안전보건관리 조직이 안전보건업무를 전담하여 수행하고 있으며,
                        보다 안전한 작업환경 조성을 위해 공사관리부 산하 팀별로 안전보건 관리책임자 및 관리감독자를 임명하였습니다.
                        아울러 체계적인 안전보건관리를 위해 안전보건관리규정을 제정하였으며, 2024년에는 안전보건관리체계를 구축하는 등 안전보건문화 내재화를 위해 최선을 다하고 있습니다.
                    </p>
                    <br>
                    <div style="text-align:center; max-width:1400px; margin:0 auto; word-break:keep-all; word-wrap:break-word; color:#555;letter-spacing:-0.05em;font-size:16px;line-height:1.706; padding:20px 0 20px; background-color:white; border:1px solid #dbdbdb; ">
                        <img style="width: 45%;" src="/images/esg/esg_s3.JPG" alt="안전보건관리체계" />
                    </div>
                </div>
                <div class="recruit-notice-con">
                    <h2 style="font-weight:500; font-size:30px; letter-spacing:-0.5px; color:#222; margin-bottom:20px">안전환경보건 협의회 운영</h2>
                    <p class="notice-txt">
                        ㈜아이윈은 안전환경보건 협의회는 월 1회 이상 작업장의 효율적인 안전환경보건 관리를 위한 회의를 개최하고 있습니다.
                        협의회는 인적, 물적 손실 및 환경 오염을 방지할 뿐만 아니라 근로자의 안전보건 유지 및 증진을 위해 노력하고 있습니다.
                    </p>
                    <br>
                    <div style="text-align:center; max-width:1400px; margin:0 auto; word-break:keep-all; word-wrap:break-word; color:#555;letter-spacing:-0.05em;font-size:16px;line-height:1.706; padding:20px 0 20px; background-color:white; border:1px solid #dbdbdb; ">
                        <img style="width: 30%;" src="/images/esg/esg_s1.JPG" alt="안전환경보건 협의회 운영" />
                    </div>
                </div>
                <div class="recruit-notice-con">
                    <h2 style="font-weight:500; font-size:30px; letter-spacing:-0.5px; color:#222; margin-bottom:20px">임직원 안전보건 교육</h2>
                    <p class="notice-txt">
                        매년 임직원을 대상으로 아래와 같은 안전보건 교육을 진행하고 있습니다.
                        또한, 임직원의 위기상황 대응력을 제고하기 위해 비상대피(구조)훈련 등을 실시하여 안전사고를 사전에 방지하고 있습니다.
                    </p>
                    <br>
                    <div style="text-align:center; max-width:1400px;margin:0 auto;word-break:keep-all;word-wrap:break-word;color:#555;letter-spacing:-0.05em;font-size:16px;line-height:1.706; padding:20px 0 20px; background-color:white; border:1px solid #dbdbdb; ">
                        <img style="width: 80%;" src="/images/esg/esg_s2.JPG" alt="임직원 안전보건 교육" />
                    </div>
                </div>
            </article>
        </article>
    </section>
</main>

<#include "../../footer.ftl">

</body>
</html>