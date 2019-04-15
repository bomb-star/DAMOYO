/*
 *   상세검색  
 */

var SizeMode = 'm';

$(document).ready(function () {

    var aryBtnList;

    $.ajax({
        url: '/?c=memul&p=h&f=default.filter.ajax.json',
        method: 'get',
        dataType: "json",
        async: false,
        success: function (data) {
            aryBtnList = data;
        }
    });

    // 상세검색옵션 출력	
    viewFilter(aryBtnList);

    // 상세검색옵션에서 평 <--> m2 전환
    $('.btnSizeViewChange').on('click', viewSizeMode);

    $('#MemulType1').find('input[name=type1]').on('click', function () {
        viewFilter(aryBtnList);
    });

    $('#MemulStyle').find('input[name=type3]').on('click', function() {
        viewFilter(aryBtnList);
    });

    // 매물리스트를 검색한다.
    //  상세검색옵션에서 [적용] 버튼 
	$('.btnApply').on('click', function(){
		fn_WaitingPage(true);
		filterApply();
		$(this).parents('.sort').removeClass('on');
	});

	// 상세검색옵션 초기화
    //  상세검색옵션에서 [초기화] 버튼	
    $('.btnReset').on('click', function() {
    	fn_WaitingPage(true);
    	frmReset();
    	fnc_filter_sel("");
    	open_memul_filter();

		$(this).parents('.sort').removeClass('on');
    });
    
    // 숫자만 입력가능한 컨트롤 처리	
    $(document).on("change keyup input", "input:text[numberOnly]", function(e) {
		$(this).val(numberWithCommas($(this).val().replace(/[^0-9.]/gi,"")));
	});
    
    // 매매가 변경
    $(document).on("selectmenuchange", ".dealPriceType", function() {
    	
    	var range = $(this).children("option:selected").data("range");
    	if (range == "0-0") {
			$("#minDealPrice").val("");
			$("#maxDealPrice").val("");
			$("#minDealPrice").prop("readonly", true);	
			$("#maxDealPrice").prop("readonly", true);
		}
		else if (range == "s-s") {
			$("#minDealPrice").val("");
			$("#maxDealPrice").val("");
			$("#minDealPrice").prop("readonly", false);	
			$("#maxDealPrice").prop("readonly", false);
		}
		else {
			$("#minDealPrice").prop("readonly", true);	
			$("#maxDealPrice").prop("readonly", true);
			$("#minDealPrice").val(numberWithCommas(range.split("-")[0]));
			$("#maxDealPrice").val(numberWithCommas(range.split("-")[1]));
		}

    });
    
    // 보증금 변경
    $(document).on("selectmenuchange", ".depositPriceType", function() {
    	
    	var range = $(this).children("option:selected").data("range");
    	if (range == "0-0") {
			$("#minDepositPrice").val("");
			$("#maxDepositPrice").val("");
			$("#minDepositPrice").prop("readonly", true);	
			$("#maxDepositPrice").prop("readonly", true);
		}
		else if (range == "s-s") {
			$("#minDepositPrice").val("");
			$("#maxDepositPrice").val("");
			$("#minDepositPrice").prop("readonly", false);	
			$("#maxDepositPrice").prop("readonly", false);
		}
		else {
			$("#minDepositPrice").prop("readonly", true);	
			$("#maxDepositPrice").prop("readonly", true);
			$("#minDepositPrice").val(numberWithCommas(range.split("-")[0]));
			$("#maxDepositPrice").val(numberWithCommas(range.split("-")[1]));
		}

    });
    
    // 월세 변경
    $(document).on("selectmenuchange", ".monthlyRentPriceType", function() {
    	
    	var range = $(this).children("option:selected").data("range");
    	if (range == "0-0") {
			$("#minMonthlyRentPrice").val("");
			$("#maxMonthlyRentPrice").val("");
			$("#minMonthlyRentPrice").prop("readonly", true);	
			$("#maxMonthlyRentPrice").prop("readonly", true);
		}
		else if (range == "s-s") {
			$("#minMonthlyRentPrice").val("");
			$("#maxMonthlyRentPrice").val("");
			$("#minMonthlyRentPrice").prop("readonly", false);	
			$("#maxMonthlyRentPrice").prop("readonly", false);
		}
		else {
			$("#minMonthlyRentPrice").prop("readonly", true);	
			$("#maxMonthlyRentPrice").prop("readonly", true);
			$("#minMonthlyRentPrice").val(numberWithCommas(range.split("-")[0]));
			$("#maxMonthlyRentPrice").val(numberWithCommas(range.split("-")[1]));
		}

    });
    
    // 관리비 변경
    $(document).on("selectmenuchange", ".maintenanceCostType", function() {
    	
    	var range = $(this).children("option:selected").data("range");
    	if (range == "0-0") {
			$("#minMaintenanceCost").val("");
			$("#maxMaintenanceCost").val("");
			$("#minMaintenanceCost").prop("readonly", true);	
			$("#maxMaintenanceCost").prop("readonly", true);
		}
		else if (range == "s-s") {
			$("#minMaintenanceCost").val("");
			$("#maxMaintenanceCost").val("");
			$("#minMaintenanceCost").prop("readonly", false);	
			$("#maxMaintenanceCost").prop("readonly", false);
		}
		else {
			$("#minMaintenanceCost").prop("readonly", true);	
			$("#maxMaintenanceCost").prop("readonly", true);
			$("#minMaintenanceCost").val(numberWithCommas(range.split("-")[0]));
			$("#maxMaintenanceCost").val(numberWithCommas(range.split("-")[1]));
		}

    });
    
    // 면적 변경 (평)
    $(document).on("selectmenuchange", "#areaSizePyType", function() {
    	
    	var range = $(this).children("option:selected").data("range");
    	if (range == "0-0") {
			$("#minSpaciousAreaSize").val("");
			$("#maxSpaciousAreaSize").val("");
			$("#minSpaciousAreaSize").prop("readonly", true);	
			$("#maxSpaciousAreaSize").prop("readonly", true);
		}
		else if (range == "s-s") {
			$("#minSpaciousAreaSize").val("");
			$("#maxSpaciousAreaSize").val("");
			$("#minSpaciousAreaSize").prop("readonly", false);	
			$("#maxSpaciousAreaSize").prop("readonly", false);
		}
		else {
			$("#minSpaciousAreaSize").prop("readonly", true);	
			$("#maxSpaciousAreaSize").prop("readonly", true);
			$("#minSpaciousAreaSize").val(numberWithCommas(range.split("-")[0]));
			$("#maxSpaciousAreaSize").val(numberWithCommas(range.split("-")[1]));
		}

    });
    
    // 면적 변경 (m2)
    $(document).on("selectmenuchange", "#areaSizeM2Type", function() {
    	
    	var range = $(this).children("option:selected").data("range");
    	if (range == "0-0") {
			$("#minSquareAreaSize").val("");
			$("#maxSquareAreaSize").val("");
			$("#minSquareAreaSize").prop("readonly", true);	
			$("#maxSquareAreaSize").prop("readonly", true);
		}
		else if (range == "s-s") {
			$("#minSquareAreaSize").val("");
			$("#maxSquareAreaSize").val("");
			$("#minSquareAreaSize").prop("readonly", false);	
			$("#maxSquareAreaSize").prop("readonly", false);
		}
		else {
			$("#minSquareAreaSize").prop("readonly", true);	
			$("#maxSquareAreaSize").prop("readonly", true);
			$("#minSquareAreaSize").val(numberWithCommas(range.split("-")[0]));
			$("#maxSquareAreaSize").val(numberWithCommas(range.split("-")[1]));
		}

    });

});

