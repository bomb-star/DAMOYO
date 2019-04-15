var _MAP_CONFIG_ADDR1_CODE = "";	// 지역 대분류 코드
var _MAP_CONFIG_ADDR2_CODE = "";	// 지역 중분류 코드
var _MAP_CONFIG_ADDR1_KR = "";		// 지역 도시 한글명
var _MAP_CONFIG_ADDR2_KR = "";		// 지역 구시군 한글명
var _MAP_CONFIG_ADDR3_KR = "";		// 지역 읍면동 한글명
var _MAP_TYPE1_CODE = "";					// 매물 대분류 코드
var _MAP_TYPE2_CODE = "";					// 매물 중분류 코드
var _MAP_CODE_ARRAY = "";				// 매물 코드 배열
var _MAP_FCODE = "";							// 매물 코드(PC)
var _MAP_STYLE_CODE = "";					// 1: 매매 , 2: 전세, 3:월세
var _MAP_LEVEL = "1";
var mapLevel = "5";							// 맵 확대 레벨
// var _MAP_INFO_TYPE = "1"; //1:호가, 2:수익, 3:MY앱 .inc에서
var _MAP_SELECTED_STIKER;
var _MAP_CortarNo = "";
var _MAP_NEWVILLA = "0";				// 외부에서 신축빌라 설정 여부

var mapFullView = true;
var firstMoveX = "";	// 이동할 첫번째 좌표 임시 저장
var firstMoveY = "";
var tempMoveX = "";	// 이동할 좌표 임시 저장
var tempMoveY = "";
var mapSearch = true;	// 주소로 조회

var selectedMarker;	// 선택한 마커
var selectedMarkerClass;	// 선택한 마커종류

var filterData;	// 필터 선택
var firstFilterData = "";	// 쿠키 필터 사용

var isComplexView = false;

var backMap = -1;	// 뒤로가기할 맵 상태
var isAutoSearch = true;
var _arrAREAVal = new Array();
var selectedComplexCd;	// 단지목록에서 선택한 단지코드
var selectedComplexId;		// 단지목록에서 선택한 단지아이디
var selectedComplexX;		// 단지목록에서 선택한 단지좌표 X값
var selectedComplexY;		// 단지목록에서 선택한 단지좌표 Y값

var memulTypeNames;		// 매물유형의 목록
var clickedComplexList = false;	// 지도 우측의 단지 목록에서 단지를 선택했는지 여부
var isTextAreaChanged = false;
var isForcedDrag = false;
var forcedDragStiker;
var forcedDragCd, forcedDragId, forcedDragAct, forcedDragX, forcedDragY, forcedDragTypeName, forcedDragNm;

if(typeof _SEARCHCOMPLEX == "undefined"){
	_SEARCHCOMPLEX = false;
}

var $selectArea;				// 검색창에서 검색한 지역 정보

var mapSize;
var foot_navi;

$(document).ready(function () {

/*
 * if (/safari/.test(navigator.userAgent.toLowerCase()) && !!window.chrome) {
 * $(window).on('popstate', function () { if (event.state != null) { if (backMap ==
 * -1 || backMap == 1) { history.back(-2); // replaceState 때문에 두단계를 뛰어야 한다. }
 * else if (event.state == "forward") { backMap = 1; history.back(); } else if
 * (!$(".marker_info").hasClass("open") && !$('.filterLayer').hasClass('open') //
 * 상세팝업, 필터팝업 && !$("#lp_layout3").hasClass("open")) { // 사이드메뉴,
 * 통계버튼(!$("#map_layout .gis div:nth-child(2) button").hasClass("on")) // 레이어팝업이
 * 없을때 backMap = 1; } } }); } else { // safari setTimeout(function () { // 사파리에서
 * 로드와 동시에 호출되는 문제점 발생 $(window).on('popstate', function () { // 잘 못잡겠다.. if
 * (event.state != null) { if (backMap == -1 || backMap == 1) {
 * history.back(-2); // replaceState 때문에 두단계를 뛰어야 한다. } else if (event.state ==
 * "forward") { //backMap = 1; history.back(); } else if
 * (!$(".marker_info").hasClass("open") && !$('.filterLayer').hasClass('open') //
 * 상세팝업, 필터팝업 && !$("#lp_layout3").hasClass("open")) { // 사이드메뉴,
 * 통계버튼(!$("#map_layout .gis div:nth-child(2) button").hasClass("on")) // 레이어팝업이
 * 없을때 backMap = 1; } } }); }, 500); }
 */
	
	// 매물시세 페이지에서는 처음 로딩할 때 대기 표시. 매물시세 페이지에서 대기표시 없애고 컨텐츠 본문을 보여준다.
	if (getParameterByName("_c") == "memul" && getParameterByName("_m") == "p10") {
	// $('div.loadingTemporary').html("<li><div style='text-align:center'><div
	// class='loding_wrap on'><img
	// src='http://image.r114.co.kr/W1/images/sub/loding.gif'
	// alt='로딩중'></div></div></li>");
	// $('div.contents_wrap').css("display", "none");
		$('.loading_wrap').show();
	}
	
	var statData = {
		types1: getCookie("Memul_MemulType1") == "" ? "A01" : getCookie("Memul_MemulType1"),
		style: getCookie("Memul_MemulStyle") == "" ? "0" : getCookie("Memul_MemulStyle")
	};

	mapSize = getCookie("mapSize") == "" ? "downsize" : getCookie("mapSize")

	//하단 네비 - 20181211
	foot_navi = getCookie("foot_navi") == "" ? "opennavi" : getCookie("foot_navi")

	if (foot_navi == "opennavi")
	{		
		_footnaviViewInfo('2');
	} else {
		_footnaviViewInfo('1');
	}


	$(".btn_navi").click(function(e) {
		backMap = 0;
	});

	$(".move_top").click(function(e) {
		 $( 'html, body' ).animate( { scrollTop : 0 }, 400 );
		 return false;
	});
	
	
// delCookie("Memul%5FTabGbn");


    fnc_filter_wrap_onload();
    
    fn_set_option_list(statData, true);
    
    fnc_setMemulSubwayCond('0');	// 지하철 검색 조건 셋팅
    
    firstFilterData = decodeURIComponent(getCookie("Memul_Filter"));

    if (firstFilterData === 'undefined') {  // IE9 에서 firstFilterData 가
											// 'undefined' 라는 문자열이 되는 현상이 있어서
											// 아래와 같이 처리함
        firstFilterData = '';
    }

    $("#txt_area").change(function (e) {	// 마우스로 지도 이동으로 주소 변경시
        _MAP_CortarNo = $("#txt_cortarInfo").val().split("|")[0];
        var addrs = $("#txt_area").val().split(" ");
        mapFullView = false;
        tempMoveX = app_Longitude;
        tempMoveY = app_Latitude;
        
        if (isTextAreaChanged) {                 
	        if (_MAP_LEVEL == "3" && addrs[2] != _MAP_CONFIG_ADDR3_KR) {	// 동단위에서 이동
	        	_MAP_CortarNo = _MAP_CortarNo;
	            fnc_SearchMemul_AddrList(_MAP_CortarNo, "3", addrs[2]);
	        } else if (_MAP_LEVEL == "2" && addrs[1] != _MAP_CONFIG_ADDR2_KR) {	// 구단위에서 이동
	        	_MAP_CortarNo = _MAP_CortarNo.substring(0, 5) + "00000";
	            fnc_SearchMemul_AddrList(_MAP_CortarNo, "2", "전체");
	        } else if (_MAP_LEVEL == "1" && addrs[0] != _MAP_CONFIG_ADDR1_KR) {	// 시단위에
	        	_MAP_CortarNo = _MAP_CortarNo.substring(0, 2) + "00000000";
	            fnc_SearchMemul_AddrList(_MAP_CortarNo, "1", "전체");
	        }
        }
        
	    isTextAreaChanged = false;
    });
    $("#txt_area3").change(function (e) {	// 내위치
        _MAP_CortarNo = $("#txt_cortarInfo3").val().split("|")[0];
        var addrs = $("#txt_area3").val().split(" ");
        mapFullView = true;
        // tempMoveX = app_Longitude;
        // tempMoveY = app_Latitude;
        // fnc_SearchMemul_AddrList(_MAP_CortarNo,"3",addrs[2]);
        fn_setFullView(_MAP_CortarNo, $("#txt_cortarInfo3").val().split("|")[1], addrs[2], app_Longitude, app_Latitude);
    });

    // 서버용
    var __HeaderSearch = new HeaderSearch();
    __HeaderSearch.init($('#msrch_wrap_address_input'));
    $('#msrch_wrap_address_input').on('keyup', __HeaderSearch.SearchMemul);


	//bunprad 201805
//	if (_SEL_ADDR1 =='서울특별시'){
	setTimeout(function(){
		$("#bun_PrAd").slideDown('slow','linear');
	},1500);
//	}
	setTimeout(function(){
	   $('#bun_PrAd').slideUp('slow','linear');
    },8000);

});


/*
 * 통합검색 114MemulKeywordSearch.asp parameter) keywork = 검색어,
 */
var HeaderSearch = function () {
    var $objInput;
    this.init = function ($obj) {
        $objInput = $obj;
    };

    this.SearchMemul = function () {
        if (jQuery.trim($(this).val()).length > 1) {
            $.ajax({
                type: "get",
                dataType: "json",
                url: "/APIs/Search/m5/search/114MemulKeywordSearch.asp",
                data: { "keyword": jQuery.trim($objInput.val()) },
                success: function (reparam) {
                    $("#msrch_wrap_address_list >").remove();
                    if (reparam.result == "OK") {
                        $.each(reparam.rows, function (index, entry) {
                            var listHtml = "";
                            listHtml += '<li>';
							/*
							 * [2017-06-19 윤범식] 검색시에 매물종류와 세부종류를 선택 해 준다. - S ->
							 * entry.gubuncode1 항목 추가
							 */
                            if (entry.gubuncode == "C") {
                           		if (entry.gubuncode2 == "주상복합아파트") {
                           			entry.gubuncode2 = "주상복합";
                           		}
                            	listHtml += '	<a href="#none" onclick="fnc_searchComplex(\'' + entry.gubuncode + '\',\'' + entry.gubuncode1 + '\',\'' + entry.gubuncode2 + '\',\'' + entry.addr1 + '\',\'' + entry.addr2 + '\',\'' + entry.addr3 + '\',\'\',\'' + entry.identifycode + '\',\'' + entry.coordx + '\',\'' + entry.coordy + '\')">';
                            }
                            else {
                            	listHtml += '	<a href="#none" onclick="fnc_searchSpecific(\'' + entry.gubuncode + '\',\'' + entry.gubuncode1 + '\',\'' + entry.gubuncode2 + '\',\'' + entry.addr1 + '\',\'' + entry.addr2 + '\',\'' + entry.addr3 + '\',\'\',\'' + entry.identifycode + '\',\'' + entry.coordx + '\',\'' + entry.coordy + '\')">';
                            }
							/*
							 * [2017-06-19 윤범식] 검색시에 매물종류와 세부종류를 선택 해 준다. - E
							 */
                            listHtml += '		<span class="txt_result">';
                            // listHtml += ' <em
							// class="fc_purple">'+$("#msrch_wrap_address_input").val()+'</em>'+entry.searchkeyword.replace(/\$("#msrch_wrap_address_input").val()/g,'
							// ');
                            listHtml += entry.searchkeyword + " (" + fn_shortAddr(entry.addr1) + " " + entry.addr2 + " " + entry.addr3 + ")";

							if (entry.gubuncode == "C")
							{
								listHtml += "-" + entry.gubuncode2;
							}
                            listHtml += '		</span>';
                            listHtml += '		<span class="ico_comm ico_arrow"></span>';
                            listHtml += '	</a>';
                            listHtml += '</li>';
                            $("#msrch_wrap_address_list").append(listHtml);
                        });
                    }
                },
                error: function (reparam) {
                    // console.log(reparam);
                    return false;
                }
            });
        }
    };

	$(document).on('click','.pop_close', function(){ // 삭제버튼
		$(".maker_tip").remove();
		$('.markerLv4').removeClass('on');
	});
};


/*
 * 다른 페이지에서 매물/시세의 검색, GIS 기능 호출 시 처리 parameter = searchGbn : A: 검색창열기, B: 학교검색,
 * C: 단지검색, D:통계열기, subway:지하철검색 searchId : 검색 대상 코드 (ex: 학교코드)
 */
function fnc_loadSearchItemByOutbound(searchGbn, searchType, searchId) {

    if (!isEmpty(searchGbn)) {
    	if (searchGbn == "A") {
    		var event = document.createEvent("HTMLEvents");
    		event.initEvent("click", true, false);
    		// document.getElementById("addressTitle").dispatchEvent(event); //
			// IE8에서는 document.getElementById("addressTitle").fireEvent(event);
    		$("#addressTitle").trigger("click");
    	}
    	else if (searchGbn == "B"){
    		fnc_loadSearchSchool(searchType, searchId);
    	}
    	else if (searchGbn == "C"){
    		// to do
    	}
    	else if (searchGbn == "D") {
    		var event = document.createEvent("HTMLEvents");
    		event.initEvent("click", true, false);
    		// document.getElementById("statGbn20").dispatchEvent(event); //
			// IE8에서는 document.getElementById("addressTitle").fireEvent(event);
    		if (searchId == "20") {
    			fn_view_option("ST", "20");
    			$("#statGbn20").parent().parent().find("button").addClass("on");
	    		$("#statGbn20").parent().addClass("on");
	    		$("#statGbn20").addClass("on");
	    		$("#statGbn20").find("a").addClass("on");
    		}
    	}
    	else if (searchGbn == "S"){
    		var line, station, ids;
    		ids = searchId.split("-");
    		fnc_loadSearchSubway(ids[1], ids[0]);
    	}

    	// mapFirstLoadGbn 을 초기화 함.
    	//mapFirstLoadGbn = "none";
    }
}

/*
 * 학교 위치 정보를 조회하고, 지도 이동한다.
 */
function fnc_loadSearchSchool(eduType, searchId) {

	 // 학교위치정보
    $.ajax({
        type: "POST",
        data: {
            'schoolType': eduType,
        	'schoolId': searchId
        },
        url: "/?_c=memul&_a=SchoolLocationInfo&_p=ajax",
        dataType: "json",
        cache: false,
        success: function (reparam) {
        	var data = eval(reparam);        	   	
        	fnc_searchSpecific('B', '', data.학교급구분 , data.도시, data.구시군, data.읍면동, '', data.학교아이디, data.지도좌표X, data.지도좌표Y);        
        }, 
         error: function(data) {
        	 
         }
    });
	
}

/*
 * 지하철 위치 정보를 조회하고, 지도 이동한다.
 */
function fnc_loadSearchSubway(line, station) {

	 // 지하철위치정보
    $.ajax({
        type: "POST",
        data: {
            'line': line,
        	'station': station
        },
        url: "/?_c=memul&_a=SubwayLocation&_p=ajax",
        dataType: "json",
        cache: false,
        success: function (reparam) {
        	var data = eval(reparam);        	   	
        	fnc_setMemulSubway(data.SUBWAY_NAME, data.지도좌표X, data.지도좌표Y, data.법정동코드);
        }, 
         error: function(data) {
        	 
         }
    });
	
}

// 맵에서 사용할 경고창
function fnc_alert(txt) {
	fn_WaitingPage(false);
    $("#map_alert").html(txt);
    $("#map_alert").addClass("on");
    $("#map_layout .my_empty.on").each(function () {
        setTimeout(function () {	// 최초 로딩시가 아닌 생성할 때마다(on을 붙일때마다) 시간을 적용해줘야
									// 하므로 공통이 아닌 여기서..
            $("#map_layout .my_empty.on").removeClass("on");
        }, 3000);
    });
}

/*
 * ----------------------- ----------------------- 첫 로딩시 작업 First Loadding Map /
 * Info Setting -----------------------
 */
function fnc_close_map_option() {
    fn_Close_sticker_info();
}

function fnc_filter_wrap_onload() {
    //$("#GIS_INFO_TYPE" + _MAP_INFO_TYPE).attr("class", "on");
    setTimeout(function () {	// 최초 로딩시가에 시간을 적용해줘야 하므로 공통이 아닌 여기서..(위의 경고창과는
								// 달리 함수 호출할때마다로 들어있다)
        $(".tab_hsm button.on + div").css('display', 'none');
    }, 3000);

	if( typeof(_ISLOTS) != 'undefined'){
		var mapLevel;
		if (_SEL_COUNTY != "") {
			mapLevel = 7;
		}
		else {
			mapLevel = 11;
		}
		// Set_MapLots({"title":"","CortarNo":"","Level":_MAP_LEVEL,"Addr1":
		// _SEL_METRO,"Addr2": _SEL_COUNTY,"Addr3":
		// _SEL_TOWN,"ComplexNm":"","gisx":_GISX,"gisy":_GISY,
		// "AddrCodeList":[{"mapLevel":"" + mapLevel +
		// ""}],"bunList":markerData});
	}
	else{
		$.ajax({
			type: "POST",
			data: {
				//'MemulInfo': _MAP_INFO_TYPE,
				 "newVilla": $('input:checkbox[id="typeNewVilla"]').is(":checked") ? "1" : "0"
			},
			url: "/?_c=memul&_p=ajax",
			dataType: "json",
			cache: false,
			success: function (data) {

				// Config MAKE
				fnc_Set_Config(data);
				// MemulType1 MAKE
				fnc_Set_MemulType1(data);
				// MemulType2 MAKE
				fnc_Set_MemulType2(data);
				// MemulStyle MAKE
				fnc_Set_MemulStyle(data);
				// MemulType List
				fnc_MemulTypeNames();

				Set_Map(data);

				// 초기 로딩 시, 재개발/경매 일경우, 매매를 제외한 거래구분은 disabled/hidden
				if (data.types1 == 'A06' || data.types1 == 'A12') {
					$("#type3_0").attr("disabled", true);
					$("#type3_0").parent().css("display", "none");
					$("#type3_2").attr("disabled", true);
					$("#type3_2").parent().css("display", "none");
					$("#type3_3").attr("disabled", true);
					$("#type3_3").parent().css("display", "none");

					$("#dealType_0").attr("disabled", true);
					$("#dealType_0").next().css("display", "none");
					$("#dealType_2").attr("disabled", true);
					$("#dealType_2").next().css("display", "none");
					$("#dealType_3").attr("disabled", true);
					$("#dealType_3").next().css("display", "none");
				}

			},
			error: function (data) {
				Set_Map(false);
			}
		});
	}
}



/*
 * ----------------------- ----------------------- 통합검색용 매물 종류 목록 조회
 * -----------------------
 */
function fnc_MemulTypeNames() {

	$.ajax({
		type: "POST",
		url: "/?_c=memul&_m=memuldefault&_a=memultypenames.ajax",
		dataType: "json",
		cache: false,
		success: function (data) {
			memulTypeNames = data;
		},
		error: function (data) {
			memulTypeNames = "";
		}
	});

}

/*
 * ----------------------- ----------------------- 호가/수익/마이앱 선택시 SELECT INFO
 * TYPE -----------------------
 */
 /*
	 * function Change_INFO_TYPE(intINFO_TYPE, objTHIS) { _MAP_INFO_TYPE =
	 * intINFO_TYPE; $.ajax({ type: "POST", data: { 'MemulType1':
	 * _MAP_TYPE1_CODE, 'MemulType2': _MAP_TYPE2_CODE, 'MemulStyle':
	 * _MAP_STYLE_CODE, 'MemulInfo': _MAP_INFO_TYPE, "wkID": "memultype3" },
	 * url: "/?_c=memul&_p=ajax", dataType: "json", cache: false, success:
	 * function (data) { $("#ofilter_wrap_title").val(data.title);
	 * clearOverlays(); mapFullView = false; ReSet_Map(data, true); }, error:
	 * function (data) { //console.log(data); //console.log("error"); } }); }
	 */
/*
 * ----------------------- ----------------------- 매물 종류 대분류 선택
 * -----------------------
 */
var load = false;	// 최초로딩시
var isSearch = false;	// 최초로딩시

function fnc_MemulType1_sel(objSEL) {	
	fn_WaitingPage(true);
	_SEL_COMPLEXCD = "";
	selectedComplexCd = "";
	var newVilla = "0";

	$("#mapSt").val("fnc_MemulType1_sel start");
    filterData = ""; 
    setCookie("Memul%5FFilter",firstFilterData); 	// 필터 초기화
	setCookie("fCode", $(objSEL).data("fcode"));

	compareWithDelAll();

    _MAP_TYPE1_CODE = $(objSEL).data("value");
	_MAP_FCODE = $(objSEL).data("fcode");
	
	$("#MemulType1").find("li").each(function(index) {
		$(this).removeClass("on");
	});

	$(objSEL).parent().addClass("on");

	// 매물종류에 따라서 매/전/월 선택 옵션 노출을 설정한다.
    if (_MAP_TYPE1_CODE == "A06" || (_MAP_TYPE1_CODE == "A12" &&  $(objSEL).data("fcode") == "Q") ) { 	// 재개발, 경매
		$("#type3_1").trigger("click");	// default로 매매를 선택
        $("#type3_0").attr("disabled", true);	// 전체 없음
        $("#type3_0").parent().css("display", "none");	// 전체 없음
        $("#type3_2").attr("disabled", true);	// 전세 없음
        $("#type3_2").parent().css("display", "none");	// 전세 없음
        $("#type3_3").attr("disabled", true);	// 월세 없음
        $("#type3_3").parent().css("display", "none");	// 월세 없음

        $("#dealType_0").attr("disabled", true);					// 지도 아래 거래구분 전체 없음
        $("#dealType_0").next().css("display", "none");	// 지도 아래 거래구분 전체 없음
        $("#dealType_2").attr("disabled", true);					// 지도 아래 거래구분 전세 없음
        $("#dealType_2").next().css("display", "none");	// 지도 아래 거래구분 전세 없음
        $("#dealType_3").attr("disabled", true);					// 지도 아래 거래구분 월세 없음
        $("#dealType_3").next().css("display", "none");	// 지도 아래 거래구분 월세 없음

	} else {
        $("#type3_0").attr("disabled", false);
        $("#type3_0").parent().css("display", "");
        $("#type3_2").attr("disabled", false);
        $("#type3_2").parent().css("display", "");
        $("#type3_3").attr("disabled", false);
        $("#type3_3").parent().css("display", "");

        $("#dealType_0").attr("disabled", false);		// 지도 아래 거래구분 전체 나타남
        $("#dealType_0").next().css("display", "");	// 지도 아래 거래구분 전체 나타남
        $("#dealType_2").attr("disabled", false);		// 지도 아래 거래구분 전세 나타남
        $("#dealType_2").next().css("display", "");	// 지도 아래 거래구분 전세 나타남
        $("#dealType_3").attr("disabled", false);		// 지도 아래 거래구분 월세 나타남
        $("#dealType_3").next().css("display", "");	// 지도 아래 거래구분 월세 나타남

    }

    $.ajax({
        type: "POST",
        data: {
            // 'cortarNo': _MAP_CortarNo,
            'MemulInfo': _MAP_INFO_TYPE,
            "wkID": "memultype2",
            "filterParam": filterData,
            "newVilla": newVilla
        },
        url: "/?_c=memul&_p=ajax",
        dataType: "json",
        cache: false,
        success: function (data) {

			// MemulType2 MAKE
            fnc_Set_MemulType2(data);
            clearOverlays();
            mapFullView = false;
            if (!load || doParam=="goSt20") {	// 시세 폴리곤일때 ReSet_Map을 호출하지 않으면
												// 매물목록이 지도에 그려지질 않는다.
            	ReSet_Map(data, true);
            }
            fn_set_option_list(data, false);	// 옵션 리스트 변경
            if (load) {
            	load = !load;
            }
            $("#mapSt").val("fnc_MemulType1_sel end").trigger("change");
            
            _GIS_moveToCenter(data.gisx, data.gisy);
            
            // 필터 조건 (UI) 바꾸기
            $.ajax({
                url: '/?c=memul&p=h&f=default.filter.ajax.json',
                method: 'get',
                dataType: "json",
                async: false,
                success: function (data) {
                    viewFilter(data);
                }
            });

        },
        error: function (data) {
        }
    });
}

/*
 * ----------------------- ----------------------- 매물 종류 세부분류 선택
 * -----------------------
 */
function fnc_MemulType2_sel(objSEL) {

	var fCodeVal = ""
	$("#MemulType2").find("li > input").each(function(index) {
		if($(this).is(":checked")){
			if(fCodeVal == ''){
				fCodeVal = $(this).data("fcode");
			}
			else{
				fCodeVal += '|' + $(this).data("fcode");
			}
		}
	});

	if(fCodeVal == ""){
		alert('매물 종류를 선택 하세요.')
		return;
	}
	
	fn_WaitingPage(true);
	_SEL_COMPLEXCD = "";
	selectedComplexCd = "";
	setCookie("fCode", fCodeVal);

	fn_Remove_sticker_info();				// 2017-12-18 김선호 추가.

	$.ajax({
        type: "POST",
        data: {
            'MemulInfo': _MAP_INFO_TYPE,
            "wkID": "memultype3",
            "filterParam": filterData,
            "newVilla": $('input:checkbox[id="typeNewVilla"]').is(":checked") ? "1" : "0"
        },
        url: "/?_c=memul&_p=ajax",
        dataType: "json",
        cache: false,
        success: function (data) {
			// goSearch();

            clearOverlays();
            mapFullView = false;
            ReSet_Map(data, true);
        },
        error: function (data) {

        }
    });
}

/*
 * ----------------------- ----------------------- 빌라 > 신축여부 선택
 * -----------------------
 */
function fnc_MemulNewVilla_sel(objSEL) {
	
	var fCodeVal = ""
	$("#MemulType2").find("li > input").each(function(index) {
		if($(this).is(":checked")){
			if(fCodeVal == ''){
				fCodeVal = $(this).data("fcode");
			}
			else{
				fCodeVal += '|' + $(this).data("fcode");
			}
		}
	});

	if(fCodeVal == ""){
		alert('매물 종류를 선택 하세요.')
		return;
	}

	setCookie("fCode", fCodeVal);

	$.ajax({
        type: "POST",
        data: {
            'MemulInfo': _MAP_INFO_TYPE,
            "wkID": "memultype3",
            "filterParam": filterData,
            "newVilla": $('input:checkbox[id="typeNewVilla"]').is(":checked") ? "1" : "0"
        },
        url: "/?_c=memul&_p=ajax",
        dataType: "json",
        cache: false,
        success: function (data) {
			// goSearch();

            clearOverlays();
            mapFullView = false;
            ReSet_Map(data, true);
        },
        error: function (data) {

        }
    });

}

/*
 * ----------------------- ----------------------- 매/전/월 선택
 * -----------------------
 */
