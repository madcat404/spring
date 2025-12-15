$(document).ready(function(){
	$("a,button").focus(function(){
		if(fcsChk)	latestFocus =$(this);
	});
	$("img[zoomview='1']").each(function(){
		$(this).on("click",function(){
			image_view(this);
		}).addClass("hand");
	});
	try{resizeImageMap($('img[usemap]'));}catch(e){}
});
$(window).resize(function(){ try{resizeImageMap($('img[usemap]'));}catch(e){} });

function image_view(img) {
	var _charset = "UTF-8";
	var imgsrc	= ($(img).attr("orgSrc"))? $(img).attr("orgSrc") : img.getAttribute("src");
	var w = img.getAttribute("org_width");
	var h = img.getAttribute("org_height");
	var winl = (screen.width-w)/2;
	var wint = (screen.height-h)/3;
	if (w >= screen.width) {
		winl = 0;
		h = (parseInt)(w * (h / w));
	}
	if (h >= screen.height) {
		wint = 0;
		w = (parseInt)(h * (w / h));
	}
	var js_url = "<script language='JavaScript1.2'> \n";
		js_url += "<!-- \n";
		js_url += "var ie=document.all; \n";
		js_url += "var nn6=document.getElementById&&!document.all; \n";
		js_url += "var isdrag=false; \n";
		js_url += "var x,y; \n";
		js_url += "var dobj; \n";
		js_url += "function movemouse(e) \n";
		js_url += "{ \n";
		js_url += "  if (isdrag) \n";
		js_url += "  { \n";
		js_url += "    dobj.style.left = nn6 ? tx + e.clientX - x : tx + event.clientX - x; \n";
		js_url += "    dobj.style.top  = nn6 ? ty + e.clientY - y : ty + event.clientY - y; \n";
		js_url += "    return false; \n";
		js_url += "  } \n";
		js_url += "} \n";
		js_url += "function selectmouse(e) \n";
		js_url += "{ \n";
		js_url += "  var fobj      = nn6 ? e.target : event.srcElement; \n";
		js_url += "  var topelement = nn6 ? 'HTML' : 'BODY'; \n";
		js_url += "  while (fobj.tagName != topelement && fobj.className != 'dragme') \n";
		js_url += "  { \n";
		js_url += "    fobj = nn6 ? fobj.parentNode : fobj.parentElement; \n";
		js_url += "  } \n";
		js_url += "  if (fobj.className=='dragme') \n";
		js_url += "  { \n";
		js_url += "    isdrag = true; \n";
		js_url += "    dobj = fobj; \n";
		js_url += "    tx = parseInt(dobj.style.left+0); \n";
		js_url += "    ty = parseInt(dobj.style.top+0); \n";
		js_url += "    x = nn6 ? e.clientX : event.clientX; \n";
		js_url += "    y = nn6 ? e.clientY : event.clientY; \n";
		js_url += "    document.onmousemove=movemouse; \n";
		js_url += "    return false; \n";
		js_url += "  } \n";
		js_url += "} \n";
		js_url += "document.onmousedown=selectmouse; \n";
		js_url += "document.onmouseup=new Function('isdrag=false'); \n";
		js_url += "//--> \n";
		js_url += "</"+"script> \n";

	var settings;

   // if (g4_is_gecko) {
   //     settings  ='width='+(w+10)+',';
  //  } else {
		settings  ='width='+w+',';
		settings +='height='+h+',';
  //  }
	settings +='top='+wint+',';
	settings +='left='+winl+',';
	settings +='scrollbars=no,';
	settings +='resizable=yes,';
	settings +='status=no';


	win=window.open("","image_window",settings);
	win.document.open();
	win.document.write ("<html><head> \n<meta http-equiv='imagetoolbar' CONTENT='no'> \n<meta http-equiv='content-type' content='text/html; charset="+_charset+"'>\n");
	var size = "이미지 사이즈 : "+w+" x "+h;
	win.document.write ("<title>"+size+"</title> \n");
	if(w >= screen.width || h >= screen.height) {
		win.document.write (js_url);
		var click = "ondblclick='window.close();' style='cursor:move' title=' "+size+" \n\n 이미지 사이즈가 화면보다 큽니다. \n 왼쪽 버튼을 클릭한 후 마우스를 움직여서 보세요. \n\n 더블 클릭하면 닫혀요. '";
	}
	else
		var click = "onclick='window.close();' style='cursor:pointer' title=' "+size+" \n\n 클릭하면 닫혀요. '";
	win.document.write ("<style>.dragme{position:relative;}</style> \n");
	win.document.write ("</head> \n\n");
	win.document.write ("<body leftmargin=0 topmargin=0 bgcolor=#dddddd style='cursor:arrow;'> \n");
	win.document.write ("<table width=100% height=100% cellpadding=0 cellspacing=0><tr><td align=center valign=middle><img src='"+imgsrc+"' width='"+w+"' height='"+h+"' border=0 class='dragme' "+click+"></td></tr></table>");
	win.document.write ("</body></html>");
	win.document.close();

	if(parseInt(navigator.appVersion) >= 4){win.window.focus();}

}


//로그인체크
function checkLogin(){
	var chk =	$.ajax({  url: "/Share/CheckLogin.php",  async: false }).responseText;
	return chk;
}


///////////////////////////////////////////////////
var _url_root_ = "", _cms_domain_ ="";
var csURL = {
	root:_url_root_+"/",
	img:_url_root_+"/_Img"
	,cms:_url_root_+"/_Admin"
	,template:_url_root_+"/_Template"
	,share:_cms_domain_+"/Share"
}
var csAPIKeys = {
	daumMap:"23e7d64cdc4faaccf2d98945c7f71c4c"
}

////////////////////////////////////////////////////////////////
function setMediaObjectFunc(target){
	if(target==undefined) var target=$("body");
	var fullContW = 930;

	$(".isMediaObject,  .isPDFObj , .isPDFifrm, .view-map-wr",target).each(function(){

		if($(this).attr("width")!=undefined && $(this).attr("width")!=""&& $(this).attr("width").indexOf("%")>=0){
			if($(this).attr("width").indexOf("%")>=0){
				var setW = fullContW * 0.01 * parseInt($(this).attr("width"));
			}else{
			//console.log($(this).attr("width").indexOf("%"));
			//var setW = $(this).width();
			var setW = fullContW;
			}

		}else{
			var setW = $(this).attr("width");
		}



		if(setW!="" && $(this).attr("srate_w")==undefined ) $(this).attr("srate_w", setW);
		if($(this).attr("height") && $(this).attr("srate_h")==undefined ) $(this).attr("srate_h",$(this).attr("height")) ;
	});

}



