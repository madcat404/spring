<!DOCTYPE html>
<html>

<head>
    <#include "../../../head_root.ftl">
</head>

<body>
<header id="header" class="">
    <#include "../../../nav.ftl">
</header>
<main>
    <!-- Slider Area Start-->
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
    <!-- Slider Area End -->
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
                        <a href="/about">About Us</a>
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
                    <span>재무정보</span>
                </a>
                <ul class="js-nav2depth">
                    <li>
                        <a href="/investment/stock">공고</a>
                    </li>
                    <li>
                        <a href="/investment/announceinfo">공시정보</a>
                    </li>
                    <li>
                        <a href="/investment/rules">내부정보관리 규정</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- 중간 네비게이션 -->
    <!-- content -->
    <section id="content" class="area">
        <!-- ****************** 상단정보 ********************** -->
        <!-- 상단정보 (기본/센터정렬) -->
        <aside id="contentInfoCon">
            <h3 class="content-tit font-noto">재무정보</h3>
        </aside>

        <article class="ir-content">
            <!-- 상단 탭 -->
            <aside class="sub-tab-list-style">
                <ul class="tab-list col-03 clearfix">
                    <li><a href="/investment/finance/cfs"><em>연결</em></a></li>
                    <li class="selected"><a href="/investment/finance/ofs"><em>개별</em></a></li>
                </ul>
            </aside>
            <!-- // -->
            <article class="cm-style-tab-content">
                <link rel="stylesheet" type="text/css" href="/css/exclude/krx.css">
                <style type="text/css">
                    body, table, th, td { font-family: 'Play', 'Noto Sans KR', "나눔고딕", NanumGothic, "Nanum Gothic","돋움", Dotum, Arial, sans-serif; color:#666; }
                    .stock03-table td.bg:first-child{border:none;}
                </style>
                </head>
                <article class="company-notice-content">
                    <div class="global-map-wrap">
                        <div class="area-big">
                            <div class="global-map-con mb-100">
                                <div class="d-flex col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-4">
                                        <!-- chart -->
                                        <canvas id="barChartAmount" style="height:30vh; width:100%"></canvas>
                                        <!-- chart -->
                                    </div>
                                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-4">
                                        <!-- chart -->
                                        <canvas id="barChartSales" style="height:30vh; width:100%"></canvas>
                                        <!-- chart -->
                                    </div>
                                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-4">
                                        <!-- chart -->
                                        <canvas id="barChartProfit" style="height:30vh; width:100%"></canvas>
                                        <!-- chart -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </article>
                <!-- 컨텐츠 내용(재무정보-연결) -->
                <section class="tbl">
                    <article class="table01 stock03-table">
                        <h1 class="tbl-tit clearfix">재무상태표(개별) <span>(단위 : 백만원)</span></h1>
                        <div class="stockTbl-wrapper">
                            <table class="stockTbl">
                                <colgroup>
                                    <col width="10%">
                                    <col width="15%">
                                    <col width="15%">
                                    <col width="15%">
                                    <col width="15%">
                                    <col width="15%">
                                    <col width="15%">
                                </colgroup>
                                <thead>
                                <tr>
                                    <th>자산</th>
                                    <th>부채</th>
                                    <th>자본</th>
                                    <th>년도</th>
                                    <th>매출</th>
                                    <th>영업이익</th>
                                    <th>당기순이익</th>
                                </tr>
                                </thead>
                                <tbody>
                                <#if resList??>
                                    <#assign i=0>
                                    <#list resList as res>
                                        <tr>
                                            <td>${res.years}년</td>
                                            <td>${(res.totalAssets?number/1000000)?string(",##0")}</td>
                                            <td>${(res.totalDebt?number/1000000)?string(",##0")}</td>
                                            <td>${(res.capital?number/1000000)?string(",##0")}</td>
                                            <td>${(res.amount?number/1000000)?string(",##0")}</td>
                                            <td>${(res.salesLoss?number/1000000)?string(",##0")}</td>
                                            <#if i == 0>
                                                <td>2,412</td>
                                            </#if>
                                            <#if i == 1>
                                                <td>1,652</td>
                                            </#if>
                                            <#if i == 2>
                                                <td>2,406</td>
                                            </#if>
                                            <#assign i=i+1?int>
                                        </tr>
                                    </#list>
                                <#else>
                                    <tr><td colspan="3" style="height: 150px;text-align: center;vertical-align: middle;">조회된 정보가 없습니다.</td></tr>
                                </#if>
                                </tbody>
                            </table>
                        </div>
                    </article>

                </section>
                <!-- //컨텐츠 내용 -->
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
<!-- Chart -->
<script src="/js/Chart.min.js"></script>
<script type="text/javascript">
    var context = document.getElementById("barChartAmount").getContext('2d');
    var barChart1 = new Chart(context, {
        type: 'bar',
        data: {
            labels: [
                '${resList[0].years}년', '${resList[1].years}년', '${resList[2].years}년'
            ],
            datasets: [
                {
                    label: '매출 (단위: 백만원)',
                    lineTension: 0,
                    <#--data: [ ${(resList[0].amount?number/10000000)}, ${(resList[1].amount?number/10000000)}, ${(resList[2].amount?number/10000000)} ],-->
                    data: [ ${(resList[0].amount?number/1000000)?int?replace(",", "")}, ${(resList[1].amount?number/1000000)?int?replace(",", "")}, ${(resList[2].amount?number/1000000)?int?replace(",", "")} ],
                    // fill: false,
                    // pointBorderWidth: 5,
                    // pointHoverBorderWidth: 15,
                    // borderColor: 'rgb(75, 192, 192)'
                    backgroundColor: 'rgb(117, 215, 1)'
                }
            ]
        },
        options: {
            responsive: false,
            scales: {
                x: {
                    stacked: true,
                },
                y: {
                    stacked: true
                },
                yAxes: [
                    {
                        ticks: {
                            stepSize: 200000
                        }
                    }
                ]
            },
            animation: {
                onComplete: () => {
                    delayed = true;
                },
                delay: (context) => {
                    let delay = 0;
                    if (context.type === 'data' && context.mode === 'default' && !delayed){
                        delay = context.dataIndex * 300 + context.datasetIndex * 100;
                    }
                    return delay;
                }
            }
        }
    });
    var context2 = document.getElementById("barChartSales").getContext('2d');
    var barChart1 = new Chart(context2, {
        type: 'bar',
        data: {
            labels: [
                '${resList[0].years}년', '${resList[1].years}년', '${resList[2].years}년'
            ],
            datasets: [
                {
                    label: '영업이익 (단위: 백만원)',
                    lineTension: 0,
                    <#--data: [ ${(resList[0].amount?number/10000000)}, ${(resList[1].amount?number/10000000)}, ${(resList[2].amount?number/10000000)} ],-->
                    data: [ ${(resList[0].salesLoss?number/1000000)?int?replace(",", "")}, ${(resList[1].salesLoss?number/1000000)?int?replace(",", "")}, ${(resList[2].salesLoss?number/1000000)?int?replace(",", "")}  ],
                    // fill: false,
                    // pointBorderWidth: 5,
                    // pointHoverBorderWidth: 15,
                    // borderColor: 'rgb(75, 192, 192)'
                    backgroundColor: 'rgb(86, 169, 2)'
                }
            ]
        },
        options: {
            responsive: false,
            scales: {
                x: {
                    stacked: true,
                },
                y: {
                    stacked: true
                },
                yAxes: [
                    {
                        ticks: {
                            stepSize: 10000
                        }
                    }
                ]
            },
            animation: {
                onComplete: () => {
                    delayed = true;
                },
                delay: (context) => {
                    let delay = 0;
                    if (context.type === 'data' && context.mode === 'default' && !delayed){
                        delay = context.dataIndex * 300 + context.datasetIndex * 100;
                    }
                    return delay;
                }
            }
        }
    });
    var context3 = document.getElementById("barChartProfit").getContext('2d');
    var barChart1 = new Chart(context3, {
        type: 'bar',
        data: {
            labels: [
                '${resList[0].years}년', '${resList[1].years}년', '${resList[2].years}년'
            ],
            datasets: [
                {
                    label: '순이익 (단위: 백만원)',
                    lineTension: 0,
                    <#--data: [ ${(resList[0].currentIncome?number/1000000)?int}, ${(resList[1].currentIncome?number/1000000)?int}, ${(resList[2].currentIncome?number/1000000)?int}  ],-->
                    data: [ 2412, 1652, 2406 ],
                    backgroundColor: 'rgb(59, 78, 50)'
                }
            ]
        },
        options: {
            responsive: false,
            scales: {
                x: {
                    stacked: true,
                },
                y: {
                    stacked: true
                },
                yAxes: [
                    {
                        ticks: {
                            stepSize: 10000
                        }
                    }
                ]
            },
            animation: {
                onComplete: () => {
                    delayed = true;
                },
                delay: (context) => {
                    let delay = 0;
                    if (context.type === 'data' && context.mode === 'default' && !delayed){
                        delay = context.dataIndex * 300 + context.datasetIndex * 100;
                    }
                    return delay;
                }
            }
        }
    });
</script>
<!-- Chart -->
</body>
</html>