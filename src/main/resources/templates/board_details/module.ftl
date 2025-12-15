<!doctype html>
<html class="no-js" lang="zxx">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
    <#include "../head_root.ftl">
</head>

<body>
<header id="header" class="">
    <#include "../nav.ftl">
</header>
<main>
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
    <section class="blog_area single-post-area section-padding" style="background: #e2e4ea;">
        <div class="container">
            <div id="content-core">
                <div id="main">
                    <div id="main-core">
                        <article id="post-12135" class="post-12135 page type-page status-publish hentry">

                            <div class="panel-grid" id="pg-12135-0">
                                <div class="panel-grid-core">
                                    <div class="panel-grid-cell" id="pgc-12135-0-0">
                                        <div class="panel-widget-style animated fadeInUp">
                                            <div class="textwidget">
                                                <div class="sub_title">
                                                    <h2 style="margin: 0 0 0.8em;">공고</h2>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel-grid animated fadeInUp" id="pg-12135-1">
                                <div class="panel-grid-core">
                                    <div class="panel-grid-cell" id="pgc-12135-1-0">
                                        <div class="panel-widget-style">
                                            <div class="textwidget"><p>
                                                <div id="kboard-document">
                                                    <div id="kboard-customer-document">
                                                        <div class="kboard-document-wrap" itemscope
                                                             itemtype="http://schema.org/Article">
                                                            <div class="kboard-title" itemprop="name">
                                                                <h1>${notice.title}</h1>
                                                            </div>

                                                            <div class="kboard-detail">
                                                                <div class="detail-attr detail-writer">
                                                                    <div class="detail-name">작성자</div>
                                                                    <div class="detail-value">${notice.memberId}</div>
                                                                </div>
                                                                <div class="detail-attr detail-date">
                                                                    <div class="detail-name">작성일</div>
                                                                    <div class="detail-value">${notice.registerDatetime?string("yyyy-MM-dd")}</div>
                                                                </div>
                                                            </div>

                                                            <div class="kboard-content" itemprop="description">
                                                                <div class="content-view">
                                                                    <#if (notice.subject?length > 0)>
                                                                            ${notice.subject}
                                                                    </#if>
                                                                    <#if notice.imgPath?? >
                                                                        <#if notice.imgPath?contains(".jpg") || notice.imgPath?contains(".jpeg") || notice.imgPath?contains(".png") >
                                                                            <img src="${notice.imgPath}" style="margin: 5% auto;display: block;width: 50%;">
                                                                        </#if>
                                                                    </#if>
                                                                </div>
                                                            </div>


                                                            <div class="kboard-attach">
                                                                <#if notice.imgPath?? >
                                                                    <#if !notice.imgPath?contains(".jpg") && !notice.imgPath?contains(".jpeg") && !notice.imgPath?contains(".png") >
                                                                <button type="button"
                                                                        class="kboard-button-action kboard-button-download"
                                                                        onclick="window.location.href='${notice.imgPath}'">
                                                                    ${notice.imgPath?substring(25, (notice.imgPath?length))}
                                                                </button>
                                                                    </#if>
                                                                </#if>
                                                            </div>
                                                        </div>

                                                        <div class="kboard-document-navi">
                                                            <div class="kboard-prev-document">
                                                                <span class="navi-document-title kboard-customer-cut-strings">
                                                                    <#if (prev != 0) >
                                                                        <a href="/board_details?idx=${prev}">
                                                                        <h4>이전글</h4>
                                                                    </a>
                                                                    </#if>
                                                                </span>
                                                            </div>

                                                            <div class="kboard-next-document">
                                                                <span class="navi-document-title kboard-customer-cut-strings">
                                                                    <#if (next != 0) >
                                                                        <a href="/board_details?idx=${next}">
                                                                            <h4>다음글</h4>
                                                                        </a>
                                                                    </#if>
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </article>


                    </div><!-- #main-core -->
                </div><!-- #main -->
            </div>
        </div>
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
<div id="back-top" >
    <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
</div>

<!-- JS here -->
<!-- All JS Custom Plugins Link Here here -->
<script src="/js/vendor/modernizr-3.5.0.min.js"></script>
<!-- Jquery, Popper, Bootstrap -->
<script src="/js/vendor/jquery-1.12.4.min.js"></script>
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

</body>


<!-- DAS 스크립트 -->
<script>

    $(function() {
        $("#top_btn").on("click", function() {
            $("html, body").animate({scrollTop:0}, '500');
            return false;
        });
    });
</script>
<script>
    function subNavTap(){
        var navTap = document.querySelectorAll('.js-navTap'),
            nav2depth = document.querySelectorAll('.js-nav2depth');

        Array.prototype.forEach.call(navTap,function(el){
            el.addEventListener('click',function(){
                var siblings = getSiblings(el);
                for(var i = 0; i < siblings.length; i++){
                    if(siblings[i].classList.contains('js-navTap')){
                        siblings[i].classList.remove('show');
                    }
                }
                el.classList.toggle('show');
            })
            el.addEventListener('mouseleave',function(){
                el.classList.remove('show');
            })
        })
    }

    function getSiblings(t){
        var children = t.parentElement.children;
        var temp = [];

        for(var i = 0; i < children.length; i ++){
            temp.push(children[i]);
        }

        return temp.filter(function(el){
            return el != t;
        })
    }
    subNavTap();
    AOS.init({
        duration: 1500
    });
</script>
<script >
    $(document).ready(function(){
        try{	resetFormStyle();}catch(e){	}

        //레이어팝업 포커스 오류 보정
        //접근성 필수일경우 닫기 버튼으로 포커스 초기화 되지 않으므로 문제생길 수 있음.
        try{	if(parent.msgPopArr.length>0){	$("input,select,a,button").not("[type='text']").eq(0).focus();		}			}catch(e){	}
        try{$(".calendar").datepicker({});		}catch(e){	}

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
</html>