function fnc_MemulType3_sel(objSEL) {
	fn_WaitingPage(true);
	
	var tradeView;
	
	body_scroll_active();
	
	if ($(objSEL).attr("data-title") =="전체") {
		tradeView = "<span class='tag_comm2 a'>" + $(objSEL).attr("data-title") +  "</span>";
		$("ul#MemulStyle").find("li:nth-child(1)").find("input").prop("checked", true);
		$("ul#MemulStyle").find("li:nth-child(1)").find("input").attr("checked", true);
		$("ul#MemulStyle").find("li:nth-child(2)").find("input").prop("checked", false);
		$("ul#MemulStyle").find("li:nth-child(2)").find("input").attr("checked", false);
		$("ul#MemulStyle").find("li:nth-child(3)").find("input").prop("checked", false);
		$("ul#MemulStyle").find("li:nth-child(3)").find("input").attr("checked", false);
		$("ul#MemulStyle").find("li:nth-child(4)").find("input").prop("checked", false);
		$("ul#MemulStyle").find("li:nth-child(4)").find("input").attr("checked", false);
	}
	else if ($(objSEL).attr("data-title") =="매매") {
		tradeView = "<span class='tag_comm2 m'>" + $(objSEL).attr("data-title") +  "</span>";
		$("ul#MemulStyle").find("li:nth-child(2)").find("input").prop("checked", true);
		$("ul#MemulStyle").find("li:nth-child(2)").find("input").attr("checked", true);
		$("ul#MemulStyle").find("li:nth-child(1)").find("input").prop("checked", false);
		$("ul#MemulStyle").find("li:nth-child(1)").find("input").attr("checked", false);
		$("ul#MemulStyle").find("li:nth-child(3)").find("input").prop("checked", false);
		$("ul#MemulStyle").find("li:nth-child(3)").find("input").attr("checked", false);
		$("ul#MemulStyle").find("li:nth-child(4)").find("input").prop("checked", false);
		$("ul#MemulStyle").find("li:nth-child(4)").find("input").attr("checked", false);
	}
	else if ($(objSEL).attr("data-title") =="전세") {
		tradeView = "<span class='tag_comm2 j'>" + $(objSEL).attr("data-title") +  "</span>";
		$("ul#MemulStyle").find("li:nth-child(3)").find("input").prop("checked", true);
		$("ul#MemulStyle").find("li:nth-child(3)").find("input").attr("checked", true);
		$("ul#MemulStyle").find("li:nth-child(1)").find("input").prop("checked", false);
		$("ul#MemulStyle").find("li:nth-child(1)").find("input").attr("checked", false);
		$("ul#MemulStyle").find("li:nth-child(2)").find("input").prop("checked", false);
		$("ul#MemulStyle").find("li:nth-child(2)").find("input").attr("checked", false);
		$("ul#MemulStyle").find("li:nth-child(4)").find("input").prop("checked", false);
		$("ul#MemulStyle").find("li:nth-child(4)").find("input").attr("checked", false);
	}
	else if ($(objSEL).attr("data-title") =="월세") {
		tradeView = "<span class='tag_comm2 w'>" + $(objSEL).attr("data-title") +  "</span>";
		$("ul#MemulStyle").find("li:nth-child(4)").find("input").prop("checked", true);
		$("ul#MemulStyle").find("li:nth-child(4)").find("input").attr("checked", true);
		$("ul#MemulStyle").find("li:nth-child(1)").find("input").prop("checked", false);
		$("ul#MemulStyle").find("li:nth-child(1)").find("input").attr("checked", false);
		$("ul#MemulStyle").find("li:nth-child(2)").find("input").prop("checked", false);
		$("ul#MemulStyle").find("li:nth-child(2)").find("input").attr("checked", false);
		$("ul#MemulStyle").find("li:nth-child(3)").find("input").prop("checked", false);
		$("ul#MemulStyle").find("li:nth-child(3)").find("input").attr("checked", false);
	}
	
	if ($(objSEL).attr("data-title") =="전체") {		
		$("#dealType_0").prop("checked", true);
		$("#dealType_0").attr("checked", true);
		$("#dealType_1").prop("checked", false);
		$("#dealType_1").attr("checked", false);
		$("#dealType_2").prop("checked", false);
		$("#dealType_2").attr("checked", false);
		$("#dealType_3").prop("checked", false);
		$("#dealType_3").attr("checked", false);
	}
	else if ($(objSEL).attr("data-title") =="매매") {		
		$("#dealType_1").prop("checked", true);
		$("#dealType_1").attr("checked", true);
		$("#dealType_0").prop("checked", false);
		$("#dealType_0").attr("checked", false);
		$("#dealType_2").prop("checked", false);
		$("#dealType_2").attr("checked", false);
		$("#dealType_3").prop("checked", false);
		$("#dealType_3").attr("checked", false);
	}
	else if ($(objSEL).attr("data-title") =="전세") {
		$("#dealType_2").prop("checked", true);
		$("#dealType_2").attr("checked", true);
		$("#dealType_0").prop("checked", false);
		$("#dealType_0").attr("checked", false);
		$("#dealType_1").prop("checked", false);
		$("#dealType_1").attr("checked", false);
		$("#dealType_3").prop("checked", false);
		$("#dealType_3").attr("checked", false);
	}
	else if ($(objSEL).attr("data-title") =="월세") {
		$("#dealType_3").prop("checked", true);
		$("#dealType_3").attr("checked", true);
		$("#dealType_0").prop("checked", false);
		$("#dealType_0").attr("checked", false);
		$("#dealType_1").prop("checked", false);
		$("#dealType_1").attr("checked", false);
		$("#dealType_2").prop("checked", false);
		$("#dealType_2").attr("checked", false);
	}
	
    filterData = ""; 
    setCookie("Memul%5FFilter",firstFilterData);	// 필터 초기화
	$("#MemulStyle").parents(".sort").children(".title").html( tradeView );

	if($("#MemulStyle").parents(".sort").hasClass('on')){
		$("#MemulStyle").parents(".sort").removeClass('on');
	}

    _MAP_STYLE_CODE = objSEL.value.split('|')[objSEL.value.split('|').length - 1];

    /*
	 * 이 부분은 모바일 코드에서 가져온 것이라서, 웹에서는 실행되지 않는다.
	 * 
	 * if(_MAP_STYLE_CODE == 1 || _MAP_STYLE_CODE == 2){
	 * $("div.sort.detail").children(".cont").children("ul").children("li").eq(0).css("display",
	 * "");
	 * $("div.sort.detail").children(".cont").children("ul").children("li").eq(1).css("display",
	 * "none");
	 * $("div.sort.detail").children(".cont").children("ul").children("li").eq(2).css("display",
	 * "none"); } else{
	 * $("div.sort.detail").children(".cont").children("ul").children("li").eq(0).css("display",
	 * "none");
	 * $("div.sort.detail").children(".cont").children("ul").children("li").eq(1).css("display",
	 * "");
	 * $("div.sort.detail").children(".cont").children("ul").children("li").eq(2).css("display",
	 * ""); }
	 * 
	 */

	if (_MAP_STYLE_CODE == 0){
		var _priceTitleTotal = '가격 <div class="tooltip_wrap"><a href="#" class="btn q">?</a><div class="tooltip" style="min-width:170px; text-align:left; z-index:1;">가격은 매매가/전세가/보증금을 모두 포함하고 있습니다.</div></div>';
		$("#priceTitle").html(_priceTitleTotal);
	}	
	else if (_MAP_STYLE_CODE == 1){
		$("#priceTitle").html("매매가");
	}
	else if (_MAP_STYLE_CODE == 2){
		$("#priceTitle").html("전세가");
	}

    $.ajax({
        type: "POST",
        data: {
			'MemulStyle': _MAP_STYLE_CODE,
            'MemulInfo': _MAP_INFO_TYPE,
            "wkID": "memultype3",
            "filterParam": filterData,
            "newVilla": $('input:checkbox[id="typeNewVilla"]').is(":checked") ? "1" : "0"            
        },
        url: "/?_c=memul&_p=ajax",
        dataType: "json",
        cache: false,
        success: function (data) {

			if(isAutoSearch){
			// goSearch();
			}

            $("#ofilter_wrap_title").val(data.title);
            clearOverlays();
            mapFullView = false;
            ReSet_Map(data, true);
            fn_set_option_list(data, false);	// 옵션 리스트 변경
            // 필터 조건 (UI) 바꾸기
            $.ajax({
                url: '/?c=memul&p=h&f=default.filter.ajax.json',
                method: 'get',
                dataType: "json",
                async: false,
                success: function (data) {
                    viewFilter(data);
                }
            });
        },
        error: function (data) {
        }
    });
}
/*
 * ----------------------- ----------------------- 필터 선택 -----------------------
 */
function fnc_filter_sel(filterParam) {

	filterData = filterParam;
	setCookie("Memul%5FFilter",filterData);
    $.ajax({
        type: "POST",
        data: {
            'MemulInfo': _MAP_INFO_TYPE,
            "wkID": "memultype3",
            "filterParam": filterParam,
            "newVilla": $('input:checkbox[id="typeNewVilla"]').is(":checked") ? "1" : "0"            
        },
        url: "/?_c=memul&_p=ajax",
        dataType: "json",
        cache: false,
        success: function (data) {
            clearOverlays();
            mapFullView = false;
            ReSet_Map(data, true);
            fn_set_option_list(data, false);	// 옵션 리스트 변경
        },
        error: function (data) {
        }
    });
}
/*
 * ----------------------- ----------------------- 주소 선택 -----------------------
 */
function fnc_AddrList_sel(clickMode, txtCode, txtLevel, myAddrNm, x, y) {	// myAddrNm :
	
	if (!$('.search_sort_wrap .search_wrap').hasClass('active') && clickMode == "1") {
			// $('#msrch_wrap_address_input').val("") ;
			$('.search_sort_wrap .search_wrap').addClass('active');
			// $("#msrch_wrap_address_list").find("li").remove();
	    	$(".search_result").css("display", "none");
	    	$(".n1").addClass("on");
	    	$(".n2").removeClass("on");
			$(".n3").removeClass("on");
			
			$selectArea = $("#div_selectArea").html();
 	}
									// 선택한 지역 이름
    var iLevel = parseInt(txtLevel) + 1;
    // if(iLevel==3){ iLevel ++}

    $.ajax({
        type: "POST",
        data: {
            'AddrCode': txtCode,
            'LevelCode': iLevel,
            'MemulInfo': _MAP_INFO_TYPE,
            "wkID": "addrlist",
            "newVilla": $('input:checkbox[id="typeNewVilla"]').is(":checked") ? "1" : "0"
        },
        url: "/?_c=memul&_p=ajax",
        dataType: "json",
        cache: false,
        success: function (data) {
			if(txtLevel == 3 && data.ComplexCodeList == false){
				fn_setFullView(txtCode, txtLevel, myAddrNm, x, y);
			}
			else{
	            fnc_Set_Address(data, txtCode, txtLevel, myAddrNm, clickMode);
			}
        },
        error: function (data) {
        }
    });
}
/*
 * ----------------------- ----------------------- 스티커 선택시 상세 팝업
 * -----------------------
 */
function fn_Open_sticker_info(befdata) {

    fnc_selectMarker();	// 마커 선택 초기화

    var cortarNo = befdata.id;
    var complexCd = "";
    if (!(cortarNo.substring(0, 1) >= 0 && cortarNo.substring(0, 1) <= 9)) {	// 첫자리가
																				// 숫자가
																				// 아닐경우(단지선택)
        complexCd = cortarNo;
        cortarNo = getCookie("Memul_CortarNo");
    }


    $.ajax({
        type: "POST",
        data: {
            'MemulStyle': _MAP_STYLE_CODE,
            'MemulInfo': _MAP_INFO_TYPE,
            'cortarNo': cortarNo,
            'mmTypeNm': befdata.mmTypeNm,
            'complexCd': complexCd,
            'filterParam': filterData,

			//추가
			ComplexNm : _SEL_COMPLEXNM,
			estatekind : getCookie('fCode')
        },
        url: "/?_c=memul&_a=info&_p=ajax",
        dataType: "json",
        cache: false,
        success: function (data) {	
            fnc_Set_Sticker(befdata, data);
            open_landInfo();
        },
        error: function (data) {
        }
    });
}



function fn_Open_sticker_info_backup(befdata) {


    fnc_selectMarker();	// 마커 선택 초기화

    var cortarNo = befdata.id;
    var complexCd = "";
    if (!(cortarNo.substring(0, 1) >= 0 && cortarNo.substring(0, 1) <= 9)) {	// 첫자리가
																				// 숫자가
																				// 아닐경우(단지선택)
        complexCd = cortarNo;
        cortarNo = getCookie("Memul_CortarNo");
    }
    $.ajax({
        type: "POST",
        data: {
            'MemulStyle': _MAP_STYLE_CODE,
            'MemulInfo': _MAP_INFO_TYPE,
            'cortarNo': cortarNo,
            'mmTypeNm': befdata.mmTypeNm,
            'complexCd': complexCd,
            'filterParam': filterData
        },
        url: "/?_c=memul&_a=info&_p=ajax",
        dataType: "json",
        cache: false,
        success: function (data) {
				
            fnc_Set_Sticker(befdata, data);
            open_landInfo();
        },
        error: function (data) {
        }
    });
}

/*
 * [2017-06-26 윤범식] replaceAll 함수 추가 - S
 */
String.prototype.replaceAll = function(org, dest) {
    return this.split(org).join(dest);
};
/*
 * [2017-06-26 윤범식] replaceAll 함수 추가 - E
 */

// 마커 클릭시 상세 팝업
function fn_Open_sticker_info_marker(befdata) {
	

	/*
	 * var moveY = 0.0001; for (var i = 0; i < _GIS_MAP.getInfo().level; i++) {
	 * moveY = moveY * 2; // 레이어 팝업 때문에 위로 조금 올린다 }
	 */

	var moveY = 0;
	var moveX = 0.0001;
	for (var i = 0; i < _GIS_MAP.getInfo().level; i++) {
		moveX = moveX * 2;	// 팝업이 왼쪽에 뜨므로 오른쪽으로 약간 지도이동
	}

    _GIS_moveToCenter(befdata.x - moveX, befdata.y - moveY);	// 모바일 화면이 좁아서..
    fn_Close_sticker_info();	// 스티커, 마커 선택 초기화
    setTimeout(function () {	// fn_Close_sticker_info와 뭔가 시간차가 존재하는 것 같다.
        fnc_selectMarker(befdata.marker);	// 마커 선택
    }, 1);

    // 학교정보
    $.ajax({
        type: "POST",
        data: {
            'schoolId': befdata.id
        },
        url: "/?_c=memul&_a=schoolInfo&_p=ajax",
        dataType: "json",
        cache: false,
        success: function (data) {
            open_landInfo();
            if (befdata.marker != null) {
                // 폴리곤
                if (data.gbn.startsWith("1")) {	// 초중고만
                    _GIS_MAP.clearPolygons();
                    $.ajax({
                        type: "POST",
                        data: { "schoolGbn": data.gbn, "schoolId": data.학교아이디 },
                        url: "/?_c=memul&_p=ajax&_m=default.schoolArea",
                        dataType: "json",
                        cache: false,
                        success: function (data2) {
                            var areasArr = [];
                            var area;

                            /*
							 * [2017-06-26 윤범식] 프로시저에서는 순수 데이터만 가져오고 나머지 작업은
							 * script 로 처리한다 - S
							 */
                            $.each(data2, function (index, entry) {
                                var polygonXY = "";

								var entryPolygonXY = entry.polygonXY;
								var entryType = "";

								if (entry.polygonXY.match(/MULTIPOLYGON.*/)){
									entryType = "MULTIPOLYGON";
									entryPolygonXY = entryPolygonXY.replaceAll("MULTIPOLYGON ", "").replaceAll(", ", "],[").replaceAll(" ", ",").replaceAll("((","[[").replaceAll("))","]]").replaceAll("(","[[").replaceAll(")","]]");
								}
								else if (entry.polygonXY.match(/POLYGON.*/)){
									entryType = "POLYGON";
									entryPolygonXY = entryPolygonXY.replaceAll("POLYGON ", "").replaceAll("), (", "]],[[").replaceAll(", ", "],[").replaceAll(" ", ",").replaceAll("((","[[[").replaceAll("))","]]]");
								}

                                if (entryType == "POLYGON") {	// POLYGON
																// ((126.7662025363191
																// 37.554241811480466,
																// ...,
																// 126.76590944599981
																// 37.5541352195908))
                                    // polygonXY =
									// entry.polygonXY.substring(10,entry.polygonXY.length-2);
									// //126.7662025363191 37.554241811480466,
									// ..., 126.76590944599981 37.5541352195908
                                    //
                                    // var vertexts = polygonXY.split(", "); //
									// 꼭짓점 좌표들
                                    // var inCoord = [];
                                    // for (var i=0; i<vertexts.length; i++) {
                                    // var lng = vertexts[i].split(" ")[0];
                                    // var lat = vertexts[i].split(" ")[1];
                                    // var vertext = [lng,lat];
                                    // inCoord.push(vertext);
                                    // }
                                    // area = {
                                    // geometry:{type:"Polygon",coord:
									// [inCoord]}
                                    // , properties: { "code":index,"name":"학교"
									// }
                                    // };
                                    area = {
                                        geometry: { type: "Polygon", coordinates: JSON.parse(entryPolygonXY) }
                                        // coord: JSON.parse(entry.polygonXY)
                                        , properties: { "code": index, "name": "학교" }
                                    };
                                    areasArr.push(area);
                                } else if (entryType == "MULTIPOLYGON") {	// MULTIPOLYGON
																			// (((126.655544794303
																			// 37.637938768696863,
																			// ...,
																			// 126.65572079470778
																			// 37.637933090866895)),
																			// ...,
																			// ((126.56024223130676
																			// 37.57611659668364,
																			// ...,
																			// 126.56282533730362
																			// 37.574645797897986)))
                                    // polygonXY =
									// entry.polygonXY.substring(14,entry.polygonXY.length-1);
									// //((126.655544794303 37.637938768696863,
									// ..., 126.65572079470778
									// 37.637933090866895)), ...,
									// ((126.56024223130676 37.57611659668364,
									// ..., 126.56282533730362
									// 37.574645797897986))
                                    //
                                    // var polygons = polygonXY.split(")), ((");
                                    // var coord = [];
                                    // //var inCoord = [];
                                    // for (var i=0; i<polygons.length; i++) {
                                    // if (i==0) {
                                    // polygons[i] =
									// polygons[i].substring(2,polygons[i].length);
                                    // } else if (i==vertexts.length-1) {
                                    // polygons[i] =
									// polygons[i].substring(0,polygons[i].length-2);
                                    // }
                                    // var vertexts = polygons[i].split(", ");
									// // 꼭짓점 좌표들
                                    // var inCoord = [];
                                    // for (var j=0; j<vertexts.length; j++) {
                                    // var lng = vertexts[j].split(" ")[0];
                                    // var lat = vertexts[j].split("
									// ")[1].replaceAll("))",""); // 나중에 고칠 것
                                    // var vertext = [lng,lat];
                                    // inCoord.push(vertext);
                                    // }
                                    // coord.push([inCoord]);
                                    // }
                                    // area = {
                                    // geometry:{type:"MULTIPOLYGON",coord:
									// coord}//coord: [coord]
                                    // , properties: { "code":index,"name":"학교"
									// }
                                    // };
                                    area = {
                                        geometry: { type: "MULTIPOLYGON", coordinates: JSON.parse(entryPolygonXY) }// coord:
																													// [coord]
                                        , properties: { "code": index, "name": "학교" }
                                    };
                                    areasArr.push(area);
                                }// console.log(JSON.stringify(areasArr));

                                // var vertexts = entry.polygonXY.split(","); //
								// 꼭짓점 좌표들
                                // var inCoord = [];
                                // for (var i=0; i<vertexts.length; i++) {
                                // var lng = vertexts[i].split("^")[0];
                                // var lat = vertexts[i].split("^")[1];
                                // var vertext = [lng,lat];
                                // inCoord.push(vertext);
                                // }
                            });
							/*
							 * [2017-06-26 윤범식] 프로시저에서는 순수 데이터만 가져오고 나머지 작업은
							 * script 로 처리한다 - E
							 */

                            drawSimple(_GIS_MAP, areasArr);

                            // $("svg").parent().attr("style","position:absolute;z-index:2");
                            $(".typeA").parent().hide();
                            $(".typeB").parent().hide();
                            // var polygonPath = { strokeWeight: 1,strokeColor:
							// '#39DE2A',strokeOpacity: 0.9,strokeStyle:
							// 'solid',
                            // fillColor: '#A2FF99',fillOpacity: 0.6};
                            // var colors = d3.scale.category20().domain([1,
							// areasArr.length]);
                            // areasArr.forEach(function(area, i) {
                            // polygonPath.area = area;
                            // polygonPath.strokeColor = colors(i);
                            // polygonPath.fillColor = colors(i);
                            //
                            // _GIS_MAP.drawArea('polygon', polygonPath, false);
							// // true:지도 배경을 지우고 폴리곤 표시, false:지도위에 폴리곤표시
                            // //.setFullView(area.coord[0], false);
                            // });

                            // _GIS_MAP.setFullView(areasArr, true); // 레벨 최적화
                            // _GIS_MAP.moveTo([37.566614,
							// 126.977919]).level(9);
                        },
                        error: function (data2) {
                        }
                    });
                }

            }

            fnc_Set_Sticker(befdata, data, befdata.marker);
        },
        error: function (data) {
        }
    });
}

// 마커 클릭시 상세 팝업
function fn_Open_sticker_info_marker_busStop(befdata) {
	
	var moveY = 0;
	var moveX = 0.0001;
	for (var i = 0; i < _GIS_MAP.getInfo().level; i++) {
		moveX = moveX * 2;	// 팝업이 왼쪽에 뜨므로 오른쪽으로 약간 지도이동
	}

    _GIS_moveToCenter(befdata.x - moveX, befdata.y - moveY);	// 모바일 화면이 좁아서..
    fn_Close_sticker_info();	// 스티커, 마커 선택 초기화
    setTimeout(function () {	// fn_Close_sticker_info와 뭔가 시간차가 존재하는 것 같다.
       fnc_selectMarker_bus(befdata.marker);	// 마커 선택
    }, 1);

	var dataInfo = befdata.id.split("|");
    // 학교정보
    $.ajax({
        type: "POST",
        data: {
            'busStopId': dataInfo[0]
        },
        url: "/?_c=memul&_a=busStopInfo&_p=ajax",
        dataType: "json",
        cache: false,
        success: function (data) {
            fnc_Set_Sticker(befdata, data, befdata.marker, "BS");
			open_landInfo();

		// $(".typeA").parent().hide(); // 아파트 등 단지마커 안 보이게.
			$(".typeB").parent().hide();
        },
        error: function (data) {
        }
    });
}

// 마커 클릭시 상세 팝업
function fn_Open_sticker_info_marker_Cctv(befdata) {
	var moveY = 0;
	var moveX = 0.0001;
	for (var i = 0; i < _GIS_MAP.getInfo().level; i++) {
		moveX = moveX * 2;	// 팝업이 왼쪽에 뜨므로 오른쪽으로 약간 지도이동
	}

    _GIS_moveToCenter(befdata.x - moveX, befdata.y - moveY);	// 모바일 화면이 좁아서..
    fn_Close_sticker_info();	// 스티커, 마커 선택 초기화
    setTimeout(function () {	// fn_Close_sticker_info와 뭔가 시간차가 존재하는 것 같다.
        fnc_selectMarker_cctv(befdata.marker);	// 마커 선택
    }, 1);

	fnc_Set_Sticker(befdata, null, befdata.marker, "CC");
	open_landInfo();

// $(".typeA").parent().hide(); // 아파트 등 단지마커 안 보이게.
	$(".typeB").parent().hide();
}

// 마커 클릭시 상세 팝업
function fn_Open_sticker_info_marker_Bun(befdata) {
	
	var moveY = 0;
	var moveX = 0.0001;
	for (var i = 0; i < _GIS_MAP.getInfo().level; i++) {
		moveX = moveX * 2;	// 팝업이 왼쪽에 뜨므로 오른쪽으로 약간 지도이동
	}

    _GIS_moveToCenter(befdata.x - moveX, befdata.y - moveY);	// 모바일 화면이 좁아서..
    fn_Close_sticker_info();	// 스티커, 마커 선택 초기화

	var dataId = befdata.id;
	$.ajax({
        type: "POST",
        data: {
            'ComplexCd': dataId,
			'tabGubun': tabGubun,
        },
        url: "/?_c=lots&_s=info&_m=infolist&_a=infoviewajax",

        cache: false,
        success: function (data) {
            fnc_Set_Sticker(befdata, data, befdata.marker, "BUN");
			open_landInfo();

			$(".typeA").parent().hide();
			$(".typeB").parent().hide();
        },
        error: function (data) {
        }
    });
}



// 마커 클릭시 상세 팝업
function fn_Open_sticker_info_marker_Jigu(befdata) {
	
	var moveY = 0;
	var moveX = 0.0001;
	for (var i = 0; i < _GIS_MAP.getInfo().level; i++) {
		moveX = moveX * 2;	// 팝업이 왼쪽에 뜨므로 오른쪽으로 약간 지도이동
	}

    _GIS_moveToCenter(befdata.x - moveX, befdata.y - moveY);	// 모바일 화면이 좁아서..
    fn_Close_sticker_info();	// 스티커, 마커 선택 초기화

	var dataId = befdata.id;
	
	$.ajax({
        type: "POST",
        data: {
            'idx': dataId
        },
        url: "/?_c=lots&_s=Jigu&_m=JiguList&_a=Jiguviewajax",

        cache: false,
        success: function (data) {
            fnc_Set_Sticker(befdata, data, befdata.marker, "JIGU");
			open_landInfo();

			$(".typeA").parent().hide();
			$(".typeB").parent().hide();
        },
        error: function (data) {
        }
    });
}

function fnc_selectMarker(selectMarker) {
    if (selectedMarker != null) {
        fn_setUpdateMarkerImage(selectedMarker, ""+imageServer+"/images/sub/markerLv4_bg3.png");	// 기존에
																									// 선택했던
																									// 마커
																									// 초기화
    }
    if (typeof selectMarker != "undefined") {
        selectedMarker = selectMarker;
		selectedMarkerClass = "S"; // 학교마커
        fn_setUpdateMarkerImage(selectedMarker, ""+imageServer+"/images/sub/markerLv4_bg3_on.png");
    } else {
        selectedMarker = null;
		selectedMarkerClass = null;
    }
}

function fnc_selectMarker_bus(selectMarker) {
    if (selectedMarker != null) {
        fn_setUpdateMarkerImage(selectedMarker, "/images/Common/maker_bus.png");	// 기존에
																					// 선택했던
																					// 마커
																					// 초기화
    }
    if (typeof selectMarker != "undefined") {
        selectedMarker = selectMarker;
		selectedMarkerClass = "B"; // 버스마커
        fn_setUpdateMarkerImage(selectedMarker, "/images/Common/maker_bus_on.png");
    } else {
        selectedMarker = null;
		selectedMarkerClass = null;
    }
}

function fnc_selectMarker_cctv(selectMarker) {
    if (selectedMarker != null) {
        fn_setUpdateMarkerImage(selectedMarker, "/images/Common/maker_cctv.png");	// 기존에
																					// 선택했던
																					// 마커
																					// 초기화
    }
    if (typeof selectMarker != "undefined") {
        selectedMarker = selectMarker;
		selectedMarkerClass = "C"; // cctv마커
        fn_setUpdateMarkerImage(selectedMarker, "/images/Common/maker_cctv_on.png");
    } else {
        selectedMarker = null;
		selectedMarkerClass = null;
    }
}
/*
 * ----------------------- ----------------------- 상세 팝업 닫기
 * -----------------------
 */
