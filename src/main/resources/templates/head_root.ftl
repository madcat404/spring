<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="madcat">
<meta name="description" content="IWIN Homepage">
<meta name="format-detection" content="telephone=no"/><!-- ios 자동전화걸기 방지 -->
<meta name="google-site-verification" content="">
<meta name="naver-site-verification" content="">
<meta name="NaverBot" content="All"/>
<meta name="NaverBot" content="INDEX,FOLLOW"/>
<meta name="Yeti" content="All"/>
<meta name="Yeti" content="INDEX,FOLLOW"/>
<meta name="Googlebot" content="All" />
<meta name="Googlebot" content="INDEX,FOLLOW" />
<meta name="Robots" content="INDEX,FOLLOW">
<link rel="canonical" href="">
<title>(주)아이윈</title>

<!-- 파비콘 -->
<link rel="shortcut icon" href="/icon/kjwt_favicon.ico">
<link rel="apple-touch-icon-precomposed" href="/icon/kjwt_ci_152.png">
<link rel="icon" href="/icon/kjwt_favicon.png">
<link rel="icon" href="/icon/kjwt_ci_16.png" sizes="16x16">
<link rel="icon" href="/icon/kjwt_ci_32.png" sizes="32x32">
<link rel="icon" href="/icon/kjwt_ci_48.png" sizes="48x48">
<link rel="icon" href="/icon/kjwt_ci_64.png" sizes="64x64">
<link rel="icon" href="/icon/kjwt_ci_128.png" sizes="128x128">

<!--====== 카카오톡 미리보기 세팅 ======-->
<meta property="og:title" content="IWIN">
<meta property="og:image" content="http://www.iwin.kr/images/logo2.png">
<meta property="og:description" content="IWIN Homepage">
<meta property="og:type" content="website">

<!-- CSS here -->
<link rel="stylesheet" href="/css/bootstrap.min.css">
<!-- font-awesome 아이콘 <link rel="stylesheet" href="/css/fontawesome-all.min.css"> -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/board.css">
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/exclude/default.css">
<link rel="stylesheet" href="/css/exclude/layout.css">
<link rel="stylesheet" href="/css/exclude/content.css">
<link rel="stylesheet" href="/css/exclude/main.css" />
<link rel="stylesheet" href="/css/exclude/layout_responsive.css">
<link rel="stylesheet" href="/css/exclude/content_responsive.css">
<link rel="stylesheet" href="/css/exclude/main_responsive.css" />
<link rel="stylesheet" media="all" href="/css/map/style.common.css"/>
<link rel="stylesheet" media="all" href="/css/map/style.default.css"/>
<link rel="stylesheet" media="all" href="/css/map/layout/common.css"/>
<link rel="stylesheet" media="all" href="/css/map/layout/layout.css"/>

<!-- Plugin -->
<link rel="stylesheet" type="text/css" href="/css/exclude/slick.css">
<link rel="stylesheet" type="text/css" href="/css/exclude/jquery.mCustomScrollbar.css">
<link rel="stylesheet" type="text/css" href="/css/exclude/magnific-popup.css">
<link rel="stylesheet" type="text/css" href="/css/exclude/aos.css" />
<link rel="stylesheet" type="text/css" href="/css/exclude/swiper.css" />
<link rel="stylesheet" type="text/css" href="/css/exclude/jquery.fullPage.css" />
<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/icon?family=Material+Icons"><!-- google -->
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css"><!-- naver -->

<!-- js -->
<script src="/js/vendor/jquery-1.12.4.min.js"></script>
<script src="/js/jquery.easing.1.3.js"></script>
<script src="/js/swiper.min.js"></script>
<script src="/js/aos.js"></script>
<script src="/js/common.js"></script>
<script src="/js/scrollreveal.min.js"></script>
<script src="/js/jquery.inview.min.js"></script>
<script src="/js/skrollr.min.js"></script>

<!-- 지도 -->
<script  src="/js/exclude/common.simple.js"></script>
<script  src="/js/exclude/jquery-ui.centumsoft.js"></script>
<link rel='stylesheet' href='/css/excludejquery-ui.centumsoft.css'>
<script src="/js/map/common.simple.js"></script>
<script src="/js/map/common.layerPopup.js"></script>
<script src="/js/map/common.msgPopup.js"></script>
<script src="/js/map/formcheck.js"></script>
<script src="/js/map/countUp.js"></script>
<script src="/js/map/userfunc.js"></script>
<script src="/js/map/common.js"></script>
<script src="/js/map/jquery.cs_tab.js"></script>
<script src="/js/map/owl.carousel.v2.3.4.js"></script>

<script>
    var _thisSite = {}, _thisPage = {initAction:[],resizeAction:[],scrollAction:[]};
    var _isLowBr_ = false,_isMobile_ = false;
    var editor_type = "mceEditor";
</script>

<script type="text/javascript" src="/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
    // 숫자 카운트
    function numberCounter2(target_frame, target_number) {
        this.count = 0; this.diff = 0;
        this.target_count = parseInt(target_number);
        this.target_frame = document.getElementById(target_frame);
        this.timer = null;
        this.counter();
    };
    numberCounter2.prototype.counter = function() {
        var self = this;
        this.diff = this.target_count - this.count;

        if(this.diff > 0) {
            self.count += Math.ceil(this.diff / 5);
        }

        this.target_frame.innerHTML = this.count.toString();

        if(this.count < this.target_count) {
            this.timer = setTimeout(function() { self.counter(); }, 30);
        } else {
            clearTimeout(this.timer);
        }
    };
    function callCount2(target, number) {
        return new numberCounter2(target, number);
    }
</script>

<style>
    video {
        width: 100%;
    }
</style>