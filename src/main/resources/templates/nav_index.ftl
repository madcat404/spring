<!-- *************************************************** -->
<!-- Author:	  <KWON SUNG KUN - sealclear@naver.com>	 -->
<!-- Create date: <24.06.05>                             -->
<!-- Description: <상단 네비게이션 index 전용>	             -->
<!-- *************************************************** -->

<div class="gnb-overlay-bg"></div>
<div id="headerInnerWrap">
    <!-- ****************** 헤더상단 ********************** -->
    <div id="headerInner" class="clearfix">
        <h1 class="logo">
            <a href="./index">
                <em class="blind">메인으로</em>
                <#if device == "pc" >
                    <img src="/images/logo/logo_k_g_m_white.png" style="padding-left: 5%;" alt="아이윈" class="off-logo"/>
                    <img src="/images/logo/logo_k_g_m_balck.png" alt="아이윈" class="on-logo"/>
                </#if>
                <#if device == "mobile">
                    <img src="/images/logo/logo_k_mobile.png" alt="아이윈" class="off-logo"/>
                    <img src="/images/logo/logo_k_g_mobile.png" alt="아이윈" class="on-logo"/>
                </#if>
            </a>
        </h1>
        <div class="header-util-box">
            <!-- 외국어선택 -->
            <div class="header-lang">
                <ul class="lang-list clearfix">
                    <li class="selected"><a href="/index">KOR</a></li>
                    <li><a href="/eng/index">ENG</a></li>
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
                <a href="/about">About Us</a>
                <div class="gnb-2dep">
                    <ul>
                        <li><a href="/about"><span>인사말</span></a></li>
                        <li><a href="/company/site"><span>사업장소개</span></a></li>
                        <li><a href="/company/certi"><span>인증</span></a></li>
                        <li><a href="/history"><span>연혁수상</span></a></li>
                        <li><a href="/contact"><span>오시는길</span></a></li>
                    </ul>
                </div>
            </li>
            <li class="gnb2">
                <a href="/product#seatheat">Product</a>
                <div class="gnb-2dep">
                    <ul>
                        <li><a href="/product#seatheat"><span>시트히터</span></a></li>
                        <li><a href="/product#handle"><span>발열핸들</span></a></li>
                        <li><a href="/product#ventseat"><span>통풍시터</span></a></li>
                        <li><a href="/product#warmer"><span>워머</span></a></li>
                        <li><a href="/product#ecu"><span>ECU</span></a></li>
                    </ul>
                </div>
            </li>
            <li class="gnb3">
                <a href="/investment/stock">Investment</a>
                <div class="gnb-2dep">
                    <ul>
                        <!-- <li><a href="/investment/finance/cfs">재무정보</a></li> -->
                        <li><a href="/investment/stock"><span>공고</span></a></li>
                        <li><a href="/investment/announceinfo"><span>공시정보</span></a></li>
                        <li><a href="/investment/rules"><span>내부정보관리 규정</span></a></li>
                    </ul>
                </div>
            </li>
            <li class="gnb4">
                <a href="/hr/talent">HR</a>
                <div class="gnb-2dep">
                    <ul>
                        <li><a href="/hr/talent"><span>인재상</span></a></li>
                        <li><a href="/hr/welfare"><span>복리후생</span></a></li>
                        <li><a href="/hr/recruit"><span>채용절차</span></a></li>
                    </ul>
                </div>
            </li>
            <li class="gnb5">
                <a href="/ethics/ethics1">ESG</a>
                <div class="gnb-2dep">
                    <ul>
                        <li><a href="/ethics/ethics2"><span>환경</span></a></li>
                        <li><a href="/ethics/ethics3"><span>사회</span></a></li>
                        <li><a href="/ethics/ethics5"><span>거버넌스</span></a></li>
                        <li><a href="/ethics/ethics6"><span>정보공개</span></a></li>
                        <li><a href="/ethics/ethics1"><span>정책</span></a></li>
                        <li><a href="/ethics/ethics4"><span>부정비리제보</span></a></li>
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
                    <a href="/about">About Us</a>
                    <ul class="gnb-2dep">
                        <li><a href="/about"><span>인사말</span></a></li>
                        <li><a href="/company/site"><span>사업장소개</span></a></li>
                        <li><a href="/company/certi"><span>인증</span></a></li>
                        <li><a href="/history"><span>연혁수상</span></a></li>
                        <li><a href="/contact"><span>오시는길</span></a></li>
                    </ul>
                </li>
                <li>
                    <a href="/product#seatheat">Product</a>
                    <ul class="gnb-2dep">
                        <li><a href="/product/seatheat"><span>시트히터</span></a></li>
                        <li><a href="/product/handle"><span>발열핸들</span></a></li>
                        <li><a href="/product/coolseat"><span>통풍시터</span></a></li>
                        <li><a href="/product/irwarmer"><span>워머</span></a></li>
                        <li><a href="/product/ecu"><span>ECU</span></a></li>
                    </ul>
                </li>
                <li>
                    <a href="/investment/stock">Investment</a>
                    <ul class="gnb-2dep">
                        <!-- <li><a href="/investment/finance/cfs">재무정보</a></li> -->
                        <li><a href="/investment/stock">공고</a></li>
                        <li><a href="/investment/announceinfo">공시정보</a></li>
                        <li><a href="/investment/rules">내부정보관리 규정</a></li>
                    </ul>
                </li>
                <li>
                    <a href="/hr/talent">HR</a>
                    <ul class="gnb-2dep">
                        <li><a href="/hr/talent"><span>인재상</span></a></li>
                        <li><a href="/hr/welfare"><span>복리후생</span></a></li>
                        <li><a href="/hr/recruit"><span>채용절차</span></a></li>
                    </ul>
                </li>
                <li>
                    <a href="/ethics/ethics1">ESG</a>
                    <div class="gnb-2dep">
                        <ul>
                            <li><a href="/ethics/ethics2"><span>환경</span></a></li>
                            <li><a href="/ethics/ethics3"><span>사회</span></a></li>
                            <li><a href="/ethics/ethics5"><span>거버넌스</span></a></li>
                            <li><a href="/ethics/ethics6"><span>정보공개</span></a></li>
                            <li><a href="/ethics/ethics1"><span>정책</span></a></li>
                            <li><a href="/ethics/ethics4"><span>부정비리제보</span></a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</nav>