function fn_Close_sticker_info() {
    $(".maker_tip").remove();
	isComplexView = false;
    /*
	 * if ($(".marker_info").hasClass("open")) { // 열려있을 때만(뒤로가기가 아닌 닫기 버튼이나 다른
	 * 방법으로 닫힐때) 뒤로가기 원복 window.history.pushState('forward', 'open_landInfo',
	 * history.back()); }
	 */
	// backMap = true;
	fn_Close_sticker_info2();
}
function fn_Close_sticker_info2() {
    $(".typeA").removeClass("on");
    $(".typeB").removeClass("on");
    close_landInfo();

    if (selectedMarker != null) {
		if(selectedMarkerClass == "S"){
	        fn_setUpdateMarkerImage(selectedMarker, ""+imageServer+"/images/sub/markerLv4_bg3.png");	// 기존에
																										// 선택했던
																										// 마커
																										// 초기화
		}
		else if(selectedMarkerClass == "B"){
			fn_setUpdateMarkerImage(selectedMarker, "/images/Common/maker_bus.png");	// 기존에
																						// 선택했던
																						// 마커
																						// 초기화
		}
		else if(selectedMarkerClass == "C"){
			fn_setUpdateMarkerImage(selectedMarker, "/images/Common/maker_cctv.png");	// 기존에
																						// 선택했던
																						// 마커
																						// 초기화
		}

        _GIS_MAP.clearPolygons();
        selectedMarker = null;

		/*
		 * [2017-05-31 윤범식] Polygon 없어질때 매물정보 다시 보이기.
		 */
		$(".typeA").parent().show();
		$(".typeB").parent().show();
    }
    // _GIS_MAP.eventChanged("click", fn_Close_sticker_info, false);
    // _GIS_MAP.eventChanged("dragstart", fn_Close_sticker_info, false);
}
// 이미 그려진 마커 이미지 변경
function fn_setUpdateMarkerImage(marker, src) {
    marker.getImage().Mj = src;	// getImage()의 Mj에 이미지url이 들어있다..
    marker.setImage(marker.getImage());	// 처음 그렸던 옵션 그대로 이미지url만 바꿔서
}
// 팝업된 마커 지우기. 2017-12-18 김선호 추가
function fn_Remove_sticker_info() {
    $(".maker_tip").remove();
}
/*
 * ----------------------- ----------------------- 지역 리스트 전송
 * -----------------------
 */
function fn_area_list(txtId, txtMemulCd, txtCortarNo, txtCortarNm) {
    if (txtId.substring(0, 1) >= 0 && txtId.substring(0, 1) <= 9) {
        // location.href =
		// "/?_c=memul&_m=list&_a=area&CortarNo="+txtId+"&mmCode="+txtMemulCd+"&CortarNm="+txtCortarNm;
        location.href = "/?_c=memul&_m=list&_a=quote&CortarNo=" + txtId + "&mmCode=" + txtMemulCd + "&CortarNm=" + txtCortarNm;
    } else {
        location.href = "/?_c=memul&_m=complex&_a=detail&CortarNo=" + txtCortarNo + "&mmCode=" + txtMemulCd + "&ComplexCd=" + txtId + "&ComplexNm=" + txtCortarNm;
    }
}
/*
 * ----------------------- ----------------------- 매물 리스트 전송
 * -----------------------
 */
function fn_memul_list(txtId, txtMemulCd, txtCortarNo, txtCortarNm) {
    if (txtId.substring(0, 1) >= 0 && txtId.substring(0, 1) <= 9) {
        location.href = "/?_c=memul&_m=list&_a=memul&CortarNo=" + txtId + "&mmCode=" + txtMemulCd + "&filterParam="+filterData;	// +
																																// "&CortarNm="
																																// +
																																// txtCortarNm
    } else {
        location.href = "/?_c=memul&_m=list&_a=memul&CortarNo=" + txtCortarNo + "&mmCode=" + txtMemulCd + "&ComplexCd=" + txtId + "&filterParam="+filterData;	// +
																																								// "&ComplexNm="
																																								// +
																																								// txtCortarNm
    }
}
/*
 * ----------------------- ----------------------- 필터조건 열기
 * -----------------------
 */
function open_memul_filter() {
    // location.href = "/?_c=memul&_a=filter";
    if (!$('.filterLayer').hasClass('open')) {
        $('.filterLayer').addClass('open');
        if (window.history && window.history.pushState) {
            window.history.pushState('forward', 'openPopup', location.href);
            $(window).on('popstate', function () {
            	backMap = 0;
                $('.filterLayer').removeClass('open');
            });
        }
        backMap = 0;
    }
    else {
        window.history.pushState('forward', 'openPopup', history.back());
        $('.filterLayer').removeClass('open');
        // backMap = true;
    }
}

/*
 * ----------------------- ----------------------- SET CONFIG
 * -----------------------
 */
function fnc_Set_Config(sData) {
    _MAP_STYLE_CODE = sData.style;	// onload시 매전월 선택
    if (sData.Level) {
        setMapLevel(sData.Level, sData.CortarNo);
        switch (sData.Level) {
            case "0": _MAP_CONFIG_ADDR1_CODE = sData.CortarNo; break;
            case "1": _MAP_CONFIG_ADDR1_CODE = sData.CortarNo; break;
            default: _MAP_CONFIG_ADDR1_CODE = String(sData.CortarNo).substring(0, 2) + "00000000"; _MAP_CONFIG_ADDR2_CODE = sData.CortarNo; break;
        }
    }
    if (sData.Addr1) _MAP_CONFIG_ADDR1_KR = sData.Addr1;
    if (sData.Addr2) _MAP_CONFIG_ADDR2_KR = sData.Addr2;
    if (sData.Addr3) _MAP_CONFIG_ADDR3_KR = sData.Addr3;
    if (sData.CortarNo) _MAP_CortarNo = sData.CortarNo;
    var MemulStyleKR;
    switch (_MAP_STYLE_CODE) {
        case "1": MemulStyleKR = "매매"; break;
        case "2": MemulStyleKR = "전세"; break;
        case "3": MemulStyleKR = "월세"; break;
        default: MemulStyleKR = "전체"; break;
    }

	if (_MAP_STYLE_CODE == 0){
		var _priceTitleTotal = '가격 <div class="tooltip_wrap"><a href="#" class="btn q" id="testtooltip">?</a><div class="tooltip" style="min-width:170px; text-align:left; z-index:1;">가격은 매매가/전세가/보증금을 모두 포함하고 있습니다.</div></div>';
		$("#priceTitle").html(_priceTitleTotal);
	}	
	else if (_MAP_STYLE_CODE == 1){
		$("#priceTitle").html("매매가");
	}
	else if (_MAP_STYLE_CODE == 2){
		$("#priceTitle").html("전세가");
	}

    $("#ofilter_wrap_stylenm").val(MemulStyleKR);
    $("#ofilter_wrap_title").val(sData.title);
}
/*
 * ----------------------- ----------------------- SET MemulType1
 * -----------------------
 */
function fnc_Set_MemulType1(sData) {

    var strTmpHTML = "";
    var idNum = 0;

	var urlParams = getUrlVars();
	var reParam = ""
	$.each(urlParams, function(i, name){
		if(name != 'direct'){
			if(reParam == ''){
				reParam = "?" + name + "=" + urlParams[name];
			}
			else{
				reParam += "&" + name+ "=" + urlParams[name];
			}
		}
	});

// history.replaceState("MM","mm","/" + reParam);

    $("#MemulType1").html("");
    if (sData.types1) _MAP_TYPE1_CODE = sData.types1;
    $.each(sData.MemulType1, function (index, entry) {
		/*
		 * strTmpHTML += '<li><span><input type="radio" name="type1"
		 * id="type1_' + (index + 1) + '" value="' + entry.code + '" ' +
		 * entry.select + ' data-fcode="' + entry.fcode + '"
		 * onclick="javascript:fnc_MemulType1_sel(this);">'; strTmpHTML += '<label
		 * for="type1_' + (index + 1) + '">' + entry.name + '</label></span></li>';
		 */

        if (entry.select == "checked") {
			// strTmpHTML += '<li class="on"><a href="javascript:;"
			// onclick="javascript:fnc_MemulType1_sel(this);" data-value="' +
			// entry.code + '" data-fcode="' + entry.fcode + '"> ' + entry.name
			// + '</a></li>\n';
			strTmpHTML += '<li class="on"><a href="javascript:;" onclick="javascript:fnc_MemulType1_sel(this);" data-value="' 
					+ entry.code + '" data-fcode="' + entry.fcode + '"> ' + (((entry.name).trim() != '펜션')? entry.name : '숙박/펜션') + '</a></li>\n';
            idNum = index + 1;

			_SEL_MAP_TYPE1_CODE = entry.fcode;
			_MAP_FCODE = entry.fcode;
        }
		else{
			// strTmpHTML += '<li><a href="javascript:;"
			// onclick="javascript:fnc_MemulType1_sel(this);" data-value="' +
			// entry.code + '" data-fcode="' + entry.fcode + '"> ' + entry.name
			// + '</a></li>\n';
			strTmpHTML += '<li><a href="javascript:;" onclick="javascript:fnc_MemulType1_sel(this);" data-value="' 
					+ entry.code + '" data-fcode="' + entry.fcode + '"> ' + (((entry.name).trim() != '펜션')? entry.name : '숙박/펜션') + '</a></li>\n';

		// console.log('>' + entry.name + '<');
		}
    });
    $("#MemulType1").html(strTmpHTML);

    // fnc_MemulType1_sel(document.getElementById("type1_" + idNum)); // 최초 로딩시
	// 호출
}
/*
 * ----------------------- ----------------------- SET MemulType2
 * -----------------------
 */
function fnc_Set_MemulType2(sData) {

	var newVilla = $("#MemulType2").parent().find("ul:nth-child(2)");
	if (newVilla) {
		$("#MemulType2").parent().find("ul:nth-child(2)").remove();
	}
	
    var strTmpHTML = "";
	var checkID = "";
    $("#MemulType2").html("");
    if (sData.types2) _MAP_TYPE2_CODE = sData.types2;
    $.each(sData.MemulType2, function (index, entry) {
		/*
		 * strTmpHTML += '<li><span><input type="radio" name="type2"
		 * id="type2_' + (index + 1) + '" value="' + sData.types1 + '|' +
		 * entry.code + '" ' + entry.select + ' data-fcode="' + entry.fcode + '"
		 * data-title="' + entry.name + '"
		 * onclick="javascript:fnc_MemulType2_sel(this);">'; strTmpHTML += '<label
		 * for="type2_' + (index + 1) + '">' + entry.name + '</label></span></li>';
		 * if (entry.select == "checked") {
		 * $("#MemulType1").parents(".sort").children(".title").text(entry.name);
		 * checkID = "type2_" + (index + 1); }
		 */

		 strTmpHTML += '<li><input type="checkbox" class="ico_comm_s inp_chk"  name="type2" id="type2_' + (index + 1) + '" value="' + sData.types1 + '|' + entry.code + '" ' + entry.select + ' data-fcode="' + entry.fcode + '" data-title="' + entry.name + '" onclick="javascript:fnc_MemulType2_sel(this);"><label for="type2_' + (index + 1) + '"><span class="ico_comm_s chk"></span>' + entry.name + '</label></li>';
    });    
       
    $("#MemulType2").html(strTmpHTML);
       
    // 빌라인 경우에는 "신축빌라" 항목을 강제로 추가한다.
    if ( sData.types2.substr(0,1) == "F") {
    	// if (isEmpty($("#MemulType2").parent().find('ul:nth-child(2)'))) {
    		var newVilla = $("#setNewVilla").val();

    		if (newVilla == "1") {
    			var newHtml = '<ul><li><input type="checkbox" class="ico_comm_s inp_chk"  name="typeNewVilla" id="typeNewVilla"  onclick="javascript:fnc_MemulNewVilla_sel(this);" checked><label for="typeNewVilla" checked><span class="ico_comm_s chk"></span>' + '신축만 보기' + '</label></li></ul>';
    			$("#MemulType2").parent().append(newHtml);
    			$("#typeNewVilla").prop("checked", true);
    			$("#typeNewVilla").attr("checked", true);
    		}
    		else {
    			var newHtml = '<ul><li><input type="checkbox" class="ico_comm_s inp_chk"  name="typeNewVilla" id="typeNewVilla"  onclick="javascript:fnc_MemulNewVilla_sel(this);" ><label for="typeNewVilla"><span class="ico_comm_s chk"></span>' + '신축만 보기' + '</label></li></ul>';
    			$("#MemulType2").parent().append(newHtml);
    			$("#typeNewVilla").prop("checked", false);
    			$("#typeNewVilla").attr("checked", false);
    		}
    		 $("#setNewVilla").val("");
    	// }
    }   
   
    
    
    // $("#ofilter_wrap_title").val(sData.title);

	/*
	 * if(checkID != ""){ $("#" + checkID).trigger("click"); }
	 */
}
/*
 * ----------------------- ----------------------- SET MemulStyle
 * -----------------------
 */
function fnc_Set_MemulStyle(sData) {
    var strTmpHTML = "";
	var checkID = "";
	var checkName = "";
	var tradeView = "";
    $("#MemulStyle").html("");
    if (sData.style) _MAP_STYLE_CODE = sData.style;
    $.each(sData.MemulStyle, function (index, entry) {
		strTmpHTML += '<li><input type="radio" class="ico_comm_s inp_rdo" name="type3" id="type3_' + (index) + '" value="' + sData.types1 + '|' + sData.types2 + '|' + entry.code + '" ' + entry.select + ' data-title="' + entry.name + '"  onclick="javascript:fnc_MemulType3_sel(this);">';
        strTmpHTML += '<label for="type3_' + (index) + '"><span class="ico_comm_s rdo"> </span>' + entry.name + '</label></li>';		
        $("#dealType_" + (index)).attr("value", sData.types1 + '|' + sData.types2 + '|' + entry.code);        
        if (entry.select == "checked") {
            checkID = "type3_" + (index);
			checkName = entry.name;
        }
	});
    
	if (checkName =="전체") {
		tradeView = "<span class='tag_comm2 a'>" + checkName +  "</span>";
	}
	else if (checkName =="매매") {
		tradeView = "<span class='tag_comm2 m'>" + checkName +  "</span>";
	}
	else if (checkName=="전세") {
		tradeView = "<span class='tag_comm2 j'>" + checkName +  "</span>";
	}
	else if (checkName =="월세") {
		tradeView = "<span class='tag_comm2 w'>" + checkName +  "</span>";
	}

    $("#MemulStyle").html(strTmpHTML);
	$("#MemulStyle").parents(".sort").children(".title").html( tradeView );

	if(_MAP_STYLE_CODE == 0){
		$("div.sort.detail").children(".cont").children("ul").children("li").eq(0).css("display", "");
		$("div.sort.detail").children(".cont").children("ul").children("li").eq(1).css("display", "none");
		$("div.sort.detail").children(".cont").children("ul").children("li").eq(2).css("display", "");
	}
	else if(_MAP_STYLE_CODE == 1 || _MAP_STYLE_CODE == 2){
		$("div.sort.detail").children(".cont").children("ul").children("li").eq(0).css("display", "");
		$("div.sort.detail").children(".cont").children("ul").children("li").eq(1).css("display", "none");
		$("div.sort.detail").children(".cont").children("ul").children("li").eq(2).css("display", "none");
	}
	else {
		$("div.sort.detail").children(".cont").children("ul").children("li").eq(0).css("display", "none");
		$("div.sort.detail").children(".cont").children("ul").children("li").eq(1).css("display", "");
		$("div.sort.detail").children(".cont").children("ul").children("li").eq(2).css("display", "");
	}
	
	if (checkName =="전체") {
		$("#dealType_0").prop("checked", true);
		$("#dealType_0").attr("checked", true);
		$("#dealType_1").prop("checked", false);
		$("#dealType_1").attr("checked", false);
		$("#dealType_2").prop("checked", false);
		$("#dealType_2").attr("checked", false);
		$("#dealType_3").prop("checked", false);
		$("#dealType_3").attr("checked", false);
	}
	else if (checkName =="매매") {
		$("#dealType_1").prop("checked", true);
		$("#dealType_1").attr("checked", true);
		$("#dealType_0").prop("checked", false);
		$("#dealType_0").attr("checked", false);
		$("#dealType_2").prop("checked", false);
		$("#dealType_2").attr("checked", false);
		$("#dealType_3").prop("checked", false);
		$("#dealType_3").attr("checked", false);
	}
	else if (checkName=="전세") {
		$("#dealType_2").prop("checked", true);
		$("#dealType_2").attr("checked", true);
		$("#dealType_0").prop("checked", false);
		$("#dealType_0").attr("checked", false);
		$("#dealType_1").prop("checked", false);
		$("#dealType_1").attr("checked", false);
		$("#dealType_3").prop("checked", false);
		$("#dealType_3").attr("checked", false);
	}
	else if (checkName =="월세") {
		$("#dealType_3").prop("checked", true);
		$("#dealType_3").attr("checked", true);
		$("#dealType_0").prop("checked", false);
		$("#dealType_0").attr("checked", false);
		$("#dealType_1").prop("checked", false);
		$("#dealType_1").attr("checked", false);
		$("#dealType_2").prop("checked", false);
		$("#dealType_2").attr("checked", false);
	}

	/*
	 * if(checkID != ""){ $("#" + checkID).trigger("click"); }
	 */
}
/*
 * ----------------------- ----------------------- SET Address
 * -----------------------
 */
function fnc_Set_Address_course(sData, pCartNo) {
    // setMapLevel(sData.Level,sData.CortarNo);

    if (sData.Level == "1") {	// 도/시 목록을 선택했을 때
        $("#div_selectArea a:nth-child(1)").text(sData.Addr1);
        $("#div_selectArea a:nth-child(1)").attr("href", "javascript:fnc_AddrList_sel('2', '10', '0');");
        $("#div_selectArea a:nth-child(3)").text("전체");
        $("#div_selectArea a:nth-child(3)").attr("href", "javascript:fnc_AddrList_sel('2', '" + sData.CortarNo.substring(0, 2) + "00000000', '1');");	// 시/군/구
																																					// 선택시
																																					// 현재
																																					// 선택한
																																					// 도/시에
																																					// 해당하는
																																					// 시/군/구
																																					// 목록
																																					// 표시하도록
																																					// 이벤트
        $("#div_selectArea a:nth-child(5)").text("전체");
        $("#div_selectArea a:nth-child(5)").attr("href", "javascript:fnc_AddrList_sel('2', '" + sData.CortarNo.substring(0, 2) + "00000000', '1');");	// 시군구가
																																					// 전체이면
																																					// 읍면동
																																					// 선택 시
																																					// 시군구
																																					// 전체로
        $("#div_selectArea span:nth-child(6)").css("display", "none");
		$("#div_selectArea a:nth-child(7)").css("display", "none");

    } else if (sData.Level == "2") {	// 시/군/구 목록을 선택했을 때
        $("#div_selectArea a:nth-child(3)").text(sData.Addr2);
        $("#div_selectArea a:nth-child(3)").attr("href", "javascript:fnc_AddrList_sel('2', '" + sData.CortarNo.substring(0, 5) + "00000', '1');");
        $("#div_selectArea a:nth-child(5)").text("전체");
        $("#div_selectArea a:nth-child(5)").attr("href", "javascript:fnc_AddrList_sel('2', '" + sData.CortarNo.substring(0, 5) + "00000', '2');");
        $("#div_selectArea span:nth-child(6)").css("display", "none");
		$("#div_selectArea a:nth-child(7)").css("display", "none");

    } else if (sData.Level == "3") {	// 읍/면/동 목록을 선택했을 때    	
        $("#div_selectArea a:nth-child(1)").text(sData.Addr1);
        $("#div_selectArea a:nth-child(1)").attr("href", "javascript:fnc_AddrList_sel('2', '10', '0');");
        $("#div_selectArea a:nth-child(3)").text(sData.Addr2);
        $("#div_selectArea a:nth-child(3)").attr("href", "javascript:fnc_AddrList_sel('2', '" + sData.CortarNo.substring(0, 5) + "00000', '1');");
        $("#div_selectArea a:nth-child(5)").text(sData.Addr3);
        $("#div_selectArea a:nth-child(5)").attr("href", "javascript:fnc_AddrList_sel('2', '" + sData.CortarNo.substring(0, 5) + "00000', '2');");
        $("#div_selectArea span:nth-child(6)").css("display", "none");
		$("#div_selectArea a:nth-child(7)").css("display", "none");

    } else {	// 전국 선택시
  /*
	 * $("#div_selectArea a:nth-child(1)").text("전국"); $("#div_selectArea
	 * a:nth-child(3)").attr("href", "javascript:fnc_AddrList_sel('10', '0');");
	 * $("#div_selectArea a:nth-child(3)").text("전체"); $("#div_selectArea
	 * a:nth-child(3)").attr("href", "javascript:fnc_AddrList_sel('" +
	 * sData.CortarNo.substring(0, 2) + "000000', '1');"); $("#div_selectArea
	 * a:nth-child(5)").text("전체"); $("#div_selectArea
	 * a:nth-child(5)").attr("href", "javascript:fnc_AddrList_sel('" +
	 * sData.CortarNo.substring(0, 2) + "000000', '2');");
	 */        
    }

}
function fnc_Set_Address(sData, pCartNo, pLevel, myAddrNm, clickMode) {	// myAddrNm :
																// 선택한 지역 이름
    if (pCartNo == "") {	// 최초로딩시
        $("#div_selectArea a:nth-child(1)").text(sData.Addr1);
        $("#div_selectArea a:nth-child(3)").text(sData.Addr2);
        $("#div_selectArea a:nth-child(5)").text(sData.Addr3);

		if(sData.Addr1 != "" && sData.Addr2 != "" && sData.Addr3 != "" && sData.ComplexNm != "" && isComplexView){
			$("#div_selectArea span:nth-child(6)").css("display", "");
			$("#div_selectArea a:nth-child(7)").css("display", "");
		}
		else{
			$("#div_selectArea span:nth-child(6)").css("display", "none");
			$("#div_selectArea a:nth-child(7)").css("display", "none");
		}

        fnc_Set_Address_course(sData, pCartNo);
        pCartNo = sData.CortarNo;

		var addrActText = ""
		addrActText = '<a href="javascript:fnc_AddrList_sel(\'1\', \'10\', \'0\');">' + sData.Addr1 + '<i class="ico_comm_s arrow4"></i></a>';
		if(sData.Addr2){
			addrActText += '<a href="javascript:">' + sData.Addr2 + '<i class="ico_comm_s arrow4"></i></a>';
		}
		if(sData.Addr3){
			addrActText += '<a href="javascript:">' + sData.Addr3 + '<i class="ico_comm_s arrow4"></i></a>';
		}

		if(sData.Addr1 != "" && sData.Addr2 != "" && sData.Addr3 != "" && sData.ComplexNm != "" && isComplexView){
		// if(sData.Addr1 != "" && sData.Addr2 != "" && sData.Addr3 != "" &&
		// sData.ComplexNm != ""){
			addrActText += '<a href="javascript:">' + sData.ComplexNm + '</a>';
		}

        $("#addressTitle").html(addrActText);
    }   

    if (clickMode == "1") {

    	$("#div_selectArea a:nth-child(1)").text(sData.Addr1);
    	if (sData.Addr2 == "") {
    		$("#div_selectArea a:nth-child(3)").attr("href", "javascript:fnc_AddrList_sel('2', '" + sData.CortarNo.substring(0, 2) + "00000000', '1');");
    		$("#div_selectArea a:nth-child(3)").text("전체");	
    		$("#div_selectArea a:nth-child(5)").attr("href", "javascript:fnc_AddrList_sel('2', '" + sData.CortarNo.substring(0, 2) + "00000000', '1');");
    	    $("#div_selectArea a:nth-child(5)").text("전체");
    	}
    	else {
    		$("#div_selectArea a:nth-child(3)").attr("href", "javascript:fnc_AddrList_sel('2', '" + sData.CortarNo.substring(0, 5) + "00000', '1');");
    		$("#div_selectArea a:nth-child(3)").text(sData.Addr2);

    		if (sData.Addr3 == "") { 
        		$("#div_selectArea a:nth-child(5)").attr("href", "javascript:fnc_AddrList_sel('2', '" + sData.CortarNo.substring(0, 5) + "00000', '2');");
        		$("#div_selectArea a:nth-child(5)").text("전체");
        	}
        	else {
        		$("#div_selectArea a:nth-child(5)").attr("href", "javascript:fnc_AddrList_sel('2', '" + sData.CortarNo.substring(0, 5) + "00000', '2');");
        		$("#div_selectArea a:nth-child(5)").text(sData.Addr3);
        	}
    	}    	
	}	
    else if (typeof myAddrNm != "undefined") {	// 목록 선택시
    	if (pLevel == "0" || pLevel == "1") {	// 전국, 도/시 목록을 선택했을 때
        	
    		$("#div_selectArea a:nth-child(1)").attr("href", "javascript:fnc_AddrList_sel('2', '10', '0');");
            $("#div_selectArea a:nth-child(1)").text(myAddrNm);
            $("#div_selectArea a:nth-child(3)").text("전체");
            $("#div_selectArea a:nth-child(3)").attr("href", "javascript:fnc_AddrList_sel('2', '" + pCartNo.substring(0, 2) + "00000000', '1');");	// 시/군/구
																																				// 선택시
																																				// 현재
																																				// 선택한
																																				// 도/시에
																																				// 해당하는
																																				// 시/군/구
																																				// 목록
																																				// 표시하도록
																																				// 이벤트
            $("#div_selectArea a:nth-child(5)").text("전체");
            $("#div_selectArea a:nth-child(5)").attr("href", "javascript:fnc_AddrList_sel('2', '" + pCartNo.substring(0, 2) + "00000000', '1');");	// 시군구가
																																				// 전체이면
																																				// 읍면동
																																				// 선택 시
																																				// 시군구
																																				// 전체로
            $("#div_selectArea span:nth-child(6)").css("display", "none");
			$("#div_selectArea a:nth-child(7)").css("display", "none");
        }
		else if (pLevel == "2") {	// 시/군/구 목록을 선택했을 때
			$("#div_selectArea a:nth-child(3)").text(myAddrNm);
            $("#div_selectArea a:nth-child(3)").attr("href", "javascript:fnc_AddrList_sel('2', '" + pCartNo.substring(0, 5) + "00000', '1');");
            $("#div_selectArea a:nth-child(5)").text("전체");
            $("#div_selectArea a:nth-child(5)").attr("href", "javascript:fnc_AddrList_sel('2', '" + pCartNo.substring(0, 5) + "00000', '2');");
            $("#div_selectArea span:nth-child(6)").css("display", "none");
			$("#div_selectArea a:nth-child(7)").css("display", "none");
        }
		else if (pLevel == "3") {	// 읍/면.동 목록을 선택했을 때
			$("#div_selectArea a:nth-child(5)").text(myAddrNm);
            $("#div_selectArea a:nth-child(5)").attr("href", "javascript:fnc_AddrList_sel('2', '" + pCartNo.substring(0, 5) + "00000', '2');");
			$("#div_selectArea a:nth-child(7)").text("전체");
			$("#div_selectArea a:nth-child(7)").attr("href", "javascript:fnc_AddrList_sel('2', '" + pCartNo + "', '3', '" + myAddrNm + "');");
			$("#div_selectArea span:nth-child(6)").css("display", "");
			$("#div_selectArea a:nth-child(7)").css("display", "");
		}

    }
    
    

    var strTmpHTML = "";

    if(pLevel == "3"){
		if(sData.ComplexCodeList != false){

			$("#msrch_wrap_selectarea_Addr").parent().parent().addClass("singleline");

			$.each(sData.ComplexCodeList, function (index, entry) {
				if (index == 0) {
					/*
					strTmpHTML += '<li><a href="javascript:fn_setFullView(\'' + pCartNo + '\',\'' + pLevel + '\',\'전체\',' + entry.upPosX + ',' + entry.upPosY + ');" style="font-weight:bold">' + myAddrNm +  ' 바로가기' + '</a></li>';	// 윗단계의
																																																										// 법정동코드로
					*/																																																				// 조회

					$('#div_selectAddrTotal').children().eq(0).attr("href", "javascript:fn_setFullView('" + pCartNo + "','" + pLevel + "','전체','" + entry.upPosX + "','" + entry.upPosY + "');").html('<span></span>' + myAddrNm + ' 바로가기');
					$('#div_selectAddrTotal').show();

				}

				if(_MAP_TYPE1_CODE == 'A01'){
					strTmpHTML += '<li><a href="javascript:;" onclick="fnc_searchSpecific(\'C\',\'아파트\',\'아파트\',\'' + sData.Addr1 + '\',\'' + sData.Addr2 + '\', \'' + sData.Addr3 + '\',\'\',\'' + entry.code + '\',\'' + entry.posX + '\',\'' + entry.posY + '\')">' + entry.name + '</a></li>';
				}
				else if((_MAP_TYPE1_CODE == 'A02' && _MAP_TYPE2_CODE.substring(0, 1) == 'D')){
					strTmpHTML += '<li><a href="javascript:;" onclick="fnc_searchSpecific(\'C\',\'오피스텔\',\'오피스텔\',\'' + sData.Addr1 + '\',\'' + sData.Addr2 + '\', \'' + sData.Addr3 + '\',\'\',\'' + entry.code + '\',\'' + entry.posX + '\', \'' + entry.posY + '\')">' + entry.name + '</a></li>';
				}
				else if (_MAP_TYPE1_CODE == 'A06') {
					strTmpHTML += '<li><a href="javascript:;" onclick="fnc_searchSpecific(\'C\',\'재개발\',\'재개발\',\'' + sData.Addr1 + '\',\'' + sData.Addr2 + '\', \'' + sData.Addr3 + '\',\'\',\'' + entry.code + '\',\'' + entry.posX + '\', \'' + entry.posY + '\');">' + entry.name + '</a></li>';
				}
				else{
					strTmpHTML += '<li><a href="javascript:;" >' + entry.name + '</a></li>';
				}
			});
		}
		else{
			// console.log(sData)
			// console.log(pCartNo)
			// console.log(pLevel)
			// console.log(myAddrNm)
		}
	}
	else{
		$("#msrch_wrap_selectarea_Addr").parent().parent().removeClass("singleline");

		$.each(sData.AddrCodeList, function (index, entry) {
			if (index == 0) {
				if (pLevel <= 0) {	// 도/시 제목을 선택했을 때
					// 전국은 서비스하지 않는다
					// strTmpHTML += '<li><a
					// href="javascript:fn_setFullView(\'1000000000\',\'0\',\'전국\','
					// + entry.upPosX + ',' + entry.upPosY + ');">전국</a></li>';
					// // 전국

					$('#div_selectAddrTotal').children().eq(0).attr("href", "").html('');
					$('#div_selectAddrTotal').hide();
					//$('#div_selectAddrTotal').children().eq(0).attr("href", "javascript:fn_setFullView('" + pCartNo.substring(0, 2) + "00000000" + "','" + pLevel + "','전체','" + entry.upPosX + "','" + entry.upPosY + "');").html('<span></span>' + entry.name + ' 바로가기');
					//$('#div_selectAddrTotal').show();

				} else if (pLevel == "1") {
					//strTmpHTML += '<li><a href="javascript:fn_setFullView(\'' + pCartNo.substring(0, 2) + "00000000" + '\',\'' + pLevel + '\',\'전체\',' + entry.upPosX + ',' + entry.upPosY + ');">전체</a></li>';	// 윗단계의 법정동코드로 조회
					$('#div_selectAddrTotal').children().eq(0).attr("href", "javascript:fn_setFullView('" + pCartNo.substring(0, 2) + "00000000" + "','" + pLevel + "','전체','" + entry.upPosX + "','" + entry.upPosY + "');").html('<span></span>' + $("#div_selectArea a:nth-child(1)").html() + ' 바로가기');
					$('#div_selectAddrTotal').show();

				} else {
					//strTmpHTML += '<li><a href="javascript:fn_setFullView(\'' + pCartNo.substring(0, 5) + "00000" + '\',\'' + pLevel + '\',\'전체\',' + entry.upPosX + ',' + entry.upPosY + ');">전체</a></li>';	// 윗단계의 법정동코드로 조회
					$('#div_selectAddrTotal').children().eq(0).attr("href", "javascript:fn_setFullView('" + pCartNo.substring(0, 5) + "00000" + "','" + pLevel + "','전체','" + entry.upPosX + "','" + entry.upPosY + "');").html('<span></span>' + $("#div_selectArea a:nth-child(3)").html() + ' 바로가기');
					$('#div_selectAddrTotal').show();

				}
			}
			var prtLevel = entry.level;
			if (prtLevel == "3") {
				if(_MAP_TYPE1_CODE == 'A01' || (_MAP_TYPE1_CODE == 'A02' && _MAP_TYPE2_CODE.substring(0, 1) == 'D') || _MAP_TYPE1_CODE == 'A06'   || _SEARCHCOMPLEX){
					strTmpHTML += '<li><a href="javascript:fnc_AddrList_sel(\'2\', \'' + entry.code + '\',\'' + entry.level + '\',\'' + entry.name + '\',' + entry.posX + ',' + entry.posY + ');">' + entry.name + '</a></li>';
				}
				else{
					strTmpHTML += '<li><a href="javascript:fn_setFullView(\'' + entry.code + '\',\'' + entry.level + '\',\'' + entry.name + '\',' + entry.posX + ',' + entry.posY + ');">' + entry.name + '</a></li>';
				}
			} else {
				strTmpHTML += '<li><a href="javascript:fnc_AddrList_sel(\'2\', \'' + entry.code + '\',\'' + entry.level + '\',\'' + entry.name + '\');">' + entry.name + '</a></li>';
			}
		});
	}

    $("#msrch_wrap_selectarea_Addr").html(strTmpHTML);
}


