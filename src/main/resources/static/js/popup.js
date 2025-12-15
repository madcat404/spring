/**
 * 
 */

// 공통 팝업 닫기
var fnCmmnPopClose = function(_idx) {
	var $obj = $("#mediumCmmnPop_" + _idx);
	if ( $obj.find("input:checkbox[name=today_" + _idx + "]").is(":checked") ) {
		fnSetCookie('mediumCmmnPop_' + _idx, 'mediumCmmnPop_' + _idx + '_cookie', 1);
	}
	$obj.remove();
}


//*************************************************************
//쿠키 생성
//*************************************************************
function fnSetCookie(name, value, expiredays)
{
	var todayDate = new Date();
	todayDate.setDate(todayDate.getDate() + expiredays);
	document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";"
}

//*************************************************************
//쿠키 불러오기
//*************************************************************
function fnGetCookie(Name){
  var search = Name + "="
  if (document.cookie.length > 0) {  //  쿠키가  설정되어  있다면
      offset = document.cookie.indexOf(search)
      if (offset != -1) {  //  쿠키가  존재하면
          offset += search.length
          //  set  index  of  beginning  of  value
          end = document.cookie.indexOf(";", offset)
          //  쿠키 값의  마지막  위치  인덱스  번호  설정
          if (end == -1)
              end = document.cookie.length
          return unescape(document.cookie.substring(offset, end))
      }
  }
  return "";
}