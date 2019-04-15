//기존 r114.com/main/z/real/header.inc.asp 파일 변수 유지
var arrSysePriceKind = new Array("매매가", "전세가", "보증금", "월세")

var arrSyseMprice = new Array("전체", "1억이하", "1억~3억", "3억~6억", "6억~9억", "9억이상",
		"직접입력")
var arrSyseJprice = new Array("전체", "5천만이하", "5천만~1억", "1억~3억", "3억~6억",
		"6억이상", "직접입력")
var arrSyseBprice = new Array("전체", "1천만이하", "1천만~5천만", "5천만~1억", "1억~3억",
		"3억이상", "직접입력")
var arrSyseWprice = new Array("전체", "30만이하", "30만~50만", "50만~100만",
		"100만~200만", "200만이상", "직접입력")
var arrSyseSize = new Array("전체", "0~66㎡", "66㎡~99㎡", "99㎡~132㎡", "132㎡~165㎡",
		"165㎡~198㎡", "198㎡~330㎡", "330㎡~991㎡", "직접입력")

var arrSyseMpriceVal = new Array("-1~-1", "0~10000", "10000~30000",
		"30000~60000", "60000~90000", "90000~0", "0~0")
var arrSyseJpriceVal = new Array("-1~-1", "0~5000", "5000~10000",
		"10000~30000", "30000~60000", "60000~0", "0~0")
var arrSyseBpriceVal = new Array("-1~-1", "0~1000", "1000~5000", "5000~10000",
		"10000~30000", "30000~0", "0~0")
var arrSyseWpriceVal = new Array("-1~-1", "0~30", "30~50", "50~100", "100~200",
		"200~", "0~0")
var arrSyseSizeVal = new Array("-1~-1", "0~66", "66~99", "99~132", "132~165",
		"165~198", "198~330", "330~991", "0~0")

var compareMaxCount = 3;

var drawedComplexNextTown = false;
var drawedSimilarComplexList = false;

// ///////////////// 기본 파라미터 설정
// -- 지도에서 선택한 값 기본 설정
function fn_arrSetVariablesDefault() {
	sise_estatekind = "A";
	sise_searchGbn = "apt";
	sise_mmjjww = "MM";

	if (fn_setValueStr(_SEL_MAP_TYPE1_CODE)) { // 기존 cMemul fCode 값
		if (fn_setValueStr(_SEL_MAP_TYPE1_CODE) == "D") {
			sise_estatekind = fn_setValueStr(_SEL_MAP_TYPE1_CODE);
			sise_searchGbn = "otel";
		} else if (fn_setValueStr(_SEL_MAP_TYPE1_CODE) == "C") {
			sise_estatekind = "H";
			sise_searchGbn = "rebuild";
		} else if (fn_setValueStr(_SEL_MAP_TYPE1_CODE) == "E") {
			sise_estatekind = fn_setValueStr(_SEL_MAP_TYPE1_CODE);
			sise_searchGbn = "presale";
		}
	}

	if (fn_setValueStr(_SEL_MAP_STYLE_CODE) == "1") {
		sise_mmjjww = "JJ";
	} else if (fn_setValueStr(_SEL_MAP_STYLE_CODE) == "3") {
		sise_mmjjww = "WW";
	}

	var arrNewVariables = new Array();
	arrNewVariables['searchGbn'] = fn_setValueStr(sise_searchGbn)
	arrNewVariables['addr1'] = fn_setValueStr(_SEL_ADDR1)
	arrNewVariables['addr2'] = fn_setValueStr(_SEL_ADDR2)
	arrNewVariables['addr3'] = fn_setValueStr(_SEL_ADDR3)
	arrNewVariables['ComplexCd'] = fn_setValueStr(_SEL_COMPLEXCD)
	arrNewVariables['ComplexNm'] = fn_setValueStr(_SEL_COMPLEXNM)
	arrNewVariables['fCode'] = fn_setValueStr(_SEL_MAP_TYPE2_CODE)
	arrNewVariables['estatekind'] = fn_setValueStr(sise_estatekind)
	arrNewVariables['mmjjww'] = fn_setValueStr(sise_mmjjww);
	arrNewVariables['globalComplexCd'] = fn_setValueStr(_SEL_COMPLEXCD);

	return arrNewVariables;
}

// -- 시세 내부 전환 변수 설정
function fn_arrSetVariables() {
	var arrVariables = new Array();
	arrVariables['searchGbn'] = fn_setValueStr($("#sise_searchGbn").val());
	arrVariables['addr1'] = fn_setValueStr($("#sise_addr1").val());
	arrVariables['addr2'] = fn_setValueStr($("#sise_addr2").val());
	arrVariables['addr3'] = fn_setValueStr($("#sise_addr3").val());
	arrVariables['addrkind'] = fn_setValueStr($("#sise_addrkind").val());
	arrVariables['ComplexCd'] = fn_setValueStr($("#sise_ComplexCd").val());
	arrVariables['ComplexNm'] = fn_setValueStr($("#sise_ComplexNm").val());
	arrVariables['Shin'] = fn_setValueStr($("#sise_Shin").val());
	arrVariables['fCode'] = fn_setValueStr($("#sise_fCode").val());
	arrVariables['estatekind'] = fn_setValueStr($("#sise_estatekind").val());
	arrVariables['mmjjww'] = fn_setValueStr($("#sise_mmjjww").val());
	arrVariables['housingSize'] = fn_setValueStr($("#sise_HousingSize").val());
	arrVariables['housingType'] = fn_setValueStr($("#sise_HousingType").val());
	arrVariables['housingSizeType'] = fn_setValueStr($("#sise_HousingSizeType")
			.val());
	arrVariables['CortarNo'] = fn_setValueStr($("#sise_CortarNo").val());
	arrVariables['globalComplexCd'] = fn_setValueStr($("#globalComplexCd")
			.val());
	return arrVariables;
}
// ///////////////// 기본 파라미터 설정

function fn_setValueStr(str) { // 변수 빈값 설정
	if (str == "" || str == "undefined" || str == null || str == undefined) {
		str = "";
	} else {
		str = jQuery.trim(str);
	}
	return str;
}

// ///////////////// rowSpan
function rowSpan(tableId, columnNo) {
	var temp = document.getElementById(tableId);

	if (!$("#" + tableId).length) {
		return false;
	}

	var rows = temp.getElementsByTagName("TR");
	var previous = -1;
	for (var i = 1; i < rows.length; i++) {
		if (i > 1) {
			var compare = (previous < 0) ? (i - 1) : previous;
			var preCol = rows[compare].getElementsByTagName("TD")[columnNo];
			var curCol = rows[i].getElementsByTagName("TD")[columnNo];
			if (preCol.innerHTML == curCol.innerHTML) {
				preCol.rowSpan = preCol.rowSpan + 1;
				curCol.style.display = 'none';
				previous = compare;
			} else {
				previous = -1;
			}
		}
	}
}
// ///////////////// rowSpan

function IsNumberChk(field) {
	if (field.value != "") {
		patten = /^[0-9,]+$/;
		if (!patten.test(field.value)) {
			field.value = "";
			alert("숫자만 입력하세요.");
			return false;
		}
		return true;
	}
}

// /////////////////차트 공통 이벤트 함수
function getClickInfo(fromSource, data) {
	//console.log(fromSource.container + ',' + fromSource.selector + ' click ');
	for ( var attr in data) {
		//console.log(attr + ' : ' + data[attr]);
	}
}
function getMouseEnterInfo(fromSource, data) {
	//console.log(fromSource.container + ',' + fromSource.selector
	//		+ ' getMouseEnterInfo')
}
function getMouseLeaveInfo(fromSource, data) {
	//console.log(fromSource.container + ',' + fromSource.selector
	//		+ ' getMouseLeaveInfo')
}
function getTooltipInfo(fromSource, data) {
	d3.select('#myTooltip').select('#name1').text(data.area);
	d3.select('#myTooltip').select('#measure1').html(
			'매매 ' + d3.format(',')(data.price2) + '만원/m' + "<sup>2</sup>");
	d3.select('#myTooltip').select('#measure2').html(
			'전세 ' + d3.format(',')(data.price1) + '만원/m' + "<sup>2</sup>");
}
function getTooltipInfo2(fromSource, data) {
	if (fromSource.selector !== 'dot')
		return;
	d3.select('#myTooltip').select('#name1').text(data.ym);
	d3.select('#myTooltip').select('#measure1').html(
			'매매 ' + d3.format(',')(data.chargePrice) + '만원/m' + "<sup>2</sup>");
	d3.select('#myTooltip').select('#measure2')
			.html(
					'전세 ' + d3.format(',')(data.charterPrice) + '만원/m'
							+ "<sup>2</sup>");
}
function getTooltipInfoVolumnDetail(fromSource, data) {
	if (fromSource.selector !== 'dot')
		return;
	d3.select('#myTooltipVolumnDetail').select('#nameTooltipVolumnDetail1')
			.text(data.ym);
	d3.select('#myTooltipVolumnDetail').select('#measureTooltipVolumnDetail1')
			.html(d3.format(',')(data.charterVolumn) + '건');
}
// /////////////////차트 공통 이벤트 함수

