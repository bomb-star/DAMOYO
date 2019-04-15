
function educationInfoPieChart($obj, $aryResult, caption, $legend, h)
{
    var option = {
        isResponsive : true, width: '100%', aspectRatio: '90%', //theme: 'vizThemeDarkNavy',
        margin:{top:40, left:10, right:10, bottom:5},
        easing:'monotone', duration: 750, delay: 50,
        //bgImg:{src: 'http://image.r114.co.kr/W1/images/logo_co.png', width: 257, height: 72, opacity: 0.3, xPos:'middle', yPos:'middle'},
        data: undefined,
        title: {
            caption: caption,
            fonts:['Noto Sans KR', '16px', 'dimgray', 'black'],
            textDeco: "underline",
            gap: 5,
            xPos: 'middle',
            yPos: 'top',
            //subCaption: "('2016년 통계 기준)",
            subFonts: ['Noto Sans KR', '14px', '#777', 'gray'],
            opacity:1,
            desc: caption
        },
        padding: 20, labelPadRatio: 0.35, innerRadius: 0,
        drawSequence: true,
        keyCol: 'grade', padAngle: 0, valueHiddenAngle: 0.20, // 0.00 ~ 1.00
        pieceColors: ["#5C6BC0", "#FF5252", "#FBC02D", "#8799F6", "#E48E4F", "#EEB763", "#98abc5", "#8a89a6", "#6b486b"],

        /*pieceColors: ["#98abc5", "#8a89a6", "#7b6888", "#6b486b", "#a05d56", "#d0743c", "#ff8c00"], */texture: 'line13',
        labelWithValue: true,

        measures:[
            {caption:'인구분포', colNm: 'cnt', unit: '명', format: ',f', fonts: ['Noto Sans KR', '14px', 'black', 'dimgray'],
                showLabel: true, draw: true, use: true}
        ],


        //legendId:'#vizLegend',
        //tooltip: {id: '#tooltip', infoLevel:0, fixedPos: undefined/*{xPos:'start', yPos:'top'}*/, displayTips: 4, userTipId: undefined },
        //method:{click:getClickInfo, mouseenter:getMouseEnterInfo, mouseleave:getMouseLeaveInfo, mousemove: getTooltipInfo},
        isDev:false,
        // langSrc:'/gis/assets/i18n/'
    };

    var studentDistObject =c2i.chart.pie($obj, option).data($aryResult).render();

	var studentDistOptionsLegend = {
        width: 150, layout: ['topbottom', 1], padding: 18,
        duration: 750, delay: 50,
        rectSize: { width: 16, height: 7 ,radius: 3.5, dy: 4},
        labelGap : 1.0/* em */, labelDistance : 0, valueDistance: 120,/* 120px */
        fonts:['Noto Sans KR','12px'],
        targetChartObject: studentDistObject
    };

	//studentDistOptionsLegend.height = h;
    c2i.chart.legendOrdinal($legend, studentDistOptionsLegend);
}

function educationInfoEntranceRatePie($obj, $aryResult, caption, $legend, h) 
{
    var option = {
        isResponsive: false, width: '100%', aspectRatio: '90%', // radius: 80, theme: 'none',
        margin:{top:20, left:10, right:10, bottom:30},
        easing: 'monotone', duration: 750, delay: 50,
        padding: 20, inLabelPadRatio: 0.25, outLabelPadRatio: 0.18, innerRadius: 2,
        inLabel: "({ratio})", // ({ratio}: {value}) ; {ratio}과 {value}은 예약어이며, 다른 사항은 추가 가능함.
        outLabel: "({ratio})", // ({ratio}: {value})
        drawSequence: true,
        keyCol: 'grade',
        padAngle: 0.04,
        valueHiddenLine: false,
        valueHiddenAngle: 0.20, // 0.00 ~ 1.00
        pieceColors: ["#5C6BC0", "#FF5252", "#FBC02D", "#8799F6", "#E48E4F", "#EEB763"],

        measures:[
            {caption:caption, colNm:'ratio', unit: '', format:'%', fonts:['Noto Sans KR','14px','black','#000'],
                showLabel:true, draw:true, use: true}
        ],

        isDev: false,
        // langSrc:'/gis/assets/i18n/'
    };

    var studentDistObject = c2i.chart.pie($obj, option).data($aryResult).render();

	var studentDistOptionsLegend = {
        width: 150, layout: ['topbottom', 1], padding: 18,
        duration: 750, delay: 50,
        rectSize: { width: 16, height: 7 ,radius: 3.5, dy: 4},
        labelGap : 1.0/* em */, labelDistance : 0, valueDistance: 120,/* 120px */
        fonts:['Noto Sans KR','12px'],
        targetChartObject: studentDistObject
    };

    c2i.chart.legendOrdinal($legend, studentDistOptionsLegend);
}