// 평 <--> m2 바꿔보기
var viewSizeMode = function () {
    SizeMode = $(this).attr('btn-type');
    
    $('#minSpaciousAreaSize').val('');
    $('#maxSpaciousAreaSize').val('');
    $('#minSquareAreaSize').val('');
    $('#maxSquareAreaSize').val('');
    
    $('#areaSizePyType option:eq(0)').prop("selected", true);
	$('#areaSizePyType').selectmenu("refresh");
	
	$('#areaSizeM2Type option:eq(0)').prop("selected", true);
	$('#areaSizeM2Type').selectmenu("refresh");
    
    if (SizeMode == 'p') {
    	$('.Spacious').show();	
    	$('.squareMeter').hide();    	    
    	 $("#spanAreaSizePyType").show();
        $("#spanAreaSizeM2Type").hide();       

    } else {
        $('.Spacious').hide();
        $('.squareMeter').show();       
        $("#spanAreaSizePyType").hide();
        $("#spanAreaSizeM2Type").show();
    }

    // calculationSize(SizeMode);
}

// 평 <--> m2 변환 계산
var calculationSize = function (type) {
    var calNum = 0.0000;
    var minVal;
    var maxVal;
    if (type == 'p') { // ㎡ to 평
        calNum = 0.3025;
        minVal = ($('#minSquareAreaSize').val() * calNum).toFixed(0);
        maxVal = ($('#maxSquareAreaSize').val() * calNum).toFixed(0);
        $('#minSpaciousAreaSize').val(minVal == 0.00 ? '' : minVal);
        $('#maxSpaciousAreaSize').val(maxVal == 0.00 ? '' : maxVal);
    } else { // 평 to ㎡
        calNum = 3.3058;
        minVal = ($('#minSpaciousAreaSize').val() * calNum).toFixed(2);
        maxVal = ($('#maxSpaciousAreaSize').val() * calNum).toFixed(2);
        $('#minSquareAreaSize').val(minVal == 0.00 ? '' : minVal);
        $('#maxSquareAreaSize').val(maxVal == 0.00 ? '' : maxVal);
    }
}