function autoResizeContentObject(){
	//이미지 리사이징 처리 (이미지 사이즈 정보는 첫 로딩 직후 저장되어있음)
	//$(".div-conts img").css({"max-width":"100%"});
	/*
	$(".div-conts img").each(function(){
		if($(this).parents(".noResize").length>0){
		}else{
			$(this).css({"max-width":"100%"});
		}
	});

	$(".div-conts img,img.autoResize").not(".noResize").each(function(){

//		AutoImgResize($(this));//,$(".div-conts").width()
	});

	*/
	//미디어 아이프레임 리사이징
	$(".isMediaObject, .isPDFObj , .isPDFifrm, .view-map-wr").not("#ifrmMap").each(function(){

		if($(this).attr("width")!=undefined && $(this).attr("width")!=""&& $(this).attr("width").indexOf("%")>=0){
			var setW = $(this).width();
		}else{
			var setW = $(this).attr("width");
		}

		if(setW!="" && $(this).attr("srate_w")==undefined ) $(this).attr("srate_w", setW);
		if($(this).attr("height") && $(this).attr("srate_h")==undefined ) $(this).attr("srate_h",parseInt($(this).attr("height"))) ;


		if(parseInt($(this).attr("srate_w")) >0 && parseInt($(this).attr("srate_h"))>0){
			var to_h =  parseInt($(this).width()) * parseInt($(this).attr("srate_h")) / parseInt($(this).attr("srate_w") );
			$(this).height(to_h);

		}

	});

}

////////////////////////////////////////////////////////////////


function resetGalleryListSize_default(settings){


	var cfg = $.extend({
		f_width:$(".gallery-list-wrap").width(),wrap: $(".gallery-list").not(".gallery-list-top"),
		orgImg_w:160,orgImg_h:120,cont_h:130,
			list_mod:3,wsize_data:[{"wsize":480,"list_mod":2}],
			mg_w:10,sel_thumb:".pimg"},settings);

	var listWrap =cfg.wrap;// $(".gallery-list").not(".gallery-list-top");
	var li = $("li",listWrap).not(".no-data").not(".isNotice");
	var items = $("li",listWrap).not(".no-data").not(".isNotice");//.gallery-in-wrap


	var f_width = cfg.f_width;
	if(_isLowBr_ && f_width > 760)  f_width = 760;

	var orgImgSize = {w:cfg.orgImg_w,h:cfg.orgImg_h};
	var toSize = {w:orgImgSize.w,h:orgImgSize.h};
	var contHeight = cfg.cont_h;
	var line_limit = cfg.list_mod;
	if(cfg.wsize_data.length>0){
		for(var i=(cfg.wsize_data.length-1);i>=0;i--){
			var chk_w = cfg.wsize_data[i].wsize;
			if(wsize.win.w <= chk_w) {
				line_limit = cfg.wsize_data[i].list_mod;
				if(cfg.wsize_data[i].cont_h!=undefined) contHeight = cfg.wsize_data[i].cont_h;
				break;
			}
		}
	}

	var lines =Math.ceil( items.length / line_limit) ;

	//if(f_width > wsize.win.w){ f_width = wsize.win.w;}




	var li_re_width = Math.floor(f_width / line_limit ) - cfg.mg_w;
	//if(toSize.w > li_re_width){
		toSize.w = li_re_width;
		toSize.h = Math.floor(( orgImgSize.h * li_re_width ) / orgImgSize.w);
	//}

	var li_height = (parseInt(toSize.h) + contHeight);
	var mg = Math.floor((f_width - (toSize.w * line_limit))/ (line_limit-1) );


	items.each(function(){
		var $this = $(this);
		$this.width(toSize.w);
		$this.height(li_height);

		var $this_wrap = $($this.parents("ul").get(0));
		$(cfg.sel_thumb,$this).css({"width":toSize.w,"height":toSize.h});

		var $line_index = $(this).index() % line_limit;
		var mgLeft = mg;
		if($line_index==0)	mgLeft = 0;

			var toAbs_Left = ($line_index * toSize.w ) +( mg * $line_index)  ;
			var toAbs_Top = (Math.ceil(($(this).index() + 1) / line_limit) -1) * (li_height);
			$this.css({"position":"absolute","left":toAbs_Left, "top":toAbs_Top,"width":toSize.w,"height":(li_height)+"px","margin-left":0,"margin-right":0,"padding-left":0,"padding-right":0});

			$this_wrap.height(li_height * lines);
		if(_isLowBr_ ) {

		}else{
		//	$this.css({"width":toSize.w,"height":(li_height)+"px","margin-left":mgLeft,"margin-right":0,"padding-left":0,"padding-right":0});
		}






	});



	//ie7에서 초기 사이즈 계산 오류있음, 최대 사이즈로 계산 후 다시 재계산하는 오류 확인되어 2번 로드하는식으로
	if(_isLowBr_ && $wrap.prop("isIE7Load")!="1"){

		$wrap.prop("isIE7Load","1");
		resetGalleryListSize_default(settings);
	}




}