// 실거래가 더보기 처리 함수
function fn_realPriceMorePop() {

	$.ajax({
		url : "?_c=memul&_m=SiseComplexPriceInfo&_a=onlyRpriceMore",
		type : "GET",
		data : {
			ComplexCd : _SEL_COMPLEXCD,
			addr1 : _SEL_ADDR1,
			addr2 : _SEL_ADDR2,
			addr3 : _SEL_ADDR3,
			ComplexNm : _SEL_COMPLEXNM,
			//estatekind : 'A'
			estatekind : getCookie('fCode')
		},

		success : function(data, textStatus, jqXHR) {
			
			$('#templateHeader_realPriceMorePop').html(data);
			openLp('#lp_layout_realDealList');
		},

		error : function(jqXHR, textStatus, errorThrown) {
			// alert("err1" + errorThrown );
		}
	});
	
}

/*
 * ----------------------- ----------------------- SET 상세팝업
 * -----------------------
 */
function fnc_Set_Sticker(bData, sData, obj, cls) {
    var strTmpHTML = "";
    /*
	 * strTmpHTML += '<div class="maker_tip single">구)삼호1차</div>';
	 */
    $('.maker_tip').remove();

	strTmpHTML += '<div class="maker_tip">';

	if(cls == "CC"){ // cctv 정보
		var dataInfo = bData.id.split("|");
		strTmpHTML += '<strong class="title"><em>' + dataInfo[0]+ '</em></strong>';
		strTmpHTML += '<div class="cont">';
		strTmpHTML += '	<div class="info">';
		strTmpHTML += '				<ul>';
		strTmpHTML += '					<li><strong>카메라대수</strong><span>' + dataInfo[2] + '</span></li>';
		if (dataInfo[3] != "" && dataInfo[3] != "null" &&  dataInfo[3] != "undefined") {
			strTmpHTML += '					<li><strong>카메라화소수</strong><span>' + dataInfo[3] + '</span></li>';
		}
		if (dataInfo[4] != "" && dataInfo[4] != "null" &&  dataInfo[4] != "undefined") {
			strTmpHTML += '					<li><strong>설치목적</strong><span>' + dataInfo[4] + '</span></li>';
		}
		if (dataInfo[5] != "" && dataInfo[5] != "null" &&  dataInfo[5] != "undefined") {
			strTmpHTML += '					<li><strong>촬영방면정보</strong><span>' + dataInfo[5] + '</span></li>';
		}
		if (dataInfo[6] != "" && dataInfo[6] != "null" &&  dataInfo[6] != "undefined") {
			strTmpHTML += '					<li><strong>설치시기</strong><span>' + dataInfo[6] + '</span></li>';
		}
		strTmpHTML += '				</ul>';
		strTmpHTML += '	</div>';

		strTmpHTML += '</div>';

		strTmpHTML += '<a href="javascript:" class="pop_close">매물정보 팝업 닫기버튼</a>';
	}
	else if(cls == "BUN"){ // 분양 정보
		var dataId = bData.id;
		var dataInfo = sData;
		var dataInfoSplit = dataInfo.split("$");

		strTmpHTML += '	<strong class="title">' + dataInfoSplit[0] + '<em><a href="javascript:;" onclick="goView(\''+ dataId +'\');">' + dataInfoSplit[1] + '</a></em></strong>';
		strTmpHTML += '	<div class="cont">';
		strTmpHTML += '		<div class="info">';
		strTmpHTML += '			<strong class="juso">' + dataInfoSplit[2] + ' ' + dataInfoSplit[3] + ' ' + dataInfoSplit[4] + '  ' + dataInfoSplit[5] + '</strong>';
		strTmpHTML += '			<ul>';
		strTmpHTML += '				<li>';
		strTmpHTML += '					<strong>규모</strong>';
		strTmpHTML += '					<span>';
		strTmpHTML += '						' + dataInfoSplit[7] + '가구 ';
		strTmpHTML += '					</span>';
		strTmpHTML += '				</li>';
		strTmpHTML += '				<li>';
		strTmpHTML += '					<strong>면적</strong>';
		strTmpHTML += '					<span>';
		strTmpHTML += '						' + dataInfoSplit[6] + ' ';
		strTmpHTML += '					</span>';
		strTmpHTML += '				</li>';
		strTmpHTML += '				<li><span>' + dataInfoSplit[8] + '</span> | <span>' + dataInfoSplit[9] + '</span> | <span>' + dataInfoSplit[10] + '</span></li>';
		strTmpHTML += '			</ul>';
		strTmpHTML += '		</div>';
		strTmpHTML += '	</div>';
		strTmpHTML += '	<a href="javascript:" class="pop_close">매물정보 팝업 닫기버튼</a>';
	}
	else if(cls == "JIGU"){ // 지역개발정보
		var dataId = bData.id;
	
		var dataInfo = sData;
		var dataInfoSplit = dataInfo.split("$");

		strTmpHTML += '	<strong class="title"><em><a href="javascript:;" onclick="goView(\''+ dataId +'\');">' + dataInfoSplit[0] + '</a></em></strong>';
		strTmpHTML += '	<div class="cont">';
		strTmpHTML += '		<div class="info">';
		strTmpHTML += '			<strong class="juso">'+dataInfoSplit[1] +'</strong>';
		strTmpHTML += '			<ul>';
		strTmpHTML += '				<li>';
		strTmpHTML += '					<strong>사업기간</strong>';
		strTmpHTML += '					<span>';
		strTmpHTML += '						'+ dataInfoSplit[3] + ' ';
		strTmpHTML += '					</span>';
		strTmpHTML += '				</li>';
		strTmpHTML += '				<li>';
		strTmpHTML += '					<strong>사업단계</strong>';
		strTmpHTML += '					<span>';
		strTmpHTML += '						' + dataInfoSplit[2] + ' ';
		strTmpHTML += '					</span>';
		strTmpHTML += '				</li>';		
		strTmpHTML += '			</ul>';
		strTmpHTML += '		</div>';
		strTmpHTML += '	</div>';
		strTmpHTML += '	<a href="javascript:" class="pop_close">매물정보 팝업 닫기버튼</a>';
	}
	else{
		if (sData.학교아이디 == null) {
			if(cls == "BS"){
				var dataInfo = bData.id.split("|");
				strTmpHTML += '<strong class="title"><em>' + dataInfo[1] + '</em></strong>';
				strTmpHTML += '<div class="cont">';

				function bustypeColor(bustype) {
				    if (bustype === '간선버스') {
				        return 'n';
                    } else if (bustype === '광역버스') {
				        return 'k';
                    } else {
				        return 'm';
                    }
                }

				if (sData.length > 0) {
					strTmpHTML += '	<div class="info">';
					strTmpHTML += '				<ul>';
					var preData = "";
					var sumData = "";
					$.each(sData, function (index, entry) {
						if(preData == "" || preData == entry.노선유형){
							if(preData == ""){
								sumData = entry.노선번호;
							}
							else{
								sumData = sumData + ', ' + entry.노선번호
							}

							preData = entry.노선유형;
						}
						else{
							strTmpHTML += '				<li><strong class="bustype ' + bustypeColor(preData) + '">'+ preData +'</strong><span>'+ sumData +'</span></li>';

							if (index !== sData.length - 1) {
                                preData = "";
                                sumData = "";
                            } else {
                                preData = entry.노선유형;
                                sumData = entry.노선번호;
                            }
						}
					});

					if(sumData != ""){
						strTmpHTML += '				<li><strong class="bustype ' + bustypeColor(preData) + '">'+ preData +'</strong><span>'+ sumData +'</span></li>';
					}
					strTmpHTML += '				</ul>';
					strTmpHTML += '	</div>';
				}

				strTmpHTML += '</div>';
				strTmpHTML += '<a href="javascript:" class="pop_close">매물정보 팝업 닫기버튼</a>';
			}
			else{
				if (bData.id.substring(0, 1) >= 0 && bData.id.substring(0, 1) <= 9) {	// 지역
																						// 정보
					strTmpHTML += '<strong class="title"><em>' + bData.name + '</em></strong>';
					strTmpHTML += '<div class="cont">';

					if (sData.list.length > 0) {
						strTmpHTML += '	<div class="info">';
						strTmpHTML += '				<ul>';
						$.each(sData.list, function (index, entry) {
							strTmpHTML += '				<li><a href="#" onclick="fn_memul_list(\'' + bData.id + '\',\'' + entry.scode + '\',\'' + bData.CortarNo + '\',\'' + bData.name + '\');";><em>'+insertComma(entry.scount)+'<span>건</span></em>' + entry.stit + '</a></li>';
						});
						strTmpHTML += '				</ul>';
						strTmpHTML += '	</div>';
					} else {

						strTmpHTML += '	<div class="no_data_m"><p>등록된 매물이 없습니다. <span>찾아주세요를 이용하시면 매물을 빠르게 찾아드립니다.</span></p><a href="#" class="btn_type5" onclick="window.location.href=\'/?_c=ask&_m=askbuy\';">찾아주세요</a></div>';
					}
					strTmpHTML += '	</div>';

					// strTmpHTML += '<a href="javascript:;" class="btn"
					// onclick="fn_area_list(\'' + bData.id + '\',\'' +
					// _MAP_TYPE1_CODE + _MAP_TYPE2_CODE + _MAP_STYLE_CODE +
					// '\',\'' + bData.CortarNo + '\',\'' + bData.name +
					// '\');">지역/시세 정보</a>';
					strTmpHTML += '<a href="javascript:" class="btn" onclick="fn_memul_list(\'' + bData.id + '\',\'' + _MAP_TYPE1_CODE + _MAP_TYPE2_CODE + _MAP_STYLE_CODE + '\',\'' + bData.CortarNo + '\',\'' + bData.name + '\');">매물 총 ' + insertComma(bData.count) + '건</a>';
					strTmpHTML += '<a href="javascript:" class="pop_close">매물정보 팝업 닫기버튼</a>';

				} else {	// 단지 정보			
					strTmpHTML += '		<strong class="title">' + sData.complexInfo_MmTypeNm + '<em>';
					if ( bData.name.length > 20)
					{
						strTmpHTML += ''	+ bData.name.substring(0,19) + '...</em></strong>';
					}
					else
					{
						strTmpHTML += ''	+ bData.name + '</em></strong>';
					}

					strTmpHTML += '		<div class="cont">';

					if (typeof sData.complexInfo_addr != 'undefined') {
						

						// 재건축
						if (sData.매물상세분류코드.substring(0,1) == "C") {
							if (sData.complexInfo_imgFileNm != "") {
								strTmpHTML += '			<div class="thumb_wrap"><img src="https://image.r114.co.kr'+sData.complexInfo_imgFileNm+'" alt="건물이미지" style="max-width: 85px;" onError=javascript:this.src="http://image.r114.co.kr/W1/images/r114/2011/noImage.gif" /></div>';
							}
							strTmpHTML += '			<div class="info">';
							strTmpHTML += '				<strong class="juso">' + sData.complexInfo_addr + '</strong>';
							strTmpHTML += '				<ul>';
							strTmpHTML += '					<li>';
							strTmpHTML += '						<strong>계획규모</strong>';
							strTmpHTML += '						<span>';
							strTmpHTML += '							' + insertComma(sData.complexInfo_plan_cnt0) + '세대';
							// if (parseInt(sData.complexInfo_plan_cnt1) > 0 ||
							// sData.complexInfo_plan_cnt1 != "-" ){
								strTmpHTML += '							, ' + sData.complexInfo_plan_cnt1 + '동';
							// }
							// if (parseInt(sData.complexInfo_plan_cnt2) > 0 ||
							// sData.complexInfo_plan_cnt2 != "-" ){
								strTmpHTML += '							, ' + sData.complexInfo_plan_cnt2 + '층';
							// }
							strTmpHTML += '						</span>';
							strTmpHTML += '					</li>';						
							strTmpHTML += '					<li>';
							strTmpHTML += '						<strong>현재규모</strong>';
							strTmpHTML += '						<span>';
							strTmpHTML += '							' + insertComma(sData.complexInfo_cnt0) + '세대';

							if (parseInt(sData.complexInfo_cnt1) > 0 || sData.complexInfo_cnt1 != "-" ){
								strTmpHTML += '							, ' + sData.complexInfo_cnt1 + '동';
							}
							if (parseInt(sData.complexInfo_cnt2) > 0 || sData.complexInfo_cnt2 != "-" ){
								strTmpHTML += '							, ' + sData.complexInfo_cnt2 + '층';
							}
							strTmpHTML += '						</span>';
							strTmpHTML += '					</li>';
							if (sData.complexInfo_ibjuDt != "") {
								if (sData.complexInfo_ibjuDt.length > 6)
								{
									strTmpHTML += '					<li><strong>입주년월</strong><span>' + sData.complexInfo_ibjuDt.substring(0, 4) + '.' + sData.complexInfo_ibjuDt.substring(4, 6) + '.' + sData.complexInfo_ibjuDt.substring(6, 8) + '</span></li>';
								}
								else
								{
									strTmpHTML += '					<li><strong>입주년월</strong><span>' + sData.complexInfo_ibjuDt.substring(0, 4) + '.' + sData.complexInfo_ibjuDt.substring(4, 6) + '</span></li>';
								}

							}
							strTmpHTML += '					<li><strong>현재면적</strong><span>' + sData.complexInfo_areaStr + '</span></li>';
							strTmpHTML += '					<li><strong>매물</strong>';
							strTmpHTML += '						<span>';							
							strTmpHTML += '							매매<em><a href="javascript:fn_goComplexMemul(\'' + sData.complexInfo_cd + '\', \'\', \'\', \'\', \'\', \'\', \'1\', \'\', \'\', \'0\')" style=\'text-decoration:underline\'>' + insertComma(bData.countM) + '</a></em>';
							strTmpHTML += '							전세<em><a href="javascript:fn_goComplexMemul(\'' + sData.complexInfo_cd + '\', \'\', \'\', \'\', \'\', \'\', \'2\', \'\', \'\', \'0\')" style=\'text-decoration:underline\'>' + insertComma(bData.countJ) + '</a></em>';
							strTmpHTML += '							월세<em><a href="javascript:fn_goComplexMemul(\'' + sData.complexInfo_cd + '\', \'\', \'\', \'\', \'\', \'\', \'3\', \'\', \'\', \'0\')" style=\'text-decoration:underline\'>' + insertComma(bData.countW) + '</a></em>';							
							strTmpHTML += '						</span>';
							strTmpHTML += '					</li>';
							strTmpHTML += '				</ul>';
							strTmpHTML += '			</div>';						
						}
						// 재개발
						else if (sData.매물상세분류코드.substring(0,1) == "I") {
							if (sData.complexInfo_imgFileNm != "") {
								strTmpHTML += '			<div class="thumb_wrap"><img src="https://image.r114.co.kr'+sData.complexInfo_imgFileNm+'" alt="건물이미지" style="max-width: 85px;" onError=javascript:this.src="http://image.r114.co.kr/W1/images/r114/2011/noImage.gif" /></div>';
							}
							strTmpHTML += '			<div class="info">';
							strTmpHTML += '				<strong class="juso">' + sData.complexInfo_addr + '</strong>';
							strTmpHTML += '				<ul>';
							strTmpHTML += '					<li>';
							strTmpHTML += '						<strong>계획규모</strong>';
							strTmpHTML += '						<span>';
							strTmpHTML += '							' + insertComma(sData.complexInfo_cnt0) + '세대';

							if (parseInt(sData.complexInfo_cnt1) > 0 || sData.complexInfo_cnt1 != "-" ){
								strTmpHTML += '							, ' + sData.complexInfo_cnt1 + '동';
							}
							if (parseInt(sData.complexInfo_cnt2) > 0 || sData.complexInfo_cnt2 != "-" ){
								strTmpHTML += '							, ' + sData.complexInfo_cnt2 + '층';
							}
							strTmpHTML += '						</span>';
							strTmpHTML += '					</li>';
							strTmpHTML += '					<li><strong>현재면적</strong><span>' + sData.complexInfo_landsize + '</span></li>';
							strTmpHTML += '					<li><strong>매물</strong>';
							strTmpHTML += '						<span>';
							strTmpHTML += '							매매<em><a href="javascript:fn_goComplexMemul(\'' + sData.complexInfo_cd + '\', \'\', \'\', \'\', \'\', \'\', \'1\', \'\', \'\', \'0\')" style=\'text-decoration:underline\'>' + insertComma(bData.countM) + '</a></em>';
							strTmpHTML += '							전세<em><a href="javascript:fn_goComplexMemul(\'' + sData.complexInfo_cd + '\', \'\', \'\', \'\', \'\', \'\', \'2\', \'\', \'\', \'0\')" style=\'text-decoration:underline\'>' + insertComma(bData.countJ) + '</a></em>';
							strTmpHTML += '							월세<em><a href="javascript:fn_goComplexMemul(\'' + sData.complexInfo_cd + '\', \'\', \'\', \'\', \'\', \'\', \'3\', \'\', \'\', \'0\')" style=\'text-decoration:underline\'>' + insertComma(bData.countW) + '</a></em>';	
							strTmpHTML += '						</span>';
							strTmpHTML += '					</li>';
							strTmpHTML += '				</ul>';
							strTmpHTML += '			</div>';
						}
						// 그 외 단지
						else	{

							if (sData.noSalePrice != "noPrice") {

								strTmpHTML += '			<div class="cdm_price">';
								strTmpHTML += '				<span>최근실거래가</span>';
								strTmpHTML += '				<em>';

								if (sData.거래종류 == '전체') {
									strTmpHTML += '					<span class="tag_comm2 m">매매</span> ';
									strTmpHTML += '					<span class="price_area fc_blue4">' + sData.dealPrice1 + '</span>만원 ';
								} else if (sData.거래종류 == '매매') {
									strTmpHTML += '					<span class="tag_comm2 m">매매</span> ';
									strTmpHTML += '					<span class="price_area fc_blue4">' + sData.dealPrice1 + '</span>만원 ';
								} else if (sData.거래종류 == '전세') {
									strTmpHTML += '					<span class="tag_comm2 j">전세</span> ';
									strTmpHTML += '					<span class="price_area fc_blue4">' + sData.dealPrice1 + '</span>만원 ';
								} else if (sData.거래종류 == '월세') {
									strTmpHTML += '					<span class="tag_comm2 w">월세</span>  ';
									strTmpHTML += '					<span class="price_area fc_blue4">' + sData.dealPrice2 + '</span>/<span class="price_area fc_blue4">' + sData.dealPrice1 + '</span>만원 ';
								}
								
								
								strTmpHTML += '					<span class="area_size">(' + sData.sizeView + sData.type + '㎡)</span></em>';
								strTmpHTML += '				<a href="javascript:;" onclick="fn_realPriceMorePop()" class="btn_type2">더보기</a>';
								strTmpHTML += '			</div>';


							}
							



							if (sData.complexInfo_imgFileNm != "") {
								strTmpHTML += '			<div class="thumb_wrap"><img src="https://image.r114.co.kr'+sData.complexInfo_imgFileNm+'" alt="건물이미지" style="max-width: 85px;" onError=javascript:this.src="http://image.r114.co.kr/W1/images/r114/2011/noImage.gif" /></div>';
							}
							strTmpHTML += '			<div class="info">';
							strTmpHTML += '				<strong class="juso">' + sData.complexInfo_addr + '</strong>';
							strTmpHTML += '				<ul>';
							strTmpHTML += '					<li>';
							strTmpHTML += '						<strong>규모</strong>';
							strTmpHTML += '						<span>';
							strTmpHTML += '							' + insertComma(sData.complexInfo_cnt0) + '세대';

							if (parseInt(sData.complexInfo_cnt1) > 0 || sData.complexInfo_cnt1 != "-" ){
								strTmpHTML += '							, ' + sData.complexInfo_cnt1 + '동';
							}
							if (parseInt(sData.complexInfo_cnt2) > 0 || sData.complexInfo_cnt2 != "-" ){
								strTmpHTML += '							, ' + sData.complexInfo_cnt2 + '층';
							}
							strTmpHTML += '						</span>';
							strTmpHTML += '					</li>';
							if (sData.complexInfo_ibjuDt != "") {
								if (sData.complexInfo_ibjuDt.length > 6)
								{
									strTmpHTML += '					<li><strong>입주</strong><span>' + sData.complexInfo_ibjuDt.substring(0, 4) + '.' + sData.complexInfo_ibjuDt.substring(4, 6) + '.' + sData.complexInfo_ibjuDt.substring(6, 8) + '</span></li>';
								}
								else
								{
									strTmpHTML += '					<li><strong>입주</strong><span>' + sData.complexInfo_ibjuDt.substring(0, 4) + '.' + sData.complexInfo_ibjuDt.substring(4, 6) + '</span></li>';
								}
							}
							else {
								strTmpHTML += '					<li><strong>입주</strong><span>' + '-' + '</span></li>';
							}
							strTmpHTML += '					<li><strong>면적</strong><span>' + sData.complexInfo_areaStr + '</span></li>';
							strTmpHTML += '					<li><strong>매물</strong>';
							strTmpHTML += '						<span>';
							strTmpHTML += '							매매<em><a href="javascript:fn_goComplexMemul(\'' + sData.complexInfo_cd + '\', \'\', \'\', \'\', \'\', \'\', \'1\', \'\', \'\', \'0\')" style=\'text-decoration:underline\'>' + insertComma(bData.countM) + '</a></em>';
							strTmpHTML += '							전세<em><a href="javascript:fn_goComplexMemul(\'' + sData.complexInfo_cd + '\', \'\', \'\', \'\', \'\', \'\', \'2\', \'\', \'\', \'0\')" style=\'text-decoration:underline\'>' + insertComma(bData.countJ) + '</a></em>';
							strTmpHTML += '							월세<em><a href="javascript:fn_goComplexMemul(\'' + sData.complexInfo_cd + '\', \'\', \'\', \'\', \'\', \'\', \'3\', \'\', \'\', \'0\')" style=\'text-decoration:underline\'>' + insertComma(bData.countW) + '</a></em>';	
							strTmpHTML += '						</span>';
							strTmpHTML += '					</li>';
							strTmpHTML += '				</ul>';
							strTmpHTML += '			</div>';
						}
					}

					strTmpHTML += '		</div>';

					if ( sData.매물상세분류코드.substring(0,3) == "A01") {	// 아파트
						if (sData.매물상세분류코드.substring(0,5) == "A0103"){
						}
						else{
							strTmpHTML += '<a href="javascript:;" class="btn" onclick="window.location.href=\'/?_c=research&_m=analysis_apt&aptcode=' + bData.id + '\';">아파트심층분석보고서</a>';
						}
					}
					else if (sData.매물상세분류코드.substring(0,3) == "A02") {	// 오피스텔
						strTmpHTML += '<a href="javascript:" class="btn" onclick="window.location.href=\'/?_c=research&_m=analysis_apt&optelcode=' + bData.id + '\';">오피스텔심층분석보고서</a>';
					}

					var mmCode = fn_comm_setMmCode(2,bData.mmTypeNm);
					if (	getCookie('Memul_MemulType1') == "A01" && getCookie('Memul_MemulType2') == "00")
					{
						mmCode = "A0100";
					}
					if (getCookie('Memul_MemulType1') == "A02" && getCookie('Memul_MemulType2') == "00")
					{
						mmCode = "A0200";
					}
					if (mmCode == "") {
						mmCode = "A0100";
					}

					setCookie("Memul%5FComplexCd", bData.id);

					// strTmpHTML += '<a href="javascript:;" class="btn"
					// onclick="fn_area_list(\'' + bData.id + '\',\'' + mmCode +
					// _MAP_STYLE_CODE + '\',\'' + bData.CortarNo + '\',\'' +
					// bData.name + '\');">단지 시세/상세 정보</a>';
					strTmpHTML += '<a href="javascript:" class="pop_close">매물정보 팝업 닫기버튼</a>';
				}
			}
		}
		else {	// 학교 정보

			var eduStep = "";
			if (sData.gbn == "01") {
				eduStep = "1";
			} else if (sData.gbn == "02") {
				eduStep = "2";
			} else if (sData.gbn == "11") {
				eduStep = "3";
			} else if (sData.gbn == "12") {
				eduStep = "4";
			} else if (sData.gbn == "13") {
				eduStep = "5";
			}

			var detailTitle = "학교상세정보";

			if(eduStep == "1" || eduStep == "2"){ // 어린이집, 유치원 상세보기 버튼 타이틀 변경
				var detailTitle = "상세정보";
			}

			strTmpHTML += '		<strong class="title"><em>' + sData.학교명 + ' 정보</em></strong>';
			strTmpHTML += '		<div class="cont">';
			strTmpHTML += '			<div class="info">';
			strTmpHTML += '				<strong class="juso">' + sData.소재지지번주소 + '</strong>';
			strTmpHTML += '				<ul>';

			if(sData.전화번호 != ""){
				strTmpHTML += '					<li><strong>전화번호</strong><span>' + sData.전화번호 + '</span></li>';
			}

			strTmpHTML += '				</ul>';
			strTmpHTML += '			</div>';
			strTmpHTML += '		</div>';
			if(sData.학교알리미아이디 != "" && sData.학교알리미아이디){
				strTmpHTML += '		<a href="javascript:" class="btn" onclick="viewEducationInfoDetail(\'#lp_layout2\', \''+ eduStep +'\', \''+ sData.학교알리미아이디 +'\');">' + detailTitle + '</a>';
			}
			strTmpHTML += '		<a href="javascript:" class="pop_close">매물정보 팝업 닫기버튼</a>';
		}
	}

	strTmpHTML += '	</div>';

	/*
	 * if (window.history && window.history.pushState) {
	 * window.history.pushState('forward', 'open_landInfo', location.href);
	 * $(window).on('popstate', function () { backMap = 0;
	 * fn_Close_sticker_info2(); }); } backMap = 0;
	 */

	$("#map_layout").append(strTmpHTML);
	$(".maker_tip").css('zIndex', '100');

	if(typeof _ISLOTS != "undefined"){
		$(".maker_tip").css('top', '68px');
		$(".maker_tip").css('right', '315px');
	}
	else{
	    var markerTip = $(".maker_tip"),
            markerTipHeight = markerTip.height();

	    markerTip.css({
            top: '50%',
            right: '330px',
            marginTop: -((markerTipHeight / 2) + ((bData.isCodeMemul && bData.isCodeMemul === 'Y') ? 0 : 25)) + 'px'    // 매물
																														// 마커인
																														// 경우에는
																														// 0,
																														// 다른
																														// 경우에는
																														// 25
        });
	}

	/*
	 * if(obj){ var sticker =
	 * $($(obj)[0].a.childNodes[$(obj)[0].a.childNodes.length - 1]);
	 * sticker.append(strTmpHTML);
	 * 
	 * //팝업위치 잡기 if(_MAP_LEVEL == 3){
	 * $('.maker_tip').css('top',-($('.maker_tip').height()/2-10));
	 * $('.maker_tip').css('right','8px'); }else{
	 * $('.maker_tip').css('top',-($('.maker_tip').height()/2-18));
	 * $('.maker_tip').css('right','8px'); } } else{ var sticker =
	 * $('#sticker_'+bData.id); sticker.append(strTmpHTML);
	 * 
	 * //팝업위치 잡기 if(_MAP_LEVEL == 3){
	 * $('.maker_tip').css('top',-($('.maker_tip').height()/2-10));
	 * $('.maker_tip').css('right','43px'); }else{
	 * $('.maker_tip').css('top',-($('.maker_tip').height()/2-18));
	 * $('.maker_tip').css('right','53px'); } }
	 * 
	 * sticker.parent().css('zIndex', '100');
	 */
}
/*
 * ----------------------- ----------------------- 기타 함수들
 * -----------------------
 */
