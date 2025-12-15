<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>KWANGJINWINTEC</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="/images/favicon.ico">

    <!-- CSS here -->
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="/css/style.css">

    <link rel="stylesheet" href="/css/board.css">
    <link rel="stylesheet" href="/css/common.css">

    <link rel="stylesheet" href="/css/exclude/default.css">
    <link rel="stylesheet" href="/css/exclude/layout.css">
    <link rel="stylesheet" href="/css/exclude/content.css">
    <link rel="stylesheet" href="/css/exclude/layout_responsive.css">
    <link rel="stylesheet" href="/css/exclude/content_responsive.css">
    <link rel="stylesheet" type="text/css" href="/css/exclude/jquery.fullPage.css" />
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/icon?family=Material+Icons"><!-- google -->
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css"><!-- naver -->

    <script src="/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="/js/jquery.easing.1.3.js"></script>
    <script src="/js/swiper.min.js"></script>
    <script src="/js/aos.js"></script>
    <script src="/js/common.js"></script>
    <script src="/js/scrollreveal.min.js"></script>
    <script src="/js/jquery.inview.min.js"></script>
    <script src="/js/skrollr.min.js"></script>

</head>

<body>
<header id="header" class="">
    <div class="gnb-overlay-bg"></div>
    <div id="headerInnerWrap">
        <!-- ****************** 헤더상단 ********************** -->
        <div id="headerInner" class="clearfix">
            <h1 class="logo">
                <a href="/eng/index">
                    <em class="blind">메인으로</em>
                    <#if device == "pc" >
                        <img src="/images/logo/logo_e_m.png" alt="아이윈" class="off-logo"/>
                        <img src="/images/logo/logo_e_g_m.png" alt="아이윈" class="on-logo"/>
                    </#if>
                    <#if device == "mobile">
                        <img src="/images/logo/logo_e_mobile.png" alt="아이윈" class="off-logo"/>
                        <img src="/images/logo/logo_e_g_mobile.png" alt="아이윈" class="on-logo"/>
                    </#if>
                </a>
            </h1>
            <div class="header-util-box">
                <!-- 외국어선택 -->
                <div class="header-lang">
                    <ul class="lang-list clearfix">
                        <li><a href="/index">KOR</a></li>
                        <li class="selected"><a href="/eng/index">ENG</a></li>
                    </ul>
                </div>
                <!-- 사이트맵 버튼 ( 기본 ) -->
                <a href="/sitemap" class="sitemap-line-btn cm-modal-open-btn" title="Site Map">
                    <span class="line line1"></span><span class="line line2"></span><span class="line line3"></span>
                </a>
            </div>
        </div>
        <!-- ****************** GNB ********************** -->
        <!-- GNB PC  -->
        <nav id="gnb" class="total-menu">
            <h2 class="blind">주메뉴</h2>
            <div id="gnbBg"></div>
            <ul class="clearfix menu5 area">
                <li class="gnb1">
                    <a href="/eng/about">About Us</a>
                    <div class="gnb-2dep">
                        <ul>
                            <li><a href="/eng/about"><span>Greeting</span></a></li>
                            <li><a href="/eng/company/site"><span>Business site introduction</span></a></li>
                            <li><a href="/eng/company/certi"><span>Certification</span></a></li>
                            <li><a href="/eng/history"><span>History</span></a></li>
                            <li><a href="/eng/contact"><span>Contact</span></a></li>
                        </ul>
                    </div>
                </li>
                <li class="gnb2">
                    <a href="/eng/product#seatheat">Product</a>
                    <div class="gnb-2dep">
                        <ul>
                            <li><a href="/eng/product#seatheat"><span>SeatHeater</span></a></li>
                            <li><a href="/eng/product#handle"><span>Heating handle</span></a></li>
                            <li><a href="/eng/product#ventseat"><span>Ventilation seater</span></a></li>
                            <li><a href="/eng/product#warmer"><span>Warmer</span></a></li>
                            <li><a href="/eng/product#ecu"><span>ECU</span></a></li>
                        </ul>
                    </div>
                </li>
                <li class="gnb3">
                    <a href="/eng/investment/finance/cfs">Investment</a>
                    <div class="gnb-2dep">
                        <ul>
                            <li><a href="/eng/investment/finance/cfs"><span>Financial information</span></a></li>
                            <li><a href="/eng/investment/stock"><span>Announcement</span></a></li>
                            <li><a href="/eng/investment/announceinfo"><span>Disclosure Information</span></a></li>
                            <li><a href="/eng/investment/rules"><span>Regulations</span></a></li>
                        </ul>
                    </div>
                </li>
                <li class="gnb3">
                    <a href="/eng/hr/talent">HR</a>
                    <div class="gnb-2dep">
                        <ul>
                            <li><a href="/eng/hr/talent"><span>Talent</span></a></li>
                            <li><a href="/eng/hr/welfare"><span>Welfare</span></a></li>
                            <li><a href="/eng/hr/recruit"><span>Recruit</span></a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </nav>
    </div>
    <!-- GNB Mobile -->
    <button class="nav-open-btn" title="네비게이션 열기">
        <span class="line line1"></span><span class="line line2"></span><span class="line line3"></span>
    </button>
    <div class="gnb-overlay-bg-m"></div>
    <nav id="gnbM" class="gnb-style-basic">
        <h2 class="blind">주메뉴</h2>
        <div class="gnb-navigation-wrapper">
            <div class="gnb-navigation-inner">
                <ul id="navigation">
                    <li>
                        <a href="/eng/about">About Us</a>
                        <ul class="gnb-2dep">
                            <li><a href="/eng/about"><span>Greeting</span></a></li>
                            <li><a href="/eng/company/site"><span>Business site introduction</span></a></li>
                            <li><a href="/eng/company/certi"><span>Certification</span></a></li>
                            <li><a href="/eng/history"><span>History</span></a></li>
                            <li><a href="/eng/contact"><span>Contact</span></a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="/eng/product#seatheat">Product</a>
                        <ul class="gnb-2dep">
                            <li><a href="/eng/product#seatheat"><span>SeatHeater</span></a></li>
                            <li><a href="/eng/product#handle"><span>Heating handle</span></a></li>
                            <li><a href="/eng/product#ventseat"><span>Ventilation seater</span></a></li>
                            <li><a href="/eng/product#warmer"><span>Warmer</span></a></li>
                            <li><a href="/eng/product#ecu"><span>ECU</span></a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="/eng/investment/finance/cfs">Investment</a>
                        <ul class="gnb-2dep">
                            <li><a href="/eng/investment/finance/cfs"><span>Financial information</span></a></li>
                            <li><a href="/eng/investment/stock"><span>Announcement</span></a></li>
                            <li><a href="/eng/investment/announceinfo"><span>Disclosure Information</span></a></li>
                            <li><a href="/eng/investment/rules"><span>Regulations</span></a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="/eng/hr/talent">HR</a>
                        <ul class="gnb-2dep">
                            <li><a href="/eng/hr/talent"><span>Talent</span></a></li>
                            <li><a href="/eng/hr/welfare"><span>Welfare</span></a></li>
                            <li><a href="/eng/hr/recruit"><span>Recruit</span></a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>