///////////////////////////////////////////////////
//층별안내도
function openFloorMap(floor,num,url){
	if(url!=undefined ) {
	}else{
		if(floor=="0") floor = "";
		if(num=="0") num = "";
		var url = _site_url +"/floormap.php?mode=main&floor="+floor+"&n=" + num;
	}

	switch(_site_code){
		case "eng":case "chn":case "jpn":
			if(url=="") {alert("No Information");return;}
			window.open(url,"winFloorMap","width=800,height=980,scrollbars=yes");
			break;
		default:
			if(url=="") {alert("해당 정보가 없습니다.");return;}
			window.open(url,"winFloorMap","width=800,height=980,scrollbars=yes");
			break;

	}

}
//진료일정표 보기
function viewMediDptSchedule(dptCD){
	var url = _site_url +"/?pCode=schedule&dpt=" + dptCD;
	switch(_site_code){
		default:
			window.open(url,"winMSchedule","width=910,height=680,scrollbars=yes");
			break;
	}
}
//의료진 소개 바로가기
function viewDoctorInfo(doctorCD){
	//var url = _site_url +"/doctor/?idx=" + doctorCD;
	var url = _site_url +"/doctor.php?idx=" + doctorCD;
	switch(_site_code){
		default:
			window.open(url,"winDoctor","width=910,height=980,scrollbars=yes");
			break;
	}
}
function ScheEtcAlert(str){
	alert("현재 선택하신 의료진은\n"+str+"\n상태로 예약이 불가합니다.");
}
//진료예약 바로가기
function goReserv(dptCD,doctorCD,wclose){

	var url = _site_url +"/index.php?pCode=reserv&dpt=" + dptCD+"&doctor="+doctorCD;
	var pWin = window.opener;

	switch(_site_code){
		default:
			if(wclose==true && pWin ) {
				pWin.document.location.href=url;
				window.close();
			}else{
				document.location.href=url;
			}
			break;
	}

}

///////////////////////////////////////////////////
//사이트 바로가기 리스트
var selSiteList;
if (selSiteList == undefined) {
	selSiteList = function( selObj, optionObj ) {
		this._init(selObj,optionObj);
	};
}
selSiteList.prototype._init = function (selObj,optionObj) {
	this.selBtn = $("h5 a:first-child ",selObj);
	this.optionObj = optionObj;
	this.subTimer =null;
	this.optionItems = $("li a",this.optionObj);
	var this_s = this;
	$(this.selBtn).bind("click",function(){			this_s.optionObj.show("slideDown");	return false;			});
	this.optionObj.bind("focus mouseover",function(){		clearTimeout(this_s.Timer);			this_s.isOnFocus = true;			this_s.Timer = setTimeout(function (){this_s.setOn()},500);	});
	this.optionObj.bind("mouseout",function(){			clearTimeout(this_s.Timer);			this_s.isOnFocus = false;			this_s.Timer = setTimeout(function (){this_s.setOn()},500);	});
	this.optionItems.bind("focus mouseover",function(){			clearTimeout(this_s.Timer);			this_s.isOnFocus = true;			this_s.Timer = setTimeout(function (){this_s.setOn()},500);		});
	this.optionItems.bind("blur",function(){	clearTimeout(this_s.Timer);	this_s.isOnFocus = false;	this_s.Timer = setTimeout(function (){this_s.setOn()},500);});
	this.optionItems.bind("click",function(){
		var selObj = $(this).attr("href");
		$(".fsitelink-list").not(selObj).hide();
		//$($(this).parents(".fsitelink-cate-box").get(0)).hide();
		$(selObj).show();
		/*
		if(selObj.length<1){
			$(".fsitelink-list-tit").show();
		}else{
			$(".fsitelink-list-tit").hide();
		}
		*/
		var selTitle = $(this).html();
		$(this_s.selBtn).html(selTitle);
	});
	$(".fsitelink-list a").bind("click",function(){
		console.log( "@@@@@@@@@@" );
		if ( $(this).hasClass("over") ) {
			$(this).removeClass("over");
			clearTimeout(this_s.subTimer);
			var parentObj = $($(this).parents(".fsitelink-list").get(0));
			this_s.subOn = false;
			this_s.subTimer = setTimeout(function(){this_s.setSubOn();},500);
		} else {
			$(this).addClass("over");
			clearTimeout(this_s.subTimer);
			var parentObj = $($(this).parents(".fsitelink-list").get(0));
			this.subOn = true;
			$(".fsitelink-list-box",parentObj).slideDown();
		}
	});
	/*
	$(".fsitelink-list h5 a").bind("click",function(){
		clearTimeout(this_s.subTimer);
		var parentObj = $($(this).parents(".fsitelink-list").get(0));
		this.subOn = true;
		$(".fsitelink-list-box",parentObj).slideDown();
		return false;
	});
	$(".fsitelink-list-box a").bind("blur",function(){
		clearTimeout(this_s.subTimer);
		var parentObj = $($(this).parents(".fsitelink-list").get(0));
		this_s.subOn = false;
		this_s.subTimer = setTimeout(function(){this_s.setSubOn();},500);
	});
	$(".fsitelink-list").bind("mouseover",function(){
		clearTimeout(this_s.subTimer);
		this_s.subOn = true;
		this_s.subTimer = setTimeout(function(){this_s.setSubOn();},500);
	});
	$(".fsitelink-list").bind("mouseout",function(){
		clearTimeout(this_s.subTimer);
		this_s.subOn = false;
		this_s.subTimer = setTimeout(function(){this_s.setSubOn();},500);
	});
	// */
}
selSiteList.prototype.setSubOn=function(){
	clearTimeout(this.subTimer);
	if(!this.subOn){
		$(".fsitelink-list .fsitelink-list-box").slideUp();
	}
}
selSiteList.prototype.setOn = function(){
	if ( this.isOnFocus ) {
		$(this.optionObj).slideDown();
	} else {
		$(this.optionObj).slideUp();
	}
}