//필터 적용 후  매물리스트 검색
var filterApply = function () {

    /****************** 매매가  ******************/
    $('#hidDealPriceType').val($('.dealPriceType option:selected').val());
    var aryDealPrice = $('.dealPriceType option:selected').data("range").split('-');
    aryDealPrice[0] = (aryDealPrice[0] == 's') ? $('#minDealPrice').val() : aryDealPrice[0];
    aryDealPrice[1] = (aryDealPrice[1] == 's') ? $('#maxDealPrice').val() : aryDealPrice[1];
    $('#hidMinDealPrice').val(aryDealPrice[0]);
    $('#hidMaxDealPrice').val(aryDealPrice[1]);
    /****************** 매매가  ******************/

    /****************** 보증금  ******************/
	$('#hidDepositPriceType').val($('.depositPriceType option:selected').val());
    var aryDepositPrice = $('.depositPriceType option:selected').data("range").split('-');
    aryDepositPrice[0] = (aryDepositPrice[0] == 's') ? $('#minDepositPrice').val() : aryDepositPrice[0];
    aryDepositPrice[1] = (aryDepositPrice[1] == 's') ? $('#maxDepositPrice').val() : aryDepositPrice[1];
    $('#hidMinDepositPrice').val(aryDepositPrice[0]);
    $('#hidMaxDepositPrice').val(aryDepositPrice[1]);
    /****************** 보증금  ******************/


    /****************** 월세금  ******************/
	$('#hidMonthlyRentPriceType').val($('.monthlyRentPriceType option:selected').val());
    var aryMonthlyRentPrice = $('.monthlyRentPriceType option:selected').data("range").split('-');
    aryMonthlyRentPrice[0] = (aryMonthlyRentPrice[0] == 's') ? $('#minMonthlyRentPrice').val() : aryMonthlyRentPrice[0];
    aryMonthlyRentPrice[1] = (aryMonthlyRentPrice[1] == 's') ? $('#maxMonthlyRentPrice').val() : aryMonthlyRentPrice[1];

    $('#hidMinMonthlyRentPrice').val(aryMonthlyRentPrice[0]);
    $('#hidMaxMonthlyRentPrice').val(aryMonthlyRentPrice[1]);
    /****************** 월세금  ******************/

    /******************* 면적  *******************/
    // m2 단위로 검색
	if ($("#spanAreaSizeM2Type").css("display") != "none") {
		$('#hidAreaSizeType').val($('#areaSizeM2Type option:selected').val());

	    var aryAreaSize = $('#areaSizeM2Type option:selected').data("range").split('-');
	    aryAreaSize[0] = (aryAreaSize[0] == 's') ? $('#minSquareAreaSize').val() : aryAreaSize[0];
	    aryAreaSize[1] = (aryAreaSize[1] == 's') ? $('#maxSquareAreaSize').val() : aryAreaSize[1];

	    if (aryAreaSize[0] == 's') {
            aryAreaSize[0] = ($('#minSpaciousAreaSize').val()).toFixed(2);
            aryAreaSize[1] = ($('#maxSpaciousAreaSize').val()).toFixed(2)
	    }
	    else {
	    	 aryAreaSize[0] = $('#minSquareAreaSize').val();
	         aryAreaSize[1] = $('#maxSquareAreaSize').val();
	    }

	    $('#hidMinAreaSize').val(aryAreaSize[0]);
	    $('#hidMaxAreaSize').val(aryAreaSize[1]);     	
	}
    	
	// 평 단위로 검색
	else {
		$('#hidAreaSizeType').val($('#areaSizePyType option:selected').val());

	    var aryAreaSize = $('#areaSizePyType option:selected').data("range").split('-');
	    aryAreaSize[0] = (aryAreaSize[0] == 's') ? $('#minSpaciousAreaSize').val() : aryAreaSize[0];
	    aryAreaSize[1] = (aryAreaSize[1] == 's') ? $('#maxSpaciousAreaSize').val() : aryAreaSize[1];

	    var calNum = 3.3058;
	    if (aryAreaSize[0] == 's') {
            aryAreaSize[0] = ($('#minSpaciousAreaSize').val() * calNum).toFixed(2);
            aryAreaSize[1] = ($('#maxSpaciousAreaSize').val() * calNum).toFixed(2)
	    }
	    else {
	        aryAreaSize[0] = (aryAreaSize[0] * calNum).toFixed(2);
	        aryAreaSize[1] = (aryAreaSize[1] * calNum).toFixed(2);
	    }

	    $('#hidMinAreaSize').val(aryAreaSize[0]);
	    $('#hidMaxAreaSize').val(aryAreaSize[1]);     		
	}
	
	if  (!$('#hidMinAreaSize').val()) {
		$('#hidMinAreaSize').val("0.00");
	}
	if  (!$('#hidMaxAreaSize').val()) {
		$('#hidMaxAreaSize').val("0.00");
	}
    /******************* 면적  *******************/

    $('#hidRoomCountType').val($('.roomCountType option:selected').val());
    $('#hidBathRoomType').val($('.bathRoomType option:selected').val());

    /****************** 관리비  ******************/
	$('#hidMaintenanceCostType').val($('.maintenanceCostType option:selected').val());
    var aryMaintenanceCost = $('.maintenanceCostType option:selected').data("range").split('-');
    aryMaintenanceCost[0] = (aryMaintenanceCost[0] == 's') ? $('#minMaintenanceCost').val() : aryMaintenanceCost[0];
    aryMaintenanceCost[1] = (aryMaintenanceCost[1] == 's') ? $('#maxMaintenanceCost').val() : aryMaintenanceCost[1];
    $('#hidMinMaintenanceCost').val(aryMaintenanceCost[0]);
    $('#hidMaxMaintenanceCost').val(aryMaintenanceCost[1]);
    /****************** 관리비  ******************/

    /****************** 난방  ******************/
    $('#hidHeatingType').val($('.heatingType option:selected').val());
    /****************** 난방  ******************/
    
    /****************** 방향  ******************/
    $('#hidDirectionType').val($('.directionType option:selected').val());
    /****************** 방향  ******************/
    
    /****************** 지목  ******************/
    $('#hidJimokType').val($('.jimokTpe option:selected').val());
    /****************** 지목  ******************/

//    console.log($('form[name=frmFilter]').serialize());
    
    open_memul_filter();
    var minDealPrice					= $("#hidMinDealPrice").val();				// 매매가 최소
    var maxDealPrice					= $("#hidMaxDealPrice").val();				// 매매가 최대
    var minDepositPrice				= getCookie('Memul_MemulStyle') == '0' ? $("#hidMinDealPrice").val() : $("#hidMinDepositPrice").val();			// 보증금 최소
    var maxDepositPrice			= getCookie('Memul_MemulStyle') == '0' ? $("#hidMaxDealPrice").val() :$("#hidMaxDepositPrice").val();			// 보증금 최대
    var minMonthlyRentPrice		= $("#hidMinMonthlyRentPrice").val();	// 월세금 최소
    var maxMonthlyRentPrice		= $("#hidMaxMonthlyRentPrice").val();	// 월세금 최대
    var minAreaSize					= $("#hidMinAreaSize").val();				// 면적 최소
    var maxAreaSize					= $("#hidMaxAreaSize").val();				// 면적 최대
    var roomCountType				= $("#hidRoomCountType").val();			// 방갯수
    var bathRoomType				= $("#hidBathRoomType").val();			// 욕실수
    var minMaintenanceCost		= $("#hidMinMaintenanceCost").val();	// 관리비 최소
    var maxMaintenanceCost		= $("#hidMaxMaintenanceCost").val();	// 관리비 최대
    var heatingType					= $("#hidHeatingType").val();				// 난방방식
    var directionType					= $("#hidDirectionType").val();				// 방향
    var jimokType						= $("#hidJimokType").val();					// 지목

    if (minDealPrice		== "")	{ minDealPrice = "0"; }
    if (maxDealPrice		== "")	{ maxDealPrice = "0"; }
    if (minDepositPrice		== "")	{ minDepositPrice = "0"; }
    if (maxDepositPrice		== "")	{ maxDepositPrice = "0"; }
    if (minMonthlyRentPrice	== "")	{ minMonthlyRentPrice = "0"; }
    if (maxMonthlyRentPrice	== "")	{ maxMonthlyRentPrice = "0"; }
    if (minAreaSize			== "")	{ minAreaSize = "0"; }
    if (maxAreaSize			== "")	{ maxAreaSize = "0"; }
    if (roomCountType		== "a")	{ roomCountType = "0"; }
    if (bathRoomType		== "a")	{ bathRoomType = "0"; }
    if (minMaintenanceCost	== "")	{ minMaintenanceCost = "0"; }
    if (maxMaintenanceCost	== "")	{ maxMaintenanceCost = "0"; }
    if (heatingType			== "a")	{ heatingType = ""; }
    if (directionType		== "a")	{ directionType = ""; }
    if (jimokType		== "a")	{ jimokType = ""; }
    var returnParam = minDealPrice+"|"+maxDealPrice
    				+"|"+minDepositPrice+"|"+maxDepositPrice
    				+"|"+minMonthlyRentPrice+"|"+maxMonthlyRentPrice
    				+"|"+minAreaSize+"|"+maxAreaSize
    				+"|"+roomCountType+"|"+bathRoomType
    				+"|"+minMaintenanceCost+"|"+maxMaintenanceCost
    				+"|"+heatingType+"|"+directionType
					+"|"+$('.dealPriceType option:selected').val()
					+"|"+$('.depositPriceType option:selected').val()
					+"|"+$('.monthlyRentPriceType option:selected').val()
					+"|"+$('.areaSizeType option:selected').val()
					+"|"+$('.maintenanceCostType option:selected').val()
    				+"|"+($('.jimokType option:selected').val() == "undefined" ? "a" : $('.jimokType option:selected').val());

    fnc_filter_sel(returnParam);
}