function isNull(obj) {
    return (typeof obj != "undefined" && obj != null && obj != "") ? false : true;
}
// /////////////////////////////////////////////////////////////
function fn_comm_addressmaker_to_id(SourceID, TargetID, txtParam, txtLimitLevel) {
    // 아직 완료 전
    txtInput = txtParam;
    limitLevel = txtLimitLevel;	// '3'이면 시구동 전체 제외

    var BEF_key_val = "";

    $("#" + SourceID).keyup(function (e) {
        if (BEF_key_val != $(this).val()) {
            BEF_key_val == $(this).val();
        }
        if ($(this).val() == "") {
            $(this).parent().removeAttr("style");
        } else if (e.keyCode == 13) {	// 엔터시 자동완성목록 표시
            $(this).parent().css('display', 'block');
        }
    });

}
var mapMemuls = "";	// 조회했던 매물 목록들
function Set_Map(Sdata) {
	// ADDR SETTING
    strTmpHTML = "";
    var MapCenter;
    var MemulData;
    var MemulInfo;
    var MapLevel;
    if (!Sdata) {
        MapCenter = [37.45035361841671, 127.14563088114815];
        MemulData = false;
    } else {
        // /////////////////////////////
        // 수정해야 함!!!!!!!!!!
        // /////////////////////////////
        // console.log("문제있는 fnc_Set_Address")
        fnc_Set_Address(Sdata, "", "");
        // /////////////////////////////
        MapCenter = [parseFloat(Sdata.gisy), parseFloat(Sdata.gisx)];
        MemulData = Sdata.MemulList;
        MemulInfo = Sdata.MemulInfo;
        for (var i = 0; i < MemulData.length; i++) {
            mapMemuls += MemulData[i].id + ",";
        }
        MapLevel = Sdata.AddrCodeList[0].mapLevel;
        if (Sdata.CortarNo == "1000000000") MapLevel = Sdata.AddrCodeList[0].upMapLevel;	// 전국일경우
    }
    //_GIS_SetConfig("center", MapCenter);	// 기본 셋팅 변경
    // _GIS_SetConfig("level",Sdata.AddrCodeList[0].upMapLevel);
    // _GIS_SetConfig("zoomChanged",MAP_EVENT_ZOOM); // 확대 또는 축소시 실행될 사용자 함수
    // _GIS_SetConfig("dragEnd",MAP_EVENT_DRAG); // 이동시 실행될 사용자 함수

    // 지도 줌레벨이나 중심점 변경시 마커의 팝업 삭제
    /*_GIS_SetConfig("zoomChanged", function() {
        $(document).find('.pop_close').trigger('click');
    });
    _GIS_SetConfig("centerChanged", function() {
        $(document).find('.pop_close').trigger('click');
    });*/

	//_GIS_SetConfig("lawAddress", true);	// 법정동(기본값), 행정동 주소
	//_GIS_MakeMap("map", false);	// 맵을 그림
	
	if (mapSize == 'downsize')	{
		downsizeMap();
	} else {
		upsizeMap();
	}


    _GIS_toggle = true;

    // tempMoveX = Sdata.gisx; // 최초 로딩시 조회한 좌표를 중심으로 이동
    // tempMoveY = Sdata.gisy;
    firstMoveX = Sdata.gisx;
    firstMoveY = Sdata.gisy;

    // drawPriceInfos(MemulData, MemulInfo, MapLevel); // 맵에 스티커 표시
   /* if (!MemulData) {
    	if (mapFirstLoadGbn == "none") {
    		fnc_alert("매물이 없습니다.");
    	}
    }*/
	//_GIS_MAP.level(MapLevel);	// drawPriceInfos 대신에

	// _GIS_MAP.eventChanged("click", fn_Close_sticker_info, true);
    // _GIS_MAP.eventChanged("dragstart", fn_Close_sticker_info, true);
    // _GIS_MAP.eventChanged("click", MAP_EVENT_DRAG, true);
    // _GIS_MAP.eventChanged("bounds_changed", MAP_EVENT_DRAG, true);
    //_GIS_MAP.eventChanged("zoom_changed", MAP_EVENT_ZOOM, true);
    //_GIS_MAP.eventChanged("dragend", MAP_EVENT_DRAG, true);
}

function Set_MapLots(Sdata) {
    // ADDR SETTING
    strTmpHTML = "";
    var MapCenter;
    var MemulData;
    var MemulInfo;
    var MapLevel;

	if (!Sdata) {
        MapCenter = [37.45035361841671, 127.14563088114815];
    } else {
		MapCenter = [parseFloat(Sdata.gisy), parseFloat(Sdata.gisx)];
		MapLevel = Sdata.AddrCodeList[0].mapLevel;

		/*
		 * fnc_Set_Address(Sdata, "", "");
		 * fnc_AddrList_sel('1100000000','1','서울특별시');
		 */
    }

    //_GIS_SetConfig("center", MapCenter);	// 기본 셋팅 변경
    // _GIS_SetConfig("level",Sdata.AddrCodeList[0].upMapLevel);
    // _GIS_SetConfig("zoomChanged",MAP_EVENT_ZOOM); // 확대 또는 축소시 실행될 사용자 함수
    // _GIS_SetConfig("dragEnd",MAP_EVENT_DRAG); // 이동시 실행될 사용자 함수
    //_GIS_SetConfig("lawAddress", true);	// 법정동(기본값), 행정동 주소
	// _GIS_SetConfig("draggable", false); // 이동, 확대 축소
    //_GIS_MakeMap("map", false);	// 맵을 그림

    _GIS_toggle = true;

    // tempMoveX = Sdata.gisx; // 최초 로딩시 조회한 좌표를 중심으로 이동
    // tempMoveY = Sdata.gisy;
    firstMoveX = Sdata.gisx;
    firstMoveY = Sdata.gisy;

    // drawPriceInfos(MemulData, MemulInfo, MapLevel); // 맵에 스티커 표시
	//_GIS_MAP.level(MapLevel);	// drawPriceInfos 대신에

    // _GIS_MAP.eventChanged("click", fn_Close_sticker_info, true);
    // _GIS_MAP.eventChanged("dragstart", fn_Close_sticker_info, true);
    // _GIS_MAP.eventChanged("click", MAP_EVENT_DRAG, true);
    // _GIS_MAP.eventChanged("bounds_changed", MAP_EVENT_DRAG, true);
    _GIS_MAP.eventChanged("zoom_changed", MAP_EVENT_ZOOM_LOTS, true);
    _GIS_MAP.eventChanged("dragend", MAP_EVENT_DRAG_LOTS, true);

	if (!Sdata) {
    } else {
		setTimeout(function () {
	    	var customPoints = [];
			if (Sdata.bunList.length > 0) {
				$.each(Sdata.bunList, function (index, entry) {
					var bunInfo = {
						id: entry.기본정보코드,
						pos: [entry.지도좌표Y, entry.지도좌표X],
						image: {
							src: "/images/common/maker_point.png",
							size: [22, 33], option: { offset: [11, 33] }	// size
																			// height
																			// =
																			// offset
																			// height
																			// //
																			// 좌표가
																			// 안맞으면
																			// offset
																			// 조정
						},
						click: fn_Open_sticker_info_marker_Bun // 하단에 뜨는 매물 상세
																// 레이어
					};
					// var bunInfo = [entry.지도좌표Y, entry.지도좌표X];
					customPoints.push(bunInfo);
				});
				_GIS_MAP.setMarkersReturnMarker(customPoints, false);	// true:드래그여부
			}
    	},1);	// 스티커보다 늦게 그리기위해..
    }
}




function ReSet_MapLots(Sdata) {
	if (!Sdata) {
    } else {
    	fn_Remove_sticker_info();				// 2017-12-18 김선호 추가.
    	setTimeout(function () {
	    	var customPoints = [];
			if (Sdata.bunList.length > 0) {
				$.each(Sdata.bunList, function (index, entry) {
					var bunInfo = {
						id: entry.기본정보코드,
						pos: [entry.지도좌표Y, entry.지도좌표X],
						image: {
							src: "/images/common/maker_point.png",
							size: [22, 33], option: { offset: [11, 33] }	// size
																			// height
																			// =
																			// offset
																			// height
																			// //
																			// 좌표가
																			// 안맞으면
																			// offset
																			// 조정
						},
						click: fn_Open_sticker_info_marker_Bun // 하단에 뜨는 매물 상세
																// 레이어
					};
					// var bunInfo = [entry.지도좌표Y, entry.지도좌표X];
					customPoints.push(bunInfo);
				});
				_GIS_MAP.clearMarkers();
				_GIS_MAP.setMarkersReturnMarker(customPoints, false);	// true:드래그여부
			}
			else {
				_GIS_MAP.clearMarkers();
			// _GIS_MAP.setMarkersReturnMarker(customPoints, false); //
			// true:드래그여부
			}
    	},1);	// 스티커보다 늦게 그리기위해..
    }
}

function Set_MapJigu(Sdata) {
    // ADDR SETTING
    strTmpHTML = "";
    var MapCenter;
    var MemulData;
    var MemulInfo;
    var MapLevel;

	if (!Sdata) {
        MapCenter = [37.45035361841671, 127.14563088114815];
    } else {
		MapCenter = [parseFloat(Sdata.gisy), parseFloat(Sdata.gisx)];
		MapLevel = Sdata.AddrCodeList[0].mapLevel;

		/*
		 * fnc_Set_Address(Sdata, "", "");
		 * fnc_AddrList_sel('1100000000','1','서울특별시');
		 */
    }

    //_GIS_SetConfig("center", MapCenter);	// 기본 셋팅 변경
    // _GIS_SetConfig("level",Sdata.AddrCodeList[0].upMapLevel);
    // _GIS_SetConfig("zoomChanged",MAP_EVENT_ZOOM); // 확대 또는 축소시 실행될 사용자 함수
    // _GIS_SetConfig("dragEnd",MAP_EVENT_DRAG); // 이동시 실행될 사용자 함수
    //_GIS_SetConfig("lawAddress", true);	// 법정동(기본값), 행정동 주소
	// _GIS_SetConfig("draggable", false); // 이동, 확대 축소
    //_GIS_MakeMap("map", false);	// 맵을 그림

    _GIS_toggle = true;

    // tempMoveX = Sdata.gisx; // 최초 로딩시 조회한 좌표를 중심으로 이동
    // tempMoveY = Sdata.gisy;
    firstMoveX = Sdata.gisx;
    firstMoveY = Sdata.gisy;

    // drawPriceInfos(MemulData, MemulInfo, MapLevel); // 맵에 스티커 표시
	//_GIS_MAP.level(MapLevel);	// drawPriceInfos 대신에

    // _GIS_MAP.eventChanged("click", fn_Close_sticker_info, true);
    // _GIS_MAP.eventChanged("dragstart", fn_Close_sticker_info, true);
    // _GIS_MAP.eventChanged("click", MAP_EVENT_DRAG, true);
    // _GIS_MAP.eventChanged("bounds_changed", MAP_EVENT_DRAG, true);
    _GIS_MAP.eventChanged("zoom_changed", MAP_EVENT_ZOOM_LOTS, true);
    _GIS_MAP.eventChanged("dragend", MAP_EVENT_DRAG_LOTS, true);

	if (!Sdata) {
    } else {
		setTimeout(function () {
	    	var customPoints = [];
			if (Sdata.bunList.length > 0) {
				$.each(Sdata.bunList, function (index, entry) {
					alert(entry.지구지정번호)
					var bunInfo = {
						id: entry.지구지정번호,
						pos: [entry.지도좌표Y, entry.지도좌표X],
						image: {
							src: "/images/common/maker_point.png",
							size: [22, 33], option: { offset: [11, 33] }	// size
																			// height
																			// =
																			// offset
																			// height
																			// //
																			// 좌표가
																			// 안맞으면
																			// offset
																			// 조정
						},
						click: fn_Open_sticker_info_marker_Jigu // 하단에 뜨는 매물 상세
																// 레이어
					};
					// var bunInfo = [entry.지도좌표Y, entry.지도좌표X];
					customPoints.push(bunInfo);
				});
				_GIS_MAP.setMarkersReturnMarker(customPoints, false);	// true:드래그여부
			}
    	},1);	// 스티커보다 늦게 그리기위해..
    }
}

function ReSet_MapJigu(Sdata) {
	if (!Sdata) {
    } else {
    	fn_Remove_sticker_info();				// 2017-12-18 김선호 추가.
    	setTimeout(function () {
	    	var customPoints = [];
			if (Sdata.bunList.length > 0) {
				$.each(Sdata.bunList, function (index, entry) {
					var bunInfo = {
						id:entry.지구지정번호,
						pos: [entry.지도좌표Y, entry.지도좌표X],
						image: {
							src: "/images/common/maker_point.png",
							size: [22, 33], option: { offset: [11, 33] }	// size
																			// height
																			// =
																			// offset
																			// height
																			// //
																			// 좌표가
																			// 안맞으면
																			// offset
																			// 조정
						},
						click: fn_Open_sticker_info_marker_Jigu // 하단에 뜨는 매물 상세
																// 레이어
					};
					// var bunInfo = [entry.지도좌표Y, entry.지도좌표X];
					customPoints.push(bunInfo);
				});
				_GIS_MAP.clearMarkers();
				_GIS_MAP.setMarkersReturnMarker(customPoints, false);	// true:드래그여부
			}
			else {
				_GIS_MAP.clearMarkers();
			// _GIS_MAP.setMarkersReturnMarker(customPoints, false); //
			// true:드래그여부
			}
    	},1);	// 스티커보다 늦게 그리기위해..
    }
}

function clearOverlays() {
    _GIS_MAP.clearCustomOverlays();
}

/*
 * 지도상에 표기되는 스티커의 생성 및 클릭 이벤트 처리
 */
var dataCnt = 0;
function drawPriceInfos(arrAREA, MemulInfo, paramMapLevel) {

	doneDrawSticker = false;

	if (firstFilterData != "") {	// 필터 기록이 존재하면
    	fnc_filter_sel(firstFilterData);	// 필터 매물 실행
    	setCookie("Memul%5FFilter",firstFilterData);	// 지도를 그릴때 초기화를 했으므로 다시
														// 셋팅
    	firstFilterData = "";
    	doneDrawSticker = true;
    	return false;
    }

    if (typeof paramMapLevel != "undefined") {
        mapLevel = paramMapLevel;
    }
    // arrAREA id는 선택사항
    // [
    // {id: 0, name:'수정구', pos:[37.45035361841671, 127.14563088114815],
	// upDown:'up', percent: 12, count: 1520},
    // {id: 1, name:'중원구', pos:[37.43057736389595, 127.13725426750626],
	// upDown:'down', percent: 10, count: 110},
    // {id: 2, name:'분당구', pos:[37.3827261234051, 127.11884119293418],
	// upDown:'hold', percent: 0, count: 240}
    // ]
    if (mapFullView) {	// false:제자리에 있을 것
		_arrAREAVal = new Array();
		_arrAREAVal[0] = arrAREA;
		dataCnt = 1;
        clearOverlays();
    }
	else{
		if(dataCnt < 5){
			_arrAREAVal[dataCnt] = arrAREA;
			dataCnt ++;
		}
		else{
			_arrAREAVal[0] = arrAREA;
			dataCnt = 1;
		}
		// _arrAREAVal = arrAREA;
	}

    var MemulInfoType;
    var pointsType = 'markerLv' + (Number(_MAP_LEVEL) + 1);
    var showNameText = true;
    var showPercentText = true;

    var isEnd = false;
    var secondFn = PriceInfo_Stiker_Sub_Click;

    switch (MemulInfo) {
        case "1": MemulInfoType = "typeA"; break;
        case "2": MemulInfoType = "typeB"; break;
        case "3": MemulInfoType = "MY맵"; break;
        default: _MAP_INFO_TYPE = '1'; MemulInfoType = "typeA"; break;
    }
    if (_MAP_LEVEL == "3") {	// 도시,시군구,읍면동까지 검색
        showNameText = false;
        showPercentText = false;
    // } else if (_MAP_LEVEL == "2") { // 도시,시군구까지 검색
    // showPercentText = false;
    } else {	// 도시,시군구 검색(디자인변경)
        showNameText = true;
        showPercentText = false;
    	pointsType = 'markerLv3';
    }

    if ((_MAP_LEVEL == "2" || _MAP_LEVEL == "3") && !(_MAP_TYPE1_CODE == "A01" || _MAP_TYPE1_CODE == "A02" ||	_MAP_TYPE1_CODE == "A06")) {		// 단지
																																					// 스티커
        pointsType = 'markerLv3';
        showNameText = true;
        showPercentText = false;
        isEnd = true;	// 하위지역보기 표시 안 함
        secondFn = null;
    }

// if(pointsType == "markerLv4" && (_MAP_FCODE == "C" && getCookie("fCode") !=
// "CA") ){
	/*
	 * if(pointsType == "markerLv4" && (_MAP_FCODE == "C" && getCookie("fCode") !=
	 * "CA") ){ pointsType = 'markerLv3'; showNameText = true; showPercentText =
	 * false; isEnd = true; // 하위지역보기 표시 안 함 secondFn = null; }
	 */
    $("#map_layout .my_empty.on").removeClass("on");	// 경고창 초기화
    if (!arrAREA) {
    	/*if (mapFirstLoadGbn == "none") {
    		fnc_alert("매물이 없습니다.");
    	}*/
    	//_GIS_MAP.level(mapLevel);
    } else {
        var points = {
            type: pointsType + ' ' + MemulInfoType, // "markerLv1 ~ 4 typeA ~ B"
													// 선택
            unit: '',
            showName: showNameText, showPercent: showPercentText, isEnd: isEnd,
            areas: arrAREA, // isFirstFn -> true: 첫번째 스티커에서 함수실행, false: '하위지역
							// 보기'글자 클릭시 함수실행
            click: { firstFn: PriceInfo_Stiker_Click, secondFn: secondFn }
        };

        // _GIS_MAP.clearMarkers();

        _GIS_MAP.setCustomOverlay(points, false);
        if (mapFullView) {
            _GIS_MAP.setFullView(points.areas, mapFullView);
        }
    }
        
    if (tempMoveX != "") {
        _GIS_moveToCenter(tempMoveX, tempMoveY);
        tempMoveX = "";
        tempMoveY = "";
    }

    if (mapFullView) {	// false:제자리에 있을 것
        //_GIS_MAP.level(mapLevel);
    } else {
        mapFullView = true;
    }

    // 스티커 클릭 시
    function PriceInfo_Stiker_Click(data, isAdded) {

    	if(_MAP_LEVEL == 3 && !isEnd){
    		 $("#sticker_" + data.id).addClass("on");
    	    var stickerHasClassOn = $("#sticker_" + data.id).hasClass("on");

			backMap = 0;
			var moveX = 0.0001;
			for (var i = 0; i < _GIS_MAP.getInfo().level; i++) {
				moveX = moveX * 2;	// 팝업이 왼쪽에 뜨므로 오른쪽으로 약간 지도이동
			}
			_GIS_moveToCenter(data.pos[1] - moveX, data.pos[0]);	// 모바일 화면이
																	// 좁아서..
			$('[id^="sticker_"]').parent().css('z-index','0');
			if (stickerHasClassOn) {
				$("#sticker_" + data.id).parent().css('z-index', '91');
				fn_Open_sticker_info(data); // 하단에 뜨는 매물 상세 레이어
			} else {
				fn_Close_sticker_info();
			}
			if (isNull(_MAP_SELECTED_STIKER)) {
				_MAP_SELECTED_STIKER = data.id;
			} else {
				if (_MAP_SELECTED_STIKER != data.id) {
					if ($("#sticker_" + _MAP_SELECTED_STIKER).hasClass("on")) {
						$("#sticker_" + _MAP_SELECTED_STIKER).parent().css('z-index', '0');
						$("#sticker_" + _MAP_SELECTED_STIKER).removeClass('on');
					}
					_MAP_SELECTED_STIKER = data.id;
				}
			}

			if($('[id^="sticker_"]').hasClass("markerLv4")){ // 단지를 선택했을 경우에만 실행한다.
				if (mapFirstLoadYN != true && clickedComplexList == false) {
					if ( data.CortarNo != getCookie("Memul_CortarNo")) {
						isForcedDrag = true;
						forcedDragStiker = _MAP_SELECTED_STIKER;
						forcedDragCd = data.id;
						if (data.id == data.id2 || data.id2 == "") {
							forcedDragId = data.id;
							forcedDragAct = "";
						}
						else {
							forcedDragId = data.id2;
							forcedDragAct = "N";
						}
						forcedDragX = "";
						forcedDragY = "";
						forcedDragTypeNam = data.mmTypeNm;
						forcedDragNm = data.name;
						MAP_EVENT_DRAG();
					}
					else {	
						forcedDragStiker = "";
						if (data.id == data.id2 || data.id2 == "") {
							goMemulListComplex(data.id, data.id, data.id, '', '', data.mmTypeNm, data.name);
						}
						else {
							goMemulListComplex(data.id, data.id2, 'N', '', '', data.mmTypeNm, data.name);
						}
					}
				}
			}

			// 2122라인의 지도 중심 이동으로 인해 PriceInfo_Stiker_Click 실행시 sticker 가 가지고 있는
			// "on" class 가 없어지는 현상이 발생해서
            // "on" class 를 가지고 있는 유무를 stickerHasClassOn 에 저장해놓았다가 다시 복원하는 형태로
			// 처리함
			if (stickerHasClassOn) {
                $("#sticker_" + data.id).addClass("on")
            }
		}
		else{
			mapFullView = true;
			tempMoveX = "";
			tempMoveY = "";
			fn_setFullView(data.id, (Number(_MAP_LEVEL) + 1), '전체', data.pos[1], data.pos[0]);

			goMemulListAddr(data.name, data.id, _MAP_LEVEL);
		}
    }
    
    // 하위지역보기 클릭 시
    function PriceInfo_Stiker_Sub_Click(data, isAdded) {
		/*
		 * mapFullView = true; tempMoveX = ""; tempMoveY = "";
		 * fn_setFullView(data.id, (Number(_MAP_LEVEL) + 1), '전체', data.pos[1],
		 * data.pos[0]);
		 */
    }

    $(".typeA").parent().css({"white-space":"normal"});
	$(".tabMenu").find("li:eq(3)").find("a").text('지역소식');
	
	doneDrawSticker = true;	
	
	if (mapFirstLoadYN == true) {
		goSearch();
	}

}