///////////////////////////////////////////////////
var dselObj;
if (dselObj == undefined) {	dselObj = function (settings) {		this.init(settings);	}; }
dselObj.prototype.init = function (settings) {
	var this_s = this;
	this.o = $.extend({
		action_url:"/Share/cateCode.php",maxdepth:2,objId:"",frmView:false,valType:"full","astr":"_"
	},settings);


	this.sub_el = Array();
	this.varr = Array();
	this.s_seq = 1;

	this.objId = this.o.objId;
	this.obj = document.getElementById(this.objId);
	this.maxDepth = this.o.maxdepth;
	this.astr = this.o.astr;

//	alert(this.maxDepth);


	if(this.o.group!=""){
		$.post(this.o.action_url,this.o.action_param+ "&mode=groupCodeInfo&group="+this.o.group  ,function(data){
			if(this_s.maxDepth==undefined || this_s.maxDepth<1) this_s.maxDepth = data.sc_gr_maxdepth;
			this_s.gr_lbl =  data.sc_gr_lblstr.split(this_s.astr);

			if(this_s.o.frmView){
				for(var i=1; i<=this_s.maxDepth;i++){
					 var selFrmName = this_s.o.selName +"["+i+"]";	//셀렉트 폼 NAME
					 $(this_s.obj).append("<select name='"+selFrmName+"'></select>");
					 var selFrm = $("select[name='"+selFrmName+"']",this_s.obj);
				 	if(this_s.gr_lbl[i-1]!=undefined){
						 $(selFrm).append("<option value=''>"+"-- " + this_s.gr_lbl[i-1] +" 선택 --"+"</option>");
					}else{
						$(selFrm).append("<option value=''>"+"-- " + i +" 차 카테고리"+"</option>");
					}

				}
			}

			this_s.setValue(this_s.o.initSetValue);
			this_s.makeSelect(1,"","");

		},"json");
	}else{
		//alert("지정된 카테고리 그룹이 없습니다");
	}




}
dselObj.prototype.setValue = function(str){
	if(this.o.valType=="full"){
		var tmpVarr =  str.split("_");
		var tmpArr = new Array();
		for (var i=0;i<tmpVarr.length ;i++ )
		{
			tmpArr.push(tmpVarr[i]);
			this.varr[i] = tmpArr.join("_");
		}
	}else{

		this.varr = str.split("_");

	}

}
dselObj.prototype.makeSelect = function(depth,key,v,varr){
	var pars=this.o.action_param+ "&mode=makeCateSel&group="+this.o.group+"&depth=" + depth + "&key_v=" + key;
	var url =this.o.action_url;
	var el =this.obj;
	var this_s = this;
	var vstr = v;

	//depth 이하  reset
	for (i=this.maxDepth; i>=depth ;i--){
		var selFrmName = this_s.o.selName +"["+i+"]";	//셀렉트 폼 NAME
		 var selFrm = $("select[name='"+selFrmName+"']",this_s.obj);

		 if(selFrm.length>0){

			 if(this.o.frmView){  for(var j=selFrm.get(0).options.length;j>0;j--){
				 selFrm.get(0).remove(j);
			 } }
			 else{
				 selFrm.remove();
				 if(this_s.sub_el[i]!=undefined)		 this_s.sub_el[i] = null;
			 }
		 }else{

		 }
		/*
		if (this.sub_el[i]!=undefined){
			try{
				this.obj.removeChild(this.sub_el[i]);
			}catch(e){}
			this.sub_el[i] = null;

		}
		*/
	}



	if (depth>this.maxDepth) return;
		$.getJSON(url+"?" +pars,function(obj){

			var selFrmName = this_s.o.selName +"["+depth+"]";	//셀렉트 폼 NAME
			var selFrm = $("select[name='"+selFrmName+"']",this_s.obj);


			 if(obj.result>0 || this_s.o.frmView){

				 if(selFrm.length<1){
					 $(this_s.obj).append("<select name='"+selFrmName+"'></select>");
					 var selFrm = $("select[name='"+selFrmName+"']",this_s.obj);
				 	if(this_s.gr_lbl[depth-1]!=undefined){
						$(selFrm).append("<option value=''>"+"-- " + this_s.gr_lbl[depth-1] +" 선택 --"+"</option>");
					}else{
						$(selFrm).append("<option value=''>"+"" + depth +" 차 카테고리"+"</option>");
					}


				 }

			 }

			 try{

			//sobj.name = this_s.o.selName +"["+depth+"]";
			var sobj = $("select[name='"+selFrmName+"']",this_s.obj).get(0);
			sobj.depth = depth;
			sobj.this_s = this_s;
			sobj.onchange =function(){
				this_s.makeSelect((this.depth+1),this.value,"");
				//defaultMulticate();
			}

			for (i=1; i<=obj.result;i++){
				add_option(sobj,obj.str[(i-1)][0],obj.str[(i-1)][1]);
				if (obj.str[(i-1)][1]==vstr)  var select_i = i;
				else if (obj.str[(i-1)][1]==this_s.varr[(depth-this_s.s_seq)]) var select_i = i;
			}
			this_s.sub_el[depth] = sobj;

			this_s.sub_el[depth].selectedIndex = select_i;
			this_s.sub_el[depth].onchange();
			 }catch(e){}

	});
}

dselObj.prototype.getSelectedData = function(){

	var tmp_text = "";
	var tmp_value ="";
	var tmp_split = "";

	var tmp_depth = 0;
	var val_arr = Array();

//alert(this.maxDepth);
	for (i=1; i<=this.maxDepth;i++){

		if ( (this.sub_el[i]!=undefined && this.sub_el[i]!=null) && this.sub_el[i].selectedIndex>0){
			tmp_depth ++;
			tmp_text = tmp_text + tmp_split + this.sub_el[i].options[this.sub_el[i].selectedIndex].text;
			tmp_split =  " > ";

			tmp_value = this.sub_el[i].options[this.sub_el[i].selectedIndex].value;
			val_arr.push(tmp_value);
		}
	}
	var return_obj = { full_str:tmp_text,value:tmp_value,sdepth:tmp_depth,values:val_arr.join(this.astr)}
	return return_obj;
}



////////////////////////////////////////////////////////
//추가가능한 셀렉트 박스
////////////////////////////////////////////////////////
function addSelObj(settings) {	this.init(settings);	}

addSelObj.prototype.init = function (settings) {

	var this_s = this;

	this.selItems = new Array();
	this.orgItems = new Array();

	if(settings!=undefined){
		for(var i in settings) { 	this[i] = settings[i];}
	}


	this.selObj = $(this.selForm);
	this.listObj = $(this.targetObj);

	//선택값 전체 삭제 버튼
	if(this.itemDelBtn!=undefined){

		$(this.itemDelBtn).bind("click",function(){this_s.delAllItems();return false;});
		$(this.itemDelBtn).hide();
	}

	if(this.addAllBtn!=undefined){
		$(this.addAllBtn).bind("click",function(){this_s.addAllItems();return false;});

	}


	//alert(this.selObj);

	this.listIsInit = false;

	var items = $("> option:not(:first)",this.selObj);
	items.each(function(i,el){
		this_s.orgItems.push({"value":$(el).val(),"label":$(el).text()});
	});

	$(this.selObj).bind("change",function(){
		var selItem = $(" > option:selected ",$(this));
		var selItems = {"value":selItem.val(),"label":selItem.text()};

		this_s.addSelItemList(selItems);

	});

	this.initSelectList();
}