// 검색 옵션에 따라 필터 화면을 바꾼다.
var viewFilter = function (aryData) {
    //var mCode = $('#MemulType1').find('input[name=type1]:checked').val();
    //var filterCode = $('#MemulStyle').find('input[name=type3]:checked').val();

    var filterCode = new Array();
    var memulType1;
    var memulType2;

    filterCode[0] = getCookie('Memul_MemulType1');
    filterCode[1] = getCookie('Memul_MemulStyle');

    memulType1 = getCookie('Memul_MemulType1');
    memulType2 = getCookie('Memul_MemulType2');

   /* if (!filterCode[0] || !filterCode[1]) {
        alert('시스템에 문제가 있어 필터 정보를 불러 올 수 없습니다.');
        return false;
    }*/

    var firstArrayNo = 0;
    var propertyNo = 0;

    if ("|A01|A02|A03|A04|A05|".indexOf("|" + filterCode[0] + "|") > -1) {
        firstArrayNo = 0;
        propertyNo = (filterCode[1] == '0') ? 2 : (filterCode[1] == '1' || filterCode[1] == '2') ? 0 : 1;
    }
    else if ("|A07|A08|A09|A10|".indexOf("|" + filterCode[0] + "|") > -1) {
        firstArrayNo = 1;
		propertyNo = (filterCode[1] == '0') ? 2 : (filterCode[1] == '1' || filterCode[1] == '2') ? 0 : 1;
    }
    else if ("|A06|A11|A12|".indexOf("|" + filterCode[0] + "|") > -1) {
        firstArrayNo = 2;
		propertyNo = (filterCode[1] == '0') ? 2 : (filterCode[1] == '1' || filterCode[1] == '2') ? 0 : 1;        

        // 토지
        if (memulType1 == "A11" && memulType2 == "00") {
        	firstArrayNo = 4;
        }
        // 기타
        if (memulType1 == "A12" && memulType2 == "03") {
        	firstArrayNo = 3;
        }
    }

    //viewDisplayLayer(aryData, firstArrayNo, propertyNo);
    //viewDisplayButton(aryData, firstArrayNo, propertyNo);
	//viewDisplaySelect(aryData, firstArrayNo, propertyNo);

    frmReset();
    
    // 쿠키 값에 따라 셋팅
    if (getCookie("Memul_Filter") != "") {
    	var filters = decodeURIComponent(getCookie("Memul_Filter")).split("|");

    	var value = "";
    	// 매매가
    	if (filters[0] != 0 || filters[1] != 0) { // each로 돌려서 range를 검사할까?
			$(".dealPriceType > option[value='"+ filters[14] +"']").prop("selected", true); 
			$('.dealPriceType').selectmenu("refresh");

			if(filters[14] == "s"){
				$("#minDealPrice").val(filters[0]);
				$("#maxDealPrice").val(filters[1]);
			}
    	}
    	// 보증금
    	if (filters[2] != 0 || filters[3] != 0) {
			$(".depositPriceType > option[value='"+ filters[15] +"']").prop("selected", true); 
			$('.depositPriceType').selectmenu("refresh");

			if(filters[15] == "s"){
				$("#minDepositPrice").val(filters[2]);
				$("#maxDepositPrice").val(filters[3]);
			}
    	}
    	// 월세금
    	if (filters[4] != 0 || filters[5] != 0) {
			$(".monthlyRentPriceType > option[value='"+ filters[16] +"']").prop("selected", true); 
			$('.monthlyRentPriceType').selectmenu("refresh");

			if(filters[16] == "s"){
				$("#minMonthlyRentPrice").val(filters[4]);
				$("#maxMonthlyRentPrice").val(filters[5]);
			}
    	}
    	// 면적
    	if (filters[6] != 0 || filters[7] != 0) {
			$(".areaSizeType > option[value='"+ filters[17] +"']").prop("selected", true); 
			$('.areaSizeType').selectmenu("refresh");

			if(filters[17] == "s"){
				$("#minSquareAreaSize").val(filters[6]);
				$("#maxSquareAreaSize").val(filters[7]);
			}
    	}
    	// 방갯수
    	if (filters[8] != 0) {
			$(".roomCountType > option[value='"+ filters[5] +"']").prop("selected", true); 
			$('.roomCountType').selectmenu("refresh");
    	}
    	// 욕실수
    	if (filters[9] != 0) {
			$(".bathRoomType > option[value='"+ filters[9] +"']").prop("selected", true); 
			$('.bathRoomType').selectmenu("refresh");
    	}
    	// 관리비
    	if (filters[10] != 0 || filters[11] != 0) {
			$(".maintenanceCostType > option[value='"+ filters[18] +"']").prop("selected", true); 
			$('.maintenanceCostType').selectmenu("refresh");

			if(filters[18] == "s"){
				$("#minMaintenanceCost").val(filters[10]);
				$("#maxMaintenanceCost").val(filters[11]);
			}
    	}
    	// 난방방식
    	if (filters[12] != "") {
			$(".heatingType > option[value='"+ filters[12] +"']").prop("selected", true); 
			$('.heatingType').selectmenu("refresh");
    	}
    	// 방향
    	if (filters[13] != "") {
			$(".directionType > option[value='"+ filters[13] +"']").prop("selected", true); 
			$('.directionType').selectmenu("refresh");
    	}
    	// 지목
    	if (filters[19] != "") {
			$(".jimokType > option[value='"+ filters[19] +"']").prop("selected", true); 
			$('.jimokType').selectmenu("refresh");
    	}
    }
}


