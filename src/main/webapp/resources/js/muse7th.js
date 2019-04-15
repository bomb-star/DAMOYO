jQuery.fn.serializeObject = function() {
  var obj = null;
  try {
    if ( this[0].tagName && this[0].tagName.toUpperCase() == "FORM" ) {
      var arr = this.serializeArray();
      if ( arr ) {
        obj = {};
        jQuery.each(arr, function() {
          obj[this.name] = this.value;
        });
      }//if ( arr ) {
 		}
  }
  catch(e) {alert(e.message);}
  finally  {}

  return obj;
};

// Trim 함수 ##################################################
// Ex) str = "    테 스트   ".trim(); => str = "테 스트";
String.prototype.trim = function() {
	return this.replace(/(^[ \t\n\r]*)|([ \t\n\r]*$)/g,'');
}

// 문자열 공백제거 함수 ##################################################
// Ex) str = "    테 스   트   ".stripspace(); => str = "테스트";
String.prototype.stripspace = function() {
	return this.replace(/ /g, '');
}

// 전체 문자열 바꾸기 함수 ##################################################
// Ex) str = "a테스트bcd테스트efg".replaceAll("테스트", ""); => str = "abcdefg";
String.prototype.replaceAll = function(a, b) {
	var s = this;
	if (navigator.userAgent.toLowerCase().indexOf('msie') != -1)
		return s.replace(new RegExp(a, 'gi'), b);
	else
		return s.split(a).join(b);
}

// 숫자변환 함수 ##################################################
// Ex) str = "a테스트bcd테스트efg".replaceAll("테스트", ""); => str = "abcdefg";
String.prototype.toNumeric = function() {
	var s = this;
	s = (typeof s == 'undefined' ? '0' : s.toString().replace(/,/g, ''));
	if (isNaN(s) || s.replace(/ /g, '') == '') return 0;
	else	return parseFloat(s);
}

$(function() {
	// 헤더 타이틀 메인링크 - 리서치
	if ($('#top_layout .top_wrap .title h1 ').text() == "리서치") {
		$('#top_layout .top_wrap .title h1 ').click(function(e) {
			e.preventDefault();

			$(location).attr('href', '/?_c=research');
		});
	}
	// 헤더 타이틀 메인링크 - 서비스+
	if ($('#top_layout .top_wrap .title h1 ').text() == "서비스+") {
		$('#top_layout .top_wrap .title h1 ').click(function(e) {
			e.preventDefault();

			$(location).attr('href', '/?_c=service');
		});
	}

	// 헤더 타이틀 메인링크 - 내놓기
	if ($('#top_layout .top_wrap .title h1 ').text() == "내놓기") {
		$('#top_layout .top_wrap .title h1 ').click(function(e) {
			e.preventDefault();

			$(location).attr('href', '/?_c=sales&_m=m02010000');
		});
	}

});