addSelObj.prototype.initSelectList= function(){
	if(this.initValues.length>0){
		for(var i=0;i<this.initValues.length;i++){
		this.addItem(this.initValues[i]);
		}
	}
}
addSelObj.prototype.addItem= function(obj){
	var this_s = this;
	var inArr = $.inArray(obj.value,this.selItems);
	if(inArr <0){
		this.selItems.push(obj.value);

		var addObj = $("<li style='display:inline-block;white-space:nowrap;padding-right:5px;'><input type='hidden' name='"+this.selFormName+"[]' value=\""+obj.value+"\"/>"+obj.label+" <a href='#'  title='클릭하면 삭제됩니다.'><img src='/_Img/Common/ssbtn_cancle.gif'/></a>&nbsp;&nbsp;</li>");
		$("a",addObj).bind("click",function(){
			this_s.removeSelItem(this);return false;
		});
		$(this.listObj).append(addObj);

		$(" > option",this.selObj).each(function(){ if($(this).val()==obj.value) $(this).remove();});
		//$(" > option:first",this.selObj).attr("selected",true);


		this.setDelBtn();
		return true;
	}else {
		this.setDelBtn();
		return false;
	}
}

addSelObj.prototype.addSelItemList= function(obj){

	var this_s = this;

		if(obj.value!=""){
			this.addItem(obj);
		}


	this.setDelBtn();

}

addSelObj.prototype.delAllItems = function(){
	this.selItems = [];
	$(this.listObj).html("");
	this.resetSelectForm();
}

addSelObj.prototype.resetSelectForm = function(){
	var this_s = this;
	//첫번째 옵션빼고 모두 삭제
	$(" > option:not(:first)",this.selObj).remove();
	$.each(this_s.orgItems,function(i,el){
		if( $.inArray(el.value,this_s.selItems) < 0){
			$(this_s.selObj).append("<option value='"+el.value+"'>"+el.label+"</option>");
		}
	});

	this.setDelBtn();
}

addSelObj.prototype.addAllItems = function(){

	var this_s = this;
	var selItem = $(" > option:not(:first) ",$(this.selObj));
	selItem.each(function (i,el){
		$(el).attr("selected",true);
		var selItems = {"value":$(el).val(),"label":$(el).text()};
		this_s.addSelItemList(selItems);
	});
	//

}


addSelObj.prototype.removeSelItem = function(obj){

var this_s = this;
	var items = $($(obj).parent().get(0));
	var chkVal = $(" > input",$(items)).val();

	this_s.selItems = $.grep(this_s.selItems,function(arr){
		return (arr!=chkVal);
	});

	items.remove();
	this.resetSelectForm();

}




addSelObj.prototype.setDelBtn = function(){
	if (this.itemDelBtn!=undefined)
	{
		if(this.selItems.length>0){
			$(this.itemDelBtn).show();
		}else{
			$(this.itemDelBtn).hide();
		}
	}
}


addSelObj.prototype.resetSelectList = function(){
	var this_s = this;
	//첫번째 옵션빼고 모두 삭제
	this.delAllItems();
	//초기값으로 리셋
	this.initSelectList();
	this.setDelBtn();
}



////////////////////////////////////////////////////////
function addInputValue(settings) {	this.init(settings);	}

addInputValue.prototype.init = function (settings) {

	var this_s = this;

	this.selItems = new Array();
	this.orgItems = new Array();

	if(settings!=undefined){
		for(var i in settings) { 	this[i] = settings[i];}
	}

	this.listObj = $(this.targetObj);

	//선택값 전체 삭제 버튼
	if(this.itemDelBtn!=undefined){

		$(this.itemDelBtn).bind("click",function(){this_s.delAllItems();return false;});
		$(this.itemDelBtn).hide();
	}

	if(this.addBtn!=undefined){
		$(this.addBtn).bind("click",function(){this_s.addItemList();return false;});

	}


	$(this.inputFrm).bind("change",function(){
		if(typeof(settings.split_str)!="undefined"){
			var  vstr = $(this).val();
			var varr = vstr.split(settings.split_str);
			$(this).val("");
			for(var i=0;i<varr.length;i++){
			this_s.addItem($.trim(varr[i]));
			}
		}

	});
	$(this.inputFrm).bind("keypress",function(){
		console.log(event.keyCode);
		if(typeof(settings.setKeyCodes)!="undefined"){
			if(in_array(settings.setKeyCodes,event.keyCode)){
				this_s.addItemList($(this));
				return false;
			}
		}else{
			if(event.keyCode==13){
				this_s.addItemList($(this));
				return false;
			}
		}

		//alert(event.keyCode);
	});
	//alert(this.selObj);

	this.initSelectList();

	this.listIsInit = false;



}

addInputValue.prototype.initSelectList= function(){
	if(this.initValues.length>0){
		for(var i=0;i<this.initValues.length;i++){
		this.addItem(this.initValues[i]);
		}
	}
}
addInputValue.prototype.addItem= function(v){
	var this_s = this;
	var inArr = $.inArray(v,this.selItems);
	if(inArr <0){
		this.selItems.push(v);

		var addObj = $("<li style='display:inline-block;white-space:nowrap;padding-right:5px;'><input type='hidden' name='"+this.addFrmName+"[]' value=\""+v+"\"/>"+v+" <a href='#'  title='클릭하면 삭제됩니다.'><img src='/_Img/Common/ssbtn_cancle.gif'/></a>&nbsp;&nbsp;</li>");
		$("a",addObj).bind("click",function(){
			this_s.removeSelItem(this);return false;
		});
		$(this.listObj).append(addObj);
		this.setDelBtn();
		return true;
	}else {
		this.setDelBtn();
		return false;
	}
}
addInputValue.prototype.addItemList= function(obj){

	var this_s = this;
	if(obj==undefined) var obj = $(this.inputFrm);

	if($.trim(obj.val())!=""){
		var v = $.trim(obj.val());

		//폼체크
		if(!FormElCheck(obj.get(0),obj.parents("form").get(0))){
			return;
		}else{
			if(this.addItem(v)){

			}else{
				alert("이미 등록되어 있습니다");
			}
			$(obj).val("");
		}

	}else{
		alert("추가할 항목의 값을 입력하세요");
	}

	this.setDelBtn();

}