/*var viewDisplayLayer = function (aryData, firstArrayNo, propertyNo) {
    var propertyArray = aryData[firstArrayNo].property[propertyNo];

    $('.dealLayer').css('display', propertyArray[0] == true ? '' : 'none');
    $('.depositLayer').css('display', propertyArray[1] == true ? '' : 'none');
    $('.monthlyRentLayer').css('display', propertyArray[2] == true ? '' : 'none');
    $('.areaSizeLayer').css('display', propertyArray[3] == true ? '' : 'none');
    $('.roomCountLayer').css('display', propertyArray[4] == true ? '' : 'none');
    $('.bathRoomLayer').css('display', propertyArray[5] == true ? '' : 'none');
    $('.maintenanceCostLayer').css('display', propertyArray[6] == true ? '' : 'none');
    $('.heatingLayer').css('display', propertyArray[7] == true ? '' : 'none');
    $('.directionLayer').css('display', propertyArray[8] == true ? '' : 'none');
    $('.jimokLayer').css('display', propertyArray[9] == true ? '' : 'none');
}
*/
var viewDisplayButton = function (aryData, firstArrayNo, propertyNo) {

    var $obj = "";
    var btnArray = aryData[firstArrayNo];
    var result = '';
    var tmpObj = '';

    $.each(btnArray, function (idvName, val) {
        if (idvName != 'property') {
            tmpObj = $obj.replace("{name}", idvName);
            $('.' + idvName).html('');
            $.each(val, function (idx, aryList) {
                result = tmpObj;
                $.each(aryList, function (key, value) {
                    result = result.replace(new RegExp('{' + key + '}', 'gi'), value);
                });
                $('.' + idvName).append(result);
                fnTitleStatus(idvName);
            });
        }
    });
}

