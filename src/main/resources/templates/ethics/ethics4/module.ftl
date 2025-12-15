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
                            <h2 data-aos="fade-up">부정비리제보</h2>
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
                    <span>부정비리제보</span>
                </a>
                <#include "../../middle_ethics_nav.ftl">
            </div>
        </div>
    </nav>
    <!-- 중간 네비게이션 -->

    <!-- 탭 -->
    <div id="snb" class="snb_s01">
        <a href="#"><span>부정비리제보</span></a>
        <ul class="snbSize_2">
            <li class="snb01"><a href="/ethics/ethics1"><span>정책</span></a></li>
            <li class="snb04 on"><a href="/ethics/ethics4"><span>부정비리제보</span></a></li>
        </ul>
    </div>
    <!-- 탭 -->

    <!-- content -->
    <section id="content" class="area" style="margin-bottom: 100px;">
        <!-- ****************** 상단정보 ********************** -->
        <h4 class="text_title"><span>▶아이윈 '부정비리 신고센터' 입니다.</span></h4><br>
        <h4 class="text_title"><span>▶제보내용이 구체적이지 않을 경우 조사가 지연되거나 보류될 수 있으며, 근거없는 비방 및 험담 등은 종결처리 될 수 있습니다.</span></h4><br>
        <h4 class="text_title"><span>▶개인정보 수집 및 이용에 대한 동의를 거부하실 수 있습니다. 그러나, 동의 거부 시 제보 접수가 불가능합니다.</span></h4><br>
        <h4 class="text_title"><span>▶증빙자료가 있는 경우 이메일(hr@iwin.kr)로 송부바랍니다.</span></h4><br>
        <h4 class="text_title"><span>▶제보유형, 제보절차, 제보자 보호, 담당에 대해 궁금하시거나 제보를 원하시면 아래의 버튼을 클릭하세요</span></h4><br>

        <div class="btnBox h4 num1 mt-50 text-center">
            <a href="https://fms.iwin.kr/kjwt_accuse/accuse.php"
               class="bw-btn" target="_blank" title="새창열기">
                <span class="nw">제보하기</span></a>
        </div>
    </section>
</main>

<#include "../../footer.ftl">

</body>
</html>