addInputValue.prototype.setDelBtn = function(){
	if (this.itemDelBtn!=undefined)
	{

		if(this.selItems.length>0){
			$(this.itemDelBtn).show();
		}else{
			$(this.itemDelBtn).hide();
		}
	}
}

addInputValue.prototype.delAllItems = function(){
	this.selItems = [];
	$(this.listObj).html("");
	$(this.itemDelBtn).hide();
}



addInputValue.prototype.removeSelItem = function(obj){

var this_s = this;
	var items = $($(obj).parent().get(0));
	var chkVal = $(" > input",$(items)).val();

	this_s.selItems = $.grep(this_s.selItems,function(arr){
		return (arr!=chkVal);
	});

	items.remove();
}


addSelObj.prototype.resetSelectList = function(){
	var this_s = this;
	//첫번째 옵션빼고 모두 삭제
	this.delAllItems();
	//초기값으로 리셋
	this.initSelectList();
	this.setDelBtn();
}


////////////////////////////////////
//데이터 Row 추가,삭제

var dataRowObj;
if (dataRowObj == undefined) {	dataRowObj = function (settings) {		this.init(settings);	}; }
dataRowObj.prototype.init = function(s){
	var cfg = $.extend({"wrap":null,"max":20},s);

	this.cfg = cfg;
	this.$wrap = cfg.wrap;

	this.$tbl = $("table",this.$wrap);

	this.cloneRowHtml = $("tbody tr:eq(0)",this.$tbl).html();


	this.lastNum = 0;

	$("tbody tr",this.$tbl).eq(0).remove();


	this.setCtrlBtns();
	this.initRows();

	this.setRowNumStr();

}

dataRowObj.prototype.getLastNum = function(){
	var this_s = this;
	//마지막 번호 찾기
	$(".is-row-num",this_s.$tbl).each(function(){
		var n = 		parseInt($(this).val());
		if(n > this_s.lastNum) this_s.lastNum = n;
	});
}
dataRowObj.prototype.initRows = function(){
	var this_s = this;
	var rows = $("tbody tr",this_s.$tbl);
	if(rows.length<1){
		this_s.copyRow(0);
	}else{
		rows.each(function(){
			this_s.setRowDefault($(this));
		});
	}
}

dataRowObj.prototype.copyRow = function(n){
	var this_s = this;


	this_s.getLastNum();
	var num = this_s.lastNum + 1;

	//최대 Row 갯수 체크
	if(this.cfg.max>0){
		if( $("tbody tr",this.$tbl).length >= this.cfg.max) {
			alert("더이상 추가하실 수 없습니다.\n최대 "+this.cfg.max+"개 까지 추가 가능합니다");
			return;
		}
	}

	try{
		var rowHtml = this_s.cloneRowHtml.replaceAll("{RN}",num);
		var $row = $("<tr>" + rowHtml +"</tr>");

		$(".is-row-num",$row).val(num);

		this_s.setRowDefault($row);



		if(n<1){
			//alert(this_s.$tbl.html());
			var to_obj = $("tbody",this_s.$tbl);
			to_obj.append($row);
		}else{
			$row.insertAfter($("tbody tr:eq("+( n-1)+")",this_s.$tbl));
		}

		this_s.setRowNumStr();

	}catch(e){
		alert("Error!\n" + e);
	}

}
dataRowObj.prototype.setRowNumStr = function(){
	$("tbody tr",this.$tbl).each(function(){
		var n = $(this).index() + 1;

		$(".is-row-n",this).text(n);

		$("[rhname]",$(this)).each(function(){
			$(this).attr("hname",$(this).attr("rhname").replaceAll("{N}",n));
		});
	});

}
dataRowObj.prototype.setRowDefault = function($row){
	var this_s = this;

	//var this_n = $(this).index() + 1;


	$(".is-btn-add",$row).unbind("click");
	$(".is-btn-del",$row).unbind("click");

	$(".is-btn-add",$row).bind("click",function(){
		this_s.copyRow($($(this).parents("tr").get(0)).index() + 1);
		return false;
	});
	$(".is-btn-del",$row).bind("click",function(){
		var del_row = $($(this).parents("tr").get(0));

		if($("tbody tr",this_s.$tbl).length<=1){
			alert("더이상 삭제하실 수 없습니다");
		}else{
			del_row.remove();
			this_s.setRowNumStr();
		}
		return false;
	});

	if(this_s.cfg.setRowsFrm!=undefined){
		this_s.cfg.setRowsFrm(this_s,$row);
	}

}
dataRowObj.prototype.setCtrlBtns = function(){
	var this_s = this;
	$(".ctrl-btns .is-btn-add",this.$wrap).unbind("click");
	$(".ctrl-btns .is-btn-del",this.$wrap).unbind("click");
	$(".ctrl-btns .is-btn-add",this.$wrap).bind("click",function(){
		this_s.copyRow(0);
		return false;
	});

	$(".ctrl-btns .is-btn-del",this.$wrap).bind("click",function(){
		var del_obj = $("tbody tr:last",this_s.$tbl);
		if($("tbody tr",this_s.$tbl).length<=1){
			alert("더이상 삭제하실 수 없습니다");
		}else{
			del_obj.remove();
			this_s.setRowNumStr();
		}
		return false;
	});
}

var dataRowObj2;
if (dataRowObj2 == undefined) {	dataRowObj2 = function (settings) {		this.init(settings);	}; }
dataRowObj2.prototype.init = function(s){
	var cfg = $.extend({"wrap":null,"min":0,"max":20},s);

	this.cfg = cfg;
	this.$wrap = cfg.wrap;

	this.$tbl = $(".cp-data-wrap",this.$wrap);

	this.cloneRowHtml = $(".is-data-row:eq(0)",this.$tbl).html();
	this.rowElType = $(".is-data-row:eq(0)",this.$tbl).get(0).tagName;



	this.lastNum = 0;

	$(".is-data-row:eq(0)",this.$tbl).remove();


	this.setCtrlBtns();
	this.initRows();
	this.setRowNumStr();


	if(cfg.min>0 && cfg.min > $(".is-data-row",this.$tbl).length){
		var minrow = cfg.min- $(".is-data-row",this.$tbl).length;
		for(var ii=0;ii<minrow;ii++){
			this.copyRow(0);
		}
	}
}