/*var viewDisplaySelect = function (aryData, firstArrayNo, propertyNo) {

    var $obj = $('#filterOption').html();
    var btnArray = aryData[firstArrayNo];
    var result = '';
    var tmpObj = '';

    $.each(btnArray, function (idvName, val) {
        if (idvName != 'property') {
            tmpObj = $obj;
			$('.' + idvName).html('');
            $.each(val, function (idx, aryList) {
                result = tmpObj;
                $.each(aryList, function (key, value) {
                    result = result.replace(new RegExp('#' + key + '#', 'gi'), value);
                });

				
				if(aryList['value'] == 'a'){
					result = result.replace(new RegExp('#selected#', 'gi'), "selected");
				}
				else{
					result = result.replace(new RegExp('#selected#', 'gi'), "");
				}
				
                		
                if (idvName == "areaSizeM2Type") {
                	$('#' + idvName).append(result);
                }
                else {
                	$('.' + idvName).not("#areaSizeM2Type").append(result);
                }
            });

			$('.' + idvName).selectmenu("refresh");

			//console.log(idvName + " -> " + $('.' + idvName + ' option:selected').data("range"))
        }
    });
}*/

var frmReset = function() {
	$(".dealPriceType option:eq(0)").prop("selected", true); 
	//$('.dealPriceType').selectmenu("refresh");

	$('.depositPriceType option:eq(0)').prop("selected", true);
	//$('.depositPriceType').selectmenu("refresh");

	$('.monthlyRentPriceType option:eq(0)').prop("selected", true);
	//$('.monthlyRentPriceType').selectmenu("refresh");

	$('#areaSizePyType option:eq(0)').prop("selected", true);
	//$('#areaSizePyType').selectmenu("refresh");
	
	$('#areaSizeM2Type option:eq(0)').prop("selected", true);
	//$('#areaSizeM2Type').selectmenu("refresh");

	$('.roomCountType option:eq(0)').prop("selected", true);
	//$('.roomCountType').selectmenu("refresh");

	$('.bathRoomType option:eq(0)').prop("selected", true);
	//$('.bathRoomType').selectmenu("refresh");

	$('.maintenanceCostType option:eq(0)').prop("selected", true);
	//$('.maintenanceCostType').selectmenu("refresh");

	$('.heatingType option:eq(0)').prop("selected", true);
	//$('.heatingType').selectmenu("refresh");

	$('.directionType option:eq(0)').prop("selected", true);
	//$('.directionType').selectmenu("refresh");
	
	$('.jimokType option:eq(0)').prop("selected", true);
	//$('.jimokType').selectmenu("refresh");

	$('.InputDealPriceType').val('');
	$('.InputDepositPriceType').val('');
	$('.InputMonthlyRentPriceType').val('');
	$('.InputAreaSizeType').val('');
	$('.InputMaintenanceCostType').val('');

    SizeMode = 'm';

    $('.squareMeter').show();	
    $('.Spacious').hide();
    
    $("#spanAreaSizeM2Type").show();
    $("#spanAreaSizePyType").hide();

    $('#minSpaciousAreaSize').val('');
    $('#maxSpaciousAreaSize').val('');
    $('#minSquareAreaSize').val('');
    $('#maxSquareAreaSize').val('');
    
    $('#minDealPrice').val('');
    $('#maxDealPrice').val('');
    
    $('#minMaintenanceCost').val('');
    $('#maxMaintenanceCost').val('');
}

var fnTitleStatus = function (inputName) {
    $('input[name=' + inputName + ']').on('click', function () {
        var tmpName = inputName.replace('Type', '-title');
        $('.' + tmpName).val($(this).attr('display-value'));
    });
}