function insertComma(x) {
	return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

function deleteComma(x) {
	return x.toString().replace(/[^\d]+/g, '');
}

function viewLoading() {

}

function hideLoading() {

}


/* 빈값 체크 */
function fn_isEmpty(value) {
	if (value == "" || value == null || value == undefined || (value != null && typeof value == "object" && !Object.keys(value).length)) {
		return true;
	} else {
		return false;
	}
};
/* 빈값 체크 */



//function set_search(opt, el) {
//	// 키워드검색
////console.log('size : '+ $('.sort_wrap > .sort_type2 > .result_tag > div > button').size());
////return false;
//	if (opt == "key") {
//		if ($('.sort_wrap > .sort_type2 > .result_tag > div > button').size() > 0) {
//			var $t = $('form[name="sFrm"] input:hidden[name="search_keyword"]');
//			var value = "";
//			if ($t.val() == "") {
//				value = $(el).text();
//			} else {
//				if ($t.val().indexOf($(el).text()) > -1) {
//					alert("이미 추가된 키워드 입니다.");
//					return false;
//				} else {
//					value = $t.val()+','+$(el).text();
//				}
//			}
//			$t.val(value);
//			if ($('.sort_wrap > .sort_type2 > .result_tag > div > button.fc_purple').size() > 0) {
//				$('.sort_wrap > .sort_type2 > .result_tag > div > button.fc_purple:last').after("<button type=\"button\" class=\"fc_purple\" code=\""+ $(el).text() +"\">"+ $(el).text() +" <span class=\"ico_comm del_item\">삭제</span></button>");
//			} else {
//				$('.sort_wrap > .sort_type2 > .result_tag > div > button.fc_green:first').before("<button type=\"button\" class=\"fc_purple\" code=\""+ $(el).text() +"\">"+ $(el).text() +" <span class=\"ico_comm del_item\">삭제</span></button>");
//			}
//			total_page = 1;
//			getListAll(1);
//		} else {
//			location.href = "/?c=research&m=reportandnews&search_keyword="+ $(el).text();
//		}
//	} else if (opt == "type") {	// 관심별(유형) 검색
//		var arr = el.split('|');
//		if ($('.sort_wrap > .sort_type2 > .result_tag > div > button').size() > 0) {
//			var $t = $('form[name="sFrm"] input:hidden[name="search_type"]');
//			$t.val(arr[0]);
//			if ($('.sort_wrap > .sort_type2 > .result_tag > div > button.fc_green').size() > 0) {
//				$('.sort_wrap > .sort_type2 > .result_tag > div > button.fc_green').attr('code', arr[0]);
//				$('.sort_wrap > .sort_type2 > .result_tag > div > button.fc_green').html(arr[1] +" <span class=\"ico_comm del_item\">삭제</span>");
//			} else {
//				$('.sort_wrap > .sort_type2 > .result_tag > div > button.fc_purple:last').after("<button type=\"button\" class=\"fc_green\" code=\""+ arr[0] +"\">"+ arr[1] +" <span class=\"ico_comm del_item\">삭제</span></button>");
//			}
//			total_page = 1;
//			getListAll(1);
//		} else {
//			location.href = "/?c=research&m=reportandnews&search_type="+ arr[0];
//		}
//	}
//}

function basic_date(str) {
	return str.substr(0, 4) +"."+ str.substr(4, 2) +"."+ str.substr(6, 2);
}

function login_check() {
	if (!chkLogin()) {
		if (confirm("로그인이 필요합니다.")) {
			location.href = "/?_c=mypage&_m=login&return_url="+ escape(getServiceUrl());
		}
		return false;
	} else {
		return true;
	}
}

var slide_autoPlay = function(cls) {
	var $slide = $('.'+ cls +' > .sliderBox');

	if (parseInt($slide.find(' > ul > li').length) > parseInt(1)) {

		$slide.touchSlider({
	//		autoplay : {
	//			enable : true,
	//			pauseHover : true,
	//			addHoverTarget : "", // 다른 오버영역 추가 ex) ".someBtn, .someContainer"
	//			interval : 3500
	//		},
			initComplete : function (e) {
				var _this = this;
				var $this = $(this);
				var paging = $this.next(".paging");

				paging.html("");
				$this.find(" > ul > li").each(function (i, el) {
					var num = (i+1) / _this._view;
					if((i+1) % _this._view == 0) {
						paging.append('<button type="button" class="btn_page">page' + num + '</button>');
					}
				});
				paging.find(".btn_page").bind("click", function (e) {
					_this.go_page($(this).index());
				});

	//			thumbCenter();

			},
			counter : function (e) {
				$(this).parents("."+ cls).find(".paging .btn_page").removeClass("on").eq(e.current-1).addClass("on");
				$(this).parents("."+ cls).find(".pageCount").html(e.current + "/" + e.total);
			},
			btn_prev : $(this).find(".btn_prev"),
			btn_next : $(this).find(".btn_next")
		});
	}else
	{
		$slide.next(".pageCount").html("1/1");
	}

//	var __height = 0;
//	$("."+ cls +" > .sliderBox > ul > li").each(function(){
//		$(this).css('width',$(window).width());
//		__height = ($(this).height() > __height) ? $(this).height() : __height;
//	});
//	$slide.parents(".sliderBox > ul").css('width',$(window).width());
//	$slide.css('height', __height);
//	$slide.parents(".sliderBox > ul").css('height', __height);
}

function imgLoad(el) {
//	console.log('h : '+ $(el).height());

	var thumbWidth = $(el).parent(".thumb").width();
	var thumbHeight = $(el).parent(".thumb").height();
	//alert("imgWidth:"+imgWidth+", imgHeight:"+imgHeight+", thumbWidth:"+thumbWidth+", thumbHeight:"+thumbHeight);
	if($(el).parent(".thumb").attr("class").indexOf("aType") != -1){
		//alert("a");
		$(el).css('width','100%');
		$(el).css('height','auto');
		var imgHeight = $(el).height();
		if(imgHeight < thumbHeight){
			$(el).css('width','auto');
			$(el).css('height','100%');
		}else if(imgHeight > thumbHeight){
			$(el).css('height','auto');
		}
		$(el).css('margin-left',-($(el).width()/2));
		$(el).css('margin-top',-($(el).height()/2));
	}else if($(el).parent(".thumb").attr("class").indexOf("bType") != -1){
		//alert("b");
		$(el).css('width','100%');
		$(el).css('height','auto');
		var imgHeight = $(el).height();
		if(imgHeight < thumbHeight){
			$(el).css('height','auto');
		}else if(imgHeight > thumbHeight){
			$(el).css('width','auto');
			$(el).css('height','100%');
		}
		$(el).css('margin-left',-($(el).width()/2));
		$(el).css('margin-top',-($(el).height()/2));
	}else if($(el).parent(".thumb").attr("class").indexOf("cType") != -1){
		//alert("c");
		$(el).css('width','100%');
		$(el).css('height','100%');
		$(el).css('margin-left',-($(el).width()/2));
		$(el).css('margin-top',-($(el).height()/2));
	}else if($(el).parent(".thumb").attr("class").indexOf("dType") != -1){
		//alert("d");
		$(el).css('width','100%');
		$(el).css('height','auto');
		var imgHeight = $(el).height();
		if(imgHeight < thumbHeight){
			$(el).css('width','auto');
			$(el).css('height','100%');
		}else if(imgHeight > thumbHeight){
			$(el).css('height','auto');
		}
		$(el).css('top','0px');
		$(el).css('left','0px');
	}else{
		$(el).css('width','100%');
		$(el).css('height','100%');
		$(el).css('margin-left',-($(el).width()/2));
		$(el).css('margin-top',-($(el).height()/2));
	}

	if ($(el).parent().parent('.inner').find('.thumb + .txt').length > 0) {
		var _thumbWidth = $(el).parent().parent(".inner").find(".thumb").width();
		var _thumbHeight = $(el).parent().parent(".inner").find(".thumb").height();
		var _thumbMargin = 12;
		//console.log("왼쪽 _thumbWidth : "+_thumbWidth+", _thumbHeight : "+_thumbHeight+", _thumbMargin : "+_thumbMargin);
		$(el).parent().parent(".inner").find(".txt").css('padding-left',_thumbWidth + _thumbMargin);
		$(el).parent().parent(".inner").find(".txt").css('margin-top',-(_thumbHeight));
	}

	if ($(el).parent().parent('.inner').find('.txt + .thumb').length > 0) {
		var _thumbWidth = $(el).parent().parent(".inner").find(".thumb").width();
		var _thumbHeight = $(el).parent().parent(".inner").find(".thumb").height();
		var _thumbMargin = 12;
		//console.log("오른쪽 _thumbWidth : "+_thumbWidth+", _thumbHeight : "+_thumbHeight+", _thumbMargin : "+_thumbMargin);
		$(el).parent().parent(".inner").find(".txt").css('padding-right',_thumbWidth + _thumbMargin);
		$(el).parent().parent(".inner").find(".thumb").css('margin-left',-(_thumbWidth));
		$(".list_type.type5.my_fs .btn_like_my").css('right',_thumbWidth + _thumbMargin);
	}
}

function getServiceUrl() {
	var __thisUrl = $(location).attr('href').replace('http://', '').replace('https://', '');
	var arr = __thisUrl.split('/');

	var rtn = ''
	for (var i=1; i<arr.length; i++) {
		rtn += '/'+ arr[i];
	}
	return rtn;
}

//	paidGoodsCode : 상품코드, goodsKind : 유료상품_솔루션이용정보_순번
function goAnalysisApt(paidGoodsCode, goodsKind) {
	var sUrl = "/?_c=research&_p=h&_f=analysis_apt.ajax.asp";
	var dataSend = {
		mode: "payment_result_check",
		paidGoodsCode: paidGoodsCode,
		goodsKind: goodsKind
	};
	var returnResult="";
	var returnURL="";
	$.ajax({
		url: sUrl,
		dataType: "json",
		async:false,
		data: dataSend,
		method: "post",
		beforeSend: function() {
			viewLoading();
		},
		complete: function() {
			hideLoading();
		},
		success: function(data) {
			if (data.result=='OK') {
				returnResult="OK";
				returnURL=data.gourl;
				
				// 사파리에서 콜백함수에서 원도우 오픈이 안되서 외부 코드에서 처리함.
				//window.open(data.gourl, 'windowsnew', '');
				//window.open(data.gourl, 'windowsnew', '');
				//GetRequestUrl(data.gourl);
				//$(location).attr('href', data.gourl);
			} else if (data.result=='END') {
				if (confirm(data.errmsg)) {
					//$(location).attr('href', data.gourl);
					GetRequestUrl(data.gourl);
				}
			} else {
				alert(data.errmsg);
			}
		}
	});
	// 사파리에서 콜백함수에서 원도우 오픈이 안되서 외부 코드에서 처리함.
	if (returnResult=='OK') {
		//var settings = 'toolbar=0, status=0, menubar=0, scrollbars=yes, height=600, width=800';
		//var target = data.gourl;
		//_researReportchPopup = window.open('about:blank', 'popup_name', settings);
		//_researReportchPopup.location = target;	
		GetRequestUrl(returnURL);
		
		//window.open(returnURL, 'windowsnew', '');
	}
}



//	paidGoodsCode : 상품코드, goodsKind : 유료상품_솔루션이용정보_순번
function goAnalysisOptel(paidGoodsCode, goodsKind) {
	var sUrl = "/?_c=research&_p=h&_f=analysis_optel.ajax.asp";
	var dataSend = {
		mode: "payment_result_check",
		goodsCode: paidGoodsCode,
		goodsKind: goodsKind
	};

	$.ajax({
		url: sUrl,
		dataType: "json",
		async:false,
		data: dataSend,
		method: "post",
		beforeSend: function() {
			viewLoading();
		},
		complete: function() {
			hideLoading();
		},
		success: function(data) {
			if (data.result=='OK') {
				returnResult="OK";
				returnURL=data.gourl;
				
				//GetRequestUrl(data.gourl);
				//window.open(data.gourl, 'windowsnew', '');
				//$(location).attr('href', data.gourl);
			} else if (data.result=='END') {
				if (confirm(data.errmsg)) {
					GetRequestUrl(data.gourl);	
					//$(location).attr('href', data.gourl);
				}
			} else {
				alert(data.errmsg);
			}
		}
	});
	// 사파리에서 콜백함수에서 원도우 오픈이 안되서 외부 코드에서 처리함.
	if (returnResult=='OK') {
		//var settings = 'toolbar=0, status=0, menubar=0, scrollbars=yes, height=600, width=800';
		//var target = data.gourl;
		//_researReportchPopup = window.open('about:blank', 'popup_name', settings);
		//_researReportchPopup.location = target;	
		GetRequestUrl(returnURL);
		
		//window.open(returnURL, 'windowsnew', '');
	}
}


//	지역 최근검색어 목록 가져오기
function get_areaRecentSearch() {
	var arr = decodeURIComponent(getCookie('areaRecentSearchText')).split('~~span~~');

	return arr;
}

//	지역 최근검색어 저장하기
function add_areaRecentSearch(search_text) {
	var max_record_count = 5;	// 최근검색어 저장할 갯수

	var arr = get_areaRecentSearch();
	var isDuplicate = false;
	var duplicateIdx = -1;

	var str = '';

	if (arr != undefined && arr.length > 0) {
		for (var i=0; i<arr.length; i++) {
			if (arr[i].trim() == search_text.trim()) {
				isDuplicate = true;
				duplicateIdx = i;
			}
		}

		for (var i=0; i<arr.length; i++) {
			if (((duplicateIdx != i) && (arr.length < max_record_count)) || (isDuplicate && (arr.length > (max_record_count-1)) && (duplicateIdx != i)) || (!isDuplicate && (arr.length > (max_record_count-1)) && (i != 0))) {
				str += (str == '') ? arr[i] : '~~span~~' + arr[i];
			}
		}
		str += (str == '') ? search_text : '~~span~~'+ search_text;
	} else {
		str = search_text;
	}

	setCookie('areaRecentSearchText', str, 1);
}

//	지역 최근검색어 목록보여주기
function show_areaRecentSearch() {
	var $target = $('#lp_layout4 .id_m1020 .recent_searches ul.list_recent');

	var arr = get_areaRecentSearch();
	if (arr != undefined) {
		$target.find('li').remove();
		for (var i=arr.length-1; i>=0; i--) {
			$target.append('<li><a href=\"javascript:fn_selectArea(\''+ arr[i] +'\')\">'+ arr[i] +'</a></li>');
		}
	}
}

//var __loadingString = "<div class=\"loding_wrap on\"><img src=\""+imageServer+"/images/sub/loding.gif\" alt=\"로딩중\"></div>";