// 라인 1개 (전세, 매매 분리 등)
function fn_drawPriceTrendOne(dataUrl, drawId, cMode) {
	var captionTitle = ""; // (cMode == "JJ")? "전세가추이" : "매매가추이";

	var c2iTrendOption = {
		isResponsive : false,
		width : '600px',
		height : '300px',
		theme : 'none',// lang: 'kr',
		margin : {
			top : 30,
			left : 50,
			right : 10,
			bottom : 40
		},
		easing : 'monotone',
		duration : 750,
		delay : 50,
		// bgImg:{src: '/gis/images/logo_co.png', width: 257, height: 72,
		// opacity: 0.3, xPos:'middle', yPos:'middle'},

		data : undefined,
		preBuildData : true,
		scaleAuto : true,
		linearBeginZero : false,
		groupType : 'each',
		useGhostBar : true,
		xyValueGrid : 'xy', // 'x', 'xy'

		xDim : {
			caption : '',
			unitNm : '',
			colNm : 'ym',
			scale : 'ordinal',
			format : '',
			captionFonts : [ 'Nato Sans', '11px', '#000' ],
			fonts : [ 'Nato Sans', '11px', '000' ],
			axisPos : 'bottom',
			xPos : 'end',
			dy : -255,
			ticks : 6,
			tickPad : 5,
			isShow : true,
			showGrid : false,
			xPad : 0.3,
			xLabel : {
				rotate : -35,
				isVertical : false
			},
			xWrapLabel : false
		},

		yDim : {
			caption : '',
			unitNm : '',
			scale : 'linear',
			color : 'each',
			texture : '',
			format : ',d',
			captionFonts : [ 'Nato Sans', '10px', '#ddd' ],
			fonts : [ 'Nato Sans', '10px', '#aaa' ],
			cluster : 'each',
			stackValue : 'both',
			axisPos : 'left',
			dx : 10,
			dy : 3,
			ticks : 5,
			isShow : true,
			showGrid : true,
			minGap : .15,
			maxGap : .1,
			opacity : 1,
			strokeWidth : 1.5,
			yBaseValue : undefined,
			captionV : true
		},

		common : {
			domain : {
				stroke : 'white',
				strokeWidth : 0,
				opacity : 0.0
			}, // x, y 축 테두리 영역
			grid : {
				stroke : 'dimgray',
				strokeWidth : 1,
				opacity : 0.5,
				zeroStroke : 'yellow'
			}, // x, y 축 그리드
			box : {
				top : 0,
				right : 1,
				bottom : 1,
				left : 1,
				color : '#bbb',
				strokeWidth : 1,
				opacity : 0.9
			}
		// 차트 전체 박스 테두리 그리기
		},
		measures : [ {
			caption : '전세',
			colNm : 'charterPrice',
			format : ',d',
			color : '#c52a34',
			fonts : [ '맑은 고딕', '11px', 'dimgray', 'dimgray' ],
			graphType : 'line',
			yDim : 'y',
			showLabel : false,
			strokeWidth : 3,
			draw : true,
			dotSymbol : 'circle',
			dotColNm : '',
			dotScale : '',
			dotRange : [ 1, 1 ],
			dotStyle : {
				color : '#c52a34',
				stroke : '#fff',
				strokeWidth : 0
			}
		} ],

		others : {
			captions : [ captionTitle, '' ],
			fonts : [ [ '맑은 고딕', '14px', '#c52a34' ],
					[ '맑은 고딕', '14px', '#002eef' ] ],
			pos : [ [ 'middle', 'top' ], [ 'middle', 'bottom' ] ],
			gap : [ 25, 25 ],
			opacity : 0.8
		// start,middle,end/ top,middle,bottom
		},

		tooltip : {
			id : '#myTooltip',
			infoLevel : 0,
			fixedPos : undefined/* {xPos:'start', yPos:'top'} */,
			displayTips : 4,
			isShow : true,
			isUserTip : true
		},
		method : {
			click : getClickInfo,
			mouseenter : getMouseEnterInfo,
			mouseleave : getMouseLeaveInfo,
			mousemove : getTooltipInfo2
		},
		isDev : false
	};

	var trendChart = c2i.chart.std(drawId, c2iTrendOption);
	d3.csv(dataUrl, function(error, data) {
		if (data.length) {
			trendChart.data(data).render();
			$('.isViewtrendCSV').css("display", "");
		} else {
		}
	})
}

// 라인 2개 ( 상한/하한 등)
function fn_drawPriceTrend(dataUrl, drawId, cMode) {
	var captionTitle = ""; // (cMode == "JJ")? "전세" : "매매";

	var c2iTrendOption = {
		isResponsive : false,
		width : '600px',
		height : '300px',
		theme : 'none',// lang: 'kr',
		margin : {
			top : 30,
			left : 50,
			right : 10,
			bottom : 40
		},
		easing : 'monotone',
		duration : 750,
		delay : 50,
		// bgImg:{src: '/gis/images/logo_co.png', width: 257, height: 72,
		// opacity: 0.3, xPos:'middle', yPos:'middle'},

		data : undefined,
		preBuildData : true,
		scaleAuto : true,
		linearBeginZero : false,
		groupType : 'each',
		useGhostBar : true,
		xyValueGrid : 'xy', // 'x', 'xy'

		xDim : {
			caption : '',
			unitNm : '',
			colNm : 'ym',
			scale : 'ordinal',
			format : '',
			captionFonts : [ 'Nato Sans', '11px', '#000' ],
			fonts : [ 'Nato Sans', '11px', '000' ],
			axisPos : 'bottom',
			xPos : 'end',
			dy : -255,
			ticks : 6,
			tickPad : 5,
			isShow : true,
			showGrid : false,
			xPad : 0.3,
			xLabel : {
				rotate : -35,
				isVertical : false
			},
			xWrapLabel : false
		},

		yDim : {
			caption : '',
			unitNm : '',
			scale : 'linear',
			color : 'each',
			texture : '',
			format : ',d',
			captionFonts : [ 'Nato Sans', '10px', '#ddd' ],
			fonts : [ 'Nato Sans', '10px', '#aaa' ],
			cluster : 'each',
			stackValue : 'both',
			axisPos : 'left',
			dx : 10,
			dy : 3,
			ticks : 5,
			isShow : true,
			showGrid : true,
			minGap : .15,
			maxGap : .1,
			opacity : 1,
			strokeWidth : 1.5,
			yBaseValue : undefined,
			captionV : true
		},

		common : {
			domain : {
				stroke : 'white',
				strokeWidth : 0,
				opacity : 0.0
			}, // x, y 축 테두리 영역
			grid : {
				stroke : 'dimgray',
				strokeWidth : 1,
				opacity : 0.5,
				zeroStroke : 'yellow'
			}, // x, y 축 그리드
			box : {
				top : 0,
				right : 1,
				bottom : 1,
				left : 1,
				color : '#bbb',
				strokeWidth : 1,
				opacity : 0.9
			}
		// 차트 전체 박스 테두리 그리기
		},
		measures : [ {
			caption : '매매',
			colNm : 'chargePrice',
			format : ',d',
			color : '#002eef',
			fonts : [ '맑은 고딕', '11px', 'dimgray', 'dimgray' ],
			graphType : 'line',
			yDim : 'y',
			showLabel : false,
			strokeWidth : 3,
			draw : true,
			dotSymbol : 'circle',
			dotColNm : '',
			dotScale : '',
			dotRange : [ 1, 1 ],
			dotStyle : {
				color : '#002eef',
				stroke : '#fff',
				strokeWidth : 0
			}
		}, {
			caption : '전세',
			colNm : 'charterPrice',
			format : ',d',
			color : '#c52a34',
			fonts : [ '맑은 고딕', '11px', 'dimgray', 'dimgray' ],
			graphType : 'line',
			yDim : 'y',
			showLabel : false,
			strokeWidth : 3,
			draw : true,
			dotSymbol : 'circle',
			dotColNm : '',
			dotScale : '',
			dotRange : [ 1, 1 ],
			dotStyle : {
				color : '#c52a34',
				stroke : '#fff',
				strokeWidth : 0
			}
		} ],

		// others:{captions:[captionTitle+'상한선',captionTitle+'하한선'], fonts:[['맑은
		// 고딕','14px','#c52a34'], ['맑은 고딕','14px','#002eef']],
		// pos:[['middle','top'], ['middle','bottom']], gap:[25, 25], opacity:
		// 0.8 // start,middle,end/ top,middle,bottom
		// },

		tooltip : {
			id : '#myTooltip',
			infoLevel : 0,
			fixedPos : undefined/* {xPos:'start', yPos:'top'} */,
			displayTips : 4,
			isShow : true,
			isUserTip : true
		},
		method : {
			click : getClickInfo,
			mouseenter : getMouseEnterInfo,
			mouseleave : getMouseLeaveInfo,
			mousemove : getTooltipInfo2
		},
		isDev : false
	};

	var trendChart = c2i.chart.std(drawId, c2iTrendOption);
	d3.csv(dataUrl, function(error, data) {
		if (error) {
			//console.error('Error getting or parsing the data.');
			throw error;
		}
		trendChart.data(data).render();
	})
}