dataRowObj2.prototype.getLastNum = function(){
	var this_s = this;
	//마지막 번호 찾기
	$(".is-row-num",this_s.$tbl).each(function(){
		var n = 		parseInt($(this).val());
		if(n > this_s.lastNum) this_s.lastNum = n;
	});
}
dataRowObj2.prototype.initRows = function(){
	var this_s = this;
	var rows = $(".is-data-row",this_s.$tbl);

	if(rows.length<1){

		this_s.copyRow(0);
	}else{
		rows.each(function(){
			this_s.setRowDefault($(this));
		});
	}
}

dataRowObj2.prototype.copyRow = function(n){
	var this_s = this;


	this_s.getLastNum();
	var num = this_s.lastNum + 1;

	//최대 Row 갯수 체크
	if(this.cfg.max>0){
		if( $(".is-data-row",this.$tbl).length >= this.cfg.max) {
			alert("더이상 추가하실 수 없습니다.\n최대 "+this.cfg.max+"개 까지 추가 가능합니다");
			return;
		}
	}

	try{
		var rowHtml = this_s.cloneRowHtml.replaceAll("{RN}",num);
		var $row = $("<"+this_s.rowElType+" class='is-data-row'>" + rowHtml +"</"+this_s.rowElType+">");

		$(".is-row-num",$row).val(num);

		this_s.setRowDefault($row);
		console.log(n);



		if(n<1){
			//alert(this_s.$tbl.html());
			var to_obj = this_s.$tbl;
			to_obj.append($row);
		}else{
			var targetTo = $(".is-data-row:eq("+( n-1)+")",this_s.$tbl);
			if(targetTo.length>0)	$row.insertAfter(targetTo);
			else this_s.$tbl.append($row);
		}

		this_s.setRowNumStr();

	}catch(e){
		alert("Error!\n" + e);
	}

}
dataRowObj2.prototype.setRowNumStr = function(){
	$(".is-data-row",this.$tbl).each(function(){
		var n = $(this).index() + 1;
		$(".is-row-n",this).text(n);
		$("[data-rhname]",$(this)).each(function(){
			$(this).attr("data-hname",$(this).attr("data-rhname").replaceAll("{N}",n));
		});
	});

}
dataRowObj2.prototype.setRowDefault = function($row){
	var this_s = this;

	//var this_n = $(this).index() + 1;


	$(".is-btn-add",$row).unbind("click");
	$(".is-btn-del",$row).unbind("click");

	$(".is-btn-add",$row).bind("click",function(){
		this_s.copyRow($($(this).parents(".is-data-row").get(0)).index() + 1);
		return false;
	});
	$(".is-btn-del",$row).bind("click",function(){
		var del_row = $($(this).parents(".is-data-row").get(0));

		if($(".is-data-row",this_s.$tbl).length<=1 || (this_s.cfg.min>0 && this_s.cfg.min >= $(".is-data-row",this_s.$tbl).length )){
			alert("더이상 삭제하실 수 없습니다");
		}else{
			del_row.remove();
			this_s.setRowNumStr();
		}
		return false;
	});

	if(this_s.cfg.setRowsFrm!=undefined){
		this_s.cfg.setRowsFrm(this_s,$row);
	}

}
dataRowObj2.prototype.setCtrlBtns = function(){
	var this_s = this;
	$(".ctrl-btns .is-btn-add",this.$wrap).unbind("click");
	$(".ctrl-btns .is-btn-del",this.$wrap).unbind("click");
	$(".ctrl-btns .is-btn-add",this.$wrap).bind("click",function(){
		this_s.copyRow(0);
		return false;
	});

	$(".ctrl-btns .is-btn-del",this.$wrap).bind("click",function(){
		var del_obj = $(".is-data-row:last",this_s.$tbl);
		if($(".is-data-row",this_s.$tbl).length<=1){
			alert("더이상 삭제하실 수 없습니다");
		}else{
			del_obj.remove();
			this_s.setRowNumStr();
		}
		return false;
	});
}


////////////////////////////////////

function printPageChargeInfo(){
	var toEl = $("#pgChargeInfo");
	if(toEl.length>0){
			var url = "/Share/Page/pageCharge.php";
			var param = "mode=getCharge&sCode="+_site_code +"&pCode="+_page_code;
			$.post(url,param,function(r){
				if(r!=false){
					$(".txt-dpt",toEl).text(r.charge_dpt);
					$(".txt-nm",toEl).text(r.charge_nm);
					$(".txt-tel",toEl).text(r.charge_tel);
				}
				//alert(r.mn_charge_nm);

			},"json").fail(function(r){
				alert(r);
			});
		}
}

function submitPageSatisfaction(f){
	var chk = FormCheck(f);

	if(chk){
	var url = "/Share/Page/pageCharge.php";
	var param = $(f).serialize();//"mode=getCharge&sCode="+_site_code +"&pCode="+_page_code;
	$.post(url,param,function(r){
		if(r=="1"){
			alert("페이지에 대한 의견이 전송되었습니다.");
			$(f).reset();
		}else if(r=="-1"){
			alert("이 페이지에 대한 의견을 이미 등록했습니다.");
		}else{
			alert(r+"Error!\n시스템 오류로 처리에 실패했습니다.\n\n이용에 불편을 드려 죄송합니다.");
		}
	}).fail(function(){
		alert("Error!\n시스템 오류로 처리에 실패했습니다.\n\n이용에 불편을 드려 죄송합니다.");
	});
	}


	return false;

}

////////////////////////////////////

function getThisConfigSiteCode(){
	var sCode = "";
	if(_site_code!=undefined && _site_code!="") sCode = _site_code;
	var sel_sCode = "";
	if($("#sCode").length>0){
		var sel_sCode = $("#sCode").val();
	}
	if(sel_sCode!="" && sCode!=sel_sCode) sCode = sel_sCode;
	return sCode;
}

function openSiteFileManager(sCode){
	var _sCode_ =sCode==undefined? getThisConfigSiteCode() : sCode;
	var url = csURL.share + "/FileManager/dialog.php?sCode="+_sCode_+'&type=4&descending=&lang=ko_KR&akey=key';
	openIframeLayer(url,1000,880,"FILE MANAGER",{back_click_close:false});
}