$(document).on('mouseenter', '.markerLv4', function(e) {
	if(!$(this).hasClass('on')){
		var thisLeft = ($("#map_layout").width() + $("#map_layout").offset().left + 13) - $(this).offset().left;
		var thisTop = $(this).offset().top - ($("#map_layout").offset().top);

		var thisId = $(this)[0].id.replace("sticker_", "");
		for(var i = 0; i < _arrAREAVal.length; i++){
			$.each(_arrAREAVal[i], function (index, entry) {
				if(thisId == entry.id){
					$("#map_layout").append("<div class=\"maker_tip single maker_tipSingle\">"+ entry.name +"</div>");
					$(".maker_tipSingle").css('zIndex', '100');
					$(".maker_tipSingle").css('pointer-events', 'none');

					$(".maker_tipSingle").css({top: thisTop + "px", right: thisLeft + "px"});
					return false;
				}
			});
		}
	}
});

$(document).on('mouseleave', '.markerLv4', function() {
	$('.maker_tipSingle').remove();
});

var firstZoom = false;
function MAP_EVENT_ZOOM() {

	// S : 2017-12-15 우측 단지 클릭 후, 단지정보 유지 시키기 위해 추가. jay.ji@r114.com
	selectedComplexCd = "";
	// E

	firstZoom = true;
	var onPoly = false;
    var li_cnt = $("#statGbn11").parent().children("li").length;
    for (var i = 0; i < li_cnt; i++) {
        if ($("#statGbn" + (i + 11)).hasClass("on")) {
        	onPoly = true;
        	break;
        }
    }
    if ($("#statGbn01").hasClass("on") || $("#statGbn02").hasClass("on")) {
    	onPoly = true;
    }
    if (onPoly) {	// 통계 폴리곤이 선택되어 있으면
    	_GIS_view_customOverlay("map", false);	// 스티커 숨기기
    } else {
    	_GIS_view_customOverlay("map", true);	// 스티커 보이기
    }

	/*
	 * [2017-06-01 윤범식] 폴리건이 지도보다 클경우 배정가능 지역을 보고싶은데 지도 드래그 또는 축소기 폴리건이 사라짐 수정
	 * fn_Close_sticker_info(); // 스티커, 마커 선택 초기화
	 */

	var mapInfo = _GIS_MAP.getInfo();

   /* if (mapFirstLoadGbn != "none" && mapFirstLoadGbn != "") {	// 학교 지도 정보 보기로
																// 매물찾기화면 오픈시(최초
																// 로딩시 마지막에 여기를
																// 탄다..)
    	setTimeout(function () {	// fn_Close_sticker_info와 뭔가 시간차가 존재하는 것 같다.
			
			 * [2017-06-19 윤범식] 검색시에 매물종류와 세부종류를 선택 해 준다. -> 함수 파라미터 추가로 인한 수정
			 
        	fnc_searchSpecific(mapFirstLoadGbn,'','','','','','',mapFirstLoadId,mapFirstLoadX,mapFirstLoadY);
        	mapFirstLoadGbn = "none";
        }, 1);
    // } else if (doParam == "goSt20") { // 첫로딩시 R114시세
    // fn_view_option("ST","20");
    // $("#statGbn20").addClass("on");
    // $("#map_layout .gis div:nth-child(2) button").addClass("on");
    // $("#map_layout .gis div:nth-child(2) ul").hide();
    // doParam = "";
    } else {
	    if (mapSearch	// 주소로 조회시
	        || mapInfo.level == "4"	// 100m
	        || mapInfo.level == "5"	// 250m
	        // || mapInfo.level == "6" // 500m
	        || mapInfo.level == "7"	// 1km
	        || mapInfo.level == "8"	// 2km
	        // || mapInfo.level == "9" // 4km
	        || mapInfo.level >= "9") 	 { // 4km
	        	// || mapInfo.level >= "10") { // 8km // 전국을 보기 위해 크게 축소를 하니, 계속
				// 호출..
	        mapMemuls = "";	// 스티커를 다시 그리기 위해 매물 목록 초기화
	        clearOverlays();
	        mapFullView = false;
	        // 20170630 지도오류 건 : S
	        // tempMoveX = mapInfo.center.gb;
	        // tempMoveY = mapInfo.center.hb;

			tempMoveX = mapInfo.center.getLng();
	        tempMoveY = mapInfo.center.getLat();
			// 20170630 지도오류 건 : E
	        if (firstMoveX != "") {
	        	tempMoveX = firstMoveX;
	        	tempMoveY = firstMoveY;
	        	firstMoveX = "";
	        	firstMoveY = "";
	        }
	        if (mapFirstLoadGbn == "none" && mapFirstLoadX != "") {	// 학교 정보
																	// direct
	        	tempMoveX = mapFirstLoadX;
	        	tempMoveY = mapFirstLoadY;
	        	mapFirstLoadX = "";
	        	mapFirstLoadY = "";
	        }
	       
	        GetPositionAddr(tempMoveY, tempMoveX, "txt_area", "txt_cortarInfo");

	        if ((mapSearch && _MAP_LEVEL == 3) || mapInfo.level <= "4") {
	            fnc_SearchMemul_AddrList(_MAP_CortarNo, "3", "");
	        } else if ((mapSearch && _MAP_LEVEL == 2) || mapInfo.level <= "7") {
	            fnc_SearchMemul_AddrList(_MAP_CortarNo.substring(0, 5) + "00000", "2", "전체");
	        } else if ((mapSearch && _MAP_LEVEL == 1) || mapInfo.level <= "9") {
	            fnc_SearchMemul_AddrList(_MAP_CortarNo.substring(0, 2) + "00000000", "1", "전체");
	        } else {
	        	// 전국 스케일이면 시도레벨 스케일과 같은 데이터 유지한다.
	        	fnc_SearchMemul_AddrList(_MAP_CortarNo.substring(0, 2) + "00000000", "1", "전체");
	           // 전국은 서비스하지 않는다
	          // fnc_SearchMemul_AddrList('1000000000', '0', '전국');
	        } 

	    }
	    mapSearch = false;
    }*/
    // if(mInfo["addresskr"]!="")
    // $("#addressTitle").html(mInfo["addresskr"]);
    // console.log("MAP_EVENT_ZOOM:" + mInfo["center"] +","+
	// mInfo["addresskr"]);
    /*
	 * ' if (doParam == "goSt20") { // 첫로딩시 R114시세 setTimeout(function () {
	 * fn_view_option("ST","20"); $("#statGbn20").addClass("on"); $("#map_layout
	 * .gis div:nth-child(2) button").addClass("on"); $("#map_layout .gis
	 * div:nth-child(2) ul").hide(); doParam = ""; },1); // 스티커보다 늦게 그리기위해.. }
	 */
    
}

function MAP_EVENT_DRAG() {

	// S : 2017-12-15 우측 단지 클릭 후, 단지정보 유지 시키기 위해 추가. jay.ji@r114.com
	selectedComplexCd = "";
	// E
	
	isTextAreaChanged = true;

	var onPoly = false;
    var li_cnt = $("#statGbn11").parent().children("li").length;
    for (var i = 0; i < li_cnt; i++) {
        if ($("#statGbn" + (i + 11)).hasClass("on")) {
        	onPoly = true;
        	break;
        }
    }
    if ($("#statGbn01").hasClass("on") || $("#statGbn02").hasClass("on")) {
    	onPoly = true;
    }
    if (onPoly) {	// 통계 폴리곤이 선택되어 있으면
    	_GIS_view_customOverlay("map", false);	// 스티커 숨기기
    } else {
    	_GIS_view_customOverlay("map", true);	// 스티커 보이기
    }

	/*
	 * [2017-06-01 윤범식] 폴리건이 지도보다 클경우 배정가능 지역을 보고싶은데 지도 드래그 또는 축소기 폴리건이 사라짐 수정
	 * fn_Close_sticker_info(); // 스티커, 마커 선택 초기화
	 */

    $(".typeA").parent().css({"white-space":"normal"});

	// 20170630 지도오류 건 : S
    // GetPositionAddr(_GIS_MAP.getInfo().center.hb,
	// _GIS_MAP.getInfo().center.gb, "txt_area", "txt_cortarInfo");
	GetPositionAddr(_GIS_MAP.getInfo().center.getLat(), _GIS_MAP.getInfo().center.getLng(), "txt_area", "txt_cortarInfo");
	// 20170630 지도오류 건 : E

    // if(mInfo["addresskr"]!="")
    // $("#addressTitle").html(mInfo["addresskr"]);
    // console.log("MAP_EVENT_DRAG:" + mInfo["center"] +","+
	// mInfo["addresskr"]);
}

function MAP_EVENT_ZOOM_LOTS() {
	if(_GIS_MAP.getInfo().level <= "4"){
		_MAP_LEVEL = 3;
	}
	else if(_GIS_MAP.getInfo().level <= "7"){
		_MAP_LEVEL = 2;
	}
	else if(_GIS_MAP.getInfo().level <= "9"){
		_MAP_LEVEL = 1;
	}
	else{
		_MAP_LEVEL = 0;
	}
	
	GetPositionAddrLots(_GIS_MAP.getInfo().center.getLat(), _GIS_MAP.getInfo().center.getLng(), "addrSearchWord", _MAP_LEVEL);
	closeLp('type3');
}

function MAP_EVENT_DRAG_LOTS() {
	fn_Remove_sticker_info();					// 2017-12-18 김선호 추가.
	
	GetPositionAddrLots(_GIS_MAP.getInfo().center.getLat(), _GIS_MAP.getInfo().center.getLng(), "addrSearchWord", _MAP_LEVEL);
}

var drawMarker = "";	// 마커 표시
var openPopup = "";	// 상세팝업 표시
function ReSet_Map(data, redraw) {

//bunprad 201805
//	if (data.Addr1 != _SEL_ADDR1) {
//		$('#bun_PrAd').slideUp('slow','linear');
//	}

	var addrActText = ""
	//addrActText = '<a href="javascript:fnc_AddrList_sel(\'1\', \'10\', \'0\', \'' + data.Addr1 + '\');">' + data.Addr1 + '<i class="ico_comm_s arrow4"></i></a>';
		addrActText = '<a href="javascript:fnc_AddrList_sel(\'1\', \'10\', \'0\');">' + data.Addr1 + '<i class="ico_comm_s arrow4"></i></a>';
	if(data.Addr2){
	//addrActText += '<a href="javascript:fnc_AddrList_sel(\'1\', \'' + data.CortarNo +  '\', \'1\', \'' + data.Addr2 + '\');">' + data.Addr2 + '<i class="ico_comm_s arrow4"></i></a>';
		addrActText += '<a href="javascript:fnc_AddrList_sel(\'1\', \'' + data.CortarNo +  '\', \'1\');">' + data.Addr2 + '<i class="ico_comm_s arrow4"></i></a>';
	}
	if(data.Addr3){
	//addrActText += '<a href="javascript:fnc_AddrList_sel(\'1\', \'' + data.CortarNo +  '\', \'2\', \'' + data.Addr3 + '\');">' + data.Addr3 + '<i class="ico_comm_s arrow4"></i></a>';
		addrActText += '<a href="javascript:fnc_AddrList_sel(\'1\', \'' + data.CortarNo +  '\', \'2\');">' + data.Addr3 + '<i class="ico_comm_s arrow4"></i></a>';
	}	
/*
 * 2018.02.14 단지명 노출 임시 방지 
	if(data.Addr2 && data.Addr3 && data.level > 3 && _SEL_COMPLEXCD != "" && data.MemulList.length > 0 && data.ComplexNm != ""){
  		addrActText += '<a href="javascript:fnc_AddrList_sel(\'1\', \'' + data.CortarNo + '\', \'3\', \'' + data.Addr + '\');">' + data.ComplexNm + '<i class="ico_comm_s arrow4"></i></a>'; 
	}
*/ 
	$("#addressTitle").html(addrActText);
	
	fnc_Memul_List(data);

    _MAP_CONFIG_ADDR1_KR = data.Addr1;
    _MAP_CONFIG_ADDR2_KR = data.Addr2;
    _MAP_CONFIG_ADDR3_KR = data.Addr3;
    if (redraw) {
        var drawMapLevel = data.AddrCodeList[0].mapLevel;
        if (data.MemulList.length > 0 && data.MemulList[0].CortarNo == "1000000000") {	// 전국
            drawMapLevel = data.AddrCodeList[0].upMapLevel;
        }
        
        drawPriceInfos(data.MemulList, data.MemulInfo, drawMapLevel);	// 맵에
																		// 스티커
																		// 표시
        
        /*
		 * if (mapFirstLoadYN == true && _PARAM_COMPLEXCD != "") {
		 * drawPriceInfos(data.MemulList, data.MemulInfo, drawMapLevel,
		 * goSearch); // 맵에 // 스티커 // 표시 } else { drawPriceInfos(data.MemulList,
		 * data.MemulInfo, drawMapLevel); // 맵에 // 스티커 // 표시 }
		 */
        mapMemuls = "";	// 스티커를 다시 그리기 위해 매물 목록 초기화
        for (var i = 0; i < data.MemulList.length; i++) {
            mapMemuls += data.MemulList[i].id + ",";
        }
    } else {// 맵마우스이동시
        if (data.MemulList.length > 0) {
            if (mapMemuls.indexOf(data.MemulList[0].id) < 0) {	// 이미 존재하는 스티커를
																// 겹쳐서 또 그리지 않도록
                for (var i = 0; i < data.MemulList.length; i++) {
                    mapMemuls += data.MemulList[i].id + ",";
                }
                drawPriceInfos(data.MemulList, data.MemulInfo);	// 맵에 스티커 표시
            }
        } else {
            if (tempMoveX != "") {	// 최초 로딩시에 매물data가 없을때도 중심좌표로 이동
                _GIS_moveToCenter(tempMoveX, tempMoveY);
                tempMoveX = "";
                tempMoveY = "";
            }
        }
    }

    if ($(".gis").find('.on').length < 1) {	// 통계가 선택되어 있으면 통계정보를 초기화하지 않는다
        // fn_set_option_list(data, false); // 옵션 리스트 변경
    }

    var marker;
    if (drawMarker) {	// 마커를 찍어줌(현재 학교만)
        var customPoints = [{
            id: drawMarker.split(",")[0],
            pos: [drawMarker.split(",")[2], drawMarker.split(",")[1]],
            image: {
                src: ""+imageServer+"/images/sub/markerLv4_bg3.png",
                size: [30, 39], option: { offset: [15, 39] }	// size height =
																// offset height
																// // 좌표가 안맞으면
																// offset 조정
            },
            click: fn_Open_sticker_info_marker // 하단에 뜨는 매물 상세 레이어
        }];
        marker = _GIS_MAP.setMarkersReturnMarker(customPoints, false);	// true:드래그여부
        drawMarker = "";
    }
    if (openPopup) {	// 상세 팝업 열기
        if (openPopup.startsWith("B")) {	// 학교는 click 이벤트를 강제 실행시켜 줄 아이디가 없다
            var data = { id: openPopup, marker: marker, x: marker.getPosition().getLng(), y: marker.getPosition().getLat() };
            fn_Open_sticker_info_marker(data);
            openPopup = "";
        } else {
            var compInfo = openPopup.split("|");	// openPopup =
													// "#sticker_A0123456789|아파트"
            if (typeof $(compInfo[0]).html() == "undefined") {	// 매물이 존재하지 않는
																// 단지일 경우 강제로
																// 스티커 표시
                $.ajax({
                    type: "POST",
                    data: {
                        'complexGbn': compInfo[1],
                        'complexCd': compInfo[0].split("_")[1]
                    },
                    url: "/?_c=memul&_p=ajax&_m=default.complexInfo",
                    dataType: "json",
                    cache: false,
                    success: function (reparam) {
                        var arrAREA = [{
                            CortarNo: data.CortarNo,
                            count: 0,
                            id: compInfo[0].split("_")[1],
                            mmTypeNm: compInfo[1],
                            name: reparam.건물명,
                            percent: "",
                            period: "",
                            pos: [reparam.지도좌표Y, reparam.지도좌표X],
                            upDown: ""
                        }];
                        mapFullView = false;
                        drawPriceInfos(arrAREA, data.MemulInfo);
                        $(compInfo[0]).trigger("click");
                        openPopup = "";
                    },
                    error: function (data) {
                    }
                });
            } else {
                $(compInfo[0]).trigger("click");
                openPopup = "";
            }
        }
    }
  
	changeMapToBasic();
	
}

// /////////////////////////////////////////////////////////////

function fnc_msrch_wrap_aera_callback(complexCd, complexNm) {
}

function fnc_Memul_List(data){
	
	var addrText, MemulData, setLevel, isCodeMemul, hasData;
	
	setLevel = data.Level;
	addrText = data.Addr1 + ' ' + data.Addr2 + ' ' + data.Addr3
	$("#addressTitleNoAct").html(addrText);

	/*
	 * isCodeMemul = false; hasData = false; for (var i = 0; i <
	 * MemulData.length; i++) { if(setLevel == 3){ if (MemulData[i].isCodeMemul ==
	 * "Y") { isCodeMemul = true; } hasData = true; } }
	 * 
	 * if (isCodeMemul || hasData == false){ MemulData = data.MemulList; } else {
	 * MemulData = data.AddrCodeList; }
	 */
	
	MemulData = data.MemulList;
	
	if(MemulData != false){
		if(data.Addr1 == "전국"){
			/*
			 * MemulData.sort(function(a, b) { // 내림차순 return a.name > b.name ?
			 * -1 : a.name < b.name ? 1 : 0; });
			 */
		}
		else{
			MemulData.sort(function(a, b) { // 오름차순
				return a.name < b.name ? -1 : a.name > b.name ? 1 : 0;
			});
		}
	}

	$('.map_info_list').html('');
	
	for (var i = 0; i < MemulData.length; i++) {		
		if(setLevel == 3){
			if (MemulData[i].isCodeMemul == "Y") {		// 코드매물이면 단지 목록 노출
				if (MemulData[i].id2 == "") {
					$('.map_info_list').append("<li id=\"mapList_"+ MemulData[i].id +"\" data-name=\""+ MemulData[i].name +"\" onclick=\"goMemulListComplex('"+ MemulData[i].id +"', '"+ MemulData[i].id +"', 'Y', '"+ MemulData[i].pos[1] +"', '"+ MemulData[i].pos[0] +"', '" + MemulData[i].mmTypeNm + "', '" + MemulData[i].name + "'); \"  data-complexcd2='' ><strong>"+ MemulData[i].name +"("+ AddComma(MemulData[i].count) +")</strong></li>");
				}
				else {
					$('.map_info_list').append("<li id=\"mapList_"+ MemulData[i].id +"\" data-name=\""+ MemulData[i].name +"\" onclick=\"goMemulListComplex('"+ MemulData[i].id +"', '"+ MemulData[i].id2 +"', 'Y', '"+ MemulData[i].pos[1] +"', '"+ MemulData[i].pos[0] +"', '" + MemulData[i].mmTypeNm + "', '" + MemulData[i].name + "'); \"    data-complexcd2=\"" + MemulData[i].id2 + "\" ><strong>"+ MemulData[i].name +"("+ AddComma(MemulData[i].count) +")</strong></li>");
				}
			}													// 비코드매물이면 읍면동
																// 목록 노출
			else {
// $('.map_info_list').append("<li id=\"mapList_"+ MemulData[i].id +"\"
// data-name=\""+ MemulData[i].name +"\"><strong>"+ MemulData[i].name +"("+
// AddComma(MemulData[i].count) +")</strong></li>");
		// $('.map_info_list').append("<li id=\"mapList_"+ MemulData[i].id +"\"
		// data-name=\""+ MemulData[i].name +"\" onclick=\"fn_setFullView('" + +
		// ")\"><strong>"+ MemulData[i].name +"("+ AddComma(MemulData[i].count)
		// +")</strong></li>");
				$('.map_info_list').append("<li id=\"mapList_"+ MemulData[i].id +"\" data-name=\""+ MemulData[i].name +"\" onclick=\"fn_setFullView('"+ MemulData[i].id +"', '"+ setLevel +"', '" +  MemulData[i].name + "', '"+ MemulData[i].pos[1] +"', '"+ MemulData[i].pos[0] +"'); \"><strong>"+ MemulData[i].name +"("+ AddComma(MemulData[i].count) +")</strong></li>");
			}
		}
		else{
			// $('.map_info_list').append("<li id=\"mapList_"+ MemulData[i].id
			// +"\" data-name=\""+ MemulData[i].name +"\"
			// onclick=\"goMemulListAddr('"+ MemulData[i].name +"', '"+
			// MemulData[i].id +"', "+ setLevel +"); \" ><strong>"+
			// MemulData[i].name +"("+ AddComma(MemulData[i].count)
			// +")</strong></li>");
			$('.map_info_list').append("<li id=\"mapList_"+ MemulData[i].id +"\" data-name=\""+ MemulData[i].name +"\" onclick=\"fn_setFullView('" + MemulData[i].id + "', '" + setLevel + "', '" + MemulData[i].name + "', '" + MemulData[i].pos[1]  + "', '" + MemulData[i].pos[0] + "'); \" ><strong>"+ MemulData[i].name +"("+ AddComma(MemulData[i].count) +")</strong></li>");

		}
	}

	if(isAutoSearch){
		// S : 2017-12-15 우측 단지 클릭 후, 단지정보 유지 시키기 위해 추가. jay.ji@r114.com
		// goSearch(data.Addr1, data.Addr2, data.Addr3, "");

		if (selectedComplexCd != '' && $('#mapList_' + selectedComplexCd).length > 0) {
			$('#mapList_' + selectedComplexCd).trigger('click');
		}
		else {
			if (!isForcedDrag) {
				goSearch(data.Addr1, data.Addr2, data.Addr3, "");
			}
			else {
				goMemulListComplex(forcedDragCd, forcedDragId, forcedDragAct, forcedDragX, forcedDragY, forcedDragTypeName, forcedDragNm);
			}
		}
		// E
	}

}

/*
 * 지도 우측의 단지목록에서 해당 단지를 클릭하면 실행된다.
 */
function goMemulListComplex(complexCd, id, act, X, Y, complexTypeName, complexNm){
//	if (isForcedDrag) {
//		isForcedDrag = false;
//		return;
//	}
	
	fn_WaitingPage(true);

	// S : 2017-12-15 우측 단지 클릭 후, 단지정보 유지 시키기 위해 추가. jay.ji@r114.com
	selectedComplexCd = complexCd;
	tempMoveX = X;
	tempMoveY = Y;
	// E

	var AddrSplit, Addr1, Addr2, Addr3, AddrFull, mapId, searchId;
	
	clickedComplexList = true;
	
	if (complexCd == id) {
		mapId = id;
		searchId = complexCd;
	}
	else {
		mapId = complexCd;
		searchId = id;
	}
	
	selectComplexName(complexCd, id, act, X, Y);
	
	AddrSplit = decodeURIComponent(getCookie("Memul_Addr")).split('|');

	Addr1 = AddrSplit[0];
	Addr2 = AddrSplit[1];
	Addr3 = AddrSplit[2];

	if(act == "Y" && (X != "" && X != "0") && (Y != "" && Y != "0")){
		_GIS_moveToCenter(X, Y);

		setTimeout(function() {
			if ($("#sticker_" + mapId).length > 0)  {
				$("#sticker_" + mapId).trigger('click');
			}
		}, 50); // 50ms(0.05초)가 경과하면 이 함수가 실행됩니다.
	}

	setTimeout(function() {
		
		// setCookie("Memul%5FTabGbn", "0"); // 단지 변경할 때 무조건 매물 탭으로 이동하려면 이 주석을
		// 해제한다.
		
		$(".tabMenu").removeClass("n5");					
		$(".tabMenu").addClass("n4");		
		$(".tabMenu").find("li").eq(2).css("display", "none"); // 단지일때 통계 TAB은
																// 안 보여줌
		$(".tabMenu").find("li").eq(3).html("<a href=\"javascript:;\" onclick=\"fn_AreaDetailLoad()\">단지정보</a>");
		goSearch(Addr1, Addr2, Addr3, searchId, _LOAD_COMPLEX, complexTypeName);			// MemulMain.asp
	
		if (_SEL_AREASIZE != "") {
			fn_areaSizeList(searchId, _SEL_AREASIZE + "/" + _SEL_AREASIZE_TYPE);
		}
		else {
			fn_areaSizeList(searchId, "0");
		}
		
		var $el1 = ( $("#addressTitle").find("a:nth-child(1)") );
		var $el2 = ( $("#addressTitle").find("a:nth-child(2)") );
		var $el3 = ( $("#addressTitle").find("a:nth-child(3)") );
		
/* 2018.02.14 단지명 노출 임시 방지
		var $dongName =  $("#addressTitle").find("a:nth-child(3)").clone();
	    $dongName.find("i").remove();

		var $el4 = '<a href="javascript:fnc_AddrList_sel(\'1\', \'' + getCookie("Memul_CortarNo") + '\', \'3\', \'' + $dongName.html() + '\');">' + complexNm + '<i class="ico_comm_s arrow4"></i></a>';
*/ 		
		$("#addressTitle").empty();
		$("#addressTitle").append($el1);
		$("#addressTitle").append($el2);
		$("#addressTitle").append($el3);
/*
 * 2018.02.14 단지명 노출 임시 방지
 		$("#addressTitle").append($el4);
*/ 
		clickedComplexList = false;
		isForcedDrag = false;

	}, 300); // 300ms(0.3초)가 경과하면 이 함수가 실행됩니다.
}

/*
 * 지도 우측의 단지목록에서 선택한 해당 단지에 선택표시한다.
 */
function selectComplexName(complexCd, id, act, X, Y){
		
	var mapId, searchId;
	
	if (complexCd == id) {
		mapId = id;
		searchId = complexCd;
	}
	else {
		mapId = complexCd;
		searchId = id;
	}

	$(".map_info_list").find("li").each(function(index) {
		$(this).removeClass("on");
	});

	$("#mapList_" + mapId).addClass("on");
	$("#mapList_" + mapId).scrollintoview();

	_SEL_COMPLEXNM = $("#mapList_" + mapId).data("name");

	setCookie("Memul%5FComplexCd", complexCd);
	setCookie("Memul%5FComplexNm", _SEL_COMPLEXNM);
}

/*
 * 
 */
function goMemulListAddr(selName, id, level){
	var AddrSplit, Addr1, Addr2, Addr3, AddrFull;
	AddrSplit = decodeURIComponent(getCookie("Memul_Addr")).split('|');

	Addr1 = AddrSplit[0];
	Addr2 = AddrSplit[1];
	Addr3 = AddrSplit[2];

	if(level == 0){
		Addr1 = selName;
	}
	else if(level == 1){
		Addr2 = selName;
	}
	else if(level == 2){
		Addr3 = selName;
	}

	$(".map_info_list").find("li").each(function(index) {
		$(this).removeClass("on");
	});

	$("#mapList_" + id).addClass("on");
	// $("#sticker_" + id).trigger('click');

	setTimeout(function() {
		
		$(".tabMenu").removeClass("n4");
		$(".tabMenu").addClass("n5");
		
		$(".tabMenu").find("li").eq(2).css("display", ""); // 지역일때 통계 TAB는 보여줌
		$(".tabMenu").find("li").eq(3).html("<a href=\"javascript:;\" onclick=\"fn_AreaDetailLoad()\">지역소식</a>");

		if(! isAutoSearch){
			goSearch(Addr1, Addr2, Addr3);
		}
	}, 300); // 300ms(0.3초)가 경과하면 이 함수가 실행됩니다.
}

/*
 * 검색 지역 취소하면 원래 찍혀 있던 지역을 출력한다.
 */
function fn_restoreSelectArea(){
	
	$("#div_selectArea").html($selectArea);	
}