function fn_drawNextTown(dataUrl, drawId) {

	var c2iPricePerAreaOption = {
		isResponsive : false,
		width : '700px',
		height : '300px',
		theme : 'none', // lang: 'kr',
		margin : {
			top : 20,
			left : 50,
			right : 20,
			bottom : 80
		},
		easing : 'monotone',
		duration : 500,
		delay : 20,

		data : undefined,
		preBuildData : true,
		scaleAuto : true,
		linearBeginZero : true,
		groupType : 'group',
		useGhostBar : true,
		xyValueGrid : 'xy', // 'x', 'xy'

		xDim : {
			caption : '',
			unitNm : '',
			colNm : 'area',
			scale : 'ordinal',
			format : '',
			captionFonts : [ 'Nato Sans', '11px', '#000' ],
			fonts : [ 'Nato Sans', '11px', '000' ],
			axisPos : 'bottom',
			xPos : 'end',
			dy : -225,
			ticks : 0,
			tickPad : 5,
			isShow : true,
			showGrid : false,
			xPad : 0.5,
			xLabel : {
				rotate : -35,
				isVertical : false
			},
			xWrapLabel : false
		},

		yDim : {
			caption : '',
			unitNm : '',
			scale : 'linear',
			color : 'each',
			texture : '',
			format : ',d',
			captionFonts : [ 'Nato Sans', '10px', '#ddd' ],
			fonts : [ 'Nato Sans', '11px', '#bbb' ],
			cluster : 'groupbar',
			stackValue : 'both',
			axisPos : 'left',
			dx : 10,
			dy : 3,
			ticks : 5,
			isShow : true,
			showGrid : true,
			minGap : .15,
			maxGap : .1,
			opacity : 1,
			strokeWidth : 0,
			yBaseValue : undefined,
			captionV : false
		},

		common : {
			domain : {
				stroke : 'white',
				strokeWidth : 0,
				opacity : 0.0
			}, // x, y 축 테두리 영역
			grid : {
				stroke : 'dimgray',
				strokeWidth : 1,
				opacity : 0.5,
				zeroStroke : 'yellow'
			}, // x, y 축 그리드
			box : {
				top : 1,
				right : 1,
				bottom : 1,
				left : 1,
				color : '#bbb',
				strokeWidth : 1,
				opacity : 0.9
			}
		// 차트 전체 박스 테두리 그리기
		},

		measures : [ {
			caption : '매매',
			colNm : 'price1',
			format : ',d',
			color : '#5C6BC0',
			fonts : [ 'Nato Sans', '11px', 'dimgray', 'dimgray' ],
			graphType : 'bar',
			yDim : 'y',
			showLabel : false,
			draw : true,
			use : true,
			dotSymbol : 'circle',
			dotColNm : '',
			dotScale : '',
			dotRange : [ 2, 2 ]
		}, {
			caption : '전세',
			colNm : 'price2',
			format : ',d',
			color : '#FF5252',
			fonts : [ 'Nato Sans', '11px', 'dimgray', 'dimgray' ],
			graphType : 'line',
			yDim : 'y',
			showLabel : false,
			draw : true,
			use : true,
			dotSymbol : 'circle',
			dotColNm : '',
			dotScale : '',
			dotRange : [ 2, 2 ]
		} ],

		legend : {
			id : '#areaPriceTrendLegend',
			fonts : [ 'Nato Sans', '12px' ],
			padding : '10px 15px 10px 15px',
			backColor : '#fafafa',
			labelGap : '4px',
			itemGap : '8px',
			yNy2Gap : '25px'
		},
		tooltip : {
			id : '#myTooltip',
			infoLevel : 0,
			fixedPos : undefined,
			displayTips : 4,
			isShow : true,
			isUserTip : true
		},
		method : {
			click : getClickInfo,
			mouseenter : getMouseEnterInfo,
			mouseleave : getMouseLeaveInfo,
			mousemove : getTooltipInfo
		},
		isDev : false
	};

	var areaTrendChart = c2i.chart.std(drawId, c2iPricePerAreaOption);
	d3.csv(dataUrl, function(error, data) {

		if (error) {
			//console.error('Error getting or parsing the data.');
			throw error;
		}
		areaTrendChart.data(data).render();
	})
}

function fn_drawNextComplex(dataUrl, drawId) {

	var c2iPricePerAreaOption = {
		isResponsive : false,
		width : '700px',
		height : '300px',
		theme : 'none', // lang: 'kr',
		margin : {
			top : 20,
			left : 50,
			right : 20,
			bottom : 80
		},
		easing : 'monotone',
		duration : 500,
		delay : 20,

		data : undefined,
		preBuildData : true,
		scaleAuto : true,
		linearBeginZero : true,
		groupType : 'group',
		useGhostBar : true,
		xyValueGrid : 'xy', // 'x', 'xy'

		xDim : {
			caption : '',
			unitNm : '',
			colNm : 'area',
			scale : 'ordinal',
			format : '',
			captionFonts : [ 'Nato Sans', '11px', '#000' ],
			fonts : [ 'Nato Sans', '11px', '000' ],
			axisPos : 'bottom',
			xPos : 'end',
			dy : -225,
			ticks : 0,
			tickPad : 5,
			isShow : true,
			showGrid : false,
			xPad : 0.5,
			xLabel : {
				rotate : -35,
				isVertical : false
			},
			xWrapLabel : false
		},

		yDim : {
			caption : '',
			unitNm : '',
			scale : 'linear',
			color : 'each',
			texture : '',
			format : ',d',
			captionFonts : [ 'Nato Sans', '10px', '#ddd' ],
			fonts : [ 'Nato Sans', '11px', '#bbb' ],
			cluster : 'groupbar',
			stackValue : 'both',
			axisPos : 'left',
			dx : 10,
			dy : 3,
			ticks : 5,
			isShow : true,
			showGrid : true,
			minGap : .15,
			maxGap : .1,
			opacity : 1,
			strokeWidth : 0,
			yBaseValue : undefined,
			captionV : false
		},

		common : {
			domain : {
				stroke : 'white',
				strokeWidth : 0,
				opacity : 0.0
			}, // x, y 축 테두리 영역
			grid : {
				stroke : 'dimgray',
				strokeWidth : 1,
				opacity : 0.5,
				zeroStroke : 'yellow'
			}, // x, y 축 그리드
			box : {
				top : 1,
				right : 1,
				bottom : 1,
				left : 1,
				color : '#bbb',
				strokeWidth : 1,
				opacity : 0.9
			}
		// 차트 전체 박스 테두리 그리기
		},

		measures : [ {
			caption : '매매',
			colNm : 'price1',
			format : ',d',
			color : '#5C6BC0',
			fonts : [ 'Nato Sans', '11px', 'dimgray', 'dimgray' ],
			graphType : 'bar',
			yDim : 'y',
			showLabel : false,
			draw : true,
			use : true,
			dotSymbol : 'circle',
			dotColNm : '',
			dotScale : '',
			dotRange : [ 2, 2 ]
		}, {
			caption : '전세',
			colNm : 'price2',
			format : ',d',
			color : '#FF5252',
			fonts : [ 'Nato Sans', '11px', 'dimgray', 'dimgray' ],
			graphType : 'line',
			yDim : 'y',
			showLabel : false,
			draw : true,
			use : true,
			dotSymbol : 'circle',
			dotColNm : '',
			dotScale : '',
			dotRange : [ 2, 2 ]
		} ],

		// legend:{id: '#areaPriceTrendLegend', fonts:['Nato Sans','12px'],
		// padding: '10px 15px 10px 15px', backColor:'#fafafa',
		// labelGap: '4px', itemGap: '8px', yNy2Gap: '25px'},
		tooltip : {
			id : '#myTooltip',
			infoLevel : 0,
			fixedPos : undefined,
			displayTips : 4,
			isShow : true,
			isUserTip : true
		},
		method : {
			click : getClickInfo,
			mouseenter : getMouseEnterInfo,
			mouseleave : getMouseLeaveInfo,
			mousemove : getTooltipInfo
		},
		isDev : false
	};

	var areaTrendChart = c2i.chart.std(drawId, c2iPricePerAreaOption);
	d3.csv(dataUrl, function(error, data) {

		if (error) {
			//console.error('Error getting or parsing the data.');
			throw error;
		}
		areaTrendChart.data(data).render();
	})
}

function fn_drawVolumnDetailTrend(dataUrl, drawId, cMode) {
	var captionTitle = '';

	var c2iTrendOption = {
		isResponsive : false,
		width : '600px',
		height : '300px',
		theme : 'none',// lang: 'kr',
		margin : {
			top : 30,
			left : 50,
			right : 10,
			bottom : 40
		},
		easing : 'monotone',
		duration : 750,
		delay : 50,
		// bgImg:{src: '/gis/images/logo_co.png', width: 257, height: 72,
		// opacity: 0.3, xPos:'middle', yPos:'middle'},

		data : undefined,
		preBuildData : true,
		scaleAuto : true,
		linearBeginZero : false,
		groupType : 'each',
		useGhostBar : true,
		xyValueGrid : 'xy', // 'x', 'xy'

		xDim : {
			caption : '',
			unitNm : '',
			colNm : 'ym',
			scale : 'ordinal',
			format : '',
			captionFonts : [ 'Nato Sans', '11px', '#000' ],
			fonts : [ 'Nato Sans', '11px', '000' ],
			axisPos : 'bottom',
			xPos : 'end',
			dy : -255,
			ticks : 6,
			tickPad : 5,
			isShow : true,
			showGrid : false,
			xPad : 0.3,
			xLabel : {
				rotate : -35,
				isVertical : false
			},
			xWrapLabel : false
		},

		yDim : {
			caption : '',
			unitNm : '',
			scale : 'linear',
			color : 'each',
			texture : '',
			format : ',d',
			captionFonts : [ 'Nato Sans', '10px', '#ddd' ],
			fonts : [ 'Nato Sans', '10px', '#aaa' ],
			cluster : 'each',
			stackValue : 'both',
			axisPos : 'left',
			dx : 10,
			dy : 3,
			ticks : 5,
			isShow : true,
			showGrid : true,
			minGap : .15,
			maxGap : .1,
			opacity : 1,
			strokeWidth : 1.5,
			yBaseValue : undefined,
			captionV : true
		},

		common : {
			domain : {
				stroke : 'white',
				strokeWidth : 0,
				opacity : 0.0
			}, // x, y 축 테두리 영역
			grid : {
				stroke : 'dimgray',
				strokeWidth : 1,
				opacity : 0.5,
				zeroStroke : 'yellow'
			}, // x, y 축 그리드
			box : {
				top : 0,
				right : 1,
				bottom : 1,
				left : 1,
				color : '#bbb',
				strokeWidth : 1,
				opacity : 0.9
			}
		// 차트 전체 박스 테두리 그리기
		},
		measures : [ {
			caption : '매매',
			colNm : 'charterVolumn',
			format : ',d',
			color : '#002eef',
			fonts : [ '맑은 고딕', '11px', 'dimgray', 'dimgray' ],
			graphType : 'line',
			yDim : 'y',
			showLabel : false,
			strokeWidth : 3,
			draw : true,
			dotSymbol : 'circle',
			dotColNm : '',
			dotScale : '',
			dotRange : [ 1, 1 ],
			dotStyle : {
				color : '#002eef',
				stroke : '#fff',
				strokeWidth : 0
			}
		}
		// ,
		// {caption:'전세', colNm:'charterPrice', format:',d', color:'#c52a34',
		// fonts:['맑은 고딕','11px','dimgray','dimgray'],
		// graphType:'line', yDim:'y', showLabel:false, strokeWidth:3,
		// draw:true,
		// dotSymbol:'circle', dotColNm:'', dotScale:'', dotRange:[1, 1],
		// dotStyle: {color: '#c52a34', stroke:'#fff', strokeWidth: 0}}
		],

		others : {
			captions : [ captionTitle, '' ],
			fonts : [ [ '맑은 고딕', '14px', '#c52a34' ],
					[ '맑은 고딕', '14px', '#002eef' ] ],
			pos : [ [ 'middle', 'top' ], [ 'middle', 'bottom' ] ],
			gap : [ 25, 25 ],
			opacity : 0.8
		// start,middle,end/ top,middle,bottom
		},

		tooltip : {
			id : '#myTooltipVolumnDetail',
			infoLevel : 0,
			fixedPos : undefined/* {xPos:'start', yPos:'top'} */,
			displayTips : 4,
			isShow : true,
			isUserTip : true
		},
		method : {
			click : getClickInfo,
			mouseenter : getMouseEnterInfo,
			mouseleave : getMouseLeaveInfo,
			mousemove : getTooltipInfoVolumnDetail
		},
		isDev : false
	};

	var trendChart = c2i.chart.std(drawId, c2iTrendOption);
	d3.csv(dataUrl, function(error, data) {
		if (error) {
			//console.error('Error getting or parsing the data.');
			throw error;
		}
		trendChart.data(data).render();
	})
}