/////////////////////////////////////////////////////////////////////////////
var listSelctItem;
if (listSelctItem == undefined) {	listSelctItem = function (obj,settings) {		this._init(obj,$.extend({box_mg_top:0,box_mg_bottom:0,item_height:20},settings));	}; }
listSelctItem.prototype._init = function (obj,settings) {


		this.obj = obj;//$(".top-sel-list .sub-list li a")
		this.settings = settings;
		this.selBtns = $(" dt a ",this.obj);
		this.subObj = $(".sub-list",this.obj);
		this.subItems = $("li a",this.subObj);


		this.hideHeight = this.subObj.height()+this.settings.box_mg_top+this.settings.box_mg_bottom;

		var this_s = this;
		//$(this.selBtns).bind("click",function(){	$(this_s.subObj).stop().animate({"top":30});return false;		});
		$(this.selBtns).unbind("click");
		$(this.selBtns).bind("click",function(){

			if($(this_s.obj).attr("isOpen")=="1"){

				this_s.hideSublist();
			}else{

				this_s.viewSublist();
			}

			return false;

			//$(this_s.obj).stop().animate({"height":120},200);return false;
			});

		this.subItems.unbind("focus mouseover blur mouseout");
		this.subItems.bind("focus mouseover",function(){
			clearTimeout(this_s.Timer);
			this_s.isOnFocus = true;
			this_s.setOn();
			this_s.Timer = setTimeout(function (){this_s.setOn()},50);
		});


		this.subItems.bind("blur",function(){
			clearTimeout(this_s.Timer);
			this_s.isOnFocus = false;
			this_s.Timer = setTimeout(function (){this_s.setOn()},2000);
		});



		//$(this.obj).bind("mouseout",function(){
		$(this.selBtns).bind("mouseout",function(){
			clearTimeout(this_s.Timer);
			this_s.isOnFocus = false;
			this_s.Timer = setTimeout(function (){this_s.setOn()},2000);
		});

		$(this.subObj).bind("mouseout",function(){
			clearTimeout(this_s.Timer);
			this_s.isOnFocus = false;
			this_s.Timer = setTimeout(function (){this_s.setOn()},500);
		});

}

listSelctItem.prototype.setOn = function(){


	if(this.isOnFocus){
		this.viewSublist();

	}else{
		this.hideSublist();

	}

	try{resizePageLayoutHeight();}catch(e){}

}

listSelctItem.prototype.viewSublist = function(){

		var toH = $("dt",this.obj).outerHeight() + $(this.subObj).outerHeight() + this.settings.box_mg_top+this.settings.box_mg_bottom;
		$(this.obj).stop().css({"height":toH});
		setTimeout(function(){ try{resizePageLayoutHeight();}catch(e){} },250);

		$(this.obj).attr("isOpen","1");
}

listSelctItem.prototype.hideSublist = function(){

		var toH = $("dt",this.obj).outerHeight();
		$(this.obj).stop().css({"height":toH});
		setTimeout(function(){ try{resizePageLayoutHeight();}catch(e){} },250);

		$(this.obj).attr("isOpen","0");
}



///////////////////////////////////


var addItemObj = function(func,id){

	this.funcName = func;
	this.rootObj =  $("#" + id);
	this.cloneObj = $("li:first-child",this.rootObj);
	this.subObj= $("li",this.rootObj);
	this.total = this.subObj.length;
	this.last_n = this.total +1;
	var this_s = this;
	this.rootObj.sortable({deactivate:function(event,ui){this_s.setOrder();}});

	this.setOrder = function(){
		this.subObj= $("li",this.rootObj);
		//키보드 및 버튼 액션 초기화
		$(this.subObj).unbind("keydown");
		$(this.subObj).unbind("keyup");
		$(".isDelBtn",this.subObj).unbind("click");
		$(".isAddBtn",this.subObj).unbind("click");

		for (i=0;i<this.subObj.length ;i++ )
		{

			var n = i+1;
			$(this.subObj[i]).data("n",n);

			//모든 Input 요소 Name, Value 셋팅
			var inputObjs = $("input",$(this.subObj[i]));
			for (j=0;j<inputObjs.length ;j++ )
			{
				if(getDataAttribute(inputObjs[j],"fname")!=""){
					$(inputObjs[j]).attr("name",getDataAttribute(inputObjs[j],"fname")+"["+n+"]");

				}
			}

			$(".isDelBtn",this.subObj[i]).attr("href","javascript:"+this.funcName+".Del("+(i+1)+")");
			$(".isAddBtn",this.subObj[i]).attr("href","javascript:"+this.funcName+".Add("+(i+1)+")");

		}



		var this_s = this;
		//$(this.subObj).bind("keydown",function(e){return this_s.setKeyDown(this,e)});
		//$(this.subObj).bind("keyup",function(e){return this_s.setKeyUp(this,e)});


		return null;


	}

	this.Add = function(n){
		var this_s = this;
		var obj = this.cloneObj.clone();


		$("input[type='text']",$(obj)).val("");
		$("input[type='checkbox']",obj).prop("checked",false);
		var targetObj = (n!="")? $("li:nth("+(parseInt(n)-1)+")",this.rootObj): $("li:last",this.rootObj);
		$(targetObj).after(obj);

		$(obj).data("islock","0");
		$("input[type='text']:nth(0)",$(obj)).focus();
		this.setOrder();

	},

	this.Del = function(n){


		if($("li",this.rootObj).length<2) {alert("더이상 삭제하실 수 없습니다.");return;}
		var obj = $("li:last",this.rootObj);

		if(n=="")	var obj = $("li:last",this.rootObj);
		else			var obj =$("li:nth("+(parseInt(n)-1)+")",this.rootObj);

		if($(obj).data("islock")=="1") {alert("삭제하실 수 없는 항목입니다");return;}
		else $(obj).remove();


		this.setOrder();
		$("input:nth("+n+")",this.rootObj).focus();
	}

	this.setOrder();
	return this;

}



function goPDFViewerPage(frmID,n){

	//eval("ifrmPDFView"+frmID+".window.goPDFPageTo("+n+");");


	//Full Version
	var ifrmPDF = document.getElementById("ifrmPDFView"+frmID);
	ifrmPDF.contentWindow.PDFViewerApplication.page = n;


//	doc.goPDFPageTo(n);
}