function fn_setFullView(txtCode, txtLevel, myAddrNm, moveX, moveY) {	// 주소 조회
																		// 시 맵
																		// 이동 및
																		// 확대,축소
	fn_WaitingPage(true);
	fn_view_option();
    // getMapLevel = _GIS_SetMapLevel(txtCode);
    $.ajax({
        type: "POST",
        data: { "cortarNo": txtCode, "addr1": "", "addr2": "", "addr3": "" },
        url: "/?_c=comm&_m=getCortarNoInfo&_p=AJAX",
        dataType: "json",
        success: function (reparam) {
            var getMapLevel = reparam.지도레벨;
            if (typeof getMapLevel == "undefined") {
                getMapLevel = 13;
            }
            fn_setFullView2(txtCode, txtLevel, myAddrNm, moveX, moveY, getMapLevel);
            $('.srch_t1 .region_pick + div').scrollTop(0);
        },
        error: function (reparam) {
        }
    });
}
function fn_setFullView2(txtCode, txtLevel, myAddrNm, moveX, moveY, getMapLevel) {
    _MAP_LEVEL = txtLevel;
    _MAP_CortarNo = txtCode;
    _GIS_moveToCenter(moveX, moveY);
    mapFullView = false;
    mapSearch = true;
    if (_GIS_MAP.getInfo().level == getMapLevel) {	// 주소 검색시 보고있는 레벨이 같을때에도
													// 이벤트를 호출한다.
		if(typeof _ISLOTS != "undefined"){
			MAP_EVENT_ZOOM_LOTS();
			// console.log('call MAP_EVENT_ZOOM_LOTS()');
		}
		else{
			MAP_EVENT_ZOOM();
			// console.log('call MAP_EVENT_ZOOM()');
		}
    } else {
    	_GIS_MAP.level(getMapLevel);
		
    	// console.log('call _GIS_MAP.level()');
    }

	$('.search_wrap').removeClass('active'); // 검색 레이어 숨김.

	/*
	 * var mapInfo = _GIS_MAP.getInfo(); mapMemuls = ""; // 스티커를 다시 그리기 위해 매물 목록
	 * 초기화 clearOverlays(); mapFullView = false; tempMoveX = mapInfo.center.gb;
	 * tempMoveY = mapInfo.center.hb; GetPositionAddr(tempMoveY, tempMoveX,
	 * "txt_area", "txt_cortarInfo"); if (mapInfo.level<="4") {
	 * fnc_SearchMemul_AddrList(_MAP_CortarNo,"3",""); } else if (mapInfo.level<="7") {
	 * fnc_SearchMemul_AddrList(_MAP_CortarNo.substring(0,5)+"00000","2","전체"); }
	 * else if (mapInfo.level<="10") {
	 * fnc_SearchMemul_AddrList(_MAP_CortarNo.substring(0,2)+"00000000","1","전체"); }
	 * else { fnc_SearchMemul_AddrList('1000000000','0','전국'); }
	 */
}

function fnc_SearchMemul_AddrList(txtCode, txtLevel, myAddrNm) {
    _MAP_LEVEL = txtLevel;
    close_landSearch();
    switch (txtLevel) {
        case "0": _MAP_CONFIG_ADDR1_CODE = txtCode; break;
        case "1": _MAP_CONFIG_ADDR1_CODE = txtCode; break;
        default: _MAP_CONFIG_ADDR1_CODE = String(txtCode).substring(0, 2) + "00000000"; _MAP_CONFIG_ADDR2_CODE = txtCode; break;
    }

    setTimeout(function() {
		$(".tabMenu").find("li").eq(2).css("display", ""); // 지역일때 통계 TAB는 보여줌
		$(".tabMenu").find("li").eq(3).html("<a href=\"javascript:;\" onclick=\"fn_AreaDetailLoad()\">지역소식</a>");
	}, 300); // 300ms(0.3초)가 경과하면 이 함수가 실행됩니다.

    $.ajax({
        type: "POST",
        data: {
            'cortarNo': txtCode,
            'LevelCode': txtLevel,
            'MemulInfo': _MAP_INFO_TYPE,
            "wkID": "memul",
            "filterParam": filterData,
            "newVilla": $('input:checkbox[id="typeNewVilla"]').is(":checked") ? "1" : "0"
        },
        url: "/?_c=memul&_p=ajax",
        dataType: "json",
        cache: false,
        success: function (data) {
           /* 다른 동이면 마커 지우기 */
// clearOverlays();
        	/* 다른 동이면 마커 지우기 */
        	fnc_Set_Address_course(data, "");
            if (!mapFullView) {
                fnc_Set_Address(data, "", txtLevel - 1);
            }
            ReSet_Map(data, true);
        },
        error: function (data) {
        }
    });
}

function fnc_setMemulSubwayCond(searchGbn, subwayArea, subwayLine, subwayLineNm) {
    $.ajax({
        type: "POST",
        data: {
            'searchGbn': searchGbn,
            'subwayArea': subwayArea,
            'subwayLine': subwayLine
        },
        url: "/?_c=memul&_p=ajax&_m=default.subway",
        dataType: "json",
        cache: false,
        success: function (data) {
            var listHtml = "";
            var firstSelect = "";
            if (searchGbn == "0") {	// 권역 조회
                $("#div_subway1").show();
                $("#div_subway2").hide();
                $("#div_subwayArea >").remove();
                $.each(data, function (index, entry) {
                    listHtml += '<a href="#" ';
                    if (index == 0) {
                        listHtml += ' class="on" ';
                        firstSelect = entry.권역구분;
                    }
                    listHtml += ' onclick="fnc_setMemulSubwayCond(\'1\',\'' + entry.권역구분 + '\');">' + entry.권역구분 + '</a>';
                });
                $("#div_subwayArea").append(listHtml);
                fnc_setMemulSubwayCond('1', firstSelect);
            } else if (searchGbn == "1") {	// 권역 선택시 호선 조회
                $("#div_subway1").show();
                $("#div_subway2").hide();
                $("#div_subwayArea >").removeClass("on");
                $("#div_subwayArea").children('a').each(function () {
                    if ($(this).text() == subwayArea) {
                        $(this).addClass("on");
                    }
                });
                $("#div_subwayLine >").remove();
                $.each(data, function (index, entry) {
                    if (index == 0) {
                        firstSelect = entry.LINE;
                    }
                    listHtml += '<li><a href="#" onclick="fnc_setMemulSubwayCond(\'2\',\'' + subwayArea + '\',\'' + entry.LINE + '\',\'' + entry.SUBWAY_NAME + '\');"><span class="subway_comm subway1_' + entry.LINE + '"></span>&nbsp;&nbsp;' + entry.SUBWAY_NAME + '</a></li>';
                });
                $("#div_subwayLine").append(listHtml);

                // fnc_setMemulSubwayCond('2',subwayArea,firstSelect);
            } else if (searchGbn == "2") {	// 호선 선택시 역명 조회
                $("#div_subway1").hide();
                $("#div_subway2").show();
                $("#ul_subwayNm >").remove();
                $.each(data, function (index, entry) {
                    listHtml += '<li><a href="#" onclick="fnc_setMemulSubway(\'' + entry.SUBWAY_NAME + '\',\'' + entry.지도좌표X + '\',\'' + entry.지도좌표Y + '\',\'' + entry.법정동코드 + '\');">' + entry.SUBWAY_NAME + '</a></li>';
                });
                $("#ul_subwayNm").append(listHtml);

                $("#div_subwayPick >").remove();
                $("#div_subwayPick").append('<a href="#" onclick="fnc_setMemulSubwayCond(\'1\',\'' + subwayArea + '\');">' + subwayArea + ' <span class="ico_comm_s location"></span></a><a href="#" class="on">' + subwayLineNm + '</a>');
            }
            $('.srch_t2 .region_pick + div').scrollTop(0);
        },
        error: function (data) {
        }
    });
}

function fnc_setMemulSubway(subwayNm, subwayX, subwayY, subwayCortarNo) {
    close_landSearch();
    fn_setFullView(subwayCortarNo, '3', '전체', subwayX, subwayY);
    tempMoveX = subwayX;
    tempMoveY = subwayY;
    $('.srch_t2 .region_pick + div').scrollTop(0);
}

// 맵 옵션 설정

function fn_set_option_list(data, init) {
	
	if (!init) {	
		fn_view_option();
	}

    var li_cnt = $("#statGbn11").parent().children("li").length;
    for (var i = 0; i < li_cnt; i++) {	// 모두 초기화
        $("#statGbn" + (i + 11)).hide();
    }

    if (data.types1 == "A01") {	// 아파트
		if (data.style == "0") {	// 전체
			fn_show_statMenu("13,14");	// 입주예정(13),최근입주(14)
		} else if (data.style == "1") {	// 매매
			fn_show_statMenu("11,12,13,14,18,19,20,21,22");	// 실거래가(11),거래회전율(12),입주예정(13),최근입주(14),경매
															// 매각율(18),경매
															// 매각가율(19),R114시세(20),매물가격변동률(21),임대수익률(22)
		} else if (data.style == "2") {	// 전세
			fn_show_statMenu("11,12,13,14,18,19,20,21");	// 실거래가(11),거래회전율(12),입주예정(13),최근입주(14),경매
															// 매각율(18),경매
															// 매각가율(19),R114시세(20),매물가격변동률(21)
		} else if (data.style == "3") {	// 월세
			fn_show_statMenu("13,14,21");	// 입주예정(13),최근입주(14),매물가격변동률(21)
		}
    } else if (data.types1 == "A02") {	// 오피스텔
		if (data.style == "0") {	// 전체
			fn_show_statMenu("13,14");	// 입주예정(13),최근입주(14)
		} else if (data.style == "1") {	// 매매
			fn_show_statMenu("13,14,15,18,19,20,21,22");	// 입주예정(13),최근입주(14),평균분양가(15),경매
															// 매각율(18),경매
															// 매각가율(19),R114시세(20),매물가격변동률(21),임대수익률(22)
		} else if (data.style == "2") {	// 전세
			fn_show_statMenu("13,14,15,18,19,20,21");	// 입주예정(13),최근입주(14),평균분양가(15),경매
														// 매각율(18),경매
														// 매각가율(19),R114시세(20),매물가격변동률(21)
		} else if (data.style == "3") {	// 월세
			fn_show_statMenu("13,14,21");	// 입주예정(13),최근입주(14),매물가격변동률(21)
		}
    } else if (data.types1 == "A03") {	// 원룸
		/*
		 * [2017-06-02 윤범식] 원룸 -> 매매, 전세 일때는 경매 매각율,경매 매각가율 보여줌
		 */
		if (data.style == "1") {	// 매매
			fn_show_statMenu("18,19");	// 경매 매각율(18),경매 매각가율(19)
		} else if (data.style == "2") {	// 전세
			fn_show_statMenu("18,19");	// 경매 매각율(18),경매 매각가율(19)
		}
    } else if (data.types1 == "A04" || data.types1 == "A05") {	// 주택,빌라
		if (data.style == "1") {	// 매매
			fn_show_statMenu("17,18,19,21,22");	// 거래량(17),경매 매각율(18),경매
												// 매각가율(19),매물가격변동률(21),임대수익률(22)
		} else if (data.style == "2") {	// 전세
			fn_show_statMenu("18,19,21");	// 경매 매각율(18),경매
											// 매각가율(19),매물가격변동률(21)
		} else if (data.style == "3") {	// 월세
			fn_show_statMenu("21");	// 매물가격변동률(21)
		}
    } else if (data.types1 == "A06") {	// 재개발
		if (data.style == "1") {	// 매매
			fn_show_statMenu("21");	// 매물가격변동률(21)
		} else if (data.style == "2") {	// 전세
		} else if (data.style == "3") {	// 월세
		}
    } else if (data.types1 == "A07") {	// 상가
		if (data.style == "1") {	// 매매
			fn_show_statMenu("18,19,21,22");	// 경매 매각율(18),경매
												// 매각가율(19),매물가격변동률(21),임대수익률(22)
		} else if (data.style == "2") {	// 전세
			fn_show_statMenu("18,19");	// 경매 매각율(18),경매 매각가율(19)
		} else if (data.style == "3") {	// 월세
			fn_show_statMenu("21");	// 매물가격변동률(21)
		}
    } else if (data.types1 == "A08") {	// 사무실
		if (data.style == "1") {	// 매매
			fn_show_statMenu("21,22");	// 매물가격변동률(21),임대수익률(22)
		} else if (data.style == "2") {	// 전세
		} else if (data.style == "3") {	// 월세
			fn_show_statMenu("21");	// 매물가격변동률(21)
		}
    } else if (data.types1 == "A09") {	// 빌딩/건물
		if (data.style == "1") {	// 매매
			fn_show_statMenu("21");	// 매물가격변동률(21)
		} else if (data.style == "2") {	// 전세
		} else if (data.style == "3") {	// 월세
			fn_show_statMenu("21");	// 매물가격변동률(21)
		}
    } else if (data.types1 == "A10") {	// 공장/창고
		if (data.style == "1") {	// 매매
			fn_show_statMenu("21,22");	// 매물가격변동률(21),임대수익률(22)
		} else if (data.style == "2") {	// 전세
			fn_show_statMenu("21");	// 매물가격변동률(21)
		} else if (data.style == "3") {	// 월세
			fn_show_statMenu("21");	// 매물가격변동률(21)
		}
    } else if (data.types1 == "A11") {	// 토지
		if (data.style == "1") {	// 매매
			fn_show_statMenu("16,17,18,19,21");	// 지가변동률(16),거래량(17),경매
												// 매각율(18),경매
												// 매각가율(19),매물가격변동률(21)
		} else if (data.style == "2") {	// 전세
			fn_show_statMenu("18,19");	// 경매 매각율(18),경매 매각가율(19)
		} else if (data.style == "3") {	// 월세
		}
    } else if (data.types1 == "A12") {	// 숙박콘도펜션
		if (data.style == "1") {	// 매매
			fn_show_statMenu("21");	// 매물가격변동률(21)
		} else if (data.style == "2") {	// 전세
		} else if (data.style == "3") {	// 월세
		}
    }
}
function fn_show_statMenu(statGbns) {
	var statGbnArr = statGbns.split(",");
	for (var i=0; i<statGbnArr.length; i++) {
		$("#statGbn"+statGbnArr[i]).show();
	}
}

// 맵 옵션 선택시
function fn_view_option(gbn1, gbn2) {
	
	if(typeof _ISLOTS != "undefined") return;
	
	backMap = 0;
    fn_Close_sticker_info();
    _GIS_MAP.clearCircles();
    _GIS_MAP.clearMarkers();
    _GIS_MAP.clearPolygons();

    $(".typeA").parent().show();
    $(".typeB").parent().show();
	$("#vizText").hide();
    $(".price_info").hide();
    
    clearPolygons();
    
    if (typeof gbn1 == "undefined" || gbn1 == "") {
       setTimeout(function () { // [2017-05-31 윤범식] 초기화시 하위레벨까지 되지 않는 경우 발생하여
								// 딜레이 줌
			open_mapReset();
		}, 10);
    	_GIS_view_customOverlay("map", true);	// 스티커 보이기
    } else {
       if (gbn1 == "ST") {	// 통계,인구
			if (gbn2 == "01" || gbn2 == "02"  || gbn2 == "18" || gbn2 == "19"|| gbn2 == "21" || gbn2 == "22") { // 순전입률,
																												// 거주인구,
																												// 경매매각률,
																												// 경매매각가율,
																												// 매물가격변동률,
																												// 임대수익률
																												// 시/도
																												// 이상에서만
																												// 지원
				if (_MAP_LEVEL > 1) {
					fn_view_option();	// 초기화
					fnc_alert("시/도 이상 레벨에서만 지원하는 기능입니다.");
					return false;
				}
			}
			else if (gbn2 == "18" || gbn2 == "19") { // 경매 매각률, 경매 매각가율 시/군/구
														// 이상에서만 지원
				if (_MAP_LEVEL > 2) {
					fn_view_option();	// 초기화
					fnc_alert("시/군/구 이상 레벨에서만 지원하는 기능입니다.");
					return false;
				}
			}

            $.ajax({
                type: "POST",
                data: { "statGbn": gbn2, "statCd12Period": _statCd_12_period_date },
                url: "/?_c=memul&_p=ajax&_m=default.stat",
                dataType: "json",
                cache: false,
                success: function (data) {
                	var txtType1Nm = $("ul#MemulType1 li.on").find("a").html();                	
                    var txtStyleNm = $(":input:radio[name=type3]:checked").next("label").text();	// 매전월
                    var statInfos = [];
                    var statDt = "";
                    var prefixs = [];
                    var units = [];
                    var formats = [];
                    
                    $.each(data, function (index, entry) {
                    	var suffix1 = "";
                    	var suffix2= "";
                    	var stat_val2 = "";
                    	var stat_val3 = "";
                    	switch(gbn2) {
	                        case "01":
	                       // suffix1 = "거주 " + entry.TOT + "명";
	                       // suffix2 = "순전입 " + entry.TOT_INOUT + "명";
	                        	stat_val2 = entry.TOT;
	                        	stat_val3 = entry.TOT_INOUT;
	                        	prefixs = ["순전입률", "거주", "순전입"],
	                        	units = ["%", "명", "명"];
	                        	formats = [".00", ",f", ",f"];
	                            break;    
	                        case "12":		
	                        	if (jQuery.trim(txtStyleNm) == "매매"){
	                        	// suffix1 = "총 " + entry.MM_QTY + "가구";
	                        	// suffix2 = "거래 " + entry.MM_TCNT + "건";
	                        		stat_val2 = entry.MM_QTY;
		                        	stat_val3 = entry.MM_TCNT;
	                        	}
	                        	else if (jQuery.trim(txtStyleNm) == "전세"){
	                        	// suffix1 = "총 " + entry.JS_QTY + "가구";
	                        	// suffix2 = "거래 " + entry.JS_TCNT + "건";
	                        		stat_val2 = entry.JS_QTYS;
		                        	stat_val3 = entry.JS_TCNT;
	                        	}
	                        	else if (jQuery.trim(txtStyleNm) == "월세"){
	                        	// suffix1 = "총 " + entry.WS_QTY + "가구";
	                        	// suffix2 = "거래 " + entry.WS_TCNT + "건";
	                        		stat_val2 = entry.WS_QTY;
		                        	stat_val3 = entry.WS_TCNT;
	                        	}	      
	                        	prefixs = ["거래율", "총", "거래"],
	                        	units = ["%", "가구", "건"];
	                        	formats = [".00", ",f", ",f"];
	                            break;
	                        case "18":		
	                        	// suffix1 = "총경매 " + entry.AUC_CO + "건";
	                        	// suffix2 = "낙찰 " + entry.SCSBID_CO + "건";
	                        	stat_val2 = entry.AUC_CO;
	                        	stat_val3 = entry.SCSBID_CO;
	                        	prefixs = ["매각률", "총경매", "낙찰"],
	                        	units = ["%", "건", "건"];
	                        	formats = [".00", ",f", ",f"];
	                            break;    
	                        case "19":		
	                        	// suffix1 = "총감정가 " + entry.APRPC + "만원";
	                        	// suffix2 = "총낙찰가 " + entry.SCSBID_PC + "만원";
	                        	stat_val2 = entry.APRPC;
	                        	stat_val3 = entry.SCSBID_PC;
	                        	prefixs = ["매각가율", "총감정가", "총낙찰가"],
	                        	units = ["%", "만원", "만원"];
	                        	formats = [".00", ",f", ",f"];
	                            break;     
	                        default:
	                        	suffix1 = "";
	                        	suffix2 = "";
	                        	stat_val2 = "";
	                        	stat_val3 = "";
	                        	break;
	                    }                    	
                    	var statInfo = {
                            "code": entry.code, "stat_val": entry.stat_val, "stat_val2": stat_val2,  "stat_val3": stat_val3
                        };
                        statInfos.push(statInfo);
                        // statDt =
						// entry.stat_dt.substring(0,4)+"."+entry.stat_dt.substring(4,6)+"."+entry.stat_dt.substring(6,8);
                        if (statDt == null || statDt == "") {
                        	statDt = entry.stat_dt;
                        }
                    });
                    
                    if (statDt != null && statDt != "") {// (statInfos.length
															// > 0) {
                        var geoData = null;
                        var prefix = "";
                        var popType = "";
                        
                        switch(gbn2) {
	                        case "01":
	                        	prefix = "순전입률";
	                        	popType = "2";
	                            break;    
	                        case "11":		
	                        	prefix = txtStyleNm + "실거래가";
	                        	popType = "1";
	                        	prefixs = [prefix, "", ""];
	                            break;
	                        case "12":		
	                        	prefix = "거래율";
	                        	popType = "2";                        	
	                            break;
	                        case "13":		
	                        	prefix = "1년내 입주예정";
	                        	popType = "1";           
	                        	prefixs = [prefix, "", ""];
	                            break;
	                        case "14":		
	                        	prefix = "최근3년간 입주";
	                        	popType = "1";    
	                        	prefixs = [prefix, "", ""];
	                            break;     
	                        case "18":		
	                        	prefix = "매각률";
	                        	popType = "2";
	                            break;
	                        case "19":		
	                        	prefix = "매각가율";
	                        	popType = "2";
	                            break;     
	                        case "20":		
	                        	prefix = "R114" + txtStyleNm + "시세";
	                        	popType = "1";
	                        	prefixs = [prefix, "", ""];
	                            break;      
	                        case "21":		
	                        	prefix = "매물가격 변동률";
	                        	popType = "1";
	                        	prefixs = [prefix, "", ""];
	                            break;    
	                        case "22":		
	                        	prefix = "임대수익률";
	                        	popType = "1";
	                        	prefixs = [prefix, "", ""];
	                            break;
	                        default:
	                        	prefix = "";
	                        	popType = "1";
	                        	prefixs = [prefix, "", ""];
	                        	break;
	                    }                        

                        /*
						 * 통계별 팝업을 기존과 유지 popType = "1"; prefixs = ["", "", ""];
						 * units = ["", "", ""]; formats = ["", "", ""]; 통계별 팝업을
						 * 기존과 유지
						 */
                        
                        if (_MAP_CONFIG_ADDR2_KR != "") {	// 구시군, 읍면동
                            var successCallback = function () {
                                geoData = dong_geo_data;
                                $(".price_info").show();
                                drawDataWithLegend(_GIS_MAP, "vizLegend", statInfos, geoData, gbn2, statDt, txtType1Nm, txtStyleNm, false, "vizText", popType, prefixs, units, formats);
                            };
                            $.getScript('/gis/data/sKorea_dong_' + _MAP_CortarNo.substring(0, 2) + '.js').done(successCallback);	// 동적으로
																																	// js
																																	// 파일
																																	// 호출(읍면동이
																																	// 시도별로
																																	// 나뉘어
																																	// 있음)
                        } else if (_MAP_CONFIG_ADDR1_KR != "전국") {	// 광역시도
                            geoData = gu_geo_data;
                            $(".price_info").show();
                            drawDataWithLegend(_GIS_MAP, "vizLegend", statInfos, geoData, gbn2, statDt, txtType1Nm, txtStyleNm, false, "vizText", popType, prefixs, units, formats);
                        } else if (_MAP_CONFIG_ADDR1_KR == "전국") {
                            geoData = do_geo_data;
                            $(".price_info").show();
                            drawDataWithLegend(_GIS_MAP, "vizLegend", statInfos, geoData, gbn2, statDt, txtType1Nm, txtStyleNm, false, "vizText", popType, prefixs, units, formats);
                        }
                        // drawSeoulData(statInfos, level, '아파트 평균 매매실거래가',
						// '(만원)');
                        // $("svg").parent().attr("style","position:absolute;z-index:2");
                        $(".typeA").parent().hide();
                        $(".typeB").parent().hide();
                        // $("#vizLegend").parent().show();
                    } else {
                        fnc_alert("데이터가 없습니다.");
                    }
                },
                error: function (data) {
                	 fnc_alert("데이터가 없습니다.");	
                }
            });
        } else if (gbn1 == "T") {	// 지하철 정보
            if (_MAP_LEVEL < 2) {
                fn_view_option();	// 초기화
                fnc_alert("시/군/구 이하 레벨에서만 지원하는 기능입니다.");
                return false;
            } else {
            	fnc_alert("역 주변 반경500m(도보8분)가 표시됩니다.");
            }
            var bounds = _GIS_MAP.getInfo().bounds;	// 지도의 현재 영역
            var neLat = bounds.getSouthWest().getLng();
			var swLng = bounds.getSouthWest().getLat();
			var swLat = bounds.getNorthEast().getLng();
			var neLng = bounds.getNorthEast().getLat();

            $.ajax({
                type: "POST",
                data: { swLat: swLat, swLng: swLng, neLat: neLat, neLng: neLng },
                url: "/?_c=memul&_p=ajax&_m=default.subwayArea",
                dataType: "json",
                cache: false,
                success: function (data) {
                    var subwayInfos = [];
                    $.each(data, function (index, entry) {
                        var subwayInfo = {
                            code: 'subway' + index,
                            pos: [entry.지도좌표Y, entry.지도좌표X],
                            radiuses: [200, 500], // 반경 정보(m)
                            strokeWeight: 1,
                            strokeColor: '#454545',
                            strokeOpacity: 1,
                            strokeStyle: 'dash',
                            fillColor: 'orange',
                            fillOpacity: 0.25
                        };
                        subwayInfos.push(subwayInfo);
                    });
                    if (subwayInfos.length > 0) {
                        subwayInfos.forEach(function (area) {
                            _GIS_MAP.drawArea('circle', area);
                        });
                        // $("svg").parent().attr("style","position:absolute;z-index:2");
                    } else {
                        fnc_alert("데이터가 없습니다.");
                    }
                },
                error: function (data) {
                }
            });
        } else if (gbn1 == "BS") {	// 버스 정보
            if (_MAP_LEVEL < 3) {
                fn_view_option();	// 초기화
                fnc_alert("읍/면/동 이하 레벨에서만 지원하는 기능입니다.");
                return false;
            }
            var bounds = _GIS_MAP.getInfo().bounds;	// 지도의 현재 영역
			var neLat = bounds.getSouthWest().getLng();
			var swLng = bounds.getSouthWest().getLat();
			var swLat = bounds.getNorthEast().getLng();
			var neLng = bounds.getNorthEast().getLat();

            $.ajax({
                type: "POST",
                data: { swLat: swLat, swLng: swLng, neLat: neLat, neLng: neLng },
                url: "/?_c=memul&_p=ajax&_m=default.BusStop",
                dataType: "json",
                cache: false,
                success: function (data) {
                   var customPoints = [];
					if (data.length > 0) {
						$.each(data, function (index, entry) {
							var busInfo = {
								id: entry.정류소아이디 + "|" + entry.정류소명,
								pos: [entry.지도좌표Y, entry.지도좌표X],
								image: {
									src: "/images/Common/maker_bus.png",
									size: [30, 39], option: { offset: [15, 39] }	// size
																					// height
																					// =
																					// offset
																					// height
																					// //
																					// 좌표가
																					// 안맞으면
																					// offset
																					// 조정
								},
								click: fn_Open_sticker_info_marker_busStop // 하단에
																			// 뜨는
																			// 매물
																			// 상세
																			// 레이어
							};
							// var busInfo = [entry.지도좌표Y, entry.지도좌표X];
							customPoints.push(busInfo);
						});
						_GIS_MAP.setMarkersReturnMarker(customPoints, false);	// true:드래그여부
						// .setFullView(customPoints, true);
					} else {
						fnc_alert("해당 지역에는 <br/>버스정류소 정보가 없습니다.");
					}
                },
                error: function (data) {
                }
            });
        } else if (gbn1 == "CC") {	// Cctv 정보
            if (_MAP_LEVEL < 3) {
                fn_view_option();	// 초기화
                fnc_alert("읍/면/동 이하 레벨에서만 지원하는 기능입니다.");
                return false;
            }
            var bounds = _GIS_MAP.getInfo().bounds;	// 지도의 현재 영역
            var neLat = bounds.getSouthWest().getLng();
			var swLng = bounds.getSouthWest().getLat();
			var swLat = bounds.getNorthEast().getLng();
			var neLng = bounds.getNorthEast().getLat();

            $.ajax({
                type: "POST",
                data: { swLat: swLat, swLng: swLng, neLat: neLat, neLng: neLng },
                url: "/?_c=memul&_p=ajax&_m=default.Cctv",
                dataType: "json",
                cache: false,
                success: function (data) {
                   var customPoints = [];
					if (data.length > 0) {
						$.each(data, function (index, entry) {
							var busInfo = {
								id: entry.소재지지번주소 + '|' + entry.소재지도로명주소 + '|' + entry.카메라대수 + '|' + entry.카메라화소수 + '|' + entry.설치목적 + '|' + entry.촬영방면정보 + '|' + entry.설치시기,
								pos: [entry.지도좌표Y, entry.지도좌표X],
								image: {
									src: "/images/Common/maker_cctv.png",
									size: [30, 39], option: { offset: [15, 39] }	// size
																					// height
																					// =
																					// offset
																					// height
																					// //
																					// 좌표가
																					// 안맞으면
																					// offset
																					// 조정
								},
								click: fn_Open_sticker_info_marker_Cctv // 하단에
																		// 뜨는 매물
																		// 상세
																		// 레이어
							};
							// var busInfo = [entry.지도좌표Y, entry.지도좌표X];
							customPoints.push(busInfo);
						});
						_GIS_MAP.setMarkersReturnMarker(customPoints, false);	// true:드래그여부
						// .setFullView(customPoints, true);
					} else {
						fnc_alert("해당 지역에는 <br/>버스정류소 정보가 없습니다.");
					}
                },
                error: function (data) {
                }
            });
        } else if (gbn1 == "SC") {	// 학교 정보
            if (_MAP_LEVEL < 2) {
                fn_view_option();	// 초기화
                fnc_alert("시/군/구 이하 레벨에서만 지원하는 기능입니다.");
                return false;
            } else {
            	if (gbn2 == "01") {
            		fnc_alert("아이콘 클릭 시 해당 어린이집정보를 확인하실 수 있습니다.");
            	} else if (gbn2 == "02") {
            		fnc_alert("아이콘 클릭 시 해당 유치원정보를 확인하실 수 있습니다.");
            	} else {
            		fnc_alert("학교 아이콘 클릭시 배정가능한 지역을 시각화하여 보여줍니다.<br/>(사립 또는 특수학교는 배정지역이 노출되지 않습니다.)");
            	}
                $.ajax({
                    type: "POST",
                    data: { "schoolGbn": gbn2 },
                    url: "/?_c=memul&_p=ajax&_m=default.schoolList",
                    dataType: "json",
                    cache: false,
                    success: function (data) {
                        // 맵 마커
                        var customPoints = [];
                        if (data.length > 0) {
                            $.each(data, function (index, entry) {
                                var schoolInfo = {
                                    id: entry.학교아이디,
                                    pos: [entry.지도좌표Y, entry.지도좌표X],
                                    image: {
                                        src: ""+imageServer+"/images/sub/markerLv4_bg3.png",
                                        size: [30, 39], option: { offset: [15, 39] }	// size
																						// height
																						// =
																						// offset
																						// height
																						// //
																						// 좌표가
																						// 안맞으면
																						// offset
																						// 조정
                                    },
                                    click: fn_Open_sticker_info_marker // 하단에
																		// 뜨는 매물
																		// 상세
																		// 레이어
                                };
                                // var schoolInfo = [entry.지도좌표Y, entry.지도좌표X];
                                customPoints.push(schoolInfo);
                            });
                            _GIS_MAP.setMarkersReturnMarker(customPoints, false);	// true:드래그여부
                            // .setFullView(customPoints, true);
                        } else {
							fnc_alert("해당 지역에는 <br/>(어린이집/유치원/초등학교/중학교/고등학교)정보가 없습니다.");
                        }
                    },
                    error: function (data) {
                    }
                });
            }
        }
    }
}