<main>
    <!-- Slider Area Start-->
    <div class="slider-area slider-bg main-sub-slider-02">
        <div class="single-slider d-flex align-items-center slider-height2 main-sub-slider-02" style="opacity: 0.9;" data-aos="fade-left">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center pt-50">
                            <h2 data-aos="fade-left">Investment</h2>
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
                        <a href="/eng/about">About Us</a>
                    </li>
                    <li>
                        <a href="/eng/product">Product</a>
                    </li>
                    <li>
                        <a href="/eng/hr/talent">HR</a>
                    </li>
                </ul>
            </div>
            <div class="nav_tap js-navTap">
                <a href="javascript:void(0);">
                    <span>Financial information</span>
                </a>
                <ul class="js-nav2depth">
                    <li>
                        <a href="/eng/investment/stock">Announcement</a>
                    </li>
                    <li>
                        <a href="/eng/investment/announceinfo">Disclosure Information</a>
                    </li>
                    <li>
                        <a href="/eng/investment/rules">Regulations</a>
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
            <h3 class="content-tit font-noto">Financial Information</h3>
        </aside>

        <article class="ir-content">
            <!-- 상단 탭 -->
            <aside class="sub-tab-list-style">
                <ul class="tab-list col-03 clearfix">
                    <li><a href="/eng/investment/finance/cfs"><em>CFS</em></a></li>
                    <li class="selected"><a href="/eng/investment/finance/ofs"><em>OFS</em></a></li>
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
                        <h1 class="tbl-tit clearfix">Statement of Financial Position(OFS) <span>(Unit : million Won)</span></h1>
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
                                    <th>Year</th>
                                    <th>Amount</th>
                                    <th>Operating Income</th>
                                    <th>Net Profit</th>
                                    <th>Assets</th>
                                    <th>Liability</th>
                                    <th>Equity</th>
                                </tr>
                                </thead>
                                <tbody>
                                <#if resList??>
                                <#list resList as res>
                                    <tr>
                                        <td>${res.years}</td>
                                        <td>${(res.amount?number/1000000)?string(",##0")}</td>
                                        <td>${(res.salesLoss?number/1000000)?string(",##0")}</td>
                                        <td>${(res.currentIncome?number/1000000)?string(",##0")}</td>
                                        <td>${(res.totalAssets?number/1000000)?string(",##0")}</td>
                                        <td>${(res.totalDebt?number/1000000)?string(",##0")}</td>
                                        <td>${(res.capital?number/1000000)?string(",##0")}</td>
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
    <!-- Footer Start-->
    <div class="footer-area">
        <div class="container">
            <div class="footer-bottom">
                <div class="row d-flex justify-content-between align-items-center">
                    <div class="col-xl-7 col-lg-7 ">
                    </div>
                    <div class="col-xl-5 col-lg-5">
                        <div class="footer-copy-right text-right">
                            <img src="/images/logo/logo_e_footer.png">
                        </div>
                        <div class="footer-copy-right text-right">
                            <p>
                                Copyright &copy;
                                <script>
                                    document.write(new Date().getFullYear());
                                </script>. Kwangjinwintec Inc. All rights reserved</p>
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
                    label: 'Sales (Unit: one million won)',
                    lineTension: 0,
                    data: [ ${(resList[0].amount?number/1000000)?int?replace(",", "")}, ${(resList[1].amount?number/1000000)?int?replace(",", "")}, ${(resList[2].amount?number/1000000)?int?replace(",", "")} ],
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
                            stepSize: 1000000
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
                    label: 'Operating Profit (Unit: one million won)',
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
                            stepSize: 1000000
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
                    label: 'Net Profit (Unit: one million won)',
                    lineTension: 0,
                    <#--data: [ ${(resList[0].currentIncome?number/1000000)?int}, ${(resList[1].currentIncome?number/1000000)?int}, ${(resList[2].currentIncome?number/1000000)?int}  ],-->
                    data: [ ${(resList[0].currentIncome?number/1000000)?int?replace(",", "")}, ${(resList[0].currentIncome?number/1000000)?int?replace(",", "")}, ${(resList[2].currentIncome?number/1000000)?int?replace(",", "")}  ],
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
                            stepSize: 1000000
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