$(document).ready(function() {
	$('#cmdSiseCompare').on('click', function() {
		fn_siseBigyoPoP()
	});
});

// 비교 레이어 초기화
function fn_siseBigyoReset() {
	$('.marketPriceCompare').css("display", "none");
	$('.marketPriceCompare > ul').html("");
	$('input:checkbox[name="themeBigyo[]"]').prop("checked", false);
	$('input:checkbox[name="themeBigyo[]"]').attr("checked", false);
	$('.bigyoTItleCloseClass').html("비교");
}

// 비교 시세 선택 번호 설정
function fn_siseBigyoNumber() {
	var bigyoCount = 0;
	$('.themeBigyoSelect').each(function() {
		bigyoCount++;
		$(this).children('div').children('em').html("선택" + bigyoCount);
	});
}

// 시세 비교 갯수 체크
function fn_IsOverSiseBigyoCount() {
	var bigyoCount = 0;
	$('.themeBigyoSelect').each(function() {
		bigyoCount++;
	});

	if (bigyoCount >= compareMaxCount) {
		return true;
	} else {
		return false;
	}
}

// 시세 비교 팝업 호출
function fn_siseBigyoPoP() {
	getVariables = fn_arrSetVariables();

	var arrBigyoValue = new Array();
	var bigyoCount = 0;
	$('.themeBigyoSelect').each(function() {
		arrBigyoValue.push($(this).attr("chkValue"));
		bigyoCount++;
	});
	fn_siseBigyoNumber();

	if (bigyoCount > 3) {
		alert("3개까지 선택비교 가능합니다.");
		return false;
	} else if (bigyoCount < 2) {
		alert("2개 이상 선택하세요.");
		return false;
	}
	setCompareCode = arrBigyoValue.join("*");

	// 기존 팝업 => 레이어로 전환
	// var wndowFeatures = "resizable=yes,scrollbars=yes,status=yes";
	// window.open("?_c=memul&_m=marketpricecompare&complexType="+getVariables['searchGbn']+"&compareCode="+setCompareCode,"lp_layout_siseCompareBody",
	// wndowFeatures);
	openLp('#lp_layout_siseCompare');
	$('.siseCompareInfo')
			.html(
					'<div style="line-height:500px;text-align:center;width:500px;margin:0 auto"><div class="loding_wrap on"><img src="https://image.r114.co.kr/W1/images/sub/loding.gif" alt="로딩중"></div></div>');

	$
			.ajax({
				url : "/?_c=memul&_m=marketpricecompare",
				type : "POST",
				data : {
					complexType : getVariables['searchGbn'],
					compareCode : setCompareCode,
					complexTypeName: _SEL_COMPLEXTYPE
				},
				success : function(data) {
					data = data.replace(/"/g, "'");
					data = data.replace(/`/g, '"');
					data = data.replace(/{/g, "");
					data = data.replace(/}/g, "");

					data = data.replace(/sJSON/g, '{');
					data = data.replace(/eJson/g, '}');
					var parsedJson = JSON.parse(data);
					var estateType = parsedJson.단지구분;

					var parsedJson2TD = ''

					if (estateType == "H") {
						parsedJson2TD += '<tr><th scope="row"><label>구역명</label></th>'
						for (ji = 0; ji < parsedJson.비교갯수; ji++) {
							parsedJson2TD += '<td>' + parsedJson.정보[ji].구역명
									+ '</td>'
						}
					} else {
						parsedJson2TD += '<tr><th scope="row"><label>아파트(오피스텔)명</label></th>'
						for (ji = 0; ji < parsedJson.비교갯수; ji++) {
							parsedJson2TD += '<td>'
									+ parsedJson.정보[ji].아파트오피스텔명 + '</td>'
						}
					}

					parsedJson2TD += '</tr><tr><th scope="row"><label>소재지</label></th>'
					for (ji = 0; ji < parsedJson.비교갯수; ji++) {
						parsedJson2TD += '<td>' + parsedJson.정보[ji].소재지
								+ '</td>'
					}

					if (estateType == "H") {
						parsedJson2TD += '</tr><tr><th scope="row"><label>총가구수</label></th>'
						for (ji = 0; ji < parsedJson.비교갯수; ji++) {
							parsedJson2TD += '<td>' + parsedJson.정보[ji].총가구수2
									+ '</td>'
						}
					} else {
						parsedJson2TD += '</tr><tr><th scope="row"><label>총가구수</label></th>'
						for (ji = 0; ji < parsedJson.비교갯수; ji++) {
							parsedJson2TD += '<td>' + parsedJson.정보[ji].총가구수
									+ '</td>'
						}
					}

					if (estateType != "H") {
						parsedJson2TD += '</tr><tr><th scope="row"><label>동수/총층</label></th>'
						for (ji = 0; ji < parsedJson.비교갯수; ji++) {
							parsedJson2TD += '<td>' + parsedJson.정보[ji].동수총층
									+ '</td>'
						}
					}

					parsedJson2TD += '</tr><tr><th scope="row"><label>면적</label></th>'
					for (ji = 0; ji < parsedJson.비교갯수; ji++) {
						parsedJson2TD += '<td>' + parsedJson.정보[ji].면적
								+ '</td>'
					}

					if (estateType == "H") {
						parsedJson2TD += '</tr><tr><th scope="row"><label>준공년도</label></th>'
						for (ji = 0; ji < parsedJson.비교갯수; ji++) {
							parsedJson2TD += '<td>' + parsedJson.정보[ji].준공년도
									+ '</td>'
						}
						parsedJson2TD += '</tr><tr><th scope="row"><label>시공건설회사</label></th>'
						for (ji = 0; ji < parsedJson.비교갯수; ji++) {
							parsedJson2TD += '<td>' + parsedJson.정보[ji].시공건설회사
									+ '</td>'
						}
						parsedJson2TD += '</tr><tr><th scope="row"><label>진행상황</label></th>'
						for (ji = 0; ji < parsedJson.비교갯수; ji++) {
							parsedJson2TD += '<td>' + parsedJson.정보[ji].진행상황
									+ '</td>'
						}
						parsedJson2TD += '</tr><tr><th scope="row"><label>사업단계</label></th>'
						for (ji = 0; ji < parsedJson.비교갯수; ji++) {
							parsedJson2TD += '<td>' + parsedJson.정보[ji].사업단계
									+ '</td>'
						}
						parsedJson2TD += '</tr><tr><th scope="row"><label>용적율</label></th>'
						for (ji = 0; ji < parsedJson.비교갯수; ji++) {
							parsedJson2TD += '<td>' + parsedJson.정보[ji].용적율
									+ '</td>'
						}
						parsedJson2TD += '</tr><tr><th scope="row"><label>대지지분</label></th>'
						for (ji = 0; ji < parsedJson.비교갯수; ji++) {
							parsedJson2TD += '<td>' + parsedJson.정보[ji].대지지분
									+ '</td>'
						}
						parsedJson2TD += '</tr><tr><th scope="row"><label>예상건립가구수</label></th>'
						for (ji = 0; ji < parsedJson.비교갯수; ji++) {
							parsedJson2TD += '<td>' + parsedJson.정보[ji].예상건립가구수
									+ '</td>'
						}
					} else {
						parsedJson2TD += '</tr><tr><th scope="row"><label>구조</label></th>'
						for (ji = 0; ji < parsedJson.비교갯수; ji++) {
							parsedJson2TD += '<td>' + parsedJson.정보[ji].구조
									+ '</td>'
						}
						parsedJson2TD += '</tr><tr><th scope="row"><label>매매시세</label></th>'
						for (ji = 0; ji < parsedJson.비교갯수; ji++) {
							parsedJson2TD += '<td>' + parsedJson.정보[ji].매매시세
									+ '</td>'
						}
						parsedJson2TD += '</tr><tr><th scope="row"><label>전세시세</label></th>'
						for (ji = 0; ji < parsedJson.비교갯수; ji++) {
							parsedJson2TD += '<td>' + parsedJson.정보[ji].전세시세
									+ '</td>'
						}
						parsedJson2TD += '</tr><tr><th scope="row"><label>보증금</label></th>'
						for (ji = 0; ji < parsedJson.비교갯수; ji++) {
							parsedJson2TD += '<td>' + parsedJson.정보[ji].보증금
									+ '</td>'
						}
						parsedJson2TD += '</tr><tr><th scope="row"><label>월세</label></th>'
						for (ji = 0; ji < parsedJson.비교갯수; ji++) {
							parsedJson2TD += '<td>' + parsedJson.정보[ji].월세
									+ '</td>'
						}
						parsedJson2TD += '</tr><tr><th scope="row">난방정보<label></label></th>'
						for (ji = 0; ji < parsedJson.비교갯수; ji++) {
							parsedJson2TD += '<td>' + parsedJson.정보[ji].난방정보
									+ '</td>'
						}
						parsedJson2TD += '</tr><tr><th scope="row">주차대수<label></label></th>'
						for (ji = 0; ji < parsedJson.비교갯수; ji++) {
							parsedJson2TD += '<td>' + parsedJson.정보[ji].주차대수
									+ '</td>'
						}
					}

					parsedJson2TD += '</tr><tr><th scope="row">지하철<label></label></th>'
					for (ji = 0; ji < parsedJson.비교갯수; ji++) {
						parsedJson2TD += '<td>' + parsedJson.정보[ji].지하철
								+ '</td>'
					}

					if (estateType == "H") {
						parsedJson2TD += '</tr><tr><th scope="row">교육시설<label></label></th>'
						for (ji = 0; ji < parsedJson.비교갯수; ji++) {
							parsedJson2TD += '<td>' + parsedJson.정보[ji].교육시설
									+ '</td>'
						}
					}

					parsedJson2TD += '</tr><tr><th scope="row">편의시설<label></label></th>'
					for (ji = 0; ji < parsedJson.비교갯수; ji++) {
						parsedJson2TD += '<td>' + parsedJson.정보[ji].편의시설
								+ '</td>'
					}

					if (estateType == "A" || estateType == "D") {
						parsedJson2TD += '</tr><tr><th scope="row">입주일1<label></label></th>'
						for (ji = 0; ji < parsedJson.비교갯수; ji++) {
							parsedJson2TD += '<td>' + parsedJson.정보[ji].입주일
									+ '</td>'
						}
					} else if (estateType == "E") {
						parsedJson2TD += '</tr><tr><th scope="row">입주일(입주예정일)<label></label></th>'
						for (ji = 0; ji < parsedJson.비교갯수; ji++) {
							parsedJson2TD += '<td>' + parsedJson.정보[ji].입주예정일
									+ '</td>'
						}
					} else {
						//
					}

					if (estateType != "H") {
						parsedJson2TD += '</tr><tr><th scope="row">주용도<label></label></th>'
						for (ji = 0; ji < parsedJson.비교갯수; ji++) {
							parsedJson2TD += '<td>' + parsedJson.정보[ji].주용도
									+ '</td>'
						}
						parsedJson2TD += '</tr><tr><th scope="row">부대시설<label></label></th>'
						for (ji = 0; ji < parsedJson.비교갯수; ji++) {
							parsedJson2TD += '<td>' + parsedJson.정보[ji].부대시설
									+ '</td>'
						}
					}

					parsedJson2TD += '</tr><tr><th scope="row">문의처<label></label></th>'
					for (ji = 0; ji < parsedJson.비교갯수; ji++) {
						arr_quest = parsedJson.정보[ji].문의처.split("|^|");
						parsedJson2TD += '<td><div class="inquiry_set"><strong><i class="ico_class '
								+ arr_quest[1]
								+ '">'
								+ arr_quest[2]
								+ '</i>'
								+ arr_quest[3]
								+ '</strong><div class="info_wrap2"><span>'
								+ arr_quest[4]
								+ '</span></div><div class="btn_wrap"><a href="javascript:;" class="btn_type1 small"  onClick=\'fnGoJunHome("'
								+ arr_quest[5]
								+ '")\'> 홈페이지</a><a href="javascript:;" class="btn_type1 small" onClick=\'openQuestionToAgent("#lp_layout_questionToAgentSise", "일반문의", "'
								+ arr_quest[7]
								+ '", "'
								+ arr_quest[8]
								+ '", "", "", "1")\'>1:1문의</a></div></div></td>'
					}
					parsedJson2TD += '</tr><tr><th scope="row">기타<label></label></th>'
					for (ji = 0; ji < parsedJson.비교갯수; ji++) {
						parsedJson2TD += '<td><a href="javascript:;" onclick=goComplexDetail("'
								+ parsedJson.정보[ji].기타
								+ '") class="btn_type1">시세 자세히 보기</a></td>'
					}

					parsedJson2TD += '</tr>'
					$('.siseCompareInfo').html(parsedJson2TD);
				},
				error : function(jqXHR, textStatus, errorThrown) {
				//	alert("err1" + errorThrown);
				}
			});

}

// 시세 자세히 보기페이지 이동
function goComplexDetail(vals) {
	var complexType = getParameterByName('complexType');
	arr_vals = vals.split("|");

	// document.location.href= '/?_c=memul&_m=sisecomplexdetail&_a=&searchGbn='
	// + complexType +
	// '&ComplexCd='+arr_vals[0]+'&areaSize='+arr_vals[1]+'&areaSizeType='+arr_vals[2]+'&HousingType='+arr_vals[3]+'';

	fnWinUrl('/?_c=memul&_m=sisecomplexdetail&_a=&searchGbn=' + complexType
			+ '&ComplexCd=' + arr_vals[0] + '&areaSize=' + arr_vals[1]
			+ '&areaSizeType=' + arr_vals[2] + '&HousingType=' + arr_vals[3]
			+ '', '_blank', '', '', '', '');

}

function fn_setThemeBigyo(setMode, obj) {
	var dealingWay, sizeInfo, arrSizeInfo;

	getVariables = fn_arrSetVariables();

	if (setMode == "del") {
		$(obj).parent().parent().remove();
		$('input:checkbox[name="themeBigyo[]"]').each(function() {
			if ($(this).attr("unqval") == $(obj).parent().parent().attr("id")) {
				$(this).prop("checked", false);
				$(this).attr("checked", false);
			}
		});

		if ($('.themeBigyoSelect').length < 1) {
			$('.marketPriceCompare').css("display", "none");
			$('.bigyoTItleCloseClass').html("비교");
		}
		fn_siseBigyoNumber();
		return false;
	}

	if (obj.checked) {

		var arr_value = obj.value.split("_");
		if (!arr_value[8]) {
			arr_value[8] = getVariables['searchGbn'];
		}

		if (fn_IsOverSiseBigyoCount()) {
			$(obj).prop('checked', false);
			$(obj).attr('checked', false);
			alert("3개까지 선택비교 가능합니다.");
			return;
		}

		if (arr_value[9] == "M") {
			dealingWay = "매매";
		}
		else if (arr_value[9] == "J") {
			dealingWay = "전세";
		}
		else if (arr_value[9] == "W") {
			dealingWay = "월세";
		}
		else {
			dealingWay = "매매";
		}

		sizeInfo = arr_value[10];

		chkValue = arr_value[8] + "$" + arr_value[1] + "$" + arr_value[2] + "$"
				+ arr_value[3]; // 매물구분|기본코드|평형|타입

		if (arr_value[9] == "X") {
			selectInfo = '<li class="themeBigyoSelect" id="'
				+ $(obj).attr("unqval")
				+ '" chkValue="'
				+ chkValue
				+ '"><div class="cont"><em class="sel_num">선택</em><strong class="tit_a">'
				+ arr_value[0] + ' ('  + sizeInfo  + ')'
				+ '</strong>'
				+ '<a class="btn_del" href="javascript:" onclick=\'fn_setThemeBigyo("del", this)\'>삭제버튼</a></div></li>';
		}
		else if (arr_value[9] == "W") {
			selectInfo = '<li class="themeBigyoSelect" id="'
				+ $(obj).attr("unqval")
				+ '" chkValue="'
				+ chkValue
				+ '"><div class="cont"><em class="sel_num">선택</em><strong class="tit_a">'
				+ arr_value[0] + ' ('  + sizeInfo  + ')'
				+ '</strong><span class="tag_comm2 m">' + dealingWay + '</span>'
				+ arr_value[6] + " /  " + arr_value[7]
				+ ' 만원<a class="btn_del" href="javascript:" onclick=\'fn_setThemeBigyo("del", this)\'>삭제버튼</a></div></li>';
		}
		else {
			selectInfo = '<li class="themeBigyoSelect" Id="'
					+ $(obj).attr("unqval")
					+ '" chkValue="'
					+ chkValue
					+ '"><div class="cont"><em class="sel_num">선택</em><strong class="tit_a">'
					+ arr_value[0] + ' ('  + sizeInfo  + ')'
					+ '</strong><span class="tag_comm2 m">' + dealingWay + '</span>'
					+ arr_value[6] + " ~ " + arr_value[7]
					+ ' 만원<a class="btn_del" href="javascript:" onclick=\'fn_setThemeBigyo("del", this)\'>삭제버튼</a></div></li>';
			}

		$('.marketPriceCompare > ul').append(selectInfo);
		$('.marketPriceCompare').css("display", "");
		$('.bigyoTItleCloseClass').html(
				"<a href='javascript:;' onclick='fn_siseBigyoReset()'>닫기</a>");

		fn_siseBigyoNumber();
	} else {
		$("#" + $(obj).attr("unqval")).remove();

		if ($('.themeBigyoSelect').length < 1) {
			$('.marketPriceCompare').css("display", "none");
			$('.bigyoTItleCloseClass').html("비교");
		}
		fn_siseBigyoNumber();

	}
}

function fn_siseThemeKind() {
	getVariables = fn_arrSetVariables();

	$.ajax({
		url : "/?_c=memul&_m=sisetheme&_a=themekind",
		type : "POST",
		data : {
			estatekind : getVariables['estatekind']
		},
		success : function(data) {
			$('#siseThemeKind').html(data);

			$('#selectThemeKind').selectmenu({change: function(event,ui){
				load_siseThemeList();
			}});
		},
		error : function(jqXHR, textStatus, errorThrown) {
		//	alert("err1" + errorThrown);
		}
	});
}

// 테마시세정보 리스트.
// 매물구분 및 테마 변경에 따른 초기화 처리
function load_siseThemeList() {
	util2.curPage = 1;
	fn_siseBigyoReset();
	fn_siseThemeList();
}

/*
 * function fn_siseBigyo(){ CortarNo = $("#CortarNo").val(); $.ajax({ url :
 * "/?_c=memul&_m=siselist&_a=Bigyo", type: "POST", data : { CortarNo : CortarNo },
 * success: function(data){ $('#siseBigyoDiv').html(data); }, error: function
 * (jqXHR, textStatus, errorThrown){ alert("err1" + errorThrown ); } }); }
 */

// 시세비교 처리
function fn_siseBigyo() {
	getVariables = fn_arrSetVariables();
	$.ajax({
		url : "/?_c=memul&_m=siselist&_a=Bigyo",
		type : "POST",
		data : {
			CortarNo : getVariables['CortarNo'],
			PV_Addr1 : getVariables['addr1'],
			PV_Addr2 : getVariables['addr2'],
			PV_Addr3 : getVariables['addr3']
		},
		success : function(data) {
			var res = data.split("<!--@#$ INFO AREA $#@-->");
			if (data.length > 0) { // 자료가 있을때.
				$('#siseBigyoDiv').html(res[0]);
				$('#setDateSiseBigyo').html(res[1]);
			} else { // 자료가 없을때.
			}
		},
		error : function(jqXHR, textStatus, errorThrown) {
		//	alert("err1" + errorThrown);
		}
	});
}

// 최근 시세 : 주간 / 월간 / 분기
function fn_siseRecently() {

	getVariables = fn_arrSetVariables();

	$.ajax({
		url : "/?_c=memul&_m=siselist&_a=Recently",
		type : "POST",
		data : {
			CortarNo : getVariables['CortarNo'],
			PV_Addr1 : getVariables['addr1'],
			PV_Addr2 : getVariables['addr2'],
			PV_Addr3 : getVariables['addr3'],
			PV_Shin : getVariables['Shin']
		},
		success : function(data) {
			if (data == "Nodata") {
				$('.isViewRecently').css("display", "none");
			} else {
				$('#siseRecentlyWwDiv').html(data);
				$('#siseRecentlyMmDiv').html(data);
				$('#siseRecentlyQqDiv').html(data);
				$('.recentlyClassWeek').css("display", "");
			}
		},
		error : function(jqXHR, textStatus, errorThrown) {
		//	alert("err1" + errorThrown);
		}
	});
}
function fn_siseRecentlyView(viewMode) {
	$('.recentlyClass').css("display", "none");
	$('.recentlyClass' + viewMode).css("display", "");
}

function fn_setSearchGbn(searchGbn) {
	$(".tab_sub .sise_searchGbn_tab").removeClass("on");
	$(".tab_sub .sise_searchGbn_tab ." + searchGbn).addClass("on");
	$("#searchGbn").val(searchGbn);
	fn_goSiseList('');
}

// 지역시세 시세변동추이 차트 조회
function fn_setpriceTrendLayout(mmjj, syseperiod) {

	if (!syseperiod)
	{	
		syseperiod = $(':radio[name="syseperiod"]:checked').val();
	}

	getVariables = fn_arrSetVariables();	
	$.ajax({
		url : "/?_c=memul&_m=siselist&_a=trendCSV",
		type : "GET",
		data : {
			mmjjww : mmjj,
			CortarNo : getVariables['CortarNo'],
			addr1 : getVariables['addr1'],
			addr2 : getVariables['addr2'],
			addr3 : getVariables['addr3'],
			syseperiod : syseperiod,
			gglChart : "Y"
		},
		success : function(data) {
			if (data == "NoData") {
				return false;
			}
			arrRes = data.split("<!--@#$ INFO AREA $#@-->")
			if (arrRes[1] == "Y") {
				$('.isViewtrendCSV').css("display", "");
				if (mmjj == "JJ") {
					$("#priceTrendMMDiv").removeClass("on");
					$("#priceTrendJJDiv").addClass("on");
					$("#priceTrendMMDiv").html("");
					$("#priceTrendJJDiv").html(arrRes[0]);
				} else {
					$("#priceTrendJJDiv").removeClass("on");
					$("#priceTrendMMDiv").addClass("on");
					$("#priceTrendMMDiv").html(arrRes[0]);
					$("#priceTrendJJDiv").html("");
				}
			}
		},
		error : function(jqXHR, textStatus, errorThrown) {
		//	alert("err1" + errorThrown);
		}
	});

}

// 지역시세 시세변동추이 차트 조회 - 기간별

function fn_setpriceTrendLayout2(syseperiod) {
	if ($("#priceTrendJJDiv").is(".on")) {
		var _mmjj = 'JJ';
	} else {
		var _mmjj = 'MM';
	}

	fn_setpriceTrendLayout(_mmjj, syseperiod);
}

// ///////////////// 단지별 시세변동 추이
// 단지별 시세변동 추이 평형 목록 추출
function fn_getComplexSize() {
	getVariables = fn_arrSetVariables();
	complexCd = getVariables['ComplexCd'];

	$.ajax({
		url : "/?_c=memul&_m=sisecomplex&_a=areainfo",
		type : "POST",
		data : {
			complexCd : complexCd
		},
		success : function(data) {
			$('#complexSizeInfoDiv').html(data);
			if ($("#autoLoadAreaChartDiv").length > 0) {
				arr_autoValue = $("#autoLoadAreaChartDiv").val().split("|");
				removeMarketPriceTrendTag(false);
				fn_complexcodePriceTrend(arr_autoValue[0], arr_autoValue[1], arr_autoValue[2]);
			}
			else {
				removeMarketPriceTrendTag(true);
			}
		},
		error : function(jqXHR, textStatus, errorThrown) {
			removeMarketPriceTrendTag(true)
		}
	});
}

function fn_complexpriceTrendLayout(mmjjww) {
	// var tLayout = '<div class="graph_area"><div class="container"><div
	// class="col-sm-4 col-md-4 col-lg-4"><div id="priceTrend" class="c2iPlace
	// c2iStd"></div></div></div><div id="myTooltip" class="myTooltip
	// c2iHidden"><table style="min-width:90px"><thead><tr><th colspan="4"
	// class="tipHeader"><p style="text-align:center"><strong><span
	// id="name1"></span></strong></p><p id="measure1"></p><p
	// id="measure2"></p></th></tr></thead></table></div></div>';

	var tLayout = '<div id="priceTrend"></div>';

	if (mmjjww == "JJ") {
		$("#sise_mmjjww").val("JJ");
		$("#priceTrendMMDiv").html("");
		$("#priceTrendJJDiv").html(tLayout);

		$("#priceTrendMMDiv").removeClass("on");
		$("#priceTrendJJDiv").addClass("on");
	} else {
		$("#sise_mmjjww").val("MM");
		$("#priceTrendJJDiv").html("");
		$("#priceTrendMMDiv").html(tLayout);

		$("#priceTrendJJDiv").removeClass("on");
		$("#priceTrendMMDiv").addClass("on");

	}
	fn_complexcodePriceTrendDraw();
}

/*
 * 시세변동 추이
 */
function fn_complexcodePriceTrend(areaVolume, areaSize, areaType) {

	$("#sise_HousingSize").val(areaSize);
	$("#sise_HousingSizeType").val(areaType);
	$("#sise_HousingType").val(areaVolume);
	$("#sise_mmjjww").val("MM");

	var dealing;
	if ($("#complexpriceTrendTabMM").hasClass("on")) {
		dealing = "MM";
	}
	else {
		dealing = "JJ";
	}

	fn_complexpriceTrendLayout(dealing);
}

function fn_complexcodePriceTrendDraw() {
	getVariables = fn_arrSetVariables();
	var ComplexCd = getVariables['ComplexCd'];
	var searchGbn = getVariables['searchGbn'];
	var mmjjww = getVariables['mmjjww'];
	var areaSize = getVariables['housingSize'];
	var areaType = getVariables['housingSizeType'];
	var housingType = getVariables['housingType'];
	var baseUrl = '/?_c=memul&_m=sisecomplex&_a=trendCSV';
	josaDate = "";

	$.ajax({
		url : baseUrl,
		type : "GET",
		data : {
			mmjjww : mmjjww,
			searchGbn : searchGbn ,
			ComplexCd : ComplexCd ,
			areaSize : areaSize ,
			areaType : areaType ,
			housingType : housingType
		},
		success : function(data) {
			arrRes = data.split("<!--@#$ INFO AREA $#@-->")
			if (arrRes[1] != "Y") {
				// $('.nearSiseBigyoChartDiv').css("display","none");
				// return false;
			}

			// $('#nextTownJosaDateDiv').html( arrRes[1] );
			//..$('#priceTrend').html(arrRes[0]);
			// $('.nearSiseBigyoChartDiv').css("display","");

			$('#priceTrend'+mmjjww+'Div').html(arrRes[0]);
		},
		error : function(jqXHR, textStatus, errorThrown) {
			// alert("err1" + errorThrown );
		}
	});


//	fn_siseComplexRecently();  // 최근시세 조회는 주석
}
// ///////////////// 단지별 시세변동 추이

// 주변지역 면적당 시세비교 차트 (지역 시세)
function fn_drawNextTownTmp() {

	getVariables = fn_arrSetVariables();

	baseUrl = '/?_c=memul&_m=siselist&_a=NextTownCsv';

	// 기준일 추출
	josaDate = "";
	$.ajax({
		url : baseUrl,
		type : "GET",
		data : {
			CortarNo : getVariables['CortarNo'],
			addrkind : getVariables['addrkind'],
			addr1 : getVariables['addr1'],
			addr2 :  getVariables['addr2'],
			addr3 : getVariables['addr3']
		},
		success : function(data) {
			arrRes = data.split("<!--@#$ INFO AREA $#@-->")
			if (arrRes[2] != "Y") {
				removeCompareNextTag(true);
				return false;
			}

			$('#nextTownJosaDateDiv').html(arrRes[1]);
//			$('#areaPriceTrendLegend').html(arrRes[0]);

			chartData3 = arrRes[0];
			google.charts.load('current', {packages: ['corechart', 'bar'], 'language': 'kr'} );
			google.charts.setOnLoadCallback(drawChart3);

			// $('.nearSiseBigyoChartDiv').css("display","");

			/*
			 * var patten=/\@.+?\@/g; tmpDate = patten.exec(data); if (
			 * tmpDate.indexOf("Nodata") ){
			 * $('.nearSiseBigyoChartDiv').css("display","none"); }else if (
			 * tmpDate[0] ){ josadate = tmpDate[0].replace(/@/gi, ""); josadate =
			 * josadate.replace(/\//gi, "."); $('#nextTownJosaDateDiv').html(
			 * josadate ); }
			 */
		},
		error : function(jqXHR, textStatus, errorThrown) {
			removeCompareNextTag(true);
		}
	});
}

// 아파트 검색 함수
function fn_setPriceKind(thisKind) {
	getVariables = fn_arrSetVariables();
	var selectSysePriceKindOption = "";
	for (spk = 0; spk < arrSysePriceKind.length; spk++) {
		if (getVariables['searchGbn'] == "presale" && spk > 1)
			break; // 분양권은 월세/보증금 없음
		selectSysePriceKindOption += '<option value="' + spk + '">'
				+ arrSysePriceKind[spk] + '</option>';
	}
	$("#selectSysePriceKind").html(selectSysePriceKindOption);
}

function fn_setPriceInfo(priceKind) {
	var arr_thisKind = new Array();
	var arr_thisPriceValue = new Array();

	if (priceKind == "1") {
		arr_thisKind = arrSyseJprice;
		arr_thisPriceValue = arrSyseJpriceVal;
	} else if (priceKind == "2") {
		arr_thisKind = arrSyseBprice;
		arr_thisPriceValue = arrSyseBpriceVal;
	} else if (priceKind == "3") {
		arr_thisKind = arrSyseWprice;
		arr_thisPriceValue = arrSyseWpriceVal;
	} else {
		arr_thisKind = arrSyseMprice;
		arr_thisPriceValue = arrSyseMpriceVal;
	}

	var selectThisKind = "";
	for (spk = 0; spk < arr_thisKind.length; spk++) {
		selectThisKind += '<option value="' + arr_thisPriceValue[spk] + '">'
				+ arr_thisKind[spk] + '</option>';
	}
	$("#selectSyseprice").html(selectThisKind);
	$("#setPriceValueLow").val("");
	$("#setPriceValueHigh").val("");
}

function fn_setPriceIn(setPriceValue) {
	priceKind = $("#selectSysePriceKind").val();
	arrPriceValue = setPriceValue.split("~");
	$("#setPriceValueLow").attr("readonly", false);
	$("#setPriceValueHigh").attr("readonly", false);
	// 전체
	if (parseInt(arrPriceValue[0]) <= -1 && parseInt(arrPriceValue[1]) <= -1) {
		$("#setPriceValueLow").val("");
		$("#setPriceValueHigh").val("");
		// 범위 선택
	} else if (parseInt(arrPriceValue[0]) >= 1
			|| parseInt(arrPriceValue[1]) >= 1) {
		$("#setPriceValueLow").val(parseInt(arrPriceValue[0]));
		$("#setPriceValueHigh").val(
				(parseInt(arrPriceValue[1]) >= 1) ? parseInt(arrPriceValue[1])
						: "");

		$("#setPriceValueLow").attr("readonly", true);
		$("#setPriceValueHigh").attr("readonly", true);

		// 직접 입력
	} else {
		$("#setPriceValueLow").val("");
		$("#setPriceValueHigh").val("");
	}
}

function fn_setPriceTypeIn() {
	if ($("#selectSyseprice").val() == "-1~-1"
			|| $("#selectSyseprice").val() == "0~0") {
		$("#selectSyseprice").val("0~0");
		$("#setPriceValueLow").attr("readonly", false);
		$("#setPriceValueHigh").attr("readonly", false);
	}
}

function fn_setSyseSizeInfo() {
	var selectThisSize = "";
	for (spk = 0; spk < arrSyseSize.length; spk++) {
		selectThisSize += '<option value="' + arrSyseSizeVal[spk] + '">'
				+ arrSyseSize[spk] + '</option>';
	}
	$("#selectSyseSizeInfo").html(selectThisSize);
}

function fn_setSizeIn(setSizeValue) {
	arrSizeValue = setSizeValue.split("~");
	$("#setSizeValueLow").attr("readonly", false);
	$("#setSizeValueHigh").attr("readonly", false);
	// 전체
	if (parseInt(arrSizeValue[0]) <= -1 && parseInt(arrSizeValue[1]) <= -1) {
		$("#setSizeValueLow").val("");
		$("#setSizeValueHigh").val("");
		// 범위 선택
	} else if (parseInt(arrSizeValue[0]) >= 1 || parseInt(arrSizeValue[1]) >= 1) {
		$("#setSizeValueLow").val(parseInt(arrSizeValue[0]));
		$("#setSizeValueHigh").val(
				(parseInt(arrSizeValue[1]) >= 1) ? parseInt(arrSizeValue[1])
						: "");

		$("#setSizeValueLow").attr("readonly", true);
		$("#setSizeValueHigh").attr("readonly", true);

		// 직접 입력
	} else {
		$("#setSizeValueLow").val("");
		$("#setSizeValueHigh").val("");
	}
}

function fn_setSizeTypeIn() {
	if ($("#selectSyseSizeInfo").val() == "-1~-1"
			|| $("#selectSyseprice").val() == "0~0") {
		$("#selectSyseSizeInfo").val("0~0");
		$("#setSizeValueLow").attr("readonly", false);
		$("#setSizeValueHigh").attr("readonly", false);
	}
}

// 검색 변경에 따른 페이지 초기화
function load_siseInfoList() {
	util2.curPage = 1;
	fn_siseBigyoReset();
	fn_siseInfoList();
}

// 시세정보 리스트의 검색 조건 초기화
function fn_siseInfoListReset() {

	$('#selectSysePriceKind option').eq(0).prop('selected', true);
	$('#selectSysePriceKind option:eq(0)').attr('selected', 'selected');
	$("#selectSysePriceKind").selectmenu("refresh");


	$('#selectSyseprice option').eq(0).prop('selected', true);
	$('#selectSyseprice option:eq(0)').attr('selected', 'selected');
	$("#selectSyseprice").selectmenu("refresh");

	$('#setPriceValueLow').val("");
	$('#setPriceValueHigh').val("");

	$('#selectSyseSizeInfo option').eq(0).prop('selected', true);
	$('#selectSyseSizeInfo option:eq(0)').attr('selected', 'selected');
	$("#selectSyseSizeInfo").selectmenu("refresh");
	$('#setSizeValueLow').val("");
	$('#setSizeValueHigh').val("");

}

// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// +++++++++++++++++++++++++++ 단지 목록에서 처리될 함수들
// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// 단지 시세정보.
// 면적별 시세정보 목록을 화면에 출력한다.
function fn_siseComplexPriceInfoView(mmjjww) {
	$(".ComplexPriceAll").css("display", "none");
	$("." + mmjjww).css("display", "");


}

// 단지의 면적별 시세정보를 조회한다.
function fn_siseComplexPriceInfoList() {
	getVariables = fn_arrSetVariables();

	$('#siseComplexPriceInfoList').append(__loadingString);

	$.ajax({
		url : "/?_c=memul&_m=sisecomplexpriceInfo",
		type : "POST",
		data : {
			complexCd : getVariables['ComplexCd'],
			searchGbn : getVariables['searchGbn'],
			ComplexNm : getVariables['ComplexNm'],
			complexTypeName: _SEL_COMPLEXTYPE
		},

		success : function(data, textStatus, jqXHR) {
			var info = data.split("<!--@#$ INFO AREA $#@-->");
			$("#siseComplexPriceInfoList").html(info[0]);
			$(".ComplexPriceM").css("display", "");
	//		$("#siseComplexJosaR114Div").html( info[1] );
	//		$("#siseComplexJosaGamDiv").html( info[2] );

			var hasMarketPriceInfo = false;
			$("#tblSiseComplexPriceInfoList tbody").find("tr").each( function(index) {
				if($(this).css("display") == "table-row") {
					hasMarketPriceInfo = true;
				}

				var html = "";
				if (jQuery.trim(info[1]) != "") {
					html = "부동산114<br>(" + info[1] + ")";
				}
				else {
					html = "부동산114";
				}
				$("#tblSiseComplexPriceInfoList > thead").find("tr:nth-child(1)").find("th:nth-child(2)").html(html);

				if (jQuery.trim(info[2]) != "") {
					html = "한국감정원<br>(" + info[2] + ")";
				}
				else {
					html = "한국감정원";
				}
				$("#tblSiseComplexPriceInfoList > thead").find("tr:nth-child(1)").find("th:nth-child(3)").html(html);
			});

			removeMarketPriceInfoTag(!hasMarketPriceInfo);
		},

		error : function(jqXHR, textStatus, errorThrown) {
			removeMarketPriceInfoTag(true)
		}
	});
}

// 최근시세
function fn_siseComplexRecently() {
	getVariables = fn_arrSetVariables();

	$.ajax({
		url : "/?_c=memul&_m=sisecomplex&_a=Recently",
		type : "POST",
		data : {
			PV_Aptcode : getVariables['ComplexCd'],
			PV_Size : getVariables['housingSize'],
			PV_SizeType : getVariables['housingSizeType'],
			Param_JosaDate : "",
			PV_HousingType : getVariables['housingType']
		},
		success : function(data) {
			$('#siseRecentlyWwDiv').html(data);
			$('#siseRecentlyMmDiv').html(data);
			$('.recentlyClassMonth').css("display", "");
		},
		error : function(jqXHR, textStatus, errorThrown) {
		//	alert("err1" + errorThrown);
		}
	});
}

// 실거래가 시세정보 목록을 화면에 출력한다.
function fn_siseComplexRealPriceList(_hasSiseflag) {

	getVariables = fn_arrSetVariables();

	$('#siseComplexRealPriceList').html(" on Loading...");
	$.ajax({
		url : "/?_c=memul&_m=sisecomplexpriceInfo&_a=onlyRpriceDetail",
		type : "GET",
		data : {
			ComplexCd : getVariables['ComplexCd'],
			ComplexNm : getVariables['ComplexNm'],
			estatekind : getVariables['estatekind'],
			hasSiseInfo : _hasSiseflag
		},
		success : function(data, textStatus, jqXHR) {
			if (data.length > 0) {
				$("#siseComplexRealPriceList").html(data);
				$(".danjiRealPriceClass").css("display", "");
				$("#siseComplexRealPriceList > .noPrice").css("display", "none");	
			}
			else {
				$(".danjiRealPriceClass").css("display", "none");
			}
		},
		error : function(jqXHR, textStatus, errorThrown) {
			$(".danjiRealPriceClass").css("display", "none");
		}
	});

}

// 실거래가 더보기 (3년) 처리 함수
function fn_realPriceMore() {
	getVariables = fn_arrSetVariables();
	$.ajax({
		url : "?_c=memul&_m=SiseComplexPriceInfo&_a=onlyRpriceMore",
		type : "POST",
		data : {
			ComplexCd : getVariables['ComplexCd'],
			addr1 : getVariables['addr1'],
			addr2 : getVariables['addr2'],
			addr3 : getVariables['addr3'],
			ComplexNm : getVariables['ComplexNm'],
			estatekind : getVariables['estatekind']
		},

		success : function(data, textStatus, jqXHR) {
			$('#siseRealPriceMorePop').html(data);

	//		$(".danjiRealPricePopM").show();
	//		$(".danjiRealPricePopJ").hide();
	//		$(".danjiRealPricePopW").hide();

			fn_danjiRealPriceViewPop('danjiRealPricePopM');

			openLp('#lp_layout_realPriceMorePop');
		},

		error : function(jqXHR, textStatus, errorThrown) {
			// alert("err1" + errorThrown );
		}
	});
	$('#search_layout').css('display', 'none');
}
function fn_danjiRealPriceViewPop(mmjjww) {
	$(".danjiRealPricePopAll").css("display", "none");
	$("." + mmjjww).css("display", "");
	$("#tblsiseComplexRealPriceListPop > .noPrice").css("display", "none");
	$("." + mmjjww).each(function(index) {
		if ($(this).hasClass("noPrice")) {
			$(this).css("display", "none");
		}
	});
}
function fn_realPriceMoreClose() {
	closeLp('#lp_layout_realPriceMorePop');
	$('#siseRealPriceMorePop').html("");
	$('#search_layout').css('display', 'block');
}

// 단지별 주변지역 면적당 시세비교 차트 (단지 시세)
function fn_drawComplexNextTown(monitorAgent) {

	getVariables = fn_arrSetVariables();

	baseUrl = '/?_c=memul&_m=sisecomplex&_a=NextTownCsv';

	drawedComplexNextTown = false;

	// 기준일 추출
	josaDate = "";
	return $.ajax({
		url : baseUrl,
		type : "GET",
		data : {
			addrkind : getVariables['addrkind'],
			addr1 : getVariables['addr1'],
			addr2 : getVariables['addr2'],
			addr3 : getVariables['addr3'],
			aptcode : getVariables['ComplexCd'],
			estatekind :  getVariables['estatekind'],
			CortarNo : getVariables['CortarNo'],
			monitorAgent : monitorAgent
		},
		success : function(data) {

			arrRes = data.split("<!--@#$ INFO AREA $#@-->")
			if (arrRes[2] != "Y") {
				// $('.nearSiseBigyoChartDiv').css("display","none");
				removeCompareNextTag(true);
				return false;
			}

			$('#nextTownJosaDateDiv').html(arrRes[1]);

			removeCompareNextTag(false);
			drawedComplexNextTown = true;

			chartData3 = arrRes[0];
			google.charts.load('current', {packages: ['corechart', 'bar'], 'language': 'kr'} );
			google.charts.setOnLoadCallback(drawChart3);

			// $('.nearSiseBigyoChartDiv').css("display","");

			/*
			 * var patten=/\@.+?\@/g; tmpDate = patten.exec(data); josadate =
			 * tmpDate[0].replace(/@/gi, "");
			 * $('#nextTownJosaDateDiv').html(josadate);
			 */
		},
		error : function(jqXHR, textStatus, errorThrown) {
			removeCompareNextTag(true);
		}
	});
}

/* 비슷한 가격대의 주변 단지 */
function fn_similarComplexList() {

	var searchGbn = $("#sise_searchGbn").val();
	var cortarNo = $("#sise_CortarNo").val();
	var complexCd = $("#sise_ComplexCd").val();
	var addr1 = $("#sise_addr1").val();
	var addr2 = $("#sise_addr2").val();
	var addr3 = $("#sise_addr3").val();
	var areaSize = $("#sise_AreaSize").val();
	var areaSizeType = $("#sise_AreaSizeType").val();

	var formData = {
		"addr1" : addr1,
		"addr2" : addr2,
		"addr3" : addr3,
		"complexCd" : complexCd,
		"areaSize" : areaSize,
		"areaSizeType" : areaSizeType,
		"estateType" : searchGbn
	};

	$.ajax({
		url : "/?_c=memul&_m=siseComplex&_a=SimilarMarketPriceComplex",
		type : "POST",
		data : formData,
		success : function(data, textStatus, jqXHR) {
			if (data.length > 0 && jQuery.trim(data) != "") { // 자료가 있을때.
				$("div.contents_wrap #similarComplexContents ul").html(data);
			} else { // 자료가 없을때.
				removeSimilarComplexTag();
			}
		},
		error : function(jqXHR, textStatus, errorThrown) {
			// alert("code:"+jqXHR.status+"\n"+"message:"+jqXHR.responseText+"\n"+"error:"+errorThrown);
			removeSimilarComplexTag();
		}
	});
}


/*
* 단지상세정보로 이동
*/
function goSiseComplexDetail(cortarNo, fCode, complexCd, tabGbn) {
		var method = "post";
		var path = "/?_c=memul&_m=p10"
	    var form = document.createElement("form");

		form.setAttribute("method", method);
	    form.setAttribute("action", path);

	    var hiddenField1 = document.createElement("input");
        hiddenField1.setAttribute("type", "hidden");
        hiddenField1.setAttribute("name", "cortarNo");
        hiddenField1.setAttribute("value",  cortarNo);
        form.appendChild(hiddenField1);

        var hiddenField2 = document.createElement("input");
        hiddenField2.setAttribute("type", "hidden");
        hiddenField2.setAttribute("name", "fCode");
        hiddenField2.setAttribute("value", fCode);
        form.appendChild(hiddenField2);

        var hiddenField3 = document.createElement("input");
        hiddenField3.setAttribute("type", "hidden");
        hiddenField3.setAttribute("name", "complexCd");
        hiddenField3.setAttribute("value", complexCd);
        form.appendChild(hiddenField3);

         var hiddenField4 = document.createElement("input");
        hiddenField4.setAttribute("type", "hidden");
        hiddenField4.setAttribute("name", "tabGbn");
        hiddenField4.setAttribute("value", tabGbn);
        form.appendChild(hiddenField4);

        document.body.appendChild(form);
	    form.submit();
}

/*
 * 시세비교 체크 확인.
 *  시세리스트의 페이지 변경 후 비교를 위해 체크해 두었던 시세정보에 체크 상태가 남아 있어야 한다.
 */
function checkCompareMarketPrice() {

	$("table#tblSiseInfoList > tbody#siseInfoList").find("tr").find("td:nth-last-child(1)").each(function(index) {

		var input = $(this).find("input:checkbox");
		var unqval = $(this).find("input:checkbox").attr("unqval");

		$(".marketPriceCompare ").find("ul").find("li").each(function(index) {
			var id = $(this).attr("id");

			if (unqval == id) {
				$(input).prop("checked", true);
				$(input).attr("checked", true);
			}
		});

	});

}

/*
 * 시세비교 체크 확인.
 *  시세리스트의 페이지 변경 후 비교를 위해 체크해 두었던 시세정보에 체크 상태가 남아 있어야 한다.
 */
function checkCompareMarketPriceTheme() {

	$("table#tblSiseThemeList > tbody").find("tr").find("td:nth-last-child(1)").each(function(index) {

		var input = $(this).find("input:checkbox");
		var unqval = $(this).find("input:checkbox").attr("unqval");

		$(".marketPriceCompare ").find("ul").find("li").each(function(index) {
			var id = $(this).attr("id");

			if (unqval == id) {
				$(input).prop("checked", true);
				$(input).attr("checked", true);
			}
		});

	});

}


$(function() {

	function isIE(version, comparison) {
        var cc = 'IE',
            b = document.createElement('B'),
            docElem = document.documentElement,
            isIE;
        if (version) {
            cc += ' ' + version;
            if (comparison) { cc = comparison + ' ' + cc; }
        }

        b.innerHTML = '<!--[if ' + cc + ']><b id="iecctest"></b><![endif]-->';
        docElem.appendChild(b);
        isIE = !!document.getElementById('iecctest');
        docElem.removeChild(b);
        return isIE;
    }

})