// 맵 레벨 적용
function setMapLevel(dataLevel, cortarNo) {

	_MAP_LEVEL = dataLevel;
    // mapLevel = _GIS_SetMapLevel(dataLevel);
    $.ajax({
        type: "POST",
        data: { "cortarNo": cortarNo, "addr1": "", "addr2": "", "addr3": "" },
        url: "/?_c=comm&_m=getCortarNoInfo&_p=AJAX",
        dataType: "json",
        success: function (reparam) {
            var mapLevel = reparam.지도레벨;
            if (typeof mapLevel == "undefined") {
                mapLevel = 13;
            }
        },
        error: function (reparam) {
        }
    });
}

function mapClick(info) {
    fn_Close_sticker_info();
}

function mapDivClick() {
	$("#vizText").hide();
}


/*
 * 통합검색에서 조회된 단지를 선택한다.
 */
function fnc_searchComplex(searchGbn, searchGbn1, searchGbn2, addr1, addr2, addr3, cortarNo, cd, posX, posY) {
	
	var method = "post";
	var path = "/?_c=memul&_m=p10"
    var form = document.createElement("form");
	var fcode;
	var cortar;

	$.each(memulTypeNames.MemulTypeNames, function(index, entry) {
		if (searchGbn2 == entry.name) {
			fcode = entry.fcode;
			return false;
		}
	});

	$.ajax({
        type: "POST",
        data: { "cortarNo": "", "addr1": addr1, "addr2": addr2, "addr3": addr3 },
        url: "/?_c=comm&_m=getCortarNoInfo&_p=AJAX",
        dataType: "json",
        success: function (reparam) {
        	cortar = reparam.법정동코드;

        	form.setAttribute("method", method);
            form.setAttribute("action", path);
          
			var input1 = $("<input>").attr("type", "hidden").attr("name", "cortarNo").val(cortar);
			$(form).append($(input1));
			var input2 = $("<input>").attr("type", "hidden").attr("name", "direct").val(fcode);
			$(form).append($(input2));
			var input3 = $("<input>").attr("type", "hidden").attr("name", "complexCd").val(cd);
			$(form).append($(input3));
			var input4 = $("<input>").attr("type", "hidden").attr("name", "tabGbn").val("0");
			$(form).append($(input4));
			
			document.body.appendChild(form);
	        form.submit();

        },
        error: function (reparam) {
        }
    });

}

/*
 * [2017-06-19 윤범식] 검색시에 매물종류와 세부종류를 선택 해 준다. -> 함수 searchGbn1 파라미터 추가
 * 
 */
function fnc_searchSpecific(searchGbn, searchGbn1, searchGbn2, addr1, addr2, addr3, cortarNo, cd, posX, posY) {
	var doNext = true;
    var level = 3;

	/*
	 * [2017-06-19 윤범식] 검색시에 매물종류와 세부종류를 선택 해 준다. - S
	 */
	/*
	 * switch (searchGbn2) { case "아파트" : _MAP_TYPE2_CODE = "01";
	 * setCookie("Memul%5FMemulType2", _MAP_TYPE2_CODE); break; case "주상복합아파트" :
	 * _MAP_TYPE2_CODE = "02"; setCookie("Memul%5FMemulType2", _MAP_TYPE2_CODE);
	 * break; case "도시형생활주택" : _MAP_TYPE2_CODE = "03";
	 * setCookie("Memul%5FMemulType2", _MAP_TYPE2_CODE); break; case "재건축" :
	 * _MAP_TYPE2_CODE = "04"; setCookie("Memul%5FMemulType2", _MAP_TYPE2_CODE);
	 * break; case "아파트분양권" : _MAP_TYPE2_CODE = "05";
	 * setCookie("Memul%5FMemulType2", _MAP_TYPE2_CODE); break; case "주상복합분양권" :
	 * _MAP_TYPE2_CODE = "06"; setCookie("Memul%5FMemulType2", _MAP_TYPE2_CODE);
	 * break;
	 * 
	 * case "오피스텔" : _MAP_TYPE2_CODE = "01"; setCookie("Memul%5FMemulType2",
	 * _MAP_TYPE2_CODE); break; case "오피스텔분양권" : _MAP_TYPE2_CODE = "02";
	 * setCookie("Memul%5FMemulType2", _MAP_TYPE2_CODE); break;
	 * 
	 * case "단독주택" : _MAP_TYPE2_CODE = "01"; setCookie("Memul%5FMemulType2",
	 * _MAP_TYPE2_CODE); break; case "다가구" : _MAP_TYPE2_CODE = "02";
	 * setCookie("Memul%5FMemulType2", _MAP_TYPE2_CODE); break; case "다중주택" :
	 * _MAP_TYPE2_CODE = "03"; setCookie("Memul%5FMemulType2", _MAP_TYPE2_CODE);
	 * break; case "상가주택" : _MAP_TYPE2_CODE = "04";
	 * setCookie("Memul%5FMemulType2", _MAP_TYPE2_CODE); break; case "전원주택" :
	 * _MAP_TYPE2_CODE = "05"; setCookie("Memul%5FMemulType2", _MAP_TYPE2_CODE);
	 * break; case "농가주택" : _MAP_TYPE2_CODE = "06";
	 * setCookie("Memul%5FMemulType2", _MAP_TYPE2_CODE); break; case "주택재건축" :
	 * _MAP_TYPE2_CODE = "07"; setCookie("Memul%5FMemulType2", _MAP_TYPE2_CODE);
	 * break; case "기타주택" : _MAP_TYPE2_CODE = "08";
	 * setCookie("Memul%5FMemulType2", _MAP_TYPE2_CODE); break;
	 * 
	 * case "신축빌라" : _MAP_TYPE2_CODE = "01"; setCookie("Memul%5FMemulType2",
	 * _MAP_TYPE2_CODE); break; case "연립빌라" : _MAP_TYPE2_CODE = "02";
	 * setCookie("Memul%5FMemulType2", _MAP_TYPE2_CODE); break; case "고급빌라" :
	 * _MAP_TYPE2_CODE = "03"; setCookie("Memul%5FMemulType2", _MAP_TYPE2_CODE);
	 * break; case "다세대" : _MAP_TYPE2_CODE = "04";
	 * setCookie("Memul%5FMemulType2", _MAP_TYPE2_CODE); break;
	 * 
	 * case "빌딩" : _MAP_TYPE2_CODE = "01"; setCookie("Memul%5FMemulType2",
	 * _MAP_TYPE2_CODE); break; case "상가건물" : _MAP_TYPE2_CODE = "02";
	 * setCookie("Memul%5FMemulType2", _MAP_TYPE2_CODE); break;
	 * 
	 * case "공장" : _MAP_TYPE2_CODE = "01"; setCookie("Memul%5FMemulType2",
	 * _MAP_TYPE2_CODE); break; case "창고" : _MAP_TYPE2_CODE = "02";
	 * setCookie("Memul%5FMemulType2", _MAP_TYPE2_CODE); break; case "아파트형공장" :
	 * _MAP_TYPE2_CODE = "03"; setCookie("Memul%5FMemulType2", _MAP_TYPE2_CODE);
	 * break;
	 * 
	 * default : _MAP_TYPE2_CODE = "00"; setCookie("Memul%5FMemulType2",
	 * _MAP_TYPE2_CODE); break; }
	 */

	isSearch = true;
	/*
	 * [2017-06-19 윤범식] 검색시에 매물종류와 세부종류를 선택 해 준다. - E
	 */

    if (searchGbn == "A") {
        // 시도,시군구,읍면동 검색값에 따라서
        if (addr3 != "") {
            level = 3;
        } else if (addr2 != "") {
            level = 2;
        } else {
            level = 1;
        }

		/* [2017-06-14 윤범식] 지역검색한 경우 : 나의활동 / 지역에 표시 */
		// r114Logger.addAccessLog("mm_3","link","지역^"+ cd +"^" + addr1 + " " +
		// addr2 + " " + addr3, "/?_c=memul&_m=list&_a=area&CortarNo=" + cd,
		// cd);
    } else if (searchGbn == "B") {
        // 마커
        drawMarker = cd + "," + posX + "," + posY;
        // 학교 상세 팝업
        openPopup = "" + cd;
    } else if (searchGbn == "C") {
        // 단지 상세 팝업

		// _SEL_COMPLEXCD = cortarNo;
		_SEL_COMPLEXCD = cd;
		_SEL_COMPLEXNM = $(event.target).html();

		setCookie("Memul%5FComplexCd", cd);
		setCookie("Memul%5FComplexNm", $(event.target).html());

	/*
	 * $("#div_selectArea a:nth-child(7)").text($(event.target).html());
	 * $("#div_selectArea a:nth-child(7)").attr("href",
	 * "javascript:fnc_searchSpecific('" + searchGbn + "', '" + searchGbn1 + "', '" +
	 * searchGbn2 + "', '" + addr1 + "', '" + addr2 + "', '" + addr3 + "', '" +
	 * cortarNo + "', '" + cd + "', '" + posX + "', '" + pos + "');");
	 * 
	 * var aChild1 = $("#addressTitle a:nth-child(1)").html(); var aChild2 =
	 * $("#addressTitle a:nth-child(2)").html(); var aChild3 = $("#addressTitle
	 * a:nth-child(3)").html(); var aChild4 = "<a
	 * href=\'javascript:fnc_searchSpecific(\'" + searchGbn + "\', \'" +
	 * searchGbn1 + "\',\'" + searchGbn2 + "\', \'" + addr1 + "\', \'" + addr2 +
	 * "\', \'" + addr3 + "\', \'" + cortarNo + "\', \'" + cd + "\', \'" + posX +
	 * "\', \'" + pos + "\');\'>" + $(event.target).html() + "<i
	 * class='ico_comm_s arrow4'></i></a>";
	 * 
	 * $("#addressTitle").empty();
	 * 
	 * $("#addressTitle").append(aChild1); $("#addressTitle").append(aChild2);
	 * $("#addressTitle").append(aChild3); $("#addressTitle").append(aChild4);
	 */
        if (
				(searchGbn1 == "아파트" && _MAP_TYPE1_CODE != "A01")
        		|| (searchGbn1 == "오피스텔" && _MAP_TYPE1_CODE != "A02")
				|| (searchGbn1 == "원룸" && _MAP_TYPE1_CODE != "A03")
				|| (searchGbn1 == "주택" && _MAP_TYPE1_CODE != "A04")
				|| (searchGbn1 == "빌라" && _MAP_TYPE1_CODE != "A05")
				|| (searchGbn1 == "재개발" && _MAP_TYPE1_CODE != "A06")
				|| (searchGbn1 == "상가" && _MAP_TYPE1_CODE != "A07")
				|| (searchGbn1 == "사무실" && _MAP_TYPE1_CODE != "A08")
				|| (searchGbn1 == "빌딩/건물" && _MAP_TYPE1_CODE != "A09")
				|| (searchGbn1 == "공장/창고" && _MAP_TYPE1_CODE != "A10")
				|| (searchGbn1 == "토지" && _MAP_TYPE1_CODE != "A11")
				|| (searchGbn1 == "숙박콘도펜션" && _MAP_TYPE1_CODE != "A12")
		) {
            $("#mapSt").change(function() {	// 비동기 때문에 위에서 클릭하고 지도를 다 그린 후 팝업을
											// 띄우기 위해서
            	if ($("#mapSt").val() == "fnc_MemulType1_sel end") {
        	        GetPositionAddr(posY, posX, "txt_area2", "txt_cortarInfo2");
        	        $("#txt_area2").unbind("change");
        	        $("#txt_area2").change(function (e) {	// 필터검색으로 주소 변경시
        	            clearOverlays();
        	            _MAP_CortarNo = $("#txt_cortarInfo2").val().split("|")[0];
        	            if (level == 2) {
        	                _MAP_CortarNo = $("#txt_cortarInfo2").val().split("|")[0].substring(0, 5) + "00000";
        	            } else if (level == 1) {
        	                _MAP_CortarNo = $("#txt_cortarInfo2").val().split("|")[0].substring(0, 2) + "00000000";
        	            }
        	            tempMoveX = posX;
        	            tempMoveY = posY;
                        openPopup = "#sticker_" + cd + "|" + searchGbn2;
        	            fn_setFullView(_MAP_CortarNo, level, addr3, posX, posY);
        	        	$("#mapSt").unbind("change");
        	        	$("#mapSt").val("");

						/* [2017-06-14 윤범식] 단지검색한 경우 : 나의활동 / 단지에 표시 - S */
						var mmCode = fn_comm_setMmCode(2, searchGbn2);
						/*
						 * $.ajax({ type: "POST", data: { 'complexGbn':
						 * searchGbn2, 'complexCd': cd }, url:
						 * "/?_c=memul&_p=ajax&_m=default.complexInfo",
						 * dataType: "json", cache: false, success: function
						 * (reparam) { //
						 * r114Logger.addAccessLog("mm_4","link","단지^"+ //
						 * _MAP_CortarNo //
						 * +"^"+reparam.건물명,"/?_c=memul&_m=complex&_a=detail&CortarNo="+ //
						 * _MAP_CortarNo +"&ComplexCd="+ cd +"&mmCode=" // +
						 * mmCode, _MAP_CortarNo + "^"+ cd +"^" + // mmCode); },
						 * error: function (data) { console.log(data); } });
						 */
						/* [2017-06-14 윤범식] 단지검색한 경우 : 나의활동 / 단지에 표시 - E */
        	        });
            	}
            });
        	doNext = false;
        } else {
        	openPopup = "#sticker_" + cd + "|" + searchGbn2;
    	}

    } else if (searchGbn == "D") {
    	// 통계
    }
    
    if (doNext) {
	    if (cortarNo == "") {
	        // cortarNo = "1123010900";
	        // 127.0657224353711 37.592795839089646
	        GetPositionAddr(posY, posX, "txt_area2", "txt_cortarInfo2");
	        $("#txt_area2").unbind("change");
	        $("#txt_area2").change(function (e) {	// 필터검색으로 주소 변경시
	            clearOverlays();
	            _MAP_CortarNo = $("#txt_cortarInfo2").val().split("|")[0];
	            if (level == 2) {
	                _MAP_CortarNo = $("#txt_cortarInfo2").val().split("|")[0].substring(0, 5) + "00000";
	            } else if (level == 1) {
	                _MAP_CortarNo = $("#txt_cortarInfo2").val().split("|")[0].substring(0, 2) + "00000000";
	            }
	            tempMoveX = posX;
	            tempMoveY = posY;
	            fn_setFullView(_MAP_CortarNo, level, addr3, posX, posY);

				/* [2017-06-14 윤범식] 단지검색한 경우 : 나의활동 / 단지에 표시 - S */
				/*
				 * if (searchGbn == "C") { var mmCode = fn_comm_setMmCode(2,
				 * searchGbn2); $.ajax({ type: "POST", data: { 'complexGbn':
				 * searchGbn2, 'complexCd': cd }, url:
				 * "/?_c=memul&_p=ajax&_m=default.complexInfo", dataType:
				 * "json", cache: false, success: function (reparam) { //
				 * r114Logger.addAccessLog("mm_4","link","단지^"+ // _MAP_CortarNo //
				 * +"^"+reparam.건물명,"/?_c=memul&_m=complex&_a=detail&CortarNo="+ //
				 * _MAP_CortarNo +"&ComplexCd="+ cd +"&mmCode=" + // mmCode,
				 * _MAP_CortarNo + "^"+ cd +"^" + mmCode); }, error: function
				 * (data) { console.log(data); } }); }
				 */
				/* [2017-06-14 윤범식] 단지검색한 경우 : 나의활동 / 단지에 표시 - E */
	        });
	    } else {      
	    	clearOverlays();
	        _MAP_CortarNo = cortarNo;
	        if (level == 2) {
	            _MAP_CortarNo = cortarNo.substring(0, 5) + "00000";
	        } else if (level == 1) {
	            _MAP_CortarNo = cortarNo.substring(0, 2) + "00000000";
	        }
	        tempMoveX = posX;
	        tempMoveY = posY;
	        fn_setFullView(_MAP_CortarNo, level, addr3, posX, posY);

	    }
    }

    // 법정동코드 위치로
    // fn_setFullView(cortarNo,3,'전체',posX,posY);
}

/* 매전월 선택 열기 */
function open_landMenu3_before() {
	if (_MAP_TYPE1_CODE == "A06") {	// 재개발
		alert("재개발은 매매만 선택가능합니다.");
	} else {
		open_landMenu3();
	}
}

/* 지도 통계 선택 */
function open_mapOption(id) {
	/* [2017-06-02 윤범식] 매물 유형에 따른 하위 옵션이 없을때 메시지 처리 - S */

	var optionTitle = $(id).find("span").html();

	if (optionTitle == "통계") {
		if (_MAP_TYPE1_CODE == "A03") {
			if (_MAP_STYLE_CODE == "0") { // 전체
				fnc_alert("원룸, 전체는 해당 기능을 지원하지 않습니다.");
			} else if (_MAP_STYLE_CODE == "3") { // 월세
				fnc_alert("원룸, 월세는 해당 기능을 지원하지 않습니다.");
			}

		} else if (_MAP_TYPE1_CODE == "A04") {
			if (_MAP_STYLE_CODE == "0") { // 전체
				fnc_alert("주택, 전체는 해당 기능을 지원하지 않습니다.");
			}

		} else if (_MAP_TYPE1_CODE == "A05") {
			if (_MAP_STYLE_CODE == "0") { // 전체
				fnc_alert("빌라, 전체는 해당 기능을 지원하지 않습니다.");
			}

		} else if (_MAP_TYPE1_CODE == "A06") { // 재개발
			if (_MAP_STYLE_CODE == "0") { // 전체
				fnc_alert("재개발, 전체는 해당 기능을 지원하지 않습니다.");
			} else if (_MAP_STYLE_CODE == "2") { // 전세
				fnc_alert("재개발, 전세는 해당 기능을 지원하지 않습니다.");
			} else if (_MAP_STYLE_CODE == "3") { // 월세
				fnc_alert("재개발, 월세는 해당 기능을 지원하지 않습니다.");
			}

		} else if (_MAP_TYPE1_CODE == "A07") {
			if (_MAP_STYLE_CODE == "0") { // 전체
				fnc_alert("상가, 전체는 해당 기능을 지원하지 않습니다.");
			}

		} else if (_MAP_TYPE1_CODE == "A08") {// 사무실
			if (_MAP_STYLE_CODE == "0") { // + 전체
				fnc_alert("사무실, 전체는 해당 기능을 지원하지 않습니다.");
			} else if (_MAP_STYLE_CODE == "2") { // + 전세
				fnc_alert("사무실, 전세는 해당 기능을 지원하지 않습니다.");
			}

		} else if (_MAP_TYPE1_CODE == "A09") { // 빌딩/건물
			if (_MAP_STYLE_CODE == "0") { // + 전체
				fnc_alert("빌딩/건물, 전체는 해당 기능을 지원하지 않습니다.");
			} else if (_MAP_STYLE_CODE == "2") { // + 전세
				fnc_alert("빌딩/건물, 전세는 해당 기능을 지원하지 않습니다.");
			}

		} else if (_MAP_TYPE1_CODE == "A10") { // 공장/창고
			if (_MAP_STYLE_CODE == "0") { // + 전체
				fnc_alert("공장/창고, 전체는 해당 기능을 지원하지 않습니다.");
			}
			
		} else if (_MAP_TYPE1_CODE == "A11") { // 토지
			if (_MAP_STYLE_CODE == "0") { // 전체
				fnc_alert("토지, 전체는 해당 기능을 지원하지 않습니다.");
			} else if (_MAP_STYLE_CODE == "3") { // 월세
				fnc_alert("토지, 월세는 해당 기능을 지원하지 않습니다.");
			}
		
		} else if (_MAP_TYPE1_CODE == "A12") { // 숙박콘도펜션
			if (_MAP_STYLE_CODE == "0") { // 전체
				fnc_alert("숙박콘도펜션, 전체는 해당 기능을 지원하지 않습니다.");
			} else if (_MAP_STYLE_CODE == "2") { // 전세
				fnc_alert("숙박콘도펜션, 전세는 해당 기능을 지원하지 않습니다.");
			} else if (_MAP_STYLE_CODE == "3") { // 월세
				fnc_alert("숙박콘도펜션, 월세는 해당 기능을 지원하지 않습니다.");
			}
		}

	}
	/* [2017-06-02 윤범식] 매물 유형에 따른 하위 옵션이 없을때 메시지 처리 - E */

	$("#map_layout .gis > div > button").removeClass("on");
	$(id).addClass("on");
	$("#map_layout .gis > div > button + ul").removeAttr("style");
	$("#map_layout .gis > div > button + ul").removeClass("on");
	$("#map_layout .gis > div > button + ul").addClass("off");
	$("#map_layout .gis > div > button.on + ul").removeClass("off");
	$("#map_layout .gis > div > button.on + ul").addClass("on");
	$("#map_layout .gis > div > button.on").each(function() {
		var thisOn = $(this).parent("div").find("ul");
		if (thisOn.attr("class") == "on") {
		}
		$("#map_layout .gis > div > ul > li > a").unbind("click");
		$("#map_layout .gis > div > ul > li > a").on('click', function() {
			$(this).parents("ul").css('display', 'none');
			$("#map_layout .gis > div > ul > li").removeClass("on");
			$(this).parents("li").addClass("on");
		});
	});
}

// 지도 폴리곤 등 초기화
function open_mapReset(id) {
	$("#map_layout .gis > div > button").removeClass("on");
	$("#map_layout .gis > div > button + ul").removeAttr("style");
	$("#map_layout .gis > div > button + ul").removeClass("on");
	$("#map_layout .gis > div > ul").parents("ul").css('display', 'none');
	$("#map_layout .gis > div > ul > li").removeClass("on");
	$(".dev_leg_cont").removeClass('range_wrap');
}

// 지도 확대
function zoomInMap(obj) {
	var level = _GIS_MAP.getInfo().level
	_GIS_MAP.level(level - 1);
}

// 지도 축소
function zoomOutMap(obj) {
	var level = _GIS_MAP.getInfo().level
	
	_GIS_MAP.level(level + 1);
}

//지도크게보기
function upsizeMap() {

	setCookie("mapSize",'upsize'); 

	$('#mapAreaBasic').addClass('area_long');

	$('#mapAreaRoadview').addClass('area_long');

	$('#btnUpsizeMap').hide();
	$('#btnDownsizeMap').show();

	//_GIS_MAP.map().relayout();




}

//지도작게보기
function downsizeMap() {

	setCookie("mapSize",'downsize'); 
	
	$('#mapAreaBasic').removeClass('area_long');
	$('#mapAreaRoadview').removeClass('area_long');

	$('#btnUpsizeMap').show();
	$('#btnDownsizeMap').hide();
	
	//_GIS_MAP.map().relayout();

}

// 로드뷰로 전환
function changeMapToRoadview() {
	$('#btnMapReset').trigger('click');
	$('#mapAreaRoadview').show();
	fn_SetMapRoadview(_GIS_MAP.getInfo().center.getLat(), _GIS_MAP.getInfo().center.getLng(), _GIS_MAP.getInfo().level);
}

// 일반지도로 전환
function changeMapToBasic() {
	$('#mapAreaRoadviewRadar').html('');
	$('#mapAreaRoadviewContents').html('');
	$('#mapAreaRoadview').hide();
}



//하단네비 열기 - 20181211
function _footnaviViewInfo(state) {

	if (state =="1")
	{
		setCookie("foot_navi",'closenavi'); 
		$('#divfootnavi').addClass('down_navi');
	} else {
		setCookie("foot_navi",'opennavi'); 
		$('#divfootnavi').removeClass('down_navi');		
	}
}
