<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>IWIN</title>
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

    <!-- 지도 -->
    <link rel="stylesheet" media="all" href="/css/map/style.common.css" />
    <link rel="stylesheet" media="all" href="/css/map/style.default.css" />
    <link rel="stylesheet" media="all" href="/css/map/layout/common.css" />
    <link rel="stylesheet" media="all" href="/css/map/layout/layout.css" />

    <script>
        var _thisSite = {}, _thisPage = {initAction: [], resizeAction: [], scrollAction: []};
        var _isLowBr_ = false, _isMobile_ = false;
        var editor_type = "mceEditor";
    </script>
    <script src="/js/map/common.simple.js"></script>
    <script src="/js/map/common.layerPopup.js"></script>
    <script src="/js/map/common.msgPopup.js"></script>
    <script src="/js/map/formcheck.js"></script>
    <script src="/js/map/countUp.js"></script>
    <script src="/js/map/userfunc.js"></script>
    <script src="/js/map/common.js"></script>
    <script src="/js/map/jquery.cs_tab.js"></script>
    <script src="/js/map/owl.carousel.v2.3.4.js"></script>

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
                <a href="/sitemap" class="sitemap-line-btn cm-modal-open-btn" title="사이트맵 열기">
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
                            <li><a href="/eng/investment/cfs"><span>Financial information</span></a></li>
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
                <a href="/eng/index">
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
                        <a href="/eng/product/seatheat">Product</a>
                    </li>
                    <li>
                        <a href="/eng/hr/talent">HR</a>
                    </li>
                </ul>
            </div>
            <div class="nav_tap js-navTap">
                <a href="javascript:void(0);">
                    <span>Disclosure Information</span>
                </a>
                <ul class="js-nav2depth">
                    <li>
                        <a href="/eng/investment/finance/cfs">Financial information</a>
                    </li>
                    <li>
                        <a href="/eng/investment/stock">Announcement</a>
                    </li>
                    <li>
                        <a href="/eng/investment/announceinfo">Regulations</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- 중간 네비게이션 -->

    <!-- 재무정보 -->
    <div id="doc" class="isPage">
        <div id="pg-mart" class="doc-pg pg-type-c">
            <script>$(document).ready(function () {
                    $(".btn-popups").remove();
                });</script>
            <div id="contents-wrap">
                <div id="contents">
                    <div class="cont-top">
                        <div class="cont-location">
                            <a href="/eng/about" title="인사말"><span class="txt">About Us<span
                                            class="icon"></span></span></a>&gt;<a
                                    href="/eng/investment/finance/cfs" title="투자정보"><span class="txt">Investment<span
                                            class="icon"></span></span></a>&gt;<span class="isOver"><span class="txt">Regulations<span
                                            class="icon"></span></span></span></div>
                        <div class="cont-tit"><h2>Regulations</h2></div>
                    </div>
                    <h2 class="c-tit01-1">Regulations</h2>
                    <h3 class="c-tit01">Chapter 1: General Provisions</h3>
                    <h4 class="c-tit02"><span>Article 1 ([)Purpose)</span></h4>
                    <p>This regulation is a comprehensive management of company internal information to prevent insider trading of executives and employees as well as prompt and accurate disclosure in accordance with the Capital Market and Financial Investment Business Act (hereinafter referred to as the “law”) and various laws.
                        And it aims to determine matters related to appropriate disclosure.</p>
                    <div class="sgap"></div>

                    <h4 class="c-tit02"><span>Article 2 (definition of terms)</span></h4>
                    <ul class="c-list04">
                        <li><span class="blt">1</span>In these regulations, “internal information” refers to the disclosure regulations of the KOSDAQ market (hereinafter referred to as “disclosure regulations”) of the Korean Exchange (hereinafter referred to as “Exchange”).
                            Refers to the disclosure obligations under Part 1 and other matters related to the company's management or property situation, which may affect the investor's investment judgment.
                        </li>
                        <li><span class="blt">2</span>In this regulation, the term “disclosure manager” refers to a person who can perform reporting on behalf of the company in accordance with Article 2 (4) of the Disclosure Regulations.
                        </li>
                        <li><span class="blt">3</span>In this regulation, the term “executive” refers to a director (including a person falling under any of the subparagraphs of Article 401-2 (1) of the Commercial Act) and
                            Say thanks.
                        </li>
                        <li><span class="blt">4</span>In addition to paragraphs 1 through 3, the definition of terms used in this regulation is in accordance with the definition of terms used in related laws and regulations.
                            By.
                        </li>
                    </ul>
                    <div class="sgap"></div>

                    <h4 class="c-tit02"><span>Article 3 (Scope of application)</span></h4>
                    <p>Matters related to disclosure, insider trading, and internal information management shall comply with these regulations, except those specified in relevant laws and articles of association.</p>
                    <div class="gap"></div>

                    <h3 class="c-tit01">Chapter 2 Management of Internal Information</h3>
                    <h4 class="c-tit02"><span>Article 4 (Management of Internal Information)</span></h4>
                    <ul class="c-list04">
                        <li><span class="blt">1</span>Executives/employees must strictly manage the company's internal information learned during work, and internal information is kept in-house unless necessary for work.
                            Or, it should not be leaked outside the company.
                        </li>
                        <li><span class="blt">2</span>The CEO manages internal information, such as setting specific standards for storage, delivery, and destruction of internal information and related documents.
                            You must take the necessary steps to do so.
                        </li>
                    </ul>
                    <div class="sgap"></div>

                    <h4 class="c-tit02"><span>Article 5 (disclosure manager)</span></h4>
                    <ul class="c-list04">
                        <li><span class="blt">1</span>The representative director shall appoint a person in charge of disclosure and report it to the exchange without delay. The same shall apply when the person in charge of disclosure is changed.</li>
                        <li><span class="blt">2</span>The disclosure manager is in charge of the work related to the establishment and operation of the internal information management system and performs the following tasks.
                            <ul>
                                <li>1. Execution of disclosure</li>
                                <li>2. Checking and evaluating the operation status of the internal information management system</li>
                                <li>3. Review of internal information and determination of whether to disclose or not</li>
                                <li>4. Measures necessary for the operation of the internal information management system, such as training for executives and employees</li>
                                <li>5. Directing and supervising departments, executives, and employees in charge of internal information management or public disclosure</li>
                                <li>6. Other tasks recognized by the CEO as necessary for the operation of the internal information management system.</li>
                            </ul>
                        </li>
                        <li><span class="blt">3</span>The disclosure manager has the following powers in performing his/her duties.
                            <ul>
                                <li>1. Authority to request and view the submission of various documents and records related to internal information</li>
                                <li>2. To receive necessary opinions from executives and staff of departments in charge of accounting or auditing and other departments in charge of business related to the generation of internal information
                                    Authority
                                </li>
                            </ul>
                        </li>
                        <li><span class="blt">4</span>The disclosure manager may consult with the executive in charge of the related business if necessary to perform the job, and at the expense of the company.
                            Professional assistance is available.
                        </li>
                        <li><span class="blt">5</span>The disclosure manager must report the operation status of the internal information management system to the CEO (or the board of directors) on a regular basis.</li>
                    </ul>
                    <div class="sgap"></div>

                    <h4 class="c-tit02"><span>Article 6 (disclosure manager)</span></h4>
                    <ul class="c-list04">
                        <li><span class="blt">1</span>The representative director shall appoint a person in charge of disclosure and report it to the exchange without delay. The same shall apply when the person in charge of disclosure is changed.</li>
                        <li><span class="blt">2</span>The disclosure manager is under the direction of the disclosure manager in relation to internal information management and performs the following tasks.
                            <ul>
                                <li>1. Collection and review of internal information and reporting to the person in charge of disclosure</li>
                                <li>2. Tasks necessary for the enforcement of the disclosure</li>
                                <li>3. Confirmation of matters necessary for the management of internal information, such as changes in laws and regulations related to disclosure, and report to the person in charge of disclosure</li>
                                <li>4. Other matters deemed necessary by the CEO or disclosure officer</li>
                            </ul>
                        </li>
                    </ul>
                    <div class="sgap"></div>

                    <h4 class="c-tit02"><span>Article 7 (concentration of internal information)</span></h4>
                    <ul class="c-list04">
                        <li><span class="blt">1</span>The executives and heads of each department must provide information on the information to the disclosure manager in a timely manner in any of the following cases:
                            do.
                            <ul>
                                <li>1. When internal information occurs or is expected to occur</li>
                                <li>2. If there is a reason or is expected to cancel or change any of the internal information already disclosed</li>
                                <li>3. In other cases, if there is a request from the disclosure manager</li>
                            </ul>
                        </li>
                        <li><span class="blt">2</span>The disclosure manager and the CEO must efficiently establish an information delivery system within the company to provide timely internal information pursuant to Paragraph 1.
                            And, if necessary, the disclosure manager may cooperate in the approval process for tasks related to disclosure obligations.
                        </li>
                    </ul>
                    <div class="sgap"></div>

                    <h4 class="c-tit02"><span>Article 7-2 (Management of information related to the largest shareholder)</span></h4>
                    <p>The disclosure manager should fully explain the relevant facts to the largest shareholder and receive the relevant information in a timely manner in order to smoothly perform the disclosure work on the disclosure obligations and inquiry disclosure requirements related to the largest shareholder.
                        In order to be able to do so, an information delivery system must be established.</p>
                    <div class="sgap"></div>

                    <h4 class="c-tit02"><span>Article 7-3 (Concentration of Internal Information of Subsidiary Companies)</span></h4>
                    <ul class="c-list04">
                        <li><span class="blt">1</span>When the company's internal information related to disclosure obligations is generated or is expected to be generated by the subsidiary,
                            The disclosure manager or the person in charge of disclosure must be notified immediately.
                        </li>
                        <li><span class="blt">2</span>The company manages disclosure-related information to subsidiaries in order to efficiently manage internal information related to disclosure obligations under paragraph 1.
                            A person in charge of disclosure must be appointed, and in the event of designating or changing this, the company's disclosure manager or disclosure manager must be notified immediately.
                        </li>
                        <li><span class="blt">3</span>The company may request the subsidiary to submit related data to the extent necessary for the disclosure work.</li>
                    </ul>
                    <div class="sgap"></div>

                    <h4 class="c-tit02"><span>Article 8 (Provision of internal information outside the company)</span></h4>
                    <ul class="c-list04">
                        <li><span class="blt">1</span>For business reasons, executives and employees sign an advisory contract with the company's counterparty, external auditor, agent, and the company for legal and management advice, etc.
                            If there is an inevitable need to provide internal information to a person who exists, such matters must be reported to the person in charge of disclosure.
                        </li>
                        <li><span class="blt">2</span>In the case of Paragraph 1, the disclosure manager must take necessary measures, such as signing a contract for the confidentiality of related internal information.
                        <li><span class="blt">3</span>In the event that a fair disclosure obligation arises in providing internal information pursuant to Paragraph 1, it shall be disclosed without delay.
                            Except for cases falling under the application exception of Article 15).
                        </li>
                    </ul>
                    <div class="gap"></div>

                    <h3 class="c-tit01">Chapter 3 Disclosure of Internal Information</h3>
                    <h4 class="c-tit02"><span>Article 9 (Types of Disclosure)</span></h4>
                    <p>The company's disclosure is classified as follows.</p>
                    <ul class="c-list03">
                        <li><span class="blt">1</span>Reporting and disclosure of major management matters pursuant to Chapter 2, Section 1 of Part 1 of the Disclosure Regulations</li>
                        <li><span class="blt">2</span>Inquiry and disclosure pursuant to Chapter 2, Section 2 of Part 1 of the Disclosure Regulations</li>
                        <li><span class="blt">3</span>Fair disclosure pursuant to Chapter 2, Section 3 of Part 1 of the Disclosure Regulations</li>
                        <li><span class="blt">4</span>Voluntary disclosure pursuant to Chapter 3 of Part 1 of the Disclosure Regulations</li>
                        <li><span class="blt">5</span>Submission of securities reports, etc. pursuant to Chapter 1 of Part 3 of the Act</li>
                        <li><span class="blt">6</span> Submission of business reports, etc. pursuant to Articles 159, 160 and 165 of the Act and Chapter 2, Section 4 of the Disclosure Regulations Part 1</li>
                        <li><span class="blt">7</span>Submission of report on major matters pursuant to Article 161 of the Act</li>
                        <li><span class="blt">8</span>Disclosure in accordance with other laws and regulations</li>
                    </ul>
                    <div class="sgap"></div>

                    <h4 class="c-tit02"><span>Part 9 (Confirmation of disclosure subject)</span></h4>
                    <p>Matters that have a significant influence on or may have a significant influence on the stock price or investment judgment pursuant to Article 6 (1) 4 of the Disclosure Regulations in determining whether or not the disclosure obligations, including fair disclosure, are applicable pursuant to this regulation.
                        Be careful to include it.</p>

                    <div class="sgap"></div>

                    <h4 class="c-tit02"><span>Article 10 (Execution of Disclosure)</span></h4>
                    <ul class="c-list04">
                        <li><span class="blt">1</span>When the disclosure matters specified in Article 9 occur, the person in charge of disclosure fills out the necessary details and provides the necessary documents to the disclosure manager.
                            Should be reported.
                        </li>
                        <li><span class="blt">2</span>After reviewing whether the contents and documents in Paragraph 1 do not violate relevant laws and regulations, the disclosure manager reports this to the CEO.
                            It must be disclosed.
                        </li>
                    </ul>
                    <div class="sgap"></div>

                    <h4 class="c-tit02"><span>Article 10-2 (Prompt implementation of disclosure)</span></h4>
                    <p>In the event of a disclosure matter pursuant to Article 9, the disclosure manager shall make every effort to ensure that the relevant internal information is disclosed in a timely manner, even before the disclosure deadline in accordance with the disclosure regulations.</p>
                    <div class="sgap"></div>

                    <h4 class="c-tit02"><span>Article 11 (Post-disclosure action)</span></h4>
                    <p>If there is an error or omission in the information disclosed, or if it is to be canceled or changed, the disclosure officer and the disclosure officer shall take measures to correct it, such as correcting it in accordance with Article 30 of the Disclosure Regulations without delay.
                        Should be drunk.</p>
                    <div class="sgap"></div>

                    <h4 class="c-tit02"><span>Article 12 (Reporting by Media, etc.)</span></h4>
                    <ul class="c-list04">
                        <li><span class="blt">1</span>If there is a request for coverage of the company from a media, etc., in principle, the CEO or disclosure officer will respond. If necessary
                            Department executives and staff can respond to the interview.
                        </li>
                        <li><span class="blt">2</span>If the company intends to distribute press releases to media outlets, it must consult with the disclosure manager. Disclosure manager, if necessary, to the CEO
                            Report on matters related to the distribution of press releases.
                        </li>
                        <li><span class="blt">3</span>If the contents of the press release distributed pursuant to Paragraph 2 are subject to fair disclosure, the disclosure manager must disclose it before distribution of the press release.
                            do.
                        </li>
                        <li><span class="blt">4</span> Any executive or employee who learns that the content of the media report is different from the facts must report it to the disclosure manager. Disclosure manager is concerned
                            Report the matters to the CEO and take necessary measures.
                        </li>
                    </ul>
                    <div class="sgap"></div>

                    <h4 class="c-tit02"><span>Article 12-2 (Confirmation of Report Contents)</span></h4>
                    <p>The public announcement officer, the public announcement officer, and the internal information generating department must routinely check the news reports related to the company, such as the press, and take measures to correct any content that is different from the facts.
                        Do it.</p>
                    <div class="sgap"></div>

                    <h4 class="c-tit02"><span>Article 13 (Company Information Session)</span></h4>
                    <ul class="c-list04">
                        <li><span class="blt">1</span>The CEO recognizes that IR activities are the management responsibility of corporations listed on the KOSDAQ market, and voluntarily and continuously holds corporate briefings with investors.
                            You must strive to build trust.
                        </li>
                        <li><span class="blt">2</span>Company briefings about the company's management content, business plans, and prospects should be held in consultation with the disclosure manager.</li>
                        <li><span class="blt">3</span>The person in charge of disclosure or the person in charge of disclosure shall disclose the date and time of the company information session, the location of the company information session, and the details of the information session until the day before the event, and provide related materials.
                            It must be posted on the exchange disclosure submission system before the event.
                        </li>
                        <li><span class="blt">4</span>All executives and employees of the company shall ensure that the information subject to fair disclosure among the information subject to fair disclosure is not disclosed in advance.
                            Be careful.
                        </li>
                    </ul>
                    <div class="sgap"></div>

                    <h4 class="c-tit02"><span>Article 13-2 (Rungmun)</span></h4>
                    <ul class="c-list04">
                        <li><span class="blt">1</span>If there is a rumor spread in the market, the disclosure manager will check whether the rumor is true or not through inquiries about the relevant business departments.
                            Whether it corresponds to internal information, etc. should be checked.
                        </li>
                        <li><span class="blt">2</span> As a result of the confirmation pursuant to Paragraph 1, if the rumor falls under the disclosure obligations in accordance with the disclosure regulations, relevant information shall be disclosed.
                        </li>
                    </ul>
                    <div class="sgap"></div>

                    <h4 class="c-tit02"><span>Article 13-3 (Request for information provision)</span></h4>
                    <ul class="c-list04">
                        <li><span class="blt">1</span>When a request is made to disclose information related to the company from shareholders and stakeholders, the disclosure manager shall review the legality of the request.
                            You must decide whether to provide relevant information.
                        </li>
                        <li><span class="blt">2</span>In order to determine whether to provide the information, the disclosure manager may influence the investor's investment judgment and share price.
                            You can hear the opinions of the legal department or external legal experts on whether or not.
                        </li>
                        <li><span class="blt">3</span> Article 12 (3) shall apply mutatis mutandis to information provided pursuant to the decision in paragraph 1.</li>
                    </ul>
                    <div class="gap"></div>

                    <h3 class="c-tit01">Chapter 4 Regulation on Insider Trading, etc.</h3>
                    <h4 class="c-tit02"><span>Article 14 (Return of gains from short-term trading)</span></h4>
                    <ul class="c-list04">
                        <li><span class="blt">1</span>The executives and employees prescribed by Article 172 (1) of the Act and Article 194 of the Enforcement Decree of the Act shall
                            In the case of a sale within 6 months after the purchase of “specific securities, etc.”), or when a profit is obtained by purchasing within 6 months after the sale of specific securities, the profit (hereinafter referred to as “short-term trade gains”)
                            Should be returned to the company.
                        </li>
                        <li><span class="blt">2</span> Shareholders of the company (including those who own equity securities or securities depository securities other than stock certificates. The same shall apply in this Article hereinafter) with respect to the company.
                            If a person who has obtained short-term trade gains under paragraph (1) is requested to request the return of short-term trade gains, the company shall take necessary measures within two months from the date of receipt of the request.
                        </li>
                        <li><span class="blt">3</span>If the Securities and Futures Commission notifies the Company of the occurrence of short-term trade gains pursuant to Paragraph 1, the disclosure manager shall promptly take the following matters:
                            It must be disclosed on the company's Internet homepage.
                            <ul>
                                <li>1. The position of the person who should return short-term trade gains</li>
                                <li>2. Short-term trade gain amount</li>
                                <li>3. The day the Securities and Futures Commission was notified of the occurrence of short-term trade gains</li>
                                <li>4. Short-term trading profit return claim plan</li>
                                <li>5. The shareholders of the company may request the company to request the return of the short-term trading gains from the person who has obtained the short-term trading profit, and two months from the date the company receives the request.
                                    If the request is not made within the period, it means that the shareholder can make a claim on behalf of the company.
                                </li>
                            </ul>
                        </li>
                        <li><span class="blt">4</span> The disclosure period in Paragraph 3 is two years from the date of notification of the occurrence of short-term trade gains from the Securities and Futures Commission, or the date on which the short-term trade gains are returned.
                            It will be until the first day of arrival.
                        </li>
                    </ul>
                    <div class="sgap"></div>

                    <h4 class="c-tit02"><span>Article 15 (Notification on the sale of specific securities, etc.)</span></h4>
                    <p>Officers and employees prescribed by Article 172 (1) of the Act and Article 194 of the Enforcement Decree of the Act shall notify the disclosure manager of the fact of trading or other transactions in specific securities, etc.</p>
                    <div class="sgap"></div>

                    <h4 class="c-tit02"><span>Article 16 (prohibition of use of undisclosed material information)</span></h4>
                    <p>The executives and employees shall not use the undisclosed material information (including the undisclosed material information of affiliated companies) specified in Article 174 (1) of the Act for the sale of specific securities, other transactions, or make others use it.
                        do. ※ The company is provided by the Korea Exchange to prevent unfair trade, such as prohibiting the use of undisclosed information by insiders, returning short-term trade gains, etc.
                        It can be used for notifications and reports from Articles 14 to 16 by registering with “KRX-Insider Trading Alarm Service”.</p>
                    <div class="gap"></div>

                    <h3 class="c-tit01">Chapter 5 Supplementary Provisions</h3>
                    <h4 class="c-tit02"><span>Article 17 (Education)</span></h4>
                    <ul class="c-list04">
                        <li><span class="blt">1</span>The person in charge of disclosure and the person in charge of disclosure must complete education on disclosure work pursuant to Articles 36 and 44 (5) of the Disclosure Regulations,
                            The disclosure manager must inform the relevant executives and employees of the training content.
                        </li>
                        <li><span class="blt">2</span>
                            Sufficient efforts should be made such as implementation.
                        </li>
                    </ul>
                    <div class="sgap"></div>

                    <h4 class="c-tit02"><span>Article 18 (Opening and Closing of Regulations)</span></h4>
                    <p>The amendment or abolition of this regulation is made by the CEO.</p>
                    <div class="sgap"></div>

                    <h4 class="c-tit02"><span>Article 19 (Publication of Regulations)</span></h4>
                    <p>These regulations are published on the company's website. The same also applies when the regulation is revised.</p>
                    <div class="gap"></div>

                    <h3 class="c-tit01">Addendum</h3>
                    <p>This regulation will take effect on October 1, 2009.</p>
                    <br/><br/>
                    <h3 class="c-tit01">Addendum</h3>
                    <p>This regulation takes effect from June 01, 2017.</p>
                    <br/><br/>
                    <h3 class="c-tit01">Addendum</h3>
                    <p>This regulation will take effect from December 23, 2020.</p>
                    <div class="contOutput editor-out"></div>
                </div>
                <!-- end #container-wrap -->
            </div><!-- end .doc-pg //-->
        </div>
        <!-- 재무정보 -->
    </div>
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
<script type="text/javascript" src="/js/aos.js"></script>
<script type="text/javascript" src="/js/swiper.min.js"></script>
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
<![endif]-->
</body>
</html>