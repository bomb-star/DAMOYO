<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xml:lang="ko" lang="ko"><head>
<meta http-equiv="Expires" content="-1"> 
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="No-Cache">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta property="fb:app_id" content="1381871691878925">
<meta id="metaURL" property="og:url" content="https://www.r114.com/Default.asp?_c=memul&amp;_m=p10">
<meta id="metaType" property="og:type" content="website">
<meta id="metaImg" property="og:image" content="https://image.r114.co.kr/W1/images/common/fe_logo.png">
<meta id="metaTitle" property="og:title" content="부동산 빅데이터 플랫폼 부동산114">
<meta id="metaDescription" property="og:description" content="종합부동산포털, 매물, 시세, 실거래가, 분양, 리서치, 매물의뢰, 창업지원, 컨설팅, 솔루션, 부동산뉴스 제공">
<meta id="metaKeyword" name="keyword" content="종합부동산포털, 매물, 시세, 실거래가, 분양, 리서치, 매물의뢰, 창업지원, 컨설팅, 솔루션, 부동산뉴스 제공">
<meta name="description" content="종합부동산포털, 매물, 시세, 실거래가, 분양, 리서치, 매물의뢰, 창업지원, 컨설팅, 솔루션, 부동산뉴스 제공">
<meta name="twitter:card" content="summary">

<title>부동산114</title>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/layout.css"
	rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/reset.css"
	rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/jquery-ui.css"
	rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/template.css"
	rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/common.css"
	rel="stylesheet">
</head>





<!-- 탑 시작 -->
<div id="top_layout">
    <div class="top_wrap">
    	<div class="w_fix clearfix">

    		<a href="/" class="logo_r114">부동산114 로고</a>

	    		<div class="inp_wrap search_wrap" id="dqSearchKeywordForm">	<form id="dqSearchForm" name="dqSearchForm">
<!--    <input type="text" placeholder="검색없이 건물 토지정보를 바로 확인하세요!" id="dqSearchTerm" name="dqSearchTerm" autocomplete="off" onmousedown="dq_setTextbox('1',event);" onkeydown="dq_setTextbox('1',event);" onkeypress="if(event.keyCode==13) {dq_search(); return false;}" class="g_search" value="" /> -->
    <input type="text" placeholder="알리미서비스 이벤트! 신청하GO, 커피받GO" id="dqSearchTerm" name="dqSearchTerm" autocomplete="off" onmousedown="dq_setTextbox('1',event);" onkeydown="dq_setTextbox('1',event);" onkeypress="if(event.keyCode==13) {dq_search(); return false;}" class="g_search" value="">    
    <a href="javascript:" class="btn_search" id="cmdSearchHome">검색버튼</a>
	<script language="JavaScript" src="/search/js/dqAutoComplete.js"></script>
    <div class="result_combo" id="auto_keyword_box" name="auto_keyword_box" style="display:none">
	</div>
    <div class="result_combo" id="recent_keyword_box" name="recent_keyword_box" style="display:none">
        <strong class="lately_serch">최근ㅇ검색어</strong>
        <ul class="search_result_list" id="dqRecentSearchTerms">
            <li><a href="#"><span class="fc_blue">경기도</span> 가평군 가평읍</a></li>
            <li><a href="#"><span class="fc_blue">경기도</span> 가평군 가평읍</a></li>
            <li><a href="#"><span class="fc_blue">경기도</span> 가평군 가평읍</a></li>
        </ul>
	</div>
	<!-- 자동완성 시작 -->
	<input type="hidden" name="dqSearchTermOld" id="dqSearchTermOld" value="">
	<input type="hidden" name="dqSearchType" id="dqSearchType" value="">
	<input type="hidden" name="dqOption" id="dqOption" value="">
	<input type="hidden" name="dqTotalCnt" id="dqTotalCnt" value="">
	<input type="hidden" name="dqSearchSubType" id="dqSearchSubType" value="">
	<input type="hidden" name="dqPage" id="dqPage" value="">
	
	<!-- 검색입력관련 -->
	<input type="hidden" name="hdSearchcd" id="hdSearchcd" value="">
	<input type="hidden" name="hdSearchgb" id="hdSearchgb" value="">
	<input type="hidden" name="hdSearchfrom" id="hdSearchfrom" value="1">
	<input type="hidden" name="hdSearchmethod" id="hdSearchmethod" value="1">

	<input type="hidden" name="adSearchKeyword" id="adSearchKeyword" value="알리미서비스 이벤트! 신청하GO, 커피받GO">
	<input type="hidden" name="adSearchKeywordUrl" id="adSearchKeywordUrl" value="http://https://www.r114.com/?_c=service&amp;_m=event&amp;_a=eventviewalimi">
	<input type="hidden" name="adSearchKeywordOption" id="adSearchKeywordOption" value="0">
	</form></div>

			<ul class="my_utils">

		
    		    <li><a href="#" onclick="fn_loginDiv();" class="login_status">로그인</a></li>
    		    <li><a href="/?_c=mypage&amp;_m=joinmain" class="mypage">회원가입</a></li>
    		    <li><a href="/?_c=mypage&amp;_m=mytrace" class="myact on">나의활동</a></li>
		
    		</ul>
    	</div>
    </div>
    
    
    
    <div class="menu_wrap">
    	<ul class="menu">
			<li class="on">
				<span>
					<a href="/?_c=memul&amp;_m=p10">매물/시세</a>
					<div class="layer_menu lm_1">
						<ul class="col">
							<li><a href="/?_c=memul&amp;_m=p10&amp;direct=A">아파트</a></li>
							<li><a href="/?_c=memul&amp;_m=p10&amp;direct=B">주상복합</a></li>
							<li><a href="/?_c=memul&amp;_m=p10&amp;direct=C">재건축</a></li>
							<li><a href="/?_c=memul&amp;_m=p10&amp;direct=D">오피스텔</a></li>
							<li><a href="/?_c=memul&amp;_m=p10&amp;direct=E">분양권</a></li>
							<li><a href="/?_c=memul&amp;_m=p10&amp;direct=F">빌라</a></li>
							<li><a href="/?_c=memul&amp;_m=p10&amp;direct=G">원룸</a></li>
							<li><a href="/?_c=memul&amp;_m=p10&amp;direct=H">주택</a></li>
							<li><a href="/?_c=memul&amp;_m=p10&amp;direct=I">재개발</a></li>
							<li><a href="/?_c=memul&amp;_m=p10&amp;direct=J">상가</a></li>
							<li><a href="/?_c=memul&amp;_m=p10&amp;direct=K">사무실</a></li>
							<li><a href="/?_c=memul&amp;_m=p10&amp;direct=L">건물</a></li>
							<li><a href="/?_c=memul&amp;_m=p10&amp;direct=M">공장</a></li>
							<li><a href="/?_c=memul&amp;_m=p10&amp;direct=N">창고</a></li>
							<li><a href="/?_c=memul&amp;_m=p10&amp;direct=O">토지</a></li>
							<li><a href="/?_c=memul&amp;_m=p10&amp;direct=P">숙박/펜션</a></li>
							<li><a href="/?_c=memul&amp;_m=p10&amp;direct=Q">경매</a></li>
							<li><a href="/?_c=memul&amp;_m=p10&amp;direct=R">기타</a></li>
						</ul>
					</div>
				</span>
                <ul id="MemulType1"><li class="on"><a href="javascript:;" onclick="javascript:fnc_MemulType1_sel(this);" data-value="A01" data-fcode="A"> 아파트</a></li>
<li><a href="javascript:;" onclick="javascript:fnc_MemulType1_sel(this);" data-value="A01" data-fcode="B"> 주상복합</a></li>
<li><a href="javascript:;" onclick="javascript:fnc_MemulType1_sel(this);" data-value="A01" data-fcode="C"> 재건축</a></li>
<li><a href="javascript:;" onclick="javascript:fnc_MemulType1_sel(this);" data-value="A02" data-fcode="D"> 오피스텔</a></li>
<li><a href="javascript:;" onclick="javascript:fnc_MemulType1_sel(this);" data-value="A01" data-fcode="E"> 분양권</a></li>
<li><a href="javascript:;" onclick="javascript:fnc_MemulType1_sel(this);" data-value="A05" data-fcode="F"> 빌라</a></li>
<li><a href="javascript:;" onclick="javascript:fnc_MemulType1_sel(this);" data-value="A03" data-fcode="G"> 원룸</a></li>
<li><a href="javascript:;" onclick="javascript:fnc_MemulType1_sel(this);" data-value="A04" data-fcode="H"> 주택</a></li>
<li><a href="javascript:;" onclick="javascript:fnc_MemulType1_sel(this);" data-value="A06" data-fcode="I"> 재개발</a></li>
<li><a href="javascript:;" onclick="javascript:fnc_MemulType1_sel(this);" data-value="A07" data-fcode="J"> 상가</a></li>
<li><a href="javascript:;" onclick="javascript:fnc_MemulType1_sel(this);" data-value="A08" data-fcode="K"> 사무실</a></li>
<li><a href="javascript:;" onclick="javascript:fnc_MemulType1_sel(this);" data-value="A09" data-fcode="L"> 건물</a></li>
<li><a href="javascript:;" onclick="javascript:fnc_MemulType1_sel(this);" data-value="A10" data-fcode="M"> 공장</a></li>
<li><a href="javascript:;" onclick="javascript:fnc_MemulType1_sel(this);" data-value="A10" data-fcode="N"> 창고</a></li>
<li><a href="javascript:;" onclick="javascript:fnc_MemulType1_sel(this);" data-value="A11" data-fcode="O"> 토지</a></li>
<li><a href="javascript:;" onclick="javascript:fnc_MemulType1_sel(this);" data-value="A12" data-fcode="P"> 숙박/펜션</a></li>
<li><a href="javascript:;" onclick="javascript:fnc_MemulType1_sel(this);" data-value="A12" data-fcode="Q"> 경매</a></li>
<li><a href="javascript:;" onclick="javascript:fnc_MemulType1_sel(this);" data-value="A12" data-fcode="R"> 기타</a></li>
</ul>
            </li>
           <li class="">
				<span>
					<a href="/?_c=ask">매물의뢰</a>
					<div class="layer_menu lm_2">
						<ul>
							<li class=""><a href="javascript:goAskSellPage();">내놓기</a></li>
							<li class=""><a href="javascript:goAskBuyPage();">구하기</a></li>
							<li class=""><a href="/?_c=ask&amp;_m=asklist">의뢰현황</a></li>
							<li class=""><a href="/?_c=ask&amp;_m=customerreview">고객후기</a></li>
							<li class=""><a href="/?_c=ask&amp;_m=findagent">중개사무소찾기</a></li>
						</ul>
					</div>
				</span>
                <ul>
					<li class=""><a href="javascript:goAskSellPage();">내놓기</a></li>
					<li class=""><a href="javascript:goAskBuyPage();">구하기</a></li>
                    <li class=""><a href="/?_c=ask&amp;_m=asklist">의뢰현황</a></li>
                    <li class=""><a href="/?_c=ask&amp;_m=customerreview">고객후기</a></li>
                    <li class=""><a href="/?_c=ask&amp;_m=findagent">중개사무소찾기</a></li>
                </ul>
            </li>

			<li class="">
				<span>
					<a href="/?_c=service&amp;_s=directdeal&amp;_m=directdeallistPersonal">직거래</a>
					<div class="layer_menu lm_3">
						<ul>
							<li class=""><a href="/?_c=service&amp;_s=directdeal&amp;_m=directdeallistPersonal">개인매물</a></li>
							<li class=""><a href="/?_c=service&amp;_s=directdeal&amp;_m=directdeallistEnterprise">기업매물</a></li>
				            <li class=""><a href="/?_c=service&amp;_s=directdeal&amp;_m=directdeallistState">국유재산사용/매각</a></li>
						</ul>
					</div>
				</span>
                <ul>
                    <li class=""><a href="/?_c=service&amp;_s=directdeal&amp;_m=directdeallistPersonal">개인매물</a></li>
					<li class=""><a href="/?_c=service&amp;_s=directdeal&amp;_m=directdeallistEnterprise">기업매물</a></li>
                    <li class=""><a href="/?_c=service&amp;_s=directdeal&amp;_m=directdeallistState">국유재산사용/매각</a></li>
                </ul>
            </li>

            <li class="">
				<span>
					<a href="/?_c=lots">분양</a>
					<div class="layer_menu lm_5">
						<ul>
							<li class=""><a href="/?_c=lots&amp;_s=info&amp;_m=infolist">분양정보</a></li>
							<li class=""><a href="/?_c=lots&amp;_s=lotsSchedule&amp;_m=lotsSchedule">분양일정</a></li>
							<li class=""><a href="/?_c=lots&amp;_m=lotsnews">분양뉴스</a></li>
							<li class=""><a href="/?_c=lots&amp;_s=lotsScene&amp;_m=lotsScene">분양&amp;현장</a></li>
							<li class=""><a href="/?_c=lots&amp;_m=ipjuinfo">입주지원센터</a></li>
							<li class=""><a href="/?_c=lots&amp;_s=offerStrategy&amp;_m=lotsOfferGuide">청약전략</a></li>
							<li class=""><a href="/?_c=lots&amp;_s=Jigu&amp;_m=JiguList">지역개발정보</a></li>
							<!--<li class=""><a href="/?_c=lots&_m=VrCenterlist&_s=VrCenterlist">VR분양관</a></li>			-->
						</ul>
					</div>
				</span>
                <ul>
					<li class=""><a href="/?_c=lots&amp;_s=info&amp;_m=infolist">분양정보</a></li>
					<li class=""><a href="/?_c=lots&amp;_s=lotsSchedule&amp;_m=lotsSchedule">분양일정</a></li>
					<li class=""><a href="/?_c=lots&amp;_m=lotsnews">분양뉴스</a></li>
					<li class=""><a href="/?_c=lots&amp;_s=lotsScene&amp;_m=lotsScene">분양&amp;현장</a></li>
					<li class=""><a href="/?_c=lots&amp;_m=ipjuinfo">입주지원센터</a></li>
					<li class=""><a href="/?_c=lots&amp;_s=offerStrategy&amp;_m=lotsOfferGuide">청약전략</a></li>
					<li class=""><a href="/?_c=lots&amp;_s=Jigu&amp;_m=JiguList">지역개발정보</a></li>
					<!--<li class=""><a href="/?_c=lots&_m=VrCenterlist&_s=VrCenterlist">VR분양관</a></li>-->
					
                </ul>
			</li>

			<li class="">
				<span>
					<a href="/?_c=research">리서치</a>
					<div class="layer_menu lm_4">
						 <ul>
							<li class=""><a href="/?_c=Research&amp;_m=ReportNews">리포트&amp;뉴스</a></li>
							<li class=""><a href="/?_c=Research&amp;_m=LocalAnalysis">로컬분석</a></li>
							<li class=""><a href="/?_c=Research&amp;_m=KnowHow">상식</a></li>
							<li class=""><a href="/?_c=Research&amp;_m=Column">칼럼</a></li>
							<li class=""><a href="/?_c=Research&amp;_m=ZoomIn">TV속 부동산114</a></li>
						</ul>
					</div>
				</span>
                <ul id="IpResearchMenu">
                    <li class=""><a href="/?_c=Research&amp;_m=ReportNews">리포트&amp;뉴스</a></li>
                    <li class=""><a href="/?_c=Research&amp;_m=LocalAnalysis">로컬분석</a></li>
                    <li class=""><a href="/?_c=Research&amp;_m=KnowHow">상식</a></li>
                    <li class=""><a href="/?_c=Research&amp;_m=Column">칼럼</a></li>
                    <li class=""><a href="/?_c=Research&amp;_m=ZoomIn">TV속 부동산114</a></li>
                    <!--<li class=""><a href="/?_c=Research&_m=Guide">안내</a></li>-->
                </ul>
            </li>

			<li class="icon_new">
				<span>
					<a href="/?_c=StartupSupport" target="_blank;">창업지원</a>
					<div class="layer_menu lm_11">
						 <ul>
							<li><a href="/?_c=StartupSupport&amp;_s=StoreInfo" target="_blank;">상가정보</a></li>
							<li><a href="/?_c=StartupSupport&amp;_s=Franchise" target="_blank;">프랜차이즈</a></li>
							<li><a href="/?_c=StartupSupport&amp;_s=MarketAnalysis" target="_blank;">상권분석</a></li>
							<li><a href="/?_c=StartupSupport&amp;_s=AddInfo" target="_blank;">창업부가정보</a></li>
						</ul>
					</div>
				</span>
			</li>

			<li class="">
				<span>
					<a href="?_c=service&amp;_m=counsel">커뮤니티</a>
					<div class="layer_menu lm_6">
						<ul>
							<li class=""><a href="/?_c=service&amp;_m=counsel">부동산상담</a></li>
							<li class=""><a href="/?_c=service&amp;_s=community&amp;tabGubun=1">우리동네, 단지 이야기</a></li>
							<li class=""><a href="/?_c=service&amp;_s=community&amp;pageNo=1&amp;tabGubun=2&amp;sortTag=0">공인중개사 현장이야기</a></li>
							<li class=""><a href="/?_c=solution&amp;_m=event">이벤트</a></li>
						</ul>
					</div>
				</span>
                <ul>
					<li class=""><a href="/?_c=service&amp;_m=counsel">부동산상담</a></li>
					<li class=""><a href="/?_c=service&amp;_s=community&amp;tabGubun=1">우리동네, 단지 이야기</a></li>
					<li class=""><a href="/?_c=service&amp;_s=community&amp;pageNo=1&amp;tabGubun=2&amp;sortTag=0">공인중개사 현장이야기</a></li>
					<li class=""><a href="/?_c=solution&amp;_m=event">이벤트</a></li>
				</ul>
			</li>	
			
			<li class="">
				<span>
					<a href="/?_c=service&amp;_m=Auction">경매</a>
					<div class="layer_menu lm_9">
						<ul>
							<li class=""><a href="/?_c=service&amp;_m=Auction&amp;tab=1">경매물건조회</a></li>
							<li class=""><a href="/?_c=service&amp;_m=Auction&amp;tab=2">경매STUDY</a></li>
							<li class=""><a href="/?_c=service&amp;_m=Auction&amp;tab=3">경매결과/통계</a></li>
							<li class=""><a href="/?_c=service&amp;_m=Auction&amp;tab=4">경매커뮤니티</a></li>
							<li class=""><a href="/?_c=service&amp;_m=Auction&amp;tab=5">FUN경매</a></li>
							<li class=""><a href="/?_c=service&amp;_m=Auction&amp;tab=6">My페이지</a></li>
						</ul>
					</div>
				</span>
                <ul>
					<li class=""><a href="/?_c=service&amp;_m=Auction&amp;tab=1">경매물건조회</a></li>
					<li class=""><a href="/?_c=service&amp;_m=Auction&amp;tab=2">경매STUDY</a></li>
					<li class=""><a href="/?_c=service&amp;_m=Auction&amp;tab=3">경매결과/통계</a></li>
					<li class=""><a href="/?_c=service&amp;_m=Auction&amp;tab=4">경매커뮤니티</a></li>
					<li class=""><a href="/?_c=service&amp;_m=Auction&amp;tab=5">FUN경매</a></li>
					<li class=""><a href="/?_c=service&amp;_m=Auction&amp;tab=6">My페이지</a></li>
				</ul>
			</li>

			<li class="">
				<span>
					<a href="/?_c=service&amp;_s=life&amp;_m=loan">대출</a>
					<div class="layer_menu lm_8">
						<ul>
							<li class=""><a href="/?_c=service&amp;_s=life&amp;_m=loan">대출상품조회</a></li>
						</ul>
					</div>
				</span>
                <ul>
					<li class=""><a href="/?_c=service&amp;_s=life&amp;_m=loan">대출상품조회</a></li>
				</ul>
			</li>

			
			<li class="">
				<span>
					<a href="/?_c=service&amp;_s=life&amp;_m=Interior">이사/인테리어</a>
					<div class="layer_menu lm_7">
						<ul>
							<li class=""><a href="/?_c=service&amp;_s=life&amp;_m=Interior">인테리어견적</a></li>
							<li class=""><a href="/?_c=service&amp;_s=life&amp;_m=move&amp;_a=estimate">이사견적</a></li>
							<li class=""><a href="/?_c=service&amp;_s=life&amp;_m=move&amp;_a=cleaner">입주청소</a></li>
							<li class=""><a href="/?_c=service&amp;_s=life&amp;_m=moveguide">이사가이드</a></li>
						</ul>
					</div>
				</span>
                <ul>
					<li class=""><a href="/?_c=service&amp;_s=life&amp;_m=Interior">인테리어견적</a></li>
					<li class=""><a href="/?_c=service&amp;_s=life&amp;_m=move&amp;_a=estimate">이사견적</a></li>
					<li class=""><a href="/?_c=service&amp;_s=life&amp;_m=move&amp;_a=cleaner">입주청소</a></li>
					<li class=""><a href="/?_c=service&amp;_s=life&amp;_m=moveguide">이사가이드</a></li>
				</ul>
			</li>
            <li class="">
				<span>
					<a href="/?_c=ForPartners">중개회원존</a>
					<div class="layer_menu lm_10">
						<ul>
							 <li class="">
								<a href="/?_c=ForPartners&amp;_m=AgentGuide">중개회원가입안내</a>
							</li>
							<li class=""><a href="/?_c=ForPartners&amp;_m=AgentGuide&amp;_a=RPlus">알플러스안내</a></li>
							<li class=""><a href="/?_c=ForPartners&amp;_m=AgentOffice">중개사무소자리</a></li>
							<li class=""><a href="/?_c=ForPartners&amp;_m=AgentWants">구인/구직</a></li>
							<li class=""><a href="/?_c=ForPartners&amp;_m=AgentNotice">공지사항</a></li>
						</ul>
					</div>
				</span>
            	<ul>
                    <li class="">
						<a href="/?_c=ForPartners&amp;_m=AgentGuide">중개회원가입안내</a>
					</li>
                    <li class=""><a href="/?_c=ForPartners&amp;_m=AgentGuide&amp;_a=RPlus">알플러스안내</a></li>
                    <li class=""><a href="/?_c=ForPartners&amp;_m=AgentOffice">중개사무소자리</a></li>
                    <li class=""><a href="/?_c=ForPartners&amp;_m=AgentWants">구인/구직</a></li>
                    <li class=""><a href="/?_c=ForPartners&amp;_m=AgentNotice">공지사항</a></li>
                </ul>
            </li>
            <li class="">
                <ul>
                	
                </ul>
            </li>
        </ul>

    </div>
</div>
<!-- 탑 끝 -->


<script type="text/javascript">
	var GlobalVworldKey = "0E04E2D0-99E7-33DB-8FD4-64D57CAD2378";

	var _SEL_ADDR1 = "서울특별시";
	var _SEL_ADDR2 = "";
	var _SEL_ADDR3 = "";
	var _SEL_COMPLEXCD = "";						// 단지코드
	var _SEL_COMPLEXNM = "";												// 단지명
	var _SEL_COMPLEXTYPE = "";											// 단지유형
	var _SEL_NEWVILLA = "";													// 신축빌라 선택 여부
	var _SEL_TAB_GBN = "0";							// 탭 인덱스 (0 ~ 4)
	var _SEL_DEALINGWAY = "";					// 거래형태
	var _SEL_LOCAL_TYPE = "1";		// 1:지역정보, 2:단지정보
	var _SEL_AREASIZE = "";								// 평형
	var _SEL_AREASIZE_TYPE = "";				// 평형타입
	var _SEL_MAP_TYPE1_CODE = "";										// 매물 대분류 코드
	var _SEL_MAP_TYPE2_CODE = "";										// 매물 중분류 코드
	var _SEL_MAP_CODE_ARRAY = "";									// 매물 코드 배열
	var _SEL_MAP_STYLE_CODE = "";										// 1: 매매 , 2: 전세, 3:월세
	var _SPECIAL_YQN = "N"; 													// Y : 전체보임, Q : 더보기만 안보임, N : 전체안보임
	var _SEL_MEMULTAB = "0";												// 사용자가 선택한 탭의 인덱스
	var _PARAM_COMPLEXCD = "";				// 다른 페이지에서 보낸 단지코드
	var _SEL_BY_SIZE = false;												// 단지의 면적별 매물 조회 여부
	var _SEL_COMP_SIZE = "";												// 조회하기 위해 선택한 면적 (단지)
	var _LOAD_COMPLEX = false;
	var _MOVED_PAGE = false;												// 페이지이동
	var _RND_VALUE = "0114";													// 스페셜매물 조회용 랜덤값
</script>
<script type="text/javascript">
    var _MAP_INFO_TYPE	= "1";												//1:호가, 2:수익, 3:MY앱
    var mapFirstLoadYN = true;												// 처음 로딩 여부
	var mapFirstLoadGbn = "none";										// 학교 지도, or 지하철 위치보기 등 외부 페이지의 검색 요청 구분
	var mapFirstLoadId = "";													// 학교 지도, or 지하철 위치보기 등 외부 페이지의 검색 요청 코드
	var mapFirstLoadType = "";
	var mapFirstLoadX = "";
	var mapFirstLoadY = "";
	var doParam = "";
		/* 기본 설정값들.. */
	var notify = "";/*function() {
		setTimeout(function() {
			var n = $("<div class='notify'>Loading OK.</div>").appendTo("body");
			setTimeout(function() { n.remove(); }, 500);
		}, 250);
	};*/

	var sortTag = "";
	var sortTag2 = "";
	var firstData;
</script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<!--<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=96aaac957e58d4708856a248d971bcf088469d6c&libraries=services"></script>-->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=23c84af6c9dbeecc7814689bde8f6cd1&amp;libraries=services"></script><script charset="UTF-8" src="https://t1.daumcdn.net/mapjsapi/js/main/4.0.10/kakao.js"></script><div id="fb-root" class=" fb_reset"><div style="position: absolute; top: -10000px; width: 0px; height: 0px;"><div><iframe name="fb_xdm_frame_https" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" id="fb_xdm_frame_https" aria-hidden="true" title="Facebook Cross Domain Communication Frame" tabindex="-1" src="https://staticxx.facebook.com/connect/xd_arbiter/r/d_vbiawPdxB.js?version=44#channel=f16716a34628444&amp;origin=https%3A%2F%2Fwww.r114.com" style="border: none;"></iframe></div><div></div></div></div><script charset="UTF-8" src="https://s1.daumcdn.net/svc/attach/U03/cssjs/mapapi/libs/1.0.1/1515130215283/services.js"></script>
<script type="text/javascript" src="/W1/js/appJS.js?ver=4"></script>
<script type="text/javascript" src="/W1/js/muse7th.js"></script>
<script type="text/javascript" src="/W1/js/Memul/default.js?v=20190408110822"></script>
<script type="text/javascript" src="/W1/js/Memul/default.filter.js?v=2"></script>
<script type="text/javascript" src="/W1/js/memul/educationChart.js"></script>
<script type="text/javascript" src="/W1/js/memul/educationInfo.js"></script>
<script type="text/javascript" src="/W1/js/memul/complexDetail.js"></script>
<script type="text/javascript" src="/W1/js/memul/memul.js"></script>
<script type="text/javascript" src="/W1/js/printThis.js"></script>
<script type="text/javascript" src="/W1/js/PageUtil.js"></script>
<script type="text/javascript" src="/W1/js/MyPage/questionToAgent.js"></script>
<script type="text/javascript" src="/W1/js/Memul/sise.common.js?rnd=333333"></script>
<script type="text/javascript" src="/W1/js/Memul/statistics.js"></script>
<script type="text/javascript" src="/gis/gis.statistics.js"></script>
<script type="text/javascript" src="/gis/gis.roadview.js?ver=20190408110822"></script>
<script type="text/javascript" src="/W1/js/accessLogging.js"></script>
<script type="text/javascript" src="/W1/js/Memul/rightBanner.js"></script>
<script type="text/javascript" src="/W1/js/Plugin/ion.rangeSlider/ion.rangeSlider.min.js"></script>
<script type="text/javascript" src="/W1/js/Plugin/moment/moment-with-locales.js"></script>

<link rel="stylesheet" href="/W1/js/Plugin/ion.rangeSlider/css/ion.rangeSlider.custom.css" type="text/css">
<link rel="stylesheet" href="/W1/js/Plugin/ion.rangeSlider/css/ion.rangeSlider.skinR114.gis.memul.trade.css" type="text/css">

<input type="hidden" id="txt_cortarInfo" name="txt_cortarInfo" value="1114010300|4">
<input type="hidden" id="txt_area" name="txt_area" value="서울특별시 중구 태평로1가">
<input type="hidden" id="txt_cortarInfo2" name="txt_cortarInfo2" value="">
<input type="hidden" id="txt_area2" name="txt_area2" value="">
<input type="hidden" id="txt_cortarInfo3" name="txt_cortarInfo3" value="">
<input type="hidden" id="txt_area3" name="txt_area3" value="">

<input type="hidden" id="searchGbn" name="searchGbn" value="">
<input type="hidden" id="searchId" name="searchId" value="">
<input type="hidden" id="searchType" name="searchType" value="">
<input type="hidden" id="searchX" name="searchX" value="">
<input type="hidden" id="searchY" name="searchY" value="">
<input type="hidden" id="setNewVilla" name="setNewVilla" value="">

<input type="hidden" id="mapSt" name="mapSt" value="">

	<!--매물중앙광고:0822테스트 -->
	<!--div id="MemulMainBanner"></div-->

<!-- 바디 시작 -->


<div id="search_layout" class="filter_wrap">
	 <div class="wing_ad_wrap" style="display:;">
		<a href="/?_c=StartupSupport&amp;_s=StoreInfo&amp;subMenu=Shop" target="_blank"><img src="https://image.r114.co.kr/W1/images/etc/wing_banner_20190321.jpg"></a>
	</div>
    <div>
    	<div class="w_fix">
    		<div class="search_sort_wrap clearfix">
    			<div class="search_wrap inp_wrap">
    <a href="javascript:" class="search_btn">검색</a>
    <div class="loc_link">
        <div class="inner" id="addressTitle" name="addressTitle"><a href="javascript:fnc_AddrList_sel('1', '10', '0');">서울특별시<i class="ico_comm_s arrow4"></i></a></div>
    </div>
    <input type="text" class="search inp_txt" value="" placeholder="지역,학교,지하철,단지명 검색" id="msrch_wrap_address_input" name="msrch_wrap_address_input">
    <div class="msrch_wrap search_frm"><!-- 검색창 활성화 class="msrch_wrap open" -->
        
        <!-- 자동완성 -->
		<div class="search_result">
			<div class="list_result landSearch_iscroll" style="touch-action: none;"><!--2017-05-11 태그추가, class 추가-->
				<ul id="msrch_wrap_address_list" name="msrch_wrap_address_list" style="transition-timing-function: cubic-bezier(0.1, 0.57, 0.1, 1); transition-duration: 0ms; transform: translate(0px, 0px) translateZ(0px);">
				</ul>
			</div>
			<button type="button" class="btn_cancel">취소</button>
		</div>        
		<!-- //자동완성 -->
        <!-- 검색 탭 -->
        <div class="boxTab_wrap">
            <!-- 탭시작 -->
            <div class="tabBox n1 on">
                <div class="tabBtn" style="width: 33.3333%;">
                    <a href="#">지역</a>
                </div>
                <div class="tabCon">
                    <div class="srch_t1">
                        <div class="region_pick" id="div_selectArea">
                            <a href="javascript:fnc_AddrList_sel('2', '10', '0');">서울특별시</a><span class="ico_comm_s location"></span>
                            <a href="javascript:fnc_AddrList_sel('2', '1100000000', '1');">전체</a><span class="ico_comm_s location"></span>
                            <a href="javascript:fnc_AddrList_sel('2', '1100000000', '1');">전체</a><span class="ico_comm_s location" style="display: none;"></span>
							<a style="display: none;"></a>
                        </div>
						<div>
							<div class="area_all_wrap" id="div_selectAddrTotal" style="display:none;"><a class="btn_type2" href=""></a></div>
	                           <ul id="msrch_wrap_selectarea_Addr" name="msrch_wrap_selectarea_Addr"><li><a href="javascript:fnc_AddrList_sel('2', '1100000000','1','서울특별시');">서울특별시</a></li><li><a href="javascript:fnc_AddrList_sel('2', '4100000000','1','경기도');">경기도</a></li><li><a href="javascript:fnc_AddrList_sel('2', '2800000000','1','인천광역시');">인천광역시</a></li><li><a href="javascript:fnc_AddrList_sel('2', '2600000000','1','부산광역시');">부산광역시</a></li><li><a href="javascript:fnc_AddrList_sel('2', '2700000000','1','대구광역시');">대구광역시</a></li><li><a href="javascript:fnc_AddrList_sel('2', '2900000000','1','광주광역시');">광주광역시</a></li><li><a href="javascript:fnc_AddrList_sel('2', '3000000000','1','대전광역시');">대전광역시</a></li><li><a href="javascript:fnc_AddrList_sel('2', '3100000000','1','울산광역시');">울산광역시</a></li><li><a href="javascript:fnc_AddrList_sel('2', '3600000000','1','세종특별시');">세종특별시</a></li><li><a href="javascript:fnc_AddrList_sel('2', '4200000000','1','강원도');">강원도</a></li><li><a href="javascript:fnc_AddrList_sel('2', '4800000000','1','경상남도');">경상남도</a></li><li><a href="javascript:fnc_AddrList_sel('2', '4700000000','1','경상북도');">경상북도</a></li><li><a href="javascript:fnc_AddrList_sel('2', '4600000000','1','전라남도');">전라남도</a></li><li><a href="javascript:fnc_AddrList_sel('2', '4500000000','1','전라북도');">전라북도</a></li><li><a href="javascript:fnc_AddrList_sel('2', '4400000000','1','충청남도');">충청남도</a></li><li><a href="javascript:fnc_AddrList_sel('2', '4300000000','1','충청북도');">충청북도</a></li><li><a href="javascript:fnc_AddrList_sel('2', '5000000000','1','제주도');">제주도</a></li></ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 탭끝 -->
             <!-- 탭시작 -->
            <div class="tabBox n2">
                <div class="tabBtn" style="width: 33.3333%; left: 33.3333%;">
                    <a href="#">지하철</a>
                </div>
                <div class="tabCon">
                    <!-- 지역별 지하철 -->
                    <div class="srch_t2" id="div_subway1">
                        <div class="region_pick" id="div_subwayArea">
                        <a href="#" class="on" onclick="fnc_setMemulSubwayCond('1','수도권');">수도권</a><a href="#" onclick="fnc_setMemulSubwayCond('1','부산');">부산</a><a href="#" onclick="fnc_setMemulSubwayCond('1','대전');">대전</a><a href="#" onclick="fnc_setMemulSubwayCond('1','대구');">대구</a><a href="#" onclick="fnc_setMemulSubwayCond('1','광주');">광주</a></div>
                        <ul id="div_subwayLine">
                        <li><a href="#" onclick="fnc_setMemulSubwayCond('2','수도권','1','1호선');"><span class="subway_comm subway1_1"></span>&nbsp;&nbsp;1호선</a></li><li><a href="#" onclick="fnc_setMemulSubwayCond('2','수도권','2','2호선');"><span class="subway_comm subway1_2"></span>&nbsp;&nbsp;2호선</a></li><li><a href="#" onclick="fnc_setMemulSubwayCond('2','수도권','3','3호선');"><span class="subway_comm subway1_3"></span>&nbsp;&nbsp;3호선</a></li><li><a href="#" onclick="fnc_setMemulSubwayCond('2','수도권','4','4호선');"><span class="subway_comm subway1_4"></span>&nbsp;&nbsp;4호선</a></li><li><a href="#" onclick="fnc_setMemulSubwayCond('2','수도권','5','5호선');"><span class="subway_comm subway1_5"></span>&nbsp;&nbsp;5호선</a></li><li><a href="#" onclick="fnc_setMemulSubwayCond('2','수도권','6','6호선');"><span class="subway_comm subway1_6"></span>&nbsp;&nbsp;6호선</a></li><li><a href="#" onclick="fnc_setMemulSubwayCond('2','수도권','7','7호선');"><span class="subway_comm subway1_7"></span>&nbsp;&nbsp;7호선</a></li><li><a href="#" onclick="fnc_setMemulSubwayCond('2','수도권','8','8호선');"><span class="subway_comm subway1_8"></span>&nbsp;&nbsp;8호선</a></li><li><a href="#" onclick="fnc_setMemulSubwayCond('2','수도권','9','9호선');"><span class="subway_comm subway1_9"></span>&nbsp;&nbsp;9호선</a></li><li><a href="#" onclick="fnc_setMemulSubwayCond('2','수도권','15','분당선');"><span class="subway_comm subway1_15"></span>&nbsp;&nbsp;분당선</a></li><li><a href="#" onclick="fnc_setMemulSubwayCond('2','수도권','16','중앙선');"><span class="subway_comm subway1_16"></span>&nbsp;&nbsp;중앙선</a></li><li><a href="#" onclick="fnc_setMemulSubwayCond('2','수도권','17','경의중앙선');"><span class="subway_comm subway1_17"></span>&nbsp;&nbsp;경의중앙선</a></li><li><a href="#" onclick="fnc_setMemulSubwayCond('2','수도권','18','경춘선');"><span class="subway_comm subway1_18"></span>&nbsp;&nbsp;경춘선</a></li><li><a href="#" onclick="fnc_setMemulSubwayCond('2','수도권','19','공항철도');"><span class="subway_comm subway1_19"></span>&nbsp;&nbsp;공항철도</a></li><li><a href="#" onclick="fnc_setMemulSubwayCond('2','수도권','20','인천1호선');"><span class="subway_comm subway1_20"></span>&nbsp;&nbsp;인천1호선</a></li><li><a href="#" onclick="fnc_setMemulSubwayCond('2','수도권','24','신분당선');"><span class="subway_comm subway1_24"></span>&nbsp;&nbsp;신분당선</a></li><li><a href="#" onclick="fnc_setMemulSubwayCond('2','수도권','25','경강선');"><span class="subway_comm subway1_25"></span>&nbsp;&nbsp;경강선</a></li><li><a href="#" onclick="fnc_setMemulSubwayCond('2','수도권','26','수인선');"><span class="subway_comm subway1_26"></span>&nbsp;&nbsp;수인선</a></li><li><a href="#" onclick="fnc_setMemulSubwayCond('2','수도권','27','에버라인');"><span class="subway_comm subway1_27"></span>&nbsp;&nbsp;에버라인</a></li><li><a href="#" onclick="fnc_setMemulSubwayCond('2','수도권','28','의정부경전철');"><span class="subway_comm subway1_28"></span>&nbsp;&nbsp;의정부경전철</a></li><li><a href="#" onclick="fnc_setMemulSubwayCond('2','수도권','32','인천2호선');"><span class="subway_comm subway1_32"></span>&nbsp;&nbsp;인천2호선</a></li><li><a href="#" onclick="fnc_setMemulSubwayCond('2','수도권','33','자기부상');"><span class="subway_comm subway1_33"></span>&nbsp;&nbsp;자기부상</a></li><li><a href="#" onclick="fnc_setMemulSubwayCond('2','수도권','35','우이신설경전철');"><span class="subway_comm subway1_35"></span>&nbsp;&nbsp;우이신설경전철</a></li><li><a href="#" onclick="fnc_setMemulSubwayCond('2','수도권','36','서해선');"><span class="subway_comm subway1_36"></span>&nbsp;&nbsp;서해선</a></li></ul>
                    </div>
                    <!-- //지역별 지하철 -->
                    <!-- 역명 -->
                    <div class="srch_t2 next" id="div_subway2" style="display: none;">
                        <div class="region_pick" id="div_subwayPick">
                        </div>
                        <div>
                            <ul id="ul_subwayNm">
                            </ul>
                        </div>
                    </div>
                    <!-- //역명 -->
                </div>
            </div>
            <!-- 탭끝 -->
            <!-- 탭시작 -->
            <div class="tabBox n3">
                <div class="tabBtn" style="width: 33.3333%; left: 66.6667%;">
                    <a href="#" onclick="check_msrch();">최근검색어</a>
                </div>
                <div class="tabCon">
                    <div class="srch_t3">
                        <span><span class="ico_comm clock"></span>최근검색어가 없습니다.</span>
                        <ul>
                            <!--li><a href="#">역삼역 2호선</a></li>
                            <li><a href="#">서울시 강남구 역삼 2동</a></li-->
                        </ul>
                    </div>
                </div>
            </div>
            <!-- 탭끝 -->
            <div class="btn_wrap">
                <a href="#" class="btn_type1 btn_cancel">취소</a>
            </div>
        </div>
        <!-- //검색 탭 -->
    </div>
</div>

    			<div class="opt_chk_wrap">
    <ul id="MemulType2"><li><input type="checkbox" class="ico_comm_s inp_chk" name="type2" id="type2_1" value="A01|01" checked="" data-fcode="AA" data-title="아파트" onclick="javascript:fnc_MemulType2_sel(this);"><label for="type2_1"><span class="ico_comm_s chk"></span>아파트</label></li><li><input type="checkbox" class="ico_comm_s inp_chk" name="type2" id="type2_2" value="A01|03" checked="" data-fcode="AB" data-title="도시형생활주택" onclick="javascript:fnc_MemulType2_sel(this);"><label for="type2_2"><span class="ico_comm_s chk"></span>도시형생활주택</label></li></ul>
</div>

<script id="filterOption" type="text/template">
	<option data-id="#id#" data-range="#range#" value="#value#">#label#</option>
</script>

<form name="frmFilter" method="post" action="/?_c=memul" style="display:none;">
	<input type="hidden" name="hidDealPriceType" id="hidDealPriceType">
	<input type="hidden" name="hidMinDealPrice" id="hidMinDealPrice">
	<input type="hidden" name="hidMaxDealPrice" id="hidMaxDealPrice">

	<input type="hidden" name="hidDepositPriceType" id="hidDepositPriceType">
	<input type="hidden" name="hidMinDepositPrice" id="hidMinDepositPrice">
	<input type="hidden" name="hidMaxDepositPrice" id="hidMaxDepositPrice">

	<input type="hidden" name="hidMonthlyRentPriceType" id="hidMonthlyRentPriceType">
	<input type="hidden" name="hidMinMonthlyRentPrice" id="hidMinMonthlyRentPrice">
	<input type="hidden" name="hidMaxMonthlyRentPrice" id="hidMaxMonthlyRentPrice">

	<input type="hidden" name="hidAreaSizeType" id="hidAreaSizeType">
	<input type="hidden" name="hidMinAreaSize" id="hidMinAreaSize">
	<input type="hidden" name="hidMaxAreaSize" id="hidMaxAreaSize">

	<input type="hidden" name="hidRoomCountType" id="hidRoomCountType">

	<input type="hidden" name="hidBathRoomType" id="hidBathRoomType">

	<input type="hidden" name="hidMaintenanceCostType" id="hidMaintenanceCostType">
	<input type="hidden" name="hidMinMaintenanceCost" id="hidMinMaintenanceCost">
	<input type="hidden" name="hidMaxMaintenanceCost" id="hidMaxMaintenanceCost">

	<input type="hidden" name="hidHeatingType" id="hidHeatingType">
	<input type="hidden" name="hidDirectionType" id="hidDirectionType">
	
	<input type="hidden" name="hidJimokType" id="hidJimokType">
</form>

<div class="sort detail">
	<button class="title">상세검색</button>
	<div class="cont">
		<ul>
			<li class="dealLayer">
				<label id="priceTitle">가격 <div class="tooltip_wrap"><a href="#" class="btn q" id="testtooltip">?</a><div class="tooltip" style="min-width:170px; text-align:left; z-index:1;">가격은 매매가/전세가/보증금을 모두 포함하고 있습니다.</div></div></label>
				<select class="dealPriceType" id="ui-id-1" style="display: none;">
	<option data-id="dealPriceType_a" data-range="0-0" value="a">전체</option>

	<option data-id="dealPriceType_1" data-range="0-10000" value="1">1억 이하</option>

	<option data-id="dealPriceType_2" data-range="10000-20000" value="2">2억 이하</option>

	<option data-id="dealPriceType_3" data-range="20000-30000" value="3">3억 이하</option>

	<option data-id="dealPriceType_4" data-range="30000-40000" value="4">4억 이하</option>

	<option data-id="dealPriceType_5" data-range="40000-50000" value="5">5억 이하</option>

	<option data-id="dealPriceType_6" data-range="50000-60000" value="6">6억 이하</option>

	<option data-id="dealPriceType_7" data-range="60000-70000" value="7">7억 이하</option>

	<option data-id="dealPriceType_8" data-range="70000-80000" value="8">8억 이하</option>

	<option data-id="dealPriceType_9" data-range="80000-90000" value="9">9억 이하</option>

	<option data-id="dealPriceType_10" data-range="90000-100000" value="10">10억 이하</option>

	<option data-id="dealPriceType_s" data-range="s-s" value="s">직접입력</option>
</select><span tabindex="0" id="ui-id-1-button" role="combobox" aria-expanded="false" aria-autocomplete="list" aria-owns="ui-id-1-menu" aria-haspopup="true" class="ui-selectmenu-button ui-selectmenu-button-closed ui-corner-all ui-button ui-widget" aria-activedescendant="ui-id-74" aria-labelledby="ui-id-74" aria-disabled="false"><span class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span><span class="ui-selectmenu-text">전체</span></span>
				<input type="text" id="minDealPrice" title="최소" placeholder="최소" min="0" max="9999999" maxlength="7" numberonly="true" readonly="true"> ~ <input type="text" id="maxDealPrice" title="최대" placeholder="최대" min="0" max="9999999" maxlength="7" numberonly="true" readonly="true"> 만원
			</li>
			<li class="depositLayer" style="display: none;">
				<label>보증금</label>
				<select class="depositPriceType" id="ui-id-2" style="display: none;">
	<option data-id="depositPriceType_a" data-range="0-0" value="a">전체</option>

	<option data-id="depositPriceType_1" data-range="0-5000" value="1">5천만원 이하</option>

	<option data-id="depositPriceType_2" data-range="5000-10000" value="2">1억 이하</option>

	<option data-id="depositPriceType_3" data-range="10000-15000" value="3">1.5억 이하</option>

	<option data-id="depositPriceType_4" data-range="15000-20000" value="4">2억 이하</option>

	<option data-id="depositPriceType_5" data-range="20000-25000" value="5">2.5억 이하</option>

	<option data-id="depositPriceType_6" data-range="25000-30000" value="6">3억 이하</option>

	<option data-id="depositPriceType_7" data-range="30000-35000" value="7">3.5억 이하</option>

	<option data-id="depositPriceType_8" data-range="35000-40000" value="8">4억 이하</option>

	<option data-id="depositPriceType_9" data-range="40000-45000" value="9">4.5억 이하</option>

	<option data-id="depositPriceType_10" data-range="45000-50000" value="10">5억 이하</option>

	<option data-id="depositPriceType_s" data-range="s-s" value="s">직접입력</option>
</select><span tabindex="0" id="ui-id-2-button" role="combobox" aria-expanded="false" aria-autocomplete="list" aria-owns="ui-id-2-menu" aria-haspopup="true" class="ui-selectmenu-button ui-selectmenu-button-closed ui-corner-all ui-button ui-widget" aria-activedescendant="ui-id-86" aria-labelledby="ui-id-86" aria-disabled="false"><span class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span><span class="ui-selectmenu-text">전체</span></span>
				<input type="text" id="minDepositPrice" title="최소" placeholder="최소" min="0" max="9999999" maxlength="7" numberonly="true" readonly="true"> ~ <input type="text" id="maxDepositPrice" title="최대" placeholder="최대" min="0" max="9999999" maxlength="7" numberonly="true" readonly="true"> 만원
			</li>
			<li class="monthlyRentLayer">
				<label>월세</label>
				<select class="monthlyRentPriceType" id="ui-id-3" style="display: none;">
	<option data-id="monthlyRentPriceType_a" data-range="0-0" value="a">전체</option>

	<option data-id="monthlyRentPriceType_1" data-range="0-30" value="1">30만원 이하</option>

	<option data-id="monthlyRentPriceType_2" data-range="30-50" value="2">50만원 이하</option>

	<option data-id="monthlyRentPriceType_3" data-range="50-100" value="3">100만원 이하</option>

	<option data-id="monthlyRentPriceType_4" data-range="100-200" value="4">200만원 이하</option>

	<option data-id="monthlyRentPriceType_s" data-range="s-s" value="s">직접입력</option>
</select><span tabindex="0" id="ui-id-3-button" role="combobox" aria-expanded="false" aria-autocomplete="list" aria-owns="ui-id-3-menu" aria-haspopup="true" class="ui-selectmenu-button ui-selectmenu-button-closed ui-corner-all ui-button ui-widget" aria-activedescendant="ui-id-98" aria-labelledby="ui-id-98" aria-disabled="false"><span class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span><span class="ui-selectmenu-text">전체</span></span>
				<input type="text" id="minMonthlyRentPrice" title="최소" placeholder="최소" min="0" max="9999999" maxlength="7" numberonly="true" readonly="true"> ~ <input type="text" id="maxMonthlyRentPrice" title="최대" placeholder="최대" min="0" max="9999999" maxlength="7" numberonly="true" readonly="true"> 만원
			</li>
			<li class="areaSizeLayer">
				<label>면적</label>
				<span id="spanAreaSizeM2Type"> <select class="areaSizeType" name="areaSizeM2Type" id="areaSizeM2Type" style="display: none;">
	<option data-id="areaSizeTypeM2_a" data-range="0-0" value="a">전체</option>

	<option data-id="areaSizeTypeM2_1" data-range="0-66" value="1">0~66㎡</option>

	<option data-id="areaSizeTypeM2_2" data-range="66-99" value="2">66~99㎡</option>

	<option data-id="areaSizeTypeM2_3" data-range="99-132" value="3">99~132㎡</option>

	<option data-id="areaSizeTypeM2_4" data-range="132-165" value="4">132~165㎡</option>

	<option data-id="areaSizeTypeM2_5" data-range="165-198" value="5">165~198㎡</option>

	<option data-id="areaSizeTypeM2_6" data-range="198-330" value="6">198~330㎡</option>

	<option data-id="areaSizeTypeM2_7" data-range="330-991" value="7">330~991㎡</option>

	<option data-id="areaSizeTypeM2_s" data-range="s-s" value="s">직접입력</option>
</select><span tabindex="0" id="areaSizeM2Type-button" role="combobox" aria-expanded="false" aria-autocomplete="list" aria-owns="areaSizeM2Type-menu" aria-haspopup="true" class="ui-selectmenu-button ui-selectmenu-button-closed ui-corner-all ui-button ui-widget" aria-activedescendant="ui-id-112" aria-labelledby="ui-id-112" aria-disabled="false"><span class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span><span class="ui-selectmenu-text">전체</span></span> </span>
				<span id="spanAreaSizePyType" style="display: none;"> <select class="areaSizeType" name="areaSizePyType" id="areaSizePyType" style="display: none;">
	<option data-id="areaSizeType_a" data-range="0-0" value="a">전체</option>

	<option data-id="areaSizeType_1" data-range="0-20" value="1">20평 이하</option>

	<option data-id="areaSizeType_2" data-range="20-29" value="2">20평대</option>

	<option data-id="areaSizeType_3" data-range="30-39" value="3">30평대</option>

	<option data-id="areaSizeType_4" data-range="40-49" value="4">40평대</option>

	<option data-id="areaSizeType_5" data-range="50-59" value="5">50평대</option>

	<option data-id="areaSizeType_6" data-range="50-0" value="6">50평 이상</option>

	<option data-id="areaSizeType_s" data-range="s-s" value="s">직접입력</option>
</select><span tabindex="0" id="areaSizePyType-button" role="combobox" aria-expanded="false" aria-autocomplete="list" aria-owns="areaSizePyType-menu" aria-haspopup="true" class="ui-selectmenu-button ui-selectmenu-button-closed ui-corner-all ui-button ui-widget" aria-activedescendant="ui-id-104" aria-labelledby="ui-id-104" aria-disabled="false"><span class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span><span class="ui-selectmenu-text">전체</span></span> </span>				
				<abbr class="squareMeter">
					<input type="text" id="minSquareAreaSize" title="최소" placeholder="최소" min="0" max="999" maxlength="7" numberonly="true"> ~ <input type="text" id="maxSquareAreaSize" title="최대" placeholder="최대" min="0" max="999" maxlength="7" numberonly="true"> ㎡
					<button type="button" class="btn_type1 area_swap btnSizeViewChange" btn-type="p"> <span class="ico_comm_s area_swap">단위전환</span>평</button>
				</abbr>
				<abbr class="Spacious" style="display:none;">
					<input type="text" id="minSpaciousAreaSize" title="최소" placeholder="최소" min="0" max="9999" maxlength="7" numberonly="true"> ~ <input type="text" id="maxSpaciousAreaSize" title="최대" placeholder="최대" min="0" max="9999" maxlength="7" numberonly="true"> 평
					<button type="button" class="btn_type1 area_swap btnSizeViewChange" btn-type="m"> <span class="ico_comm_s area_swap">단위전환</span>㎡</button>
				</abbr>
			</li>
			<li class="roomCountLayer">
				<label>방수</label>
				<select class="roomCountType" id="ui-id-4" style="display: none;">
	<option data-id="roomCountType_a" data-range="" value="a">전체</option>

	<option data-id="roomCountType_1" data-range="" value="1">1개</option>

	<option data-id="roomCountType_2" data-range="" value="2">2개</option>

	<option data-id="roomCountType_3" data-range="" value="3">3개</option>

	<option data-id="roomCountType_4" data-range="" value="4">4개 이상</option>
</select><span tabindex="0" id="ui-id-4-button" role="combobox" aria-expanded="false" aria-autocomplete="list" aria-owns="ui-id-4-menu" aria-haspopup="true" class="ui-selectmenu-button ui-selectmenu-button-closed ui-corner-all ui-button ui-widget" aria-activedescendant="ui-id-121" aria-labelledby="ui-id-121" aria-disabled="false"><span class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span><span class="ui-selectmenu-text">전체</span></span>
			</li>
		</ul>
		<ul>
			<li class="maintenanceCostLayer">
				<label>관리비</label>
				<select class="maintenanceCostType" id="ui-id-5" style="display: none;">
	<option data-id="maintenanceCostType_a" data-range="0-0" value="a">전체</option>

	<option data-id="maintenanceCostType_1" data-range="0-10" value="1">10만원 이하</option>

	<option data-id="maintenanceCostType_2" data-range="10-20" value="2">20만원 이하</option>

	<option data-id="maintenanceCostType_3" data-range="20-30" value="3">30만원 이하</option>

	<option data-id="maintenanceCostType_4" data-range="30-40" value="4">40만원 이하</option>

	<option data-id="maintenanceCostType_5" data-range="40-50" value="5">50만원 이하</option>

	<option data-id="maintenanceCostType_s" data-range="s-s" value="s">직접입력</option>
</select><span tabindex="0" id="ui-id-5-button" role="combobox" aria-expanded="false" aria-autocomplete="list" aria-owns="ui-id-5-menu" aria-haspopup="true" class="ui-selectmenu-button ui-selectmenu-button-closed ui-corner-all ui-button ui-widget" aria-activedescendant="ui-id-131" aria-labelledby="ui-id-131" aria-disabled="false"><span class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span><span class="ui-selectmenu-text">전체</span></span>
				<input type="text" id="minMaintenanceCost" title="최소" placeholder="최소" min="0" max="9999999" maxlength="5" numberonly="true" readonly="true"> ~ <input type="text" id="maxMaintenanceCost" title="최대" placeholder="최대" min="0" max="9999999" maxlength="5" numberonly="true" readonly="true"> 만원
			</li>
			<li>
				<a class="bathRoomLayer">
					<label>욕실수</label>
					<select class="bathRoomType" id="ui-id-6" style="display: none;">
	<option data-id="bathRoomType_a" data-range="" value="a">전체</option>

	<option data-id="bathRoomType_1" data-range="" value="1">1개</option>

	<option data-id="bathRoomType_2" data-range="" value="2">2개</option>

	<option data-id="bathRoomType_3" data-range="" value="3">3개</option>

	<option data-id="bathRoomType_4" data-range="" value="4">4개 이상</option>
</select><span tabindex="0" id="ui-id-6-button" role="combobox" aria-expanded="false" aria-autocomplete="list" aria-owns="ui-id-6-menu" aria-haspopup="true" class="ui-selectmenu-button ui-selectmenu-button-closed ui-corner-all ui-button ui-widget" aria-activedescendant="ui-id-126" aria-labelledby="ui-id-126" aria-disabled="false"><span class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span><span class="ui-selectmenu-text">전체</span></span>
				</a>

				<a class="directionLayer">
					<label>방향</label>
					<select class="directionType" id="ui-id-7" style="display: none;">
	<option data-id="directionType_a" data-range="" value="a">전체</option>

	<option data-id="directionType_1" data-range="" value="1">남</option>

	<option data-id="directionType_2" data-range="" value="2">동</option>

	<option data-id="directionType_3" data-range="" value="3">남동</option>

	<option data-id="directionType_4" data-range="" value="4">남서</option>
</select><span tabindex="0" id="ui-id-7-button" role="combobox" aria-expanded="false" aria-autocomplete="list" aria-owns="ui-id-7-menu" aria-haspopup="true" class="ui-selectmenu-button ui-selectmenu-button-closed ui-corner-all ui-button ui-widget" aria-activedescendant="ui-id-142" aria-labelledby="ui-id-142" aria-disabled="false"><span class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span><span class="ui-selectmenu-text">전체</span></span>
				</a>
			</li>
			<li class="heatingLayer">
				<label>난방방식</label>
				<select class="heatingType" id="ui-id-8" style="display: none;">
	<option data-id="heatingType_a" data-range="" value="a">전체</option>

	<option data-id="heatingType_1" data-range="" value="1">개별난방</option>

	<option data-id="heatingType_2" data-range="" value="2">중앙난방</option>

	<option data-id="heatingType_3" data-range="" value="3">지역난방</option>
</select><span tabindex="0" id="ui-id-8-button" role="combobox" aria-expanded="false" aria-autocomplete="list" aria-owns="ui-id-8-menu" aria-haspopup="true" class="ui-selectmenu-button ui-selectmenu-button-closed ui-corner-all ui-button ui-widget" aria-activedescendant="ui-id-138" aria-labelledby="ui-id-138" aria-disabled="false"><span class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span><span class="ui-selectmenu-text">전체</span></span>
			</li>
			<li class="jimokLayer" style="display: none;">
				<label>지목</label>
				<select class="jimokType" id="ui-id-9" style="display: none;">
				</select><span tabindex="0" id="ui-id-9-button" role="combobox" aria-expanded="false" aria-autocomplete="list" aria-owns="ui-id-9-menu" aria-haspopup="true" class="ui-selectmenu-button ui-selectmenu-button-closed ui-corner-all ui-button ui-widget"><span class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span><span class="ui-selectmenu-text">&nbsp;</span></span>
			</li>
			<!--
			<li>
				<label>융자금</label>
				<select>
					<option>상관없음</option>
				</select>
				<label>현관구조</label>
				<select>
					<option>상관없음</option>
				</select>
				<label>난방연료</label>
				<select>
					<option>상관없음</option>
				</select>
				<label>준공년도</label>
				<select>
					<option>상관없음</option>
				</select>
			</li>
			-->
		</ul>
		<div class="btn_wrap">
			<button class="btn_ok btnApply">적용</button>
			<button class="btn_cancel btnReset">초기화</button>
		</div>
	</div>
</div>

<div class="sort trade">
  <!--  <button class="title">매매</button> -->
   <a href="javascript:" class="title"><span class="tag_comm2 a">전체</span></a>
    <div class="cont">
		<ul id="MemulStyle"><li><input type="radio" class="ico_comm_s inp_rdo" name="type3" id="type3_0" value="A01|AA|AB|0" checked="" data-title="전체" onclick="javascript:fnc_MemulType3_sel(this);"><label for="type3_0"><span class="ico_comm_s rdo"> </span>전체</label></li><li><input type="radio" class="ico_comm_s inp_rdo" name="type3" id="type3_1" value="A01|AA|AB|1" data-title="매매" onclick="javascript:fnc_MemulType3_sel(this);"><label for="type3_1"><span class="ico_comm_s rdo"> </span>매매</label></li><li><input type="radio" class="ico_comm_s inp_rdo" name="type3" id="type3_2" value="A01|AA|AB|2" data-title="전세" onclick="javascript:fnc_MemulType3_sel(this);"><label for="type3_2"><span class="ico_comm_s rdo"> </span>전세</label></li><li><input type="radio" class="ico_comm_s inp_rdo" name="type3" id="type3_3" value="A01|AA|AB|3" data-title="월세" onclick="javascript:fnc_MemulType3_sel(this);"><label for="type3_3"><span class="ico_comm_s rdo"> </span>월세</label></li></ul>
    </div>
</div>
    		</div>
    	</div>
    </div>
</div>
<div id="body_layout" class="type2">
	<div class="body_wrap">
		<div id="mapAreaBasic" class="map_wrap clearfix">
			<div class="map_area">
				<div id="map_layout"><div class="gis" style="z-index:101;">	<div>		<button type="button" onclick="open_mapOption(this);" class="btn_map1"><span class="blind">통계</span></button>		<ul class="off">			<li id="statGbn11" style="display: none;"><a href="#" onclick="fn_view_option(&quot;ST&quot;,&quot;11&quot;);">실거래가</a></li>			<li id="statGbn12" style="display: none;"><a href="#" onclick="fn_view_option(&quot;ST&quot;,&quot;12&quot;);">거래율</a></li>			<li id="statGbn20" style="display: none;"><a href="#" onclick="fn_view_option(&quot;ST&quot;,&quot;20&quot;);">R114시세</a></li>			<li id="statGbn21" style="display: none;"><a href="#" onclick="fn_view_option(&quot;ST&quot;,&quot;21&quot;);">매물가격변동률</a></li>			<li id="statGbn22" style="display: none;"><a href="#" onclick="fn_view_option(&quot;ST&quot;,&quot;22&quot;);">임대수익률</a></li>			<li id="statGbn13" style="display: list-item;"><a href="#" onclick="fn_view_option(&quot;ST&quot;,&quot;13&quot;);">입주예정</a></li>			<li id="statGbn14" style="display: list-item;"><a href="#" onclick="fn_view_option(&quot;ST&quot;,&quot;14&quot;);">최근입주</a></li>			<li id="statGbn15" style="display: none;"><a href="#" onclick="fn_view_option(&quot;ST&quot;,&quot;15&quot;);">평균분양가</a></li>			<li id="statGbn16" style="display: none;"><a href="#" onclick="fn_view_option(&quot;ST&quot;,&quot;16&quot;);">지가변동률</a></li>			<li id="statGbn17" style="display: none;"><a href="#" onclick="fn_view_option(&quot;ST&quot;,&quot;17&quot;);">거래량</a></li>			<li id="statGbn18" style="display: none;"><a href="#" onclick="fn_view_option(&quot;ST&quot;,&quot;18&quot;);">경매 매각률</a></li>			<li id="statGbn19" style="display: none;"><a href="#" onclick="fn_view_option(&quot;ST&quot;,&quot;19&quot;);">경매 매각가율</a></li>		</ul>	</div>	<div>		<button type="button" onclick="open_mapOption(this);" class="btn_map2"><span class="blind">인구</span></button>		<ul class="off">			<li id="statGbn01"><a href="#" onclick="fn_view_option(&quot;ST&quot;,&quot;01&quot;);">순전입률</a></li>			<li id="statGbn02"><a href="#" onclick="fn_view_option(&quot;ST&quot;,&quot;02&quot;);">거주인구</a></li>		</ul>	</div>	<div>		<button type="button" onclick="open_mapOption(this);" class="btn_map3"><span class="blind">교통</span></button>		<ul class="off">			<li id="statGbn01"><a href="#" onclick="fn_view_option(&quot;BS&quot;);">버스</a></li>			<li id="statGbn02"><a href="#" onclick="fn_view_option(&quot;T&quot;);">지하철</a></li>		</ul>	</div>	<div>		<button type="button" onclick="open_mapOption(this);" class="btn_map4"><span class="blind">학교</span></button>		<ul class="off">			<li><a href="#" onclick="fn_view_option(&quot;SC&quot;,&quot;01&quot;);">어린이집</a></li>			<li><a href="#" onclick="fn_view_option(&quot;SC&quot;,&quot;02&quot;);">유치원</a></li>			<li><a href="#" onclick="fn_view_option(&quot;SC&quot;,&quot;11&quot;);">초등학교</a></li>			<li><a href="#" onclick="fn_view_option(&quot;SC&quot;,&quot;12&quot;);">중학교</a></li>			<li><a href="#" onclick="fn_view_option(&quot;SC&quot;,&quot;13&quot;);">고등학교</a></li>		</ul>	</div>	<div>		<button type="button" onclick="open_mapOption(this);fn_view_option(&quot;CC&quot;);" class="btn_map5"><span class="blind">cctv</span></button>	</div>	<button type="button" onclick="open_mapReset (this);fn_view_option();" class="reset" id="btnMapReset"><span class="blind">리셋</span></button></div><div class="gis pst_r" style="z-index:101;">	<button type="button" onclick="changeMapToRoadview();" class="roadview"><span class="blind">로드뷰</span></button>	<button type="button" onclick="zoomInMap (this);" class="plus"><span class="blind">확대</span></button>	<button type="button" onclick="zoomOutMap (this);" class="minus"><span class="blind">축소</span></button></div>	<div class="gis but_area_long" style="z-index:101;">		<button type="button" onclick="upsizeMap()" id="btnUpsizeMap"><span class="blind">지도크게보기</span></button>		<button type="button" onclick="downsizeMap()" id="btnDownsizeMap" class="close_map" style="display:none;"><span class="blind">기본지도보기</span></button>	</div><div id="bun_PrAd" class="sell_ad_map" style="z-index: 101; margin-left: -109px; display: none;">	<script type="text/javascript" src="https://md.r114.co.kr/RealMedia/ads/adstream_jx.ads/www.r114.co.kr/SA0@x50"></script> 	</div>	<div id="map" style="width: 100%; height: 100%; position: relative; overflow: hidden; background: url(&quot;https://i1.daumcdn.net/dmaps/apis/loading_n.png&quot;);" onclick="mapDivClick();"><div style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%; touch-action: none; cursor: url(&quot;https://i1.daumcdn.net/dmaps/apis/cursor/openhand.cur.ico&quot;) 7 5, url(&quot;https://i1.daumcdn.net/dmaps/apis/cursor/openhand.cur.ico&quot;), default;"><div style="position: absolute; left: -13px; top: 7px;"><div style="position: absolute; z-index: 1; left: 0px; top: 0px;"><img src="https://map0.daumcdn.net/map_2d/1902usc/L9/30/12.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -104px; top: 248px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map1.daumcdn.net/map_2d/1902usc/L9/30/13.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 152px; top: 248px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map2.daumcdn.net/map_2d/1902usc/L9/30/14.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 408px; top: 248px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map3.daumcdn.net/map_2d/1902usc/L9/30/15.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 664px; top: 248px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map0.daumcdn.net/map_2d/1902usc/L9/31/12.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -104px; top: -8px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map1.daumcdn.net/map_2d/1902usc/L9/31/13.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 152px; top: -8px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map2.daumcdn.net/map_2d/1902usc/L9/31/14.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 408px; top: -8px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map3.daumcdn.net/map_2d/1902usc/L9/31/15.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 664px; top: -8px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map0.daumcdn.net/map_2d/1902usc/L9/32/12.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -104px; top: -264px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map1.daumcdn.net/map_2d/1902usc/L9/32/13.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 152px; top: -264px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map2.daumcdn.net/map_2d/1902usc/L9/32/14.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 408px; top: -264px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map3.daumcdn.net/map_2d/1902usc/L9/32/15.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 664px; top: -264px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"></div><div style="position: absolute; z-index: 0; left: 0px; top: 0px; display: none;"><img src="https://map3.daumcdn.net/map_2d/1902usc/L13/1/-1.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -7258px; top: -15px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 4096px; height: 4096px;"><img src="https://map0.daumcdn.net/map_2d/1902usc/L13/1/0.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -3162px; top: -15px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 4096px; height: 4096px;"><img src="https://map1.daumcdn.net/map_2d/1902usc/L13/1/1.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 934px; top: -15px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 4096px; height: 4096px;"><img src="https://map2.daumcdn.net/map_2d/1902usc/L13/1/2.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 5030px; top: -15px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 4096px; height: 4096px;"><img src="https://map3.daumcdn.net/map_2d/1902usc/L13/2/-1.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -7258px; top: -4111px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 4096px; height: 4096px;"><img src="https://map0.daumcdn.net/map_2d/1902usc/L13/2/0.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -3162px; top: -4111px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 4096px; height: 4096px;"><img src="https://map1.daumcdn.net/map_2d/1902usc/L13/2/1.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 934px; top: -4111px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 4096px; height: 4096px;"><img src="https://map2.daumcdn.net/map_2d/1902usc/L13/2/2.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 5030px; top: -4111px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 4096px; height: 4096px;"><img src="https://map3.daumcdn.net/map_2d/1902usc/L13/3/-1.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -7258px; top: -8207px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 4096px; height: 4096px;"><img src="https://map0.daumcdn.net/map_2d/1902usc/L13/3/0.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -3162px; top: -8207px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 4096px; height: 4096px;"><img src="https://map1.daumcdn.net/map_2d/1902usc/L13/3/1.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 934px; top: -8207px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 4096px; height: 4096px;"><img src="https://map2.daumcdn.net/map_2d/1902usc/L13/3/2.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 5030px; top: -8207px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 4096px; height: 4096px;"></div><div style="position: absolute; z-index: 1;"></div><div style="width: 749px; height: 386px; position: absolute; z-index: 1;"></div><div style="position: absolute; z-index: 1;"><svg version="1.1" style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; transform: translateZ(0px); position: absolute; left: -1485px; top: -779px; width: 3745px; height: 1930px;" viewBox="0 0 3745 1930"><defs></defs></svg></div><div style="position: absolute; z-index: 1; width: 100%; height: 0px;"><div style="position: absolute; z-index: 90; margin: -23px 0px 0px -23px; left: 483px; top: 272px; white-space: normal;"><div id="sticker_1168000000" class="markerLv3 typeA"><div class="unselected"><span class="area">강남구</span></div><div class="selected"><span>하위지역<br>보기</span></div><div class="num">11,907</div></div></div><div style="position: absolute; z-index: 90; margin: -23px 0px 0px -23px; left: 588px; top: 249px; white-space: normal;"><div id="sticker_1174000000" class="markerLv3 typeA"><div class="unselected"><span class="area">강동구</span></div><div class="selected"><span>하위지역<br>보기</span></div><div class="num">1,408</div></div></div><div style="position: absolute; z-index: 90; margin: -23px 0px 0px -23px; left: 452px; top: 59px; white-space: normal;"><div id="sticker_1130500000" class="markerLv3 typeA"><div class="unselected"><span class="area">강북구</span></div><div class="selected"><span>하위지역<br>보기</span></div><div class="num">727</div></div></div><div style="position: absolute; z-index: 90; margin: -23px 0px 0px -23px; left: 209px; top: 213px; white-space: normal;"><div id="sticker_1150000000" class="markerLv3 typeA"><div class="unselected"><span class="area">강서구</span></div><div class="selected"><span>하위지역<br>보기</span></div><div class="num">2,060</div></div></div><div style="position: absolute; z-index: 90; margin: -23px 0px 0px -23px; left: 350px; top: 339px; white-space: normal;"><div id="sticker_1162000000" class="markerLv3 typeA"><div class="unselected"><span class="area">관악구</span></div><div class="selected"><span>하위지역<br>보기</span></div><div class="num">763</div></div></div><div style="position: absolute; z-index: 90; margin: -23px 0px 0px -23px; left: 531px; top: 235px; white-space: normal;"><div id="sticker_1121500000" class="markerLv3 typeA"><div class="unselected"><span class="area">광진구</span></div><div class="selected"><span>하위지역<br>보기</span></div><div class="num">1,176</div></div></div><div style="position: absolute; z-index: 90; margin: -23px 0px 0px -23px; left: 262px; top: 309px; white-space: normal;"><div id="sticker_1153000000" class="markerLv3 typeA"><div class="unselected"><span class="area">구로구</span></div><div class="selected"><span>하위지역<br>보기</span></div><div class="num">2,272</div></div></div><div style="position: absolute; z-index: 90; margin: -23px 0px 0px -23px; left: 273px; top: 376px; white-space: normal;"><div id="sticker_1154500000" class="markerLv3 typeA"><div class="unselected"><span class="area">금천구</span></div><div class="selected"><span>하위지역<br>보기</span></div><div class="num">598</div></div></div><div style="position: absolute; z-index: 90; margin: -23px 0px 0px -23px; left: 495px; top: 34px; white-space: normal;"><div id="sticker_1135000000" class="markerLv3 typeA"><div class="unselected"><span class="area">노원구</span></div><div class="selected"><span>하위지역<br>보기</span></div><div class="num">3,128</div></div></div><div style="position: absolute; z-index: 90; margin: -23px 0px 0px -23px; left: 482px; top: 9px; white-space: normal;"><div id="sticker_1132000000" class="markerLv3 typeA"><div class="unselected"><span class="area">도봉구</span></div><div class="selected"><span>하위지역<br>보기</span></div><div class="num">698</div></div></div><div style="position: absolute; z-index: 90; margin: -23px 0px 0px -23px; left: 472px; top: 172px; white-space: normal;"><div id="sticker_1123000000" class="markerLv3 typeA"><div class="unselected"><span class="area">동대문구</span></div><div class="selected"><span>하위지역<br>보기</span></div><div class="num">554</div></div></div><div style="position: absolute; z-index: 90; margin: -23px 0px 0px -23px; left: 333px; top: 280px; white-space: normal;"><div id="sticker_1159000000" class="markerLv3 typeA"><div class="unselected"><span class="area">동작구</span></div><div class="selected"><span>하위지역<br>보기</span></div><div class="num">1,368</div></div></div><div style="position: absolute; z-index: 90; margin: -23px 0px 0px -23px; left: 282px; top: 187px; white-space: normal;"><div id="sticker_1144000000" class="markerLv3 typeA"><div class="unselected"><span class="area">마포구</span></div><div class="selected"><span>하위지역<br>보기</span></div><div class="num">2,552</div></div></div><div style="position: absolute; z-index: 90; margin: -23px 0px 0px -23px; left: 330px; top: 164px; white-space: normal;"><div id="sticker_1141000000" class="markerLv3 typeA"><div class="unselected"><span class="area">서대문구</span></div><div class="selected"><span>하위지역<br>보기</span></div><div class="num">838</div></div></div><div style="position: absolute; z-index: 90; margin: -23px 0px 0px -23px; left: 462px; top: 330px; white-space: normal;"><div id="sticker_1165000000" class="markerLv3 typeA"><div class="unselected"><span class="area">서초구</span></div><div class="selected"><span>하위지역<br>보기</span></div><div class="num">4,132</div></div></div><div style="position: absolute; z-index: 90; margin: -23px 0px 0px -23px; left: 468px; top: 192px; white-space: normal;"><div id="sticker_1120000000" class="markerLv3 typeA"><div class="unselected"><span class="area">성동구</span></div><div class="selected"><span>하위지역<br>보기</span></div><div class="num">1,416</div></div></div><div style="position: absolute; z-index: 90; margin: -23px 0px 0px -23px; left: 440px; top: 147px; white-space: normal;"><div id="sticker_1129000000" class="markerLv3 typeA"><div class="unselected"><span class="area">성북구</span></div><div class="selected"><span>하위지역<br>보기</span></div><div class="num">1,873</div></div></div><div style="position: absolute; z-index: 90; margin: -23px 0px 0px -23px; left: 564px; top: 276px; white-space: normal;"><div id="sticker_1171000000" class="markerLv3 typeA"><div class="unselected"><span class="area">송파구</span></div><div class="selected"><span>하위지역<br>보기</span></div><div class="num">4,242</div></div></div><div style="position: absolute; z-index: 90; margin: -23px 0px 0px -23px; left: 233px; top: 272px; white-space: normal;"><div id="sticker_1147000000" class="markerLv3 typeA"><div class="unselected"><span class="area">양천구</span></div><div class="selected"><span>하위지역<br>보기</span></div><div class="num">2,703</div></div></div><div style="position: absolute; z-index: 90; margin: -23px 0px 0px -23px; left: 274px; top: 256px; white-space: normal;"><div id="sticker_1156000000" class="markerLv3 typeA"><div class="unselected"><span class="area">영등포구</span></div><div class="selected"><span>하위지역<br>보기</span></div><div class="num">1,830</div></div></div><div style="position: absolute; z-index: 90; margin: -23px 0px 0px -23px; left: 404px; top: 245px; white-space: normal;"><div id="sticker_1117000000" class="markerLv3 typeA"><div class="unselected"><span class="area">용산구</span></div><div class="selected"><span>하위지역<br>보기</span></div><div class="num">1,870</div></div></div><div style="position: absolute; z-index: 90; margin: -23px 0px 0px -23px; left: 319px; top: 123px; white-space: normal;"><div id="sticker_1138000000" class="markerLv3 typeA"><div class="unselected"><span class="area">은평구</span></div><div class="selected"><span>하위지역<br>보기</span></div><div class="num">759</div></div></div><div style="position: absolute; z-index: 90; margin: -23px 0px 0px -23px; left: 389px; top: 175px; white-space: normal;"><div id="sticker_1111000000" class="markerLv3 typeA"><div class="unselected"><span class="area">종로구</span></div><div class="selected"><span>하위지역<br>보기</span></div><div class="num">446</div></div></div><div style="position: absolute; z-index: 90; margin: -23px 0px 0px -23px; left: 414px; top: 191px; white-space: normal;"><div id="sticker_1114000000" class="markerLv3 typeA"><div class="unselected"><span class="area">중구</span></div><div class="selected"><span>하위지역<br>보기</span></div><div class="num">358</div></div></div><div style="position: absolute; z-index: 90; margin: -23px 0px 0px -23px; left: 545px; top: 117px; white-space: normal;"><div id="sticker_1126000000" class="markerLv3 typeA"><div class="unselected"><span class="area">중랑구</span></div><div class="selected"><span>하위지역<br>보기</span></div><div class="num">323</div></div></div></div></div></div><div style="position: absolute; cursor: default; z-index: 1; white-space: nowrap; font: 11px tahoma, sans-serif; color: rgb(85, 85, 85); left: 7px; bottom: 5px;"><a target="_blank" href="http://map.daum.net/" title="Daum 지도로 보시려면 클릭하세요." style="float: left; width: 38px; height: 17px; cursor: pointer;"><img src="https://t1.daumcdn.net/localimg/localimages/07/mapjsapi/m_bi.png" alt="Daum 지도로 이동" style="width: 37px; height: 18px; border: none;"></a><div style="color: rgb(0, 0, 0); text-align: center; font-size: 10px; margin: 0px 2px; float: left; width: 64px;"><div style="color: rgb(0, 0, 0);">4km</div><div style="position: relative; overflow: hidden; height: 8px; margin-top: -4px;"><img src="https://t1.daumcdn.net/localimg/localimages/07/mapjsapi/scalebar.png" alt="" style="position: absolute; width: 164px; height: 40px; max-width: none; top: -20px; left: -82px;"></div></div><div style="font: 11px tahoma, sans-serif; float: left; margin: 3px 2px 0px;">© Kakao<span></span></div></div><div style="cursor: auto; position: absolute; z-index: 2; left: 0px; top: 0px;"></div></div>	<div id="map_alert" class="my_empty" style="z-index:10;"></div></div><div class="row vizGap">	<div class="col-sm-9 col-md-9 col-lg-9">   	<div class="price_info" style="z-index:11;">   		<div class="smr_info">   			<p class="dev_leg_title"></p>   			<span class="fc_gray1 dev_leg_subTit"></span>   			<span class="fc_gray1 fr dev_leg_unit"></span>   			<div class="tooltip_wrap" id="icon_statCd_12_tooltip" style="display:none">   				<a href="#" class="btn q">?</a>   				<div class="tooltip Trate">   					<strong>거래율</strong>   					<p>각 지역의 총 가구수 대비 거래 건수의 비율을 나타냅니다.</p>   					<p>기간 설정기능으로 거래의 빈도와 활성화 정도를 인근 지역과 비교해보세요.</p>   				</div>   			</div>   		</div>   		<div id="vizLegend" class="daumMapWebLegend" style="width:350px"></div>   		<p class="txt_info dev_leg_cont"></p>   	</div>   </div></div><div id="vizText" style="z-index:3"></div>
				<!--{지도레이어}-->
			</div>

			<div class="map_list">
				<div class="title">
					<strong id="addressTitleNoAct">서울특별시  </strong>
				</div>

				<ul class="tab_cont">
					<li class="on">
						<ul class="map_info_list"><li id="mapList_1168000000" data-name="강남구" onclick="fn_setFullView('1168000000', '1', '강남구', '127.04737740838436', '37.51733192586005'); "><strong>강남구(11,907)</strong></li><li id="mapList_1174000000" data-name="강동구" onclick="fn_setFullView('1174000000', '1', '강동구', '127.12379250125309', '37.530193319622605'); "><strong>강동구(1,408)</strong></li><li id="mapList_1130500000" data-name="강북구" onclick="fn_setFullView('1130500000', '1', '강북구', '127.02553807185369', '37.63975132759328'); "><strong>강북구(727)</strong></li><li id="mapList_1150000000" data-name="강서구" onclick="fn_setFullView('1150000000', '1', '강서구', '126.84953375951333', '37.55096461543074'); "><strong>강서구(2,060)</strong></li><li id="mapList_1162000000" data-name="관악구" onclick="fn_setFullView('1162000000', '1', '관악구', '126.95156185386739', '37.47836837614069'); "><strong>관악구(763)</strong></li><li id="mapList_1121500000" data-name="광진구" onclick="fn_setFullView('1121500000', '1', '광진구', '127.08238518945788', '37.53855831367326'); "><strong>광진구(1,176)</strong></li><li id="mapList_1153000000" data-name="구로구" onclick="fn_setFullView('1153000000', '1', '구로구', '126.88750531450943', '37.49543308637202'); "><strong>구로구(2,272)</strong></li><li id="mapList_1154500000" data-name="금천구" onclick="fn_setFullView('1154500000', '1', '금천구', '126.89545678002185', '37.45684114858621'); "><strong>금천구(598)</strong></li><li id="mapList_1135000000" data-name="노원구" onclick="fn_setFullView('1135000000', '1', '노원구', '127.05643047521656', '37.65436175671061'); "><strong>노원구(3,128)</strong></li><li id="mapList_1132000000" data-name="도봉구" onclick="fn_setFullView('1132000000', '1', '도봉구', '127.0472104993602', '37.66869141003308'); "><strong>도봉구(698)</strong></li><li id="mapList_1123000000" data-name="동대문구" onclick="fn_setFullView('1123000000', '1', '동대문구', '127.03965700109148', '37.57452298171823'); "><strong>동대문구(554)</strong></li><li id="mapList_1159000000" data-name="동작구" onclick="fn_setFullView('1159000000', '1', '동작구', '126.93931505634005', '37.51248204235883'); "><strong>동작구(1,368)</strong></li><li id="mapList_1144000000" data-name="마포구" onclick="fn_setFullView('1144000000', '1', '마포구', '126.9019551411001', '37.56621419010154'); "><strong>마포구(2,552)</strong></li><li id="mapList_1141000000" data-name="서대문구" onclick="fn_setFullView('1141000000', '1', '서대문구', '126.93681566039967', '37.579161863984915'); "><strong>서대문구(838)</strong></li><li id="mapList_1165000000" data-name="서초구" onclick="fn_setFullView('1165000000', '1', '서초구', '127.0326938421173', '37.48359242564439'); "><strong>서초구(4,132)</strong></li><li id="mapList_1120000000" data-name="성동구" onclick="fn_setFullView('1120000000', '1', '성동구', '127.03693014118541', '37.563427205343174'); "><strong>성동구(1,416)</strong></li><li id="mapList_1129000000" data-name="성북구" onclick="fn_setFullView('1129000000', '1', '성북구', '127.0167029072619', '37.589366023337'); "><strong>성북구(1,873)</strong></li><li id="mapList_1171000000" data-name="송파구" onclick="fn_setFullView('1171000000', '1', '송파구', '127.10592224330543', '37.51459092340841'); "><strong>송파구(4,242)</strong></li><li id="mapList_1147000000" data-name="양천구" onclick="fn_setFullView('1147000000', '1', '양천구', '126.86650140965972', '37.516988475267716'); "><strong>양천구(2,703)</strong></li><li id="mapList_1156000000" data-name="영등포구" onclick="fn_setFullView('1156000000', '1', '영등포구', '126.89627844388117', '37.526367178486936'); "><strong>영등포구(1,830)</strong></li><li id="mapList_1117000000" data-name="용산구" onclick="fn_setFullView('1117000000', '1', '용산구', '126.990582345331', '37.53243103913802'); "><strong>용산구(1,870)</strong></li><li id="mapList_1138000000" data-name="은평구" onclick="fn_setFullView('1138000000', '1', '은평구', '126.92894550440779', '37.60282464773275'); "><strong>은평구(759)</strong></li><li id="mapList_1111000000" data-name="종로구" onclick="fn_setFullView('1111000000', '1', '종로구', '126.97923004370492', '37.57312947159552'); "><strong>종로구(446)</strong></li><li id="mapList_1114000000" data-name="중구" onclick="fn_setFullView('1114000000', '1', '중구', '126.99755518205693', '37.56381497833722'); "><strong>중구(358)</strong></li><li id="mapList_1126000000" data-name="중랑구" onclick="fn_setFullView('1126000000', '1', '중랑구', '127.09282028700461', '37.606543238397514'); "><strong>중랑구(323)</strong></li></ul>
					</li>
				</ul>
			</div>
		</div>

		<!-- 로드뷰 영역 : S -->
		<div id="mapAreaRoadview" class="roadview_wrap" style="display:none;">
			<div class="roadview_left">
				<div id="mapAreaRoadviewRadar"></div>
				<div class="gis pst_r" style="z-index:101;">					
					<button type="button" onclick="changeMapToBasic();" class="roadview on"><span class="blind">로드뷰</span></button>
					<button type="button" onclick="zoomInRoadview();" class="plus"><span class="blind">확대</span></button>
					<button type="button" onclick="zoomOutRoadview();" class="minus"><span class="blind">축소</span></button>
					<button type="button" onclick="resetRoadview();" class="reset_small"><span class="blind">초기화</span></button>
				</div>
				<div class="gis">
					<button type="button" onclick="changeMapToBasic();" class="close"><span class="blind">로드뷰</span></button>
				</div>
			</div>
			<div id="mapAreaRoadviewContents" class="roadview_right"></div>
			<div id="mapAreaRoadviewNoData" class="roadview_none" style="display:none;"><span>로드뷰가 없는 지역입니다.<br>지역을 이동해주세요.</span></div>
		</div>
		<!-- 로드뷰 영역 : E -->

		<!-- 컨텐츠 시작 -->
		<div class="loadingTemporary"></div>

		<!--매물중앙광고:0608 -->
		<div id="MemulMainBanner">		<input type="hidden" name="MemulAdCount" id="MemulAdCount" value="{매물메인배너/갯수}">	
		
		<div id="memulmainagentad" class="location_banner_wrap" style="display: none;">			
			<ul class="agent_banner_wrap">
				
			</ul>

			<ul class="location_banner_count">				
				
			</ul>
		</div>
		
		<div class="location_banner_wrap" id="MktMemulAd" style="display:;">
		<iframe src="/?_c=memul&amp;_m=MemulDefault&amp;_a=MemulMktAd" id="ifrmMktAd" scrolling="no" marginheight="0" marginwidth="0" frameborder="0" width="100%" height="78px"></iframe>
		</div>		
		<!-- 메인 배너영역 끝-->
		<script type="text/javascript">

			var rolling_memulad;
			var const_memulpage=1;
			var _MemulAdCount = parseInt($("#MemulAdCount").val());

			function ch_memuladpaging(cur_page,_flag){
				const_memulpage = parseInt(cur_page);
				for(var i=1 ; i <= _MemulAdCount ; i++){
					if(i == parseInt(cur_page)){
						$("#memulad_" + i).css("display", "");
						$("#memuladbutton_" + i).addClass("active");
					}else{
						$("#memulad_" + i).css("display", "none");
						$("#memuladbutton_" + i).removeClass("active");
					}
				}
				if(_flag == "off"){
					end_memulad_rol();
				}else{
					start_memulad_rol();
				}
			}

			function start_memulad_rol(){
				if(const_memulpage >= _MemulAdCount) {
					const_memulpage=1;
					rolling_memulad = setTimeout("ch_memuladpaging('" + const_memulpage + "')",5000);
				}else{
					rolling_memulad = setTimeout("ch_memuladpaging('" + (const_memulpage+1) + "')",5000);
				}
			}

			function end_memulad_rol(){
				clearTimeout(rolling_memulad);
			}

		</script>

	
</div>

		<div class="contents_wrap">
			<h4 class="h4_type4" style="margin-top: -6px">
			
				<span class="more_type1"><a href="javascript:" class="btn_type1" onclick="openSupplyEstateGuide();"><span class="ico_comm_s comment">댓글수</span>부동산114 매물제공 기준</a></span>

				<a id="selAddrText">
서울특별시
</a> <em>지역상세정보</em>
				<span class="social_set">
					<button type="button" id="likeArea" style="display: none;"><span class="ico_comm_l like">좋아요</span></button>
					<button type="button" onclick="fn_snsShare()"><span class="ico_comm_l share">공유하기</span></button>
					<button type="button" class="btn_type1 red" id="cmdAskBuy" style="display: none;">구하기</button>
				</span>
			</h4>
			<!-- 탭 -->
			<ul class="list_tab3 clearfix tabMenu n5">
				<li class="on"><a href="javascript:;" onclick="goSearch(_SEL_ADDR1, _SEL_ADDR2, _SEL_ADDR3, _SEL_COMPLEXCD, false, '', '0')">매물</a></li> <!-- 현재메뉴 class="on" -->
				<li><a href="javascript:;" onclick="fn_goSiseList('')">시세</a></li>
				<li><a href="javascript:;" onclick="fn_goStatistics('')">통계</a></li>
				<li><a href="javascript:;" onclick="fn_AreaDetailLoad()">지역소식</a></li>
				<li><a href="javascript:;" onclick="fn_LoadForSaleAgentList()">중개사무소</a></li>
			</ul>
			<!--// 탭 -->

			<!-- 매물리스트 정렬방식 -->
			<div class="sort_wrap">
				<!-- 180209 매전월 선택 추가 -->
				<input type="radio" class="inp_rdo" id="dealType_0" name="dealType" data-title="전체" onclick="javascript:fnc_MemulType3_sel(this);" value="A01|AA|AB|0" checked="checked"><label for="dealType_0"><span class="ico_comm_s rdo"></span>전체</label>
				<input type="radio" class="inp_rdo" id="dealType_1" name="dealType" data-title="매매" onclick="javascript:fnc_MemulType3_sel(this);" value="A01|AA|AB|1"><label for="dealType_1"><span class="ico_comm_s rdo"></span>매매</label>
				<input type="radio" class="inp_rdo" id="dealType_2" name="dealType" data-title="전세" onclick="javascript:fnc_MemulType3_sel(this);" value="A01|AA|AB|2"><label for="dealType_2"><span class="ico_comm_s rdo"></span>전세</label>
				<input type="radio" class="inp_rdo" id="dealType_3" name="dealType" data-title="월세" onclick="javascript:fnc_MemulType3_sel(this);" value="A01|AA|AB|3"><label for="dealType_3"><span class="ico_comm_s rdo"></span>월세</label>
				<!--// 180209 매전월 선택 추가 -->
				<!-- 180209 전체면적 -->
				<div class="inp_slt" id="complexAreaSize" name="complexAreaSize" style="display: none;">
					<select id="areaSizeList" style="display: none;">
					</select><span tabindex="0" id="areaSizeList-button" role="combobox" aria-expanded="false" aria-autocomplete="list" aria-owns="areaSizeList-menu" aria-haspopup="true" class="ui-selectmenu-button ui-selectmenu-button-closed ui-corner-all ui-button ui-widget"><span class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span><span class="ui-selectmenu-text">&nbsp;</span></span>
				</div>
				<!--// 180209 전체면적 -->
				<div class="total_cnt">
					<button onclick="compareWithBtn();" class="btn_type13" id="cmdCompareOpen">비교하기</button><!-- 180209 버튼 클래스변경(btn_type1 → btn_type13) -->
				</div>
			</div>
			<!--// 매물리스트 정렬방식 -->
			<h4 class="h4_type5 specialNum" style="display: none;">스페셜매물
				<div class="fr">
					<div class="ui">
						<a href="javascript:;" onclick="memulSort(0);" class="selected">알짜추천순</a>
						<a href="javascript:;" onclick="memulSort(1);">가격순</a>
						<a href="javascript:;" onclick="memulSort(2);">면적순</a>
						<a href="javascript:;" onclick="memulSort(3);">매물명순</a>
					</div>	
				</div>
			</h4>
			<ul class="list_article special more" style="display: none;"><div style="text-align:center"><div class="loding_wrap on"><img src="https://image.r114.co.kr/W1/images/sub/loding.gif" alt="로딩중"></div></div></ul>
			<a href="javascript:specialMore();" class="btn_more specialMemul" title="더보기" style="display: none;">더보기<span class="ico_comm_s arrow"></span></a>

			<h4 class="h4_type5 BestNum" style="">베스트매물
				<div class="fr">
					<div class="ui">
						<a href="javascript:;" onclick="memulSort(0);" class="selected">알짜추천순</a>
						<a href="javascript:;" onclick="memulSort(1);">가격순</a>
						<a href="javascript:;" onclick="memulSort(2);">면적순</a>
						<a href="javascript:;" onclick="memulSort(3);">매물명순</a>
					</div>	
				</div>
			</h4>
			<ul class="list_article Best" style="">
				
				<li>
					<a href="javascript:" onclick="goHouseDetailPage('0033F367B55FFC', '2')" class="cont">
						<strong class="tit_a"><span> 장미1차 3동</span><em><span class="tag_comm2 m">매매</span>135,000 만원</em></strong>
						<span class="tag_comm3 type2">알짜매물<em>19.04.08</em></span>
						<div class="thumb">
							<img src="https://image.r114.co.kr/photo_img/L/2019/03/19/9D7213ED10D74C69B1C27A0B8F9E844C.jpg" alt="">
						</div>
						<span class="txt">
							<strong>아파트</strong><span class="info_memul"> 방3개 109.09/82.45㎡ 고층/총14층 <!--3동--></span>
							<em>33.급매.남향.입주가능.로얄동</em>
							<p><span class="ico_comm_s location4">위치</span>서울특별시  송파구  신천동</p>
						</span>
					</a>
					<em class="tel">
						<div>
							<p class="name"><i class="ico_class b">B</i>제일부동산중개법인알앤유(..</p>
							<span><i class="ico_comm_s tel">전화번호</i>02)422-9800</span>							
							<a href="javascript:;" class="btn_type1 small" onclick="fnGoJunHome('F01181382400029')">홈페이지</a>							
							<a href="javascript:;" class="btn_type1 small" onclick="openQuestionMemul('#lp_layout2', '매매^r114^아파트^r114^장미1차^r114^서울특별시^r114^송파구^r114^신천동', 'F01181382400029', '제일부동산중개법인알앤유(..', '0033F367B55FFC', '/Default.asp?_c=memul&amp;_m=HouseDetail&amp;mulcode=0033F367B55FFC', '1')">1:1문의</a>
						</div>
					</em>
					<input type="checkbox" id="best_c1_0033F367B55FFC" value="0033F367B55FFC| 장미1차|매매|135,000" onclick="compareWithAdd(this)"><label class="sel_box" for="best_c1_0033F367B55FFC"> </label>
                </li>
				
				<li>
					<a href="javascript:" onclick="goHouseDetailPage('003B7F3DCC8A46', '2')" class="cont">
						<strong class="tit_a"><span> 장미2차 30동</span><em><span class="tag_comm2 m">매매</span>134,000 만원</em></strong>
						<span class="tag_comm3 type2">알짜매물<em>19.04.08</em></span>
						<div class="thumb">
							<img src="https://image.r114.co.kr/photo_img/L/2019/04/08/996C5E482E364F2E81539B1F058BE638.jpg" alt="">
						</div>
						<span class="txt">
							<strong>아파트</strong><span class="info_memul"> 방3개 108.95/82.45㎡ 저층/총14층 <!--30동--></span>
							<em>33.급매.보통수리.세안고.남향.역세권</em>
							<p><span class="ico_comm_s location4">위치</span>서울특별시  송파구  신천동</p>
						</span>
					</a>
					<em class="tel">
						<div>
							<p class="name"><i class="ico_class b">B</i>제일부동산중개법인알앤유(..</p>
							<span><i class="ico_comm_s tel">전화번호</i>02)422-9800</span>							
							<a href="javascript:;" class="btn_type1 small" onclick="fnGoJunHome('F01181382400029')">홈페이지</a>							
							<a href="javascript:;" class="btn_type1 small" onclick="openQuestionMemul('#lp_layout2', '매매^r114^아파트^r114^장미2차^r114^서울특별시^r114^송파구^r114^신천동', 'F01181382400029', '제일부동산중개법인알앤유(..', '003B7F3DCC8A46', '/Default.asp?_c=memul&amp;_m=HouseDetail&amp;mulcode=003B7F3DCC8A46', '1')">1:1문의</a>
						</div>
					</em>
					<input type="checkbox" id="best_c1_003B7F3DCC8A46" value="003B7F3DCC8A46| 장미2차|매매|134,000" onclick="compareWithAdd(this)"><label class="sel_box" for="best_c1_003B7F3DCC8A46"> </label>
                </li>
				
				<li>
					<a href="javascript:" onclick="goHouseDetailPage('00F5B6AF378F05', '2')" class="cont">
						<strong class="tit_a"><span> 장미1차 2동</span><em><span class="tag_comm2 m">매매</span>120,000 만원</em></strong>
						<span class="tag_comm3 type2">알짜매물<em>19.04.06</em></span>
						<div class="thumb">
							<img src="https://image.r114.co.kr/photo_img/L/2019/04/06/1113E0A86C4D44D688D284A0E1792F99.jpg" alt="">
						</div>
						<span class="txt">
							<strong>아파트</strong><span class="info_memul"> 방3개 92.56/71.2㎡ 저층/총14층 <!--2동--></span>
							<em>28.초급매.올수리.입주가능.역세권</em>
							<p><span class="ico_comm_s location4">위치</span>서울특별시  송파구  신천동</p>
						</span>
					</a>
					<em class="tel">
						<div>
							<p class="name"><i class="ico_class b">B</i>제일부동산중개법인알앤유(..</p>
							<span><i class="ico_comm_s tel">전화번호</i>02)422-9800</span>							
							<a href="javascript:;" class="btn_type1 small" onclick="fnGoJunHome('F01181382400029')">홈페이지</a>							
							<a href="javascript:;" class="btn_type1 small" onclick="openQuestionMemul('#lp_layout2', '매매^r114^아파트^r114^장미1차^r114^서울특별시^r114^송파구^r114^신천동', 'F01181382400029', '제일부동산중개법인알앤유(..', '00F5B6AF378F05', '/Default.asp?_c=memul&amp;_m=HouseDetail&amp;mulcode=00F5B6AF378F05', '1')">1:1문의</a>
						</div>
					</em>
					<input type="checkbox" id="best_c1_00F5B6AF378F05" value="00F5B6AF378F05| 장미1차|매매|120,000" onclick="compareWithAdd(this)"><label class="sel_box" for="best_c1_00F5B6AF378F05"> </label>
                </li>
				
				<li>
					<a href="javascript:" onclick="goHouseDetailPage('0074672369250B', '2')" class="cont">
						<strong class="tit_a"><span> 송파헬리오시티 406동</span><em><span class="tag_comm2 m">매매</span>185,000 만원</em></strong>
						<span class="tag_comm3 type2">알짜매물<em>19.04.06</em></span>
						<div class="thumb">
							<img src="https://image.r114.co.kr/photo_img/L/2019/04/06/C4736841EDB645C6B585C538B0319162.PNG" alt="">
						</div>
						<span class="txt">
							<strong>아파트</strong><span class="info_memul"> 방4개 126.35/99.6㎡ 15층/총35층 <!--406동--></span>
							<em>38P 8호선 역세권 막힘없는 정남향  에어컨풀 단지상가입점공인</em>
							<p><span class="ico_comm_s location4">위치</span>서울특별시  송파구  가락동</p>
						</span>
					</a>
					<em class="tel">
						<div>
							<p class="name"><i class="ico_class b">B</i>헬리오명품공인중개사무소</p>
							<span><i class="ico_comm_s tel">전화번호</i>02)477-1800</span>							
							<a href="javascript:;" class="btn_type1 small" onclick="fnGoJunHome('F20190118102142')">홈페이지</a>							
							<a href="javascript:;" class="btn_type1 small" onclick="openQuestionMemul('#lp_layout2', '매매^r114^아파트^r114^송파헬리오시티^r114^서울특별시^r114^송파구^r114^가락동', 'F20190118102142', '헬리오명품공인중개사무소', '0074672369250B', '/Default.asp?_c=memul&amp;_m=HouseDetail&amp;mulcode=0074672369250B', '1')">1:1문의</a>
						</div>
					</em>
					<input type="checkbox" id="best_c1_0074672369250B" value="0074672369250B| 송파헬리오시티|매매|185,000" onclick="compareWithAdd(this)"><label class="sel_box" for="best_c1_0074672369250B"> </label>
                </li>
				
				<li>
					<a href="javascript:" onclick="goHouseDetailPage('008ADF14B85ED9', '2')" class="cont">
						<strong class="tit_a"><span> 송파헬리오시티 209동</span><em><span class="tag_comm2 m">매매</span>90,000 만원</em></strong>
						<span class="tag_comm3 type2">알짜매물<em>19.04.06</em></span>
						<div class="thumb">
							<img src="https://image.r114.co.kr/photo_img/L/2019/04/06/F8F63ADEE0EA4FB595F5034F7A6CD79B.PNG" alt="">
						</div>
						<span class="txt">
							<strong>아파트</strong><span class="info_memul"> 방2개 61.37A/39.1㎡ 12층/총35층 <!--209동--></span>
							<em>18p 최저가 급매매  바로계약가능</em>
							<p><span class="ico_comm_s location4">위치</span>서울특별시  송파구  가락동</p>
						</span>
					</a>
					<em class="tel">
						<div>
							<p class="name"><i class="ico_class b">B</i>헬리오명품공인중개사무소</p>
							<span><i class="ico_comm_s tel">전화번호</i>02)477-1800</span>							
							<a href="javascript:;" class="btn_type1 small" onclick="fnGoJunHome('F20190118102142')">홈페이지</a>							
							<a href="javascript:;" class="btn_type1 small" onclick="openQuestionMemul('#lp_layout2', '매매^r114^아파트^r114^송파헬리오시티^r114^서울특별시^r114^송파구^r114^가락동', 'F20190118102142', '헬리오명품공인중개사무소', '008ADF14B85ED9', '/Default.asp?_c=memul&amp;_m=HouseDetail&amp;mulcode=008ADF14B85ED9', '1')">1:1문의</a>
						</div>
					</em>
					<input type="checkbox" id="best_c1_008ADF14B85ED9" value="008ADF14B85ED9| 송파헬리오시티|매매|90,000" onclick="compareWithAdd(this)"><label class="sel_box" for="best_c1_008ADF14B85ED9"> </label>
                </li>
				
				<li>
					<a href="javascript:" onclick="goHouseDetailPage('01219F39FCBBD2', '2')" class="cont">
						<strong class="tit_a"><span> 송파헬리오시티 318동</span><em><span class="tag_comm2 j">전세</span>64,000 만원</em></strong>
						<span class="tag_comm3 type2">알짜매물<em>19.04.06</em></span>
						<div class="thumb">
							<img src="https://image.r114.co.kr/photo_img/L/2019/04/06/34CDC61CC21645AC8882C771A7423025.PNG" alt="">
						</div>
						<span class="txt">
							<strong>아파트</strong><span class="info_memul"> 방3개 110.17F/84.95㎡ 9층/총35층 <!--318동--></span>
							<em>33F타입 전망좋은판상형구조 시스템에어컨</em>
							<p><span class="ico_comm_s location4">위치</span>서울특별시  송파구  가락동</p>
						</span>
					</a>
					<em class="tel">
						<div>
							<p class="name"><i class="ico_class b">B</i>헬리오명품공인중개사무소</p>
							<span><i class="ico_comm_s tel">전화번호</i>02)477-1800</span>							
							<a href="javascript:;" class="btn_type1 small" onclick="fnGoJunHome('F20190118102142')">홈페이지</a>							
							<a href="javascript:;" class="btn_type1 small" onclick="openQuestionMemul('#lp_layout2', '전세^r114^아파트^r114^송파헬리오시티^r114^서울특별시^r114^송파구^r114^가락동', 'F20190118102142', '헬리오명품공인중개사무소', '01219F39FCBBD2', '/Default.asp?_c=memul&amp;_m=HouseDetail&amp;mulcode=01219F39FCBBD2', '1')">1:1문의</a>
						</div>
					</em>
					<input type="checkbox" id="best_c1_01219F39FCBBD2" value="01219F39FCBBD2| 송파헬리오시티|전세|64,000" onclick="compareWithAdd(this)"><label class="sel_box" for="best_c1_01219F39FCBBD2"> </label>
                </li>
				
				<li>
					<a href="javascript:" onclick="goHouseDetailPage('0147A92413117F', '2')" class="cont">
						<strong class="tit_a"><span> 송파헬리오시티 408동</span><em><span class="tag_comm2 j">전세</span>47,000 만원</em></strong>
						<span class="tag_comm3 type2">알짜매물<em>19.04.06</em></span>
						<div class="thumb">
							<img src="https://image.r114.co.kr/photo_img/L/2019/04/06/BDEBFCF3419F4AD687061AE1CD296666.PNG" alt="">
						</div>
						<span class="txt">
							<strong>아파트</strong><span class="info_memul"> 방2개 61.37A/39.1㎡ 13층/총35층 <!--408동--></span>
							<em>33F타입 전망좋은판상형구조 시스템에어컨</em>
							<p><span class="ico_comm_s location4">위치</span>서울특별시  송파구  가락동</p>
						</span>
					</a>
					<em class="tel">
						<div>
							<p class="name"><i class="ico_class b">B</i>헬리오명품공인중개사무소</p>
							<span><i class="ico_comm_s tel">전화번호</i>02)477-1800</span>							
							<a href="javascript:;" class="btn_type1 small" onclick="fnGoJunHome('F20190118102142')">홈페이지</a>							
							<a href="javascript:;" class="btn_type1 small" onclick="openQuestionMemul('#lp_layout2', '전세^r114^아파트^r114^송파헬리오시티^r114^서울특별시^r114^송파구^r114^가락동', 'F20190118102142', '헬리오명품공인중개사무소', '0147A92413117F', '/Default.asp?_c=memul&amp;_m=HouseDetail&amp;mulcode=0147A92413117F', '1')">1:1문의</a>
						</div>
					</em>
					<input type="checkbox" id="best_c1_0147A92413117F" value="0147A92413117F| 송파헬리오시티|전세|47,000" onclick="compareWithAdd(this)"><label class="sel_box" for="best_c1_0147A92413117F"> </label>
                </li>
				
				<li>
					<a href="javascript:" onclick="goHouseDetailPage('007ED20CF59847', '2')" class="cont">
						<strong class="tit_a"><span> 송파헬리오시티 506동</span><em><span class="tag_comm2 m">매매</span>96,000 만원</em></strong>
						<span class="tag_comm3 type2">알짜매물<em>19.04.06</em></span>
						<div class="thumb">
							<img src="https://image.r114.co.kr/photo_img/L/2019/04/06/816FAD6EB24A4CCF8899849927DF40AF.PNG" alt="">
						</div>
						<span class="txt">
							<strong>아파트</strong><span class="info_memul"> 방2개 61.37A/39.1㎡ 10층/총35층 <!--506동--></span>
							<em>18P  8호선역세권 싱글 신혼부부 강추 단지내명품공인</em>
							<p><span class="ico_comm_s location4">위치</span>서울특별시  송파구  가락동</p>
						</span>
					</a>
					<em class="tel">
						<div>
							<p class="name"><i class="ico_class b">B</i>헬리오명품공인중개사무소</p>
							<span><i class="ico_comm_s tel">전화번호</i>02)477-1800</span>							
							<a href="javascript:;" class="btn_type1 small" onclick="fnGoJunHome('F20190118102142')">홈페이지</a>							
							<a href="javascript:;" class="btn_type1 small" onclick="openQuestionMemul('#lp_layout2', '매매^r114^아파트^r114^송파헬리오시티^r114^서울특별시^r114^송파구^r114^가락동', 'F20190118102142', '헬리오명품공인중개사무소', '007ED20CF59847', '/Default.asp?_c=memul&amp;_m=HouseDetail&amp;mulcode=007ED20CF59847', '1')">1:1문의</a>
						</div>
					</em>
					<input type="checkbox" id="best_c1_007ED20CF59847" value="007ED20CF59847| 송파헬리오시티|매매|96,000" onclick="compareWithAdd(this)"><label class="sel_box" for="best_c1_007ED20CF59847"> </label>
                </li>
				
				<li>
					<a href="javascript:" onclick="goHouseDetailPage('00E19B9D737189', '2')" class="cont">
						<strong class="tit_a"><span> 두산 101동</span><em><span class="tag_comm2 m">매매</span>30,500 만원</em></strong>
						<span class="tag_comm3 type2">알짜매물<em>19.04.06</em></span>
						<div class="thumb">
							<img src="https://image.r114.co.kr/photo_img/L/2018/06/01/48EFC0AACD3441C8B859C228A6531C17.jpg" alt="">
						</div>
						<span class="txt">
							<strong>아파트</strong><span class="info_memul"> 방2개 72.72/51.66㎡ 11층/총15층 <!--101동--></span>
							<em>전화 02 951 7272   관리비도 저렴하고 살수록 정드는 집입니다</em>
							<p><span class="ico_comm_s location4">위치</span>서울특별시  노원구  상계동</p>
						</span>
					</a>
					<em class="tel">
						<div>
							<p class="name"><i class="ico_class b">B</i>우성공인중개사사무소</p>
							<span><i class="ico_comm_s tel">전화번호</i>02)951-7272</span>							
							<a href="javascript:;" class="btn_type1 small" onclick="fnGoJunHome('F20140102100540')">홈페이지</a>							
							<a href="javascript:;" class="btn_type1 small" onclick="openQuestionMemul('#lp_layout2', '매매^r114^아파트^r114^두산^r114^서울특별시^r114^노원구^r114^상계동', 'F20140102100540', '우성공인중개사사무소', '00E19B9D737189', '/Default.asp?_c=memul&amp;_m=HouseDetail&amp;mulcode=00E19B9D737189', '1')">1:1문의</a>
						</div>
					</em>
					<input type="checkbox" id="best_c1_00E19B9D737189" value="00E19B9D737189| 두산|매매|30,500" onclick="compareWithAdd(this)"><label class="sel_box" for="best_c1_00E19B9D737189"> </label>
                </li>
				
				<li>
					<a href="javascript:" onclick="goHouseDetailPage('00021E90523319', '2')" class="cont">
						<strong class="tit_a"><span> 송파헬리오시티 318동</span><em><span class="tag_comm2 m">매매</span>145,000 만원</em></strong>
						<span class="tag_comm3 type2">알짜매물<em>19.04.06</em></span>
						<div class="thumb">
							
						</div>
						<span class="txt">
							<strong>아파트</strong><span class="info_memul"> 방3개 110.17F/84.95㎡ 6층/총35층 <!--318동--></span>
							<em>25p 최저가 급매매  바로계약가능 단지내상가 명품공인</em>
							<p><span class="ico_comm_s location4">위치</span>서울특별시  송파구  가락동</p>
						</span>
					</a>
					<em class="tel">
						<div>
							<p class="name"><i class="ico_class b">B</i>헬리오명품공인중개사무소</p>
							<span><i class="ico_comm_s tel">전화번호</i>02)477-1800</span>							
							<a href="javascript:;" class="btn_type1 small" onclick="fnGoJunHome('F20190118102142')">홈페이지</a>							
							<a href="javascript:;" class="btn_type1 small" onclick="openQuestionMemul('#lp_layout2', '매매^r114^아파트^r114^송파헬리오시티^r114^서울특별시^r114^송파구^r114^가락동', 'F20190118102142', '헬리오명품공인중개사무소', '00021E90523319', '/Default.asp?_c=memul&amp;_m=HouseDetail&amp;mulcode=00021E90523319', '1')">1:1문의</a>
						</div>
					</em>
					<input type="checkbox" id="best_c1_00021E90523319" value="00021E90523319| 송파헬리오시티|매매|145,000" onclick="compareWithAdd(this)"><label class="sel_box" for="best_c1_00021E90523319"> </label>
                </li>
				
				<li>
					<a href="javascript:" onclick="goHouseDetailPage('00D567CAC7ECBB', '2')" class="cont">
						<strong class="tit_a"><span> 장미1차 8동</span><em><span class="tag_comm2 m">매매</span>172,000 만원</em></strong>
						<span class="tag_comm3 type2">알짜매물<em>19.04.06</em></span>
						<div class="thumb">
							<img src="https://image.r114.co.kr/photo_img/L/2019/02/01/76D9679F7C08406685059F878191F946.jpg" alt="">
						</div>
						<span class="txt">
							<strong>아파트</strong><span class="info_memul"> 방5개 152.06/120.79㎡ 중층/총14층 <!--8동--></span>
							<em>46.특올수리.남향.입주가능</em>
							<p><span class="ico_comm_s location4">위치</span>서울특별시  송파구  신천동</p>
						</span>
					</a>
					<em class="tel">
						<div>
							<p class="name"><i class="ico_class b">B</i>제일부동산중개법인알앤유(..</p>
							<span><i class="ico_comm_s tel">전화번호</i>02)422-9800</span>							
							<a href="javascript:;" class="btn_type1 small" onclick="fnGoJunHome('F01181382400029')">홈페이지</a>							
							<a href="javascript:;" class="btn_type1 small" onclick="openQuestionMemul('#lp_layout2', '매매^r114^아파트^r114^장미1차^r114^서울특별시^r114^송파구^r114^신천동', 'F01181382400029', '제일부동산중개법인알앤유(..', '00D567CAC7ECBB', '/Default.asp?_c=memul&amp;_m=HouseDetail&amp;mulcode=00D567CAC7ECBB', '1')">1:1문의</a>
						</div>
					</em>
					<input type="checkbox" id="best_c1_00D567CAC7ECBB" value="00D567CAC7ECBB| 장미1차|매매|172,000" onclick="compareWithAdd(this)"><label class="sel_box" for="best_c1_00D567CAC7ECBB"> </label>
                </li>
				
				<li>
					<a href="javascript:" onclick="goHouseDetailPage('00BECF702458EC', '2')" class="cont">
						<strong class="tit_a"><span> 송파헬리오시티 414동</span><em><span class="tag_comm2 m">매매</span>153,000 만원</em></strong>
						<span class="tag_comm3 type2">알짜매물<em>19.04.06</em></span>
						<div class="thumb">
							<img src="https://image.r114.co.kr/photo_img/L/2019/04/06/F2E4A1FA0DA4448797569BB00658BA26.PNG" alt="">
						</div>
						<span class="txt">
							<strong>아파트</strong><span class="info_memul"> 방3개 107.97A/84.98㎡ 10층/총35층 <!--414동--></span>
							<em>33P  로열동 급매 실제매물 단지내 상가입점명품공인</em>
							<p><span class="ico_comm_s location4">위치</span>서울특별시  송파구  가락동</p>
						</span>
					</a>
					<em class="tel">
						<div>
							<p class="name"><i class="ico_class b">B</i>헬리오명품공인중개사무소</p>
							<span><i class="ico_comm_s tel">전화번호</i>02)477-1800</span>							
							<a href="javascript:;" class="btn_type1 small" onclick="fnGoJunHome('F20190118102142')">홈페이지</a>							
							<a href="javascript:;" class="btn_type1 small" onclick="openQuestionMemul('#lp_layout2', '매매^r114^아파트^r114^송파헬리오시티^r114^서울특별시^r114^송파구^r114^가락동', 'F20190118102142', '헬리오명품공인중개사무소', '00BECF702458EC', '/Default.asp?_c=memul&amp;_m=HouseDetail&amp;mulcode=00BECF702458EC', '1')">1:1문의</a>
						</div>
					</em>
					<input type="checkbox" id="best_c1_00BECF702458EC" value="00BECF702458EC| 송파헬리오시티|매매|153,000" onclick="compareWithAdd(this)"><label class="sel_box" for="best_c1_00BECF702458EC"> </label>
                </li>
				
				<li>
					<a href="javascript:" onclick="goHouseDetailPage('00CFBB06ED2C54', '2')" class="cont">
						<strong class="tit_a"><span> 송파헬리오시티 215동</span><em><span class="tag_comm2 m">매매</span>127,000 만원</em></strong>
						<span class="tag_comm3 type2">알짜매물<em>19.04.06</em></span>
						<div class="thumb">
							<img src="https://image.r114.co.kr/photo_img/L/2019/04/06/7247C3405C064A33BAC4B2A2D267AAAD.PNG" alt="">
						</div>
						<span class="txt">
							<strong>아파트</strong><span class="info_memul"> 방3개 84.1A/59.96㎡ 9층/총35층 <!--215동--></span>
							<em>25p 최저가 급매매  바로계약가능 단지내상가 명품공인</em>
							<p><span class="ico_comm_s location4">위치</span>서울특별시  송파구  가락동</p>
						</span>
					</a>
					<em class="tel">
						<div>
							<p class="name"><i class="ico_class b">B</i>헬리오명품공인중개사무소</p>
							<span><i class="ico_comm_s tel">전화번호</i>02)477-1800</span>							
							<a href="javascript:;" class="btn_type1 small" onclick="fnGoJunHome('F20190118102142')">홈페이지</a>							
							<a href="javascript:;" class="btn_type1 small" onclick="openQuestionMemul('#lp_layout2', '매매^r114^아파트^r114^송파헬리오시티^r114^서울특별시^r114^송파구^r114^가락동', 'F20190118102142', '헬리오명품공인중개사무소', '00CFBB06ED2C54', '/Default.asp?_c=memul&amp;_m=HouseDetail&amp;mulcode=00CFBB06ED2C54', '1')">1:1문의</a>
						</div>
					</em>
					<input type="checkbox" id="best_c1_00CFBB06ED2C54" value="00CFBB06ED2C54| 송파헬리오시티|매매|127,000" onclick="compareWithAdd(this)"><label class="sel_box" for="best_c1_00CFBB06ED2C54"> </label>
                </li>
				
				<li>
					<a href="javascript:" onclick="goHouseDetailPage('001241C87E79A2', '2')" class="cont">
						<strong class="tit_a"><span> 삼성 102동</span><em><span class="tag_comm2 m">매매</span>70,000 만원</em></strong>
						<span class="tag_comm3 type2">알짜매물<em>19.04.05</em></span>
						<div class="thumb">
							
						</div>
						<span class="txt">
							<strong>아파트</strong><span class="info_memul"> 방4개 142.14/114.49㎡ 11층/총18층 <!--102동--></span>
							<em>깨끗, 주인거주, 주세조건, 우수학군</em>
							<p><span class="ico_comm_s location4">위치</span>서울특별시  노원구  중계동</p>
						</span>
					</a>
					<em class="tel">
						<div>
							<p class="name"><i class="ico_class b">B</i>성운공인</p>
							<span><i class="ico_comm_s tel">전화번호</i>02)935-7800</span>							
							<a href="javascript:;" class="btn_type1 small" onclick="fnGoJunHome('F01091392290012')">홈페이지</a>							
							<a href="javascript:;" class="btn_type1 small" onclick="openQuestionMemul('#lp_layout2', '매매^r114^아파트^r114^삼성^r114^서울특별시^r114^노원구^r114^중계동', 'F01091392290012', '성운공인', '001241C87E79A2', '/Default.asp?_c=memul&amp;_m=HouseDetail&amp;mulcode=001241C87E79A2', '1')">1:1문의</a>
						</div>
					</em>
					<input type="checkbox" id="best_c1_001241C87E79A2" value="001241C87E79A2| 삼성|매매|70,000" onclick="compareWithAdd(this)"><label class="sel_box" for="best_c1_001241C87E79A2"> </label>
                </li>
				
				<li>
					<a href="javascript:" onclick="goHouseDetailPage('0043BA5E7F9F94', '2')" class="cont">
						<strong class="tit_a"><span> 주공3단지(고층) 326동</span><em><span class="tag_comm2 m">매매</span>59,500 만원</em></strong>
						<span class="tag_comm3 type2">알짜매물<em>19.04.05</em></span>
						<div class="thumb">
							
						</div>
						<span class="txt">
							<strong>아파트</strong><span class="info_memul"> 방3개 95.34/68.86㎡ 10층/총15층 <!--326동--></span>
							<em>올수리, 정상</em>
							<p><span class="ico_comm_s location4">위치</span>서울특별시  노원구  상계동</p>
						</span>
					</a>
					<em class="tel">
						<div>
							<p class="name"><i class="ico_class b">B</i>성운공인</p>
							<span><i class="ico_comm_s tel">전화번호</i>02)935-7800</span>							
							<a href="javascript:;" class="btn_type1 small" onclick="fnGoJunHome('F01091392290012')">홈페이지</a>							
							<a href="javascript:;" class="btn_type1 small" onclick="openQuestionMemul('#lp_layout2', '매매^r114^아파트^r114^주공3단지(고층)^r114^서울특별시^r114^노원구^r114^상계동', 'F01091392290012', '성운공인', '0043BA5E7F9F94', '/Default.asp?_c=memul&amp;_m=HouseDetail&amp;mulcode=0043BA5E7F9F94', '1')">1:1문의</a>
						</div>
					</em>
					<input type="checkbox" id="best_c1_0043BA5E7F9F94" value="0043BA5E7F9F94| 주공3단지(고층)|매매|59,500" onclick="compareWithAdd(this)"><label class="sel_box" for="best_c1_0043BA5E7F9F94"> </label>
                </li>
				
				<li>
					<a href="javascript:" onclick="goHouseDetailPage('0985E9954AFEE4', '2')" class="cont">
						<strong class="tit_a"><span> 주공6단지 602동</span><em><span class="tag_comm2 w">월세</span>1,000 / 60 만원</em></strong>
						<span class="tag_comm3 type2">알짜매물<em>19.04.05</em></span>
						<div class="thumb">
							
						</div>
						<span class="txt">
							<strong>아파트</strong><span class="info_memul"> 방2개 60.41/44.1㎡ 10층/총15층 <!--602동--></span>
							<em>내부올수리, 즉시입주</em>
							<p><span class="ico_comm_s location4">위치</span>서울특별시  노원구  중계동</p>
						</span>
					</a>
					<em class="tel">
						<div>
							<p class="name"><i class="ico_class b">B</i>성운공인</p>
							<span><i class="ico_comm_s tel">전화번호</i>02)935-7800</span>							
							<a href="javascript:;" class="btn_type1 small" onclick="fnGoJunHome('F01091392290012')">홈페이지</a>							
							<a href="javascript:;" class="btn_type1 small" onclick="openQuestionMemul('#lp_layout2', '월세^r114^아파트^r114^주공6단지^r114^서울특별시^r114^노원구^r114^중계동', 'F01091392290012', '성운공인', '0985E9954AFEE4', '/Default.asp?_c=memul&amp;_m=HouseDetail&amp;mulcode=0985E9954AFEE4', '1')">1:1문의</a>
						</div>
					</em>
					<input type="checkbox" id="best_c1_0985E9954AFEE4" value="0985E9954AFEE4| 주공6단지|월세|1,000 / 60" onclick="compareWithAdd(this)"><label class="sel_box" for="best_c1_0985E9954AFEE4"> </label>
                </li>
				
				<li>
					<a href="javascript:" onclick="goHouseDetailPage('007ED77695CB98', '2')" class="cont">
						<strong class="tit_a"><span> 은빛2단지 204동</span><em><span class="tag_comm2 m">매매</span>22,500 만원</em></strong>
						<span class="tag_comm3 type2">알짜매물<em>19.04.04</em></span>
						<div class="thumb">
							<img src="https://image.r114.co.kr/photo_img/L/2019/01/14/BDD2A60576ED4D139847F86AAD5B91BB.jpg" alt="">
						</div>
						<span class="txt">
							<strong>아파트</strong><span class="info_memul"> 방1개 56.19B/39.7㎡ 1층/총15층 <!--204동--></span>
							<em>전화 02 951 7272   역세권 소형아파트 귀한 몸 되었어요</em>
							<p><span class="ico_comm_s location4">위치</span>서울특별시  노원구  상계동</p>
						</span>
					</a>
					<em class="tel">
						<div>
							<p class="name"><i class="ico_class b">B</i>우성공인중개사사무소</p>
							<span><i class="ico_comm_s tel">전화번호</i>02)951-7272</span>							
							<a href="javascript:;" class="btn_type1 small" onclick="fnGoJunHome('F20140102100540')">홈페이지</a>							
							<a href="javascript:;" class="btn_type1 small" onclick="openQuestionMemul('#lp_layout2', '매매^r114^아파트^r114^은빛2단지^r114^서울특별시^r114^노원구^r114^상계동', 'F20140102100540', '우성공인중개사사무소', '007ED77695CB98', '/Default.asp?_c=memul&amp;_m=HouseDetail&amp;mulcode=007ED77695CB98', '1')">1:1문의</a>
						</div>
					</em>
					<input type="checkbox" id="best_c1_007ED77695CB98" value="007ED77695CB98| 은빛2단지|매매|22,500" onclick="compareWithAdd(this)"><label class="sel_box" for="best_c1_007ED77695CB98"> </label>
                </li>
				
				<li>
					<a href="javascript:" onclick="goHouseDetailPage('007B14E8124042', '2')" class="cont">
						<strong class="tit_a"><span> 장미1차 11동</span><em><span class="tag_comm2 m">매매</span>155,000 만원</em></strong>
						<span class="tag_comm3 type2">알짜매물<em>19.04.04</em></span>
						<div class="thumb">
							<img src="https://image.r114.co.kr/photo_img/L/2019/04/04/A1D76C546E5B48938C3D3A7B85DAE4ED.jpg" alt="">
						</div>
						<span class="txt">
							<strong>아파트</strong><span class="info_memul"> 방4개 128.92/103.57㎡ 중층/총14층 <!--11동--></span>
							<em>39.특올수리.주민선호동.입주가능</em>
							<p><span class="ico_comm_s location4">위치</span>서울특별시  송파구  신천동</p>
						</span>
					</a>
					<em class="tel">
						<div>
							<p class="name"><i class="ico_class b">B</i>제일부동산중개법인알앤유(..</p>
							<span><i class="ico_comm_s tel">전화번호</i>02)422-9800</span>							
							<a href="javascript:;" class="btn_type1 small" onclick="fnGoJunHome('F01181382400029')">홈페이지</a>							
							<a href="javascript:;" class="btn_type1 small" onclick="openQuestionMemul('#lp_layout2', '매매^r114^아파트^r114^장미1차^r114^서울특별시^r114^송파구^r114^신천동', 'F01181382400029', '제일부동산중개법인알앤유(..', '007B14E8124042', '/Default.asp?_c=memul&amp;_m=HouseDetail&amp;mulcode=007B14E8124042', '1')">1:1문의</a>
						</div>
					</em>
					<input type="checkbox" id="best_c1_007B14E8124042" value="007B14E8124042| 장미1차|매매|155,000" onclick="compareWithAdd(this)"><label class="sel_box" for="best_c1_007B14E8124042"> </label>
                </li>
				
				<li>
					<a href="javascript:" onclick="goHouseDetailPage('01F354990AA547', '2')" class="cont">
						<strong class="tit_a"><span> 건영3차 312동</span><em><span class="tag_comm2 j">전세</span>48,000 만원</em></strong>
						<span class="tag_comm3 type2">알짜매물<em>19.04.04</em></span>
						<div class="thumb">
							
						</div>
						<span class="txt">
							<strong>아파트</strong><span class="info_memul"> 방3개 105.77/84.9㎡ 14층/총15층 <!--312동--></span>
							<em>우수학교 근접</em>
							<p><span class="ico_comm_s location4">위치</span>서울특별시  노원구  중계동</p>
						</span>
					</a>
					<em class="tel">
						<div>
							<p class="name"><i class="ico_class b">B</i>성운공인</p>
							<span><i class="ico_comm_s tel">전화번호</i>02)935-7800</span>							
							<a href="javascript:;" class="btn_type1 small" onclick="fnGoJunHome('F01091392290012')">홈페이지</a>							
							<a href="javascript:;" class="btn_type1 small" onclick="openQuestionMemul('#lp_layout2', '전세^r114^아파트^r114^건영3차^r114^서울특별시^r114^노원구^r114^중계동', 'F01091392290012', '성운공인', '01F354990AA547', '/Default.asp?_c=memul&amp;_m=HouseDetail&amp;mulcode=01F354990AA547', '1')">1:1문의</a>
						</div>
					</em>
					<input type="checkbox" id="best_c1_01F354990AA547" value="01F354990AA547| 건영3차|전세|48,000" onclick="compareWithAdd(this)"><label class="sel_box" for="best_c1_01F354990AA547"> </label>
                </li>
				
				<li>
					<a href="javascript:" onclick="goHouseDetailPage('00B0747C0F0BA2', '2')" class="cont">
						<strong class="tit_a"><span> 두산 111동</span><em><span class="tag_comm2 m">매매</span>25,500 만원</em></strong>
						<span class="tag_comm3 type2">알짜매물<em>19.04.04</em></span>
						<div class="thumb">
							<img src="https://image.r114.co.kr/photo_img/L/2016/10/14/CEC0A59647CD49DF89886178DE9676FB.jpg" alt="">
						</div>
						<span class="txt">
							<strong>아파트</strong><span class="info_memul"> 방2개 59.50/41.85㎡ 13층/총15층 <!--111동--></span>
							<em>전화 02 951 7272  Since 1995 고객과 함께 했습니다</em>
							<p><span class="ico_comm_s location4">위치</span>서울특별시  노원구  상계동</p>
						</span>
					</a>
					<em class="tel">
						<div>
							<p class="name"><i class="ico_class b">B</i>우성공인중개사사무소</p>
							<span><i class="ico_comm_s tel">전화번호</i>02)951-7272</span>							
							<a href="javascript:;" class="btn_type1 small" onclick="fnGoJunHome('F20140102100540')">홈페이지</a>							
							<a href="javascript:;" class="btn_type1 small" onclick="openQuestionMemul('#lp_layout2', '매매^r114^아파트^r114^두산^r114^서울특별시^r114^노원구^r114^상계동', 'F20140102100540', '우성공인중개사사무소', '00B0747C0F0BA2', '/Default.asp?_c=memul&amp;_m=HouseDetail&amp;mulcode=00B0747C0F0BA2', '1')">1:1문의</a>
						</div>
					</em>
					<input type="checkbox" id="best_c1_00B0747C0F0BA2" value="00B0747C0F0BA2| 두산|매매|25,500" onclick="compareWithAdd(this)"><label class="sel_box" for="best_c1_00B0747C0F0BA2"> </label>
                </li>
				

				

				<!-- 중개사무소 문의 팝업  추가 -->
				<div id="lp_layout_questionToAgent">
				</div>
				<!-- //중개사무소 문의 팝업 추가 -->
</ul>

			<div class="setMarketPrice" style="display: none;"></div><!-- 시세통계 class :setMarketPrice -->
			<div class="setAreaDetail" style="margin-top: 20px; display: none;"></div><!-- 지역소식 class setAreaDetail 김현수-->
			<div class="setOfficeList" style="margin-top: 0px; display: none;"></div><!--  중개사무소 class:list_office -->

			<div class="paging pagingBasic"><strong><span class="skip">현재페이지</span>1</strong><a href="javascript:goPage(2, 1);">2</a><a href="javascript:goPage(3, 1);">3</a><a href="javascript:goPage(4, 1);">4</a><a href="javascript:goPage(5, 1);">5</a></div>
			<div class="sidoPlus">
			<!-- LOOP START TMP_PersonArea -->
			<h4 class="h4_type4">개인 직거래 매물</h4>
			<ul class="list_thumb_type5 type2">
				
				<li class=""><!-- loop | 테두리 : type1, bg : type2, 테두리+bg : type3 -->
					<a href="javascript:" onclick="goDirectDealDetailPage('77288', 'P')">
						<div class="thumb">
							<img src="https://image.r114.co.kr/directimages/2016/05/7C0426FF307E3F2.JPG" alt="">
							<span class="tag_comm " style="display: none"></span>
						</div>
						<span class="s_type">
							<span class="tag_comm2 type1">매매</span>
							전원농가주택<br>
							35,000 만원
						</span>
						<strong class="tit">경주시 내남면 700㎡</strong>
						<p class="desc">대지700㎡/건평99.41㎡(데크와창고제외)방3,화장실2/의   전통골기와퓨전한옥으로 남산이 한눈에 보이고     옆으로는 강이 흐르는 탁트인 조망을 자랑합니다.
/남향인데다     나무를 조금만 때도 쩔쩔 끓는 구들방이 있어서   난방비걱정이 없으며, 데크가 네군데나 있음
/집주인이 손수 가꾼   개성있는 정원에는   철마다 아름다운 꽃들이 만발합니다.
/창고를 개조한     까페분위기 공간도 있음
/CCTV 설치되어있음
/독채펜션으로 사용하면 고소득 얻을수있음(성수기 한달 천만원 이상)
/방문 전에 꼭 연락바라며    가격조정 가능 

/사기꾼은 경험상 단번에 알아내는 재주가 있으니 시간낭비하지않도록!!</p>
					</a>
				</li>
				
				<li class="type3"><!-- loop | 테두리 : type1, bg : type2, 테두리+bg : type3 -->
					<a href="javascript:" onclick="goDirectDealDetailPage('77749', 'P')">
						<div class="thumb">
							<img src="https://image.r114.co.kr/directimages/2019/03/546CEB8E5A2A4619AB578577DD76FE32.JPEG" alt="">
							<span class="tag_comm type4" style="">급매물</span>
						</div>
						<span class="s_type">
							<span class="tag_comm2 type1">매매</span>
							오피스텔<br>
							10,690 만원
						</span>
						<strong class="tit">속초시 교동 55㎡</strong>
						<p class="desc">블루핀 오피스텔: 전용면적 32.83m2, 213호 - 10,690만원
블루핀 도시형 생활주택: 전용면적 15.07m2, 1204호, 1302호 - 9,590만원
많은 문의 바랍니다.</p>
					</a>
				</li>
				
				<li class="type3"><!-- loop | 테두리 : type1, bg : type2, 테두리+bg : type3 -->
					<a href="javascript:" onclick="goDirectDealDetailPage('77738', 'P')">
						<div class="thumb">
							<img src="https://image.r114.co.kr/directimages/2019/03/6E7DDFF4104543098E8B27DEE0021438.JPG" alt="">
							<span class="tag_comm type4" style="">급매물</span>
						</div>
						<span class="s_type">
							<span class="tag_comm2 type1">매매</span>
							창고<br>
							350,000 만원
						</span>
						<strong class="tit">평택시 신대동 2,952㎡</strong>
						<p class="desc"></p>
					</a>
				</li>
				
				<li class="type3"><!-- loop | 테두리 : type1, bg : type2, 테두리+bg : type3 -->
					<a href="javascript:" onclick="goDirectDealDetailPage('76869', 'P')">
						<div class="thumb">
							<img src="https://image.r114.co.kr/directimages/2010/06/result_2010_5_0_23_34_46_684_1.jpg" alt="">
							<span class="tag_comm type9" style="">가격저렴</span>
						</div>
						<span class="s_type">
							<span class="tag_comm2 type1">매매</span>
							토지<br>
							10,000 만원
						</span>
						<strong class="tit">천안시 안서동 325㎡</strong>
						<p class="desc">* 현재는 지목이 임야로 되어있지만, 산지전용허가, 개발행위변경허가(토질변경허가) 및 건축허가를 득한 상태(건축허가번호 : 2007-건축과-신축허가-450)이므로, 집을 지으면 "대지"로 전환됩니다.
* 집을 지으려고 7년 전에 1억 2천만원에 구입했으나 사정이 여의치 않아 오히려 구입한 가격보다 2천만원 낮은 가격에 매물로 내놓게 되었습니다.
* 제가 구입할 당시(5년 전) 주변 주택들의 토지가격은 평당 200~300만원쯤이라고 했습니다.
* 융자금은 승계가 되지 않습니다</p>
					</a>
				</li>
				

				
			</ul>

			<ul class="list_basic type2" id="list_person">			
			<li>
				<a href="javascript:" onclick="goDirectDealDetailPage('76869', 'P')">
					<span class="tit"><span class="tag_comm2 type1">매매</span></span>
					<span class="thumb"><img src="https://image.r114.co.kr/directimages/2010/06/result_2010_5_0_23_34_46_684_1.jpg" alt=""></span>
					<span class="s_type">토지<br><em>10,000 만원</em></span>
					<div class="info type2">
						<span class="loc">천안시 안서동 325㎡ </span>
						<p class="desc">* 현재는 지목이 임야로 되어있지만, 산지전용허가, 개발행위변경허가(토질변경허가) 및 건축허가를 득한 상태(건축허가번호 : 2007-건축과-신축허가-450)이므로, 집을 지으면 "대지"로 전환됩니다.
* 집을 지으려고 7년 전에 1억 2천만원에 구입했으나 사정이 여의치 않아 오히려 구입한 가격보다 2천만원 낮은 가격에 매물로 내놓게 되었습니다.
* 제가 구입할 당시(5년 전) 주변 주택들의 토지가격은 평당 200~300만원쯤이라고 했습니다.
* 융자금은 승계가 되지 않습니다</p>
					</div>
				</a>
			</li>
			
			<li>
				<a href="javascript:" onclick="goDirectDealDetailPage('77093', 'P')">
					<span class="tit"><span class="tag_comm2 type1">매매</span></span>
					<span class="thumb"><img src="https://image.r114.co.kr/directimages/2018/05/606A5001B96D443D885B1B1CFF65E220.jpg" alt=""></span>
					<span class="s_type">전원농가주택<br><em>33,000 만원</em></span>
					<div class="info type2">
						<span class="loc">평창군 방림면 96㎡ </span>
						<p class="desc">* 노출콘크리트조의 모던하고 심플한 전원주택으로 배산임수를 갖춘 토지1,603m2[485평]에 건평96m2[29평]  내부 천정은 원목으로 마감했고 벽면 일부는  황토벽돌로 시공하여 건강에 좋은 자연친화적으로 건축하였으며, 주택 뒤로는 병풍같은 산이 감싸고 앞에는 남병산[1,150m]과 평창강이 흐르며 우측으로는 울창하고 멋진 소나무숲과 좌측 멀리는 가리왕산을 전망으로  평온하고 아름다운  자연환경입니다.* 동남향에 장방형 건물로 채광을 많이 받는 이상적인 건물에 정성껏 가꾼 주택입니다. 난방은 심야전기,주방은 전기쿡탑, 한샘가구로 갖추었습니다. * 내부구조: 방3/ 욕실2/ 거실2/ 하나는 주방옆의 티룸으로 사용  * 부속건물 : 보일러실겸 창고, 물탱크창고, 비가림 하우스, 과실수 20여 그루, 연못 등. . * 강릉선 ktx평창역사에서 차로 15분 거리 위치함.</p>
					</div>
				</a>
			</li>
			
			<li>
				<a href="javascript:" onclick="goDirectDealDetailPage('77789', 'P')">
					<span class="tit"><span class="tag_comm2 type1">매매</span></span>
					<span class="thumb"><img src="https://image.r114.co.kr/directimages/2019/04/E3AE5F83866D45AF9E894D7FBD593FCE.jpg" alt=""></span>
					<span class="s_type">단독다가구<br><em>130,000 만원</em></span>
					<div class="info type2">
						<span class="loc">성북구 성북동 281㎡ </span>
						<p class="desc">1964년 성북동 개발시 축조된 튼튼한 언덕위의 집.  정원에는 오래된 정원수 3그루가 있고 개나리, 진달래, 철쭉, 장미, 향나무가 만발, 부모님이 연로하시어 할수없이 매각,  모두 수리되어 방수, 보일러, 도배, 마루, 난방 문제없음.  원매자에 따라서 외부칠이나 내부구조 변경가능. 오래된 자개장과 침대 등 모두 인수가능.  2층만 세를 줄 수도 있고 새로 다세대주택을 건설하여 분양할 수도 있음.  계단이 있어서 조용하며 주차장은 골목입구 유료주차장 사용하여야 함.    </p>
					</div>
				</a>
			</li>
			
			<li>
				<a href="javascript:" onclick="goDirectDealDetailPage('77717', 'P')">
					<span class="tit"><span class="tag_comm2 type1">매매</span></span>
					<span class="thumb"></span>
					<span class="s_type">토지<br><em>32,000 만원</em></span>
					<div class="info type2">
						<span class="loc">홍천군 서면 1,928㎡ </span>
						<p class="desc">남춘천 IC에서 5분 홍천강 300미터 대명비발디 7분거리 팔봉산 1봉뒤 대명비발디 가는길목 동 남향 전용허가 받아 토목공사 완료 된 부지로 즉시 건축물 시공가능 편션부지로 최고상권 최고위치 또는 전원주택부지로 A급 본 부지는 양 옆 뒤 편이 팔봉산 줄기 야산이 감싸고 있씀  (문의 010-3036-8331)</p>
					</div>
				</a>
			</li>
			
			<li>
				<a href="javascript:" onclick="goDirectDealDetailPage('77776', 'P')">
					<span class="tit"><span class="tag_comm2 type1">매매</span></span>
					<span class="thumb"><img src="https://image.r114.co.kr/directimages/2019/03/74B8CB6AEEE144D4A03E6319D22D860E.jpg" alt=""></span>
					<span class="s_type">연립빌라다세대<br><em>12,000 만원</em></span>
					<div class="info type2">
						<span class="loc">안산시 와동 99㎡ </span>
						<p class="desc">-깨끗하게 올 수리된  집.
-각방 신형 개별에어컨 설치(3개소),  화장실 비데설치.
-넓은 발코니가 2개소.
-남동향 햇볕이 잘 드는 집.
-옥상 및 옥상창고  단독 사용 가능</p>
					</div>
				</a>
			</li>
							
</ul>

			<div class="paging pagingPerson"><strong><span class="skip">현재페이지</span>1</strong><a href="javascript:goPage(2, 10);">2</a><a href="javascript:goPage(3, 10);">3</a></div>
			<!-- LOOP END TMP_PersonArea -->

			<!-- LOOP START TMP_CpompanyArea -->
			<h4 class="h4_type4">기업보유 부동산 매물</h4>
			<ul class="list_thumb_type5 type2">
				
				<li>
					<a href="javascript:" onclick="goDirectDealDetailPage('994', 'C')">
						<div class="thumb">
							<img src="https://image.r114.co.kr/support/directbank/2019/02/FA77A7449DEF462EA6D8D10BA06AE3FA.JPG" alt="">
						</div>
						<span class="s_type">
							<span class="tag_comm2 type1">매매</span>
							토지<br>
							1,103,958 ~ 2,000,000 만원
						</span>
						<strong class="tit">경주시 천북면 994㎡</strong>
						<p class="desc">자산관리공사 온비드&amp;#40;www.onbid.co.kr&amp;#41;에서 &amp;#34한국마사회 경주부지&amp;#34를 검색하여 공고문을 확인하시기 바랍니다.</p>
					</a>
				</li>
				
				<li>
					<a href="javascript:" onclick="goDirectDealDetailPage('996', 'C')">
						<div class="thumb">
							<img src="https://image.r114.co.kr/support/directbank/2019/02/1전경가로_2.jpg" alt="">
						</div>
						<span class="s_type">
							<span class="tag_comm2 type1">매매</span>
							빌딩<br>
							200,000 만원
						</span>
						<strong class="tit">남양주시 진접읍 996㎡</strong>
						<p class="desc">현재 어린이집으로 이용중

다른 용도로 사용가능하며 세부사항은 별도협의 부탁드립니다</p>
					</a>
				</li>
				
				<li>
					<a href="javascript:" onclick="goDirectDealDetailPage('970', 'C')">
						<div class="thumb">
							<img src="https://image.r114.co.kr/support/directbank/2018/11/6922887892D14599B8C3369E2F44D429.jpg" alt="">
						</div>
						<span class="s_type">
							<span class="tag_comm2 type1">매매</span>
							공장<br>
							325,200 만원
						</span>
						<strong class="tit">진천군 덕산면 970㎡</strong>
						<p class="desc">일반 제조 공장 및 창고 완비. 위험물 제조를 허가받은 공장(약 50만리터 탱크시설 완비)
지방도 2차선 직근접위치. 중부고속도로 6km 이내
임대 보증금액 월세는 6-22번지에 한함</p>
					</a>
				</li>
				
				<li>
					<a href="javascript:" onclick="goDirectDealDetailPage('982', 'C')">
						<div class="thumb">
							<img src="https://image.r114.co.kr/support/directbank/2019/02/스카이뷰.jpg" alt="">
						</div>
						<span class="s_type">
							<span class="tag_comm2 type1">매매</span>
							토지<br>
							평당 230만원~250만원
						</span>
						<strong class="tit">전주시 만성동 982㎡</strong>
						<p class="desc">[ 세부 토지 내역 ]
236-6번지 (해당토지 8차선 도로 인접)
산37-1번지
293-3번지
294번지
236-2번지 (48%지분)</p>
					</a>
				</li>
				

				
			</ul>

			<ul class="list_basic type2" id="list_company">			
				<li>
					<a href="javascript:" onclick="goDirectDealDetailPage('994', 'C')">
						<span class="tit"><span class="tag_comm2 type1">매매</span><br><span class="tag_comm2 type3">VIP</span></span>
						<span class="thumb"><img src="https://image.r114.co.kr/support/directbank/2019/02/FA77A7449DEF462EA6D8D10BA06AE3FA.JPG" alt=""></span>
						<span class="s_type">토지<br><em>1,103,958 ~ 2,000,000 만원</em></span>
						<div class="info">
							<span class="loc">경상북도 경주시 천북면 1㎡</span>
							<p class="desc">토지</p>
						</div>
						<span class="company">한국마사회</span>
					</a>
				</li>
			
				<li>
					<a href="javascript:" onclick="goDirectDealDetailPage('996', 'C')">
						<span class="tit"><span class="tag_comm2 type1">매매</span><br><span class="tag_comm2 type4">기업</span></span>
						<span class="thumb"><img src="https://image.r114.co.kr/support/directbank/2019/02/1전경가로_2.jpg" alt=""></span>
						<span class="s_type">빌딩<br><em>200,000 만원</em></span>
						<div class="info">
							<span class="loc">경기도 남양주시 진접읍 2㎡</span>
							<p class="desc">빌딩</p>
						</div>
						<span class="company">미래에셋생명보험(주)</span>
					</a>
				</li>
			
				<li>
					<a href="javascript:" onclick="goDirectDealDetailPage('970', 'C')">
						<span class="tit"><span class="tag_comm2 type1">매매</span><br><span class="tag_comm2 type4">기업</span></span>
						<span class="thumb"><img src="https://image.r114.co.kr/support/directbank/2018/11/6922887892D14599B8C3369E2F44D429.jpg" alt=""></span>
						<span class="s_type">공장<br><em>325,200 만원</em></span>
						<div class="info">
							<span class="loc">충청북도 진천군 덕산면 3㎡</span>
							<p class="desc">공장</p>
						</div>
						<span class="company">두원제관공업(주)</span>
					</a>
				</li>
			
				<li>
					<a href="javascript:" onclick="goDirectDealDetailPage('984', 'C')">
						<span class="tit"><span class="tag_comm2 type1">매매</span><br><span class="tag_comm2 type4">기업</span></span>
						<span class="thumb"><img src="" alt="" style="display: none;"></span>
						<span class="s_type">토지<br><em>180,000 만원</em></span>
						<div class="info">
							<span class="loc">전라북도 익산시 왕궁면 4㎡</span>
							<p class="desc">토지</p>
						</div>
						<span class="company">미래에셋대우주식회사</span>
					</a>
				</li>
			
				<li>
					<a href="javascript:" onclick="goDirectDealDetailPage('983', 'C')">
						<span class="tit"><span class="tag_comm2 type1">매매</span><br><span class="tag_comm2 type4">기업</span></span>
						<span class="thumb"><img src="" alt="" style="display: none;"></span>
						<span class="s_type">토지<br><em>평당 110만원</em></span>
						<div class="info">
							<span class="loc">전라북도 전주시 평화동1가 5㎡</span>
							<p class="desc">토지</p>
						</div>
						<span class="company">미래에셋대우주식회사</span>
					</a>
				</li>
			
</ul>

			<div class="paging pagingCompany"><strong><span class="skip">현재페이지</span>1</strong><a href="javascript:goPage(2, 11);">2</a><a href="javascript:goPage(3, 11);">3</a><a href="javascript:goPage(4, 11);">4</a><a href="javascript:goPage(5, 11);">5</a><a href="javascript:goPage(6, 11);">6</a><a href="javascript:goPage(7, 11);">7</a><a href="javascript:goPage(8, 11);">8</a><a href="javascript:goPage(9, 11);">9</a><a href="javascript:goPage(10, 11);">10</a><a href="javascript:next_page(11);"><span class="ico_comm_s next_10">다음 10페이지</span></a></div>
			<!-- LOOP END TMP_CpompanyArea -->
</div>
			
			<!-- 매물 하단 광고 -->
			<div class="ad_bottom" id="divMemulBottom" style=""><div class="bn_iframe"><iframe src="/?_c=memul&amp;_m=memulRight&amp;_a=MemulBottomAdvertise&amp;adType=total" scrolling="no" marginheight="0" marginwidth="0" frameborder="0" width="100%" height="280px" style="display:block"></iframe></div></div>
			<!--// 매물 하단 광고 -->
		</div>
		<!-- 컨텐츠 끝 -->

		<div class="right_compare">
			<div class="compare_wrap memulCompare" style="display: none;">
				<ul><li><div class="no_data">비교하실 매물을 선택해주세요</div></li></ul>
				<div class="clearfix">
				<button class="btn_compare fl" id="cmdMemulCompare">매물 비교하기</button>
				<button onclick="compareWithBtn();" class="btn_type7 fr">닫기</button>
				</div>
			</div>
		</div>
		<div class="right_compare">
			<div class="compare_wrap marketPriceCompare" style="display: none;">
				<ul></ul>
				<div class="clearfix">
					<button class="btn_compare fl" id="cmdSiseCompare">시세 비교하기</button>
					<a href="javascript:;" onclick="fn_siseBigyoReset()" class="btn_type7 fr">닫기</a>
				</div>
			</div>
		</div>

		<!-- 라이트 시작 -->
		<div class="right_wrap" id="divMemulRight">
			<div class="right_inner_wrap" id="divMemulRight01">		<div></div>
</div>
			<div class="right_inner_wrap" id="divMemulRight02"><div class="bn_iframe" id="ad_side_rigth1"><iframe src="/?_c=memul&amp;_m=memulRight&amp;_a=MemulSubAdvertise" scrolling="no" marginheight="0" marginwidth="0" frameborder="0" width="100%" height="280px" style="display:block"></iframe></div></div>
			<div class="right_inner_wrap" id="divMemulRight03"><div class="bx_gray" id="ad_side_right2"><iframe src="/?_c=memul&amp;_m=memulRight&amp;_a=MemulSubAdvertise2&amp;adType=total" scrolling="no" marginheight="0" marginwidth="0" frameborder="0" width="100%" height="218px" style="margin:0;border:0;padding-top:5px"></iframe></div></div>
			<div class="right_inner_wrap" id="divMemulRight04">
		<!-- 광고 
		<div class="bn_iframe" id="ad_side_rigth1">
		<iframe src="/?_c=memul&_m=memulRight&_a=MemulSubAdvertise" scrolling="no" marginheight="0" marginwidth="0" frameborder="0" width="100%" height="280px" style="display:block"></iframe>
		</div>
		// 광고 -->

		<!-- 광고 
		<div class="bx_gray" id="ad_side_right2">
		<iframe src="/?_c=memul&_m=memulRight&_a=MemulSubAdvertise2&adType=sale" scrolling="no" frameborder="0" width="100%" height="218px" style="margin:0;border:0;padding-top:5px"></iframe>
		</div>
		// 광고 -->

        <!-- 공인중개사 현장이야기 -->
        <!-- LOOP START TMP_row_boardOfficeBlank -->
         <div class="bx_gray member_office_info">
            <div class="inner">
                <div class="title_wrap">
                    <strong class="tit_b">공인중개사 현장이야기</strong>
                </div>
                <div class="thumb"><a href="javascript:" onclick="goCommunityBoardDetailPage(5547)"><img src="https://image.r114.co.kr/brokersimages/2017/02/F20090826100934_photo03_non.jpg" border="0"></a></div>
                <div class="title">
                    <a href="javascript:" onclick="goCommunityBoardDetailPage(5547)">
                    <em>[서울특별시 강동구]</em>
                    <strong>둔촌주공 7월 종부세 권고안 대책등 거래실종 관망분위기 지속되고 있다.</strong>
                    </a>
                </div>
                <p class="txt"><a href="javascript:" onclick="goCommunityBoardDetailPage(5547)">
&lt;&lt;둔촌주공 매매동향&gt;&gt; 

둔촌주공 7월 첫주가 시작되었다. 정부의 보유세 인상 ...</a></p>
                <em class="writer"><i class="ico_class c">C</i><strong>금탑공인중개사사무소</strong></em>
                <a href="javascript:" class="more_type1" onclick="goCommunityBoard('서울특별시', '', '');">더보기 <span class="ico_comm_s more1"></span></a>
            </div>
        </div>
        <!-- LOOP END TMP_row_boardOfficeBlank -->
        <!-- // 공인중개사 현장이야기 -->

        <!-- LOOP START TMP_row_recommendOfficeBlank -->
        <div class="bx_gray">
			<!-- 부동산114가 추천하는 지역 중개회원 -->
			<div class="inner mem">
				<h4 class="h4_type2"><span class="fc_blue">부동산114가 추천하는</span><br>서울특별시 지역 중개회원</h4>
                <div class="slide_recommendOffice">
	                <div class="bx-wrapper" style="max-width: 100%;"><div class="bx-viewport" aria-live="polite" style="width: 100%; overflow: hidden; position: relative; height: 63px;"><ul style="width: 294215%; position: relative; transition-duration: 0s; transform: translate3d(-210px, 0px, 0px);"><li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" class="bx-clone" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/443-1177/')">황금공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)443-1177</span></li>
			                    <li><strong>위치</strong><span>장지동 854</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="false">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/6979200/')">우장산대야공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2697-9200</span></li>
			                    <li><strong>위치</strong><span>화곡동 1159-1</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/027963200/')">용산재개발공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02-794-0036</span></li>
			                    <li><strong>위치</strong><span>한강로2가 255-6</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/W/5814900/')">일번지공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)581-4900</span></li>
			                    <li><strong>위치</strong><span>서초동 1487-132</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/hanyang8778/')">한양공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)583-8778</span></li>
			                    <li><strong>위치</strong><span>방배동 907-9</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/028789800/')">우진공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)878-9800</span></li>
			                    <li><strong>위치</strong><span>봉천동 37-2</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/0264650772/')">강동더굿공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)6465-0772</span></li>
			                    <li><strong>위치</strong><span>천호동 167-25</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/R/가양하나로/')">가양하나로공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2658-4949</span></li>
			                    <li><strong>위치</strong><span>가양동 1490</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/20631004/')">오성공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)3663-4114</span></li>
			                    <li><strong>위치</strong><span>마곡동 774-9</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/26478400/')">대지공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2647-8989</span></li>
			                    <li><strong>위치</strong><span>목동 912</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/5421331/')">세영공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)542-1331</span></li>
			                    <li><strong>위치</strong><span>여의도동 61</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/156657930/')">가원공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>010-5810-0348</span></li>
			                    <li><strong>위치</strong><span>마곡동 794-1</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/5335115/')">반포자이광성공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)533-5115</span></li>
			                    <li><strong>위치</strong><span>반포동 20-45</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/32882300/')">대치삼성공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)3288-2300</span></li>
			                    <li><strong>위치</strong><span>대치동 1014-3</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/S/26449992/')">한진공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2644-9992</span></li>
			                    <li><strong>위치</strong><span>목동 904</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/R/태인/')">태인공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)412-6200</span></li>
			                    <li><strong>위치</strong><span>방이동 217</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/S/4244260/')">제일한솔공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)418-3070</span></li>
			                    <li><strong>위치</strong><span>잠실동 27-6</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/9836688/')">캐슬부동산공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)983-6688</span></li>
			                    <li><strong>위치</strong><span>길음동 518-16</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/22374114/')">OK공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2237-4114</span></li>
			                    <li><strong>위치</strong><span>하왕십리동 339-67</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/26059200/')">양지공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2605-1235</span></li>
			                    <li><strong>위치</strong><span>화곡동 1159-1</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/2601-2829/')">114공인중개사</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2601-2829</span></li>
			                    <li><strong>위치</strong><span>신정동 1194-3</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/4624400/')">대성부동산</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)462-4400</span></li>
			                    <li><strong>위치</strong><span>성수동2가 320-1</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/V/1235/')">현대공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2643-1235</span></li>
			                    <li><strong>위치</strong><span>목동 747-11</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/tthu2/')">조은집공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2294-4242</span></li>
			                    <li><strong>위치</strong><span>하왕십리동 1070</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/S/도화고려부동산/')">골드공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)420-9800</span></li>
			                    <li><strong>위치</strong><span>석촌동 240-2</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/U/9181400/')">에덴(단지내)공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)918-1400</span></li>
			                    <li><strong>위치</strong><span>하월곡동 222</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/26154941/')">하늘공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2615-4941</span></li>
			                    <li><strong>위치</strong><span>온수동 61-1</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/W/028887738/')">스카이공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)878-8738</span></li>
			                    <li><strong>위치</strong><span>봉천동 14-9</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/S/목동삼익공인/')">삼익공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2648-8877</span></li>
			                    <li><strong>위치</strong><span>목동 404-61</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/R/가양세종/')">세종공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2659-4500</span></li>
			                    <li><strong>위치</strong><span>가양동 1460</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/gana4411555/')">가나공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)4411-555</span></li>
			                    <li><strong>위치</strong><span>암사동 400-5</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/S/ace3700/')">에이스공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)816-3700</span></li>
			                    <li><strong>위치</strong><span>대방동 375-39</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/3427-6006/')">오렌지공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)3427-6006</span></li>
			                    <li><strong>위치</strong><span>상일동 194</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/bang/')">신바람공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2292-0005</span></li>
			                    <li><strong>위치</strong><span>하왕십리동 821</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/02-595-1616/')">부동산114 대지공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)595-1616</span></li>
			                    <li><strong>위치</strong><span>잠원동 69-23</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/025551119/')">붐플러스공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)555-1119</span></li>
			                    <li><strong>위치</strong><span>대치동 941-16</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/4128811/')">153부동산공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)412-8811</span></li>
			                    <li><strong>위치</strong><span>석촌동 252-5</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/794-1235/')">중앙드림랜드공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)794-1235</span></li>
			                    <li><strong>위치</strong><span>이촌동 300-26</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/0226544981/')">송학공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2654-4981</span></li>
			                    <li><strong>위치</strong><span>목동 901</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class b">B</i><a href="javascript:" onclick="openWindow('http://www.r114.net/S/444-9258/')">세종부동산</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)444-9258</span></li>
			                    <li><strong>위치</strong><span>자양동 648-20</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/U/34488100/')">릿츠공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)3448-8100</span></li>
			                    <li><strong>위치</strong><span>압구정동 664-7</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/024234700/')">다인공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)423-4700</span></li>
			                    <li><strong>위치</strong><span>가락동 479</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/114doosan/')">두산공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>1577-9183</span></li>
			                    <li><strong>위치</strong><span>등촌동 639-8</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/5334009/')">황금(반포래미안점)공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)533-4009</span></li>
			                    <li><strong>위치</strong><span>반포동 18-3</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/01075731626/')">강남공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)552-5535</span></li>
			                    <li><strong>위치</strong><span>역삼동 773-2</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/01099204306/')">풀잎부동산공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>010-3864-6982</span></li>
			                    <li><strong>위치</strong><span>목동 318-222</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/V/22561500/')">부동산114금탑공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2256-1500</span></li>
			                    <li><strong>위치</strong><span>신당동 844</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/4128909/')">코리아공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)412-8909</span></li>
			                    <li><strong>위치</strong><span>방이동 136-8</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/S/durbo/')">더보공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)574-7588</span></li>
			                    <li><strong>위치</strong><span>도곡동 895-4</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/V/7367333/')">에이스공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)736-7333</span></li>
			                    <li><strong>위치</strong><span>내수동 71</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/34489053/')">에이블리얼티부동산중개법인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)3448-9053</span></li>
			                    <li><strong>위치</strong><span>청담동 90-3</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/305-4585/')">우리공인(이안상암@)</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)305-4585</span></li>
			                    <li><strong>위치</strong><span>성산동 591-1</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/S/5370014/')">굿모닝공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)537-0014</span></li>
			                    <li><strong>위치</strong><span>잠원동 69-1</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/S/서울사/')">서울부동산중개사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)426-9922</span></li>
			                    <li><strong>위치</strong><span>상일동 121</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/01045694980/')">청담GS자이공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)549-8994</span></li>
			                    <li><strong>위치</strong><span>청담동 130</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/S/1900/')">부자그라시움공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)3013-1900</span></li>
			                    <li><strong>위치</strong><span>고덕동 256-5</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/S/대치래미안공인/')">래미안(단지내)공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)562-7744</span></li>
			                    <li><strong>위치</strong><span>대치동 1014-3</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/V/5540123/')">부동산뉴스공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)554-0123</span></li>
			                    <li><strong>위치</strong><span>대치동 66</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/01033223313/')">쌍용공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>010)3322-3313</span></li>
			                    <li><strong>위치</strong><span>삼성동 117</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/0226904489/')">두꺼비공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2690-4489</span></li>
			                    <li><strong>위치</strong><span>화곡동 1034-3</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/029168600/')">양지공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)916-8600</span></li>
			                    <li><strong>위치</strong><span>길음동 1279</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/022158989/')">미래공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)915-8989</span></li>
			                    <li><strong>위치</strong><span>길음동 1281-6</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/sdfsaaaa/')">모범부동산</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)783-1441</span></li>
			                    <li><strong>위치</strong><span>여의도동 54-2</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/8255989/')">골드공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)825-5989</span></li>
			                    <li><strong>위치</strong><span>대방동 410-11</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/26024959/')">리더스공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2602-4959</span></li>
			                    <li><strong>위치</strong><span>화곡동 342-49</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/02-598-5766/')">교대프라자공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)598-5766</span></li>
			                    <li><strong>위치</strong><span>서초동 1658-22</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/mia114/')">한길공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)984-3114</span></li>
			                    <li><strong>위치</strong><span>미아동 812</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/W/3534488/')">열매공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)353-4488</span></li>
			                    <li><strong>위치</strong><span>녹번동 115-25</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/LK00/')">주 엘케이부동산중개법인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)538-1208</span></li>
			                    <li><strong>위치</strong><span>논현동 253-8</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/woori0003/')">열린공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)981-0700</span></li>
			                    <li><strong>위치</strong><span>미아동 484-1</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/banpodonga/')">반포자이동아공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)592-9494</span></li>
			                    <li><strong>위치</strong><span>반포동 20-45</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/W/023330894/')">팔구사공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)333-0894</span></li>
			                    <li><strong>위치</strong><span>동교동 205-3</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/0312442325/')">성원주택 공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>010)5564-0651</span></li>
			                    <li><strong>위치</strong><span>신림동 1487-10</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/U/60123000/')">서울숲힐스테이트공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)466-3400</span></li>
			                    <li><strong>위치</strong><span>성수동1가 714</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/S/7173399/')">부동산114삼성공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)717-3399</span></li>
			                    <li><strong>위치</strong><span>산천동 202</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/sol5993334/')">단지내솔공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)599-3334</span></li>
			                    <li><strong>위치</strong><span>반포동 20-45</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/V/64059802/')">삼성부동산공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)545-6365</span></li>
			                    <li><strong>위치</strong><span>삼성동 58-6</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/chung2/')">웰컴공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2234-6868</span></li>
			                    <li><strong>위치</strong><span>하왕십리동 1066</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/028888549/')">정진공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)887-5959</span></li>
			                    <li><strong>위치</strong><span>봉천동 930-1</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/26020025/')">아이파크공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2602-0025</span></li>
			                    <li><strong>위치</strong><span>화곡동 1159-1</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/024247766/')">럭키공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)424-7766</span></li>
			                    <li><strong>위치</strong><span>잠실동 22-6</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/02264722888/')">진미공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2647-2288</span></li>
			                    <li><strong>위치</strong><span>목동 912</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/W/63268867/')">(주)케이에스부동산중개법인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)539-7666</span></li>
			                    <li><strong>위치</strong><span>역삼동 774-45</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/5122406/')">(주)제이에스부동산중개법인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)512-2406</span></li>
			                    <li><strong>위치</strong><span>대치동 1001</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/S/양천은행공인/')">은행공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2646-8088</span></li>
			                    <li><strong>위치</strong><span>신정동 311</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/foaldksqq/')">강변공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)536-5555</span></li>
			                    <li><strong>위치</strong><span>잠원동 53</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/0269685949/')">자이공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)6968-5949</span></li>
			                    <li><strong>위치</strong><span>가양동 1498</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/028088800/')">광성공인중개사</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)808-8800</span></li>
			                    <li><strong>위치</strong><span>시흥동 869-26</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/556-3212/')">디애플공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)556-3212</span></li>
			                    <li><strong>위치</strong><span>논현동 10-26</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/2299-6800/')">그린공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2299-6800</span></li>
			                    <li><strong>위치</strong><span>하왕십리동 242-167</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/w-villa/')">문민부동산</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)987-8932</span></li>
			                    <li><strong>위치</strong><span>번동 446-13</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/js707/')">JS공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)5555-707</span></li>
			                    <li><strong>위치</strong><span>역삼동 735-11</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/R/02-389-8949/')">행운공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)389-8949</span></li>
			                    <li><strong>위치</strong><span>대조동 199-16</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/V/5333007/')">서리플공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)583-9800</span></li>
			                    <li><strong>위치</strong><span>방배동 908-32</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/V/5722131/')">강남공인중개사</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)572-2131</span></li>
			                    <li><strong>위치</strong><span>개포동 157-9</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/S/시흥벽산/')">새벽산공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)8919-888</span></li>
			                    <li><strong>위치</strong><span>시흥동 1013</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/553740000/')">서연종합부동산중개법인주식회사</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)555-5637</span></li>
			                    <li><strong>위치</strong><span>역삼동 708-38</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/4005534/')">동남(헬리오)부동산중개법인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)400-5534</span></li>
			                    <li><strong>위치</strong><span>가락동 479</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/02-353-0928/')">엘리트공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)353-0928</span></li>
			                    <li><strong>위치</strong><span>역촌동 8-13</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class b">B</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/029517272/')">우성공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)951-7272</span></li>
			                    <li><strong>위치</strong><span>상계동 1110-6</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/025575454/')">청실래미안공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)557-5454</span></li>
			                    <li><strong>위치</strong><span>대치동 623</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/010-3056-2385/')">쌍용공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)798-8383</span></li>
			                    <li><strong>위치</strong><span>한강로3가 65-197</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/0226931108/')">동서남북공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2693-1108</span></li>
			                    <li><strong>위치</strong><span>마곡동 757-3</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/0226064998/')">미남공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2606-4998</span></li>
			                    <li><strong>위치</strong><span>화곡동 1063-7</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/303-3311/')">도토리공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)303-3311</span></li>
			                    <li><strong>위치</strong><span>상암동 1654</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/samkwang/')">부동산114삼광공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)921-7600</span></li>
			                    <li><strong>위치</strong><span>종암동 130-2</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/2017house3/')">팔구사공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02-2695-8986</span></li>
			                    <li><strong>위치</strong><span>동교동 205-3</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/7334130/')">경희궁자이해드림공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)733-4130</span></li>
			                    <li><strong>위치</strong><span>교북동 12-1</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/025922345/')">서울합동공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)592-2345</span></li>
			                    <li><strong>위치</strong><span>반포동 30-25</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/538-4989/')">(주)중앙부동산중개법인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02-565-5210</span></li>
			                    <li><strong>위치</strong><span>논현동 264-3</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/025494936/')">마크힐스공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)549-4936</span></li>
			                    <li><strong>위치</strong><span>청담동 </span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/2697-5949/')">곰달래공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2697-5949</span></li>
			                    <li><strong>위치</strong><span>화곡동 861-38</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/2017house5/')">팔구사공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02-2695-8988</span></li>
			                    <li><strong>위치</strong><span>동교동 205-3</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/V/0234812299/')">연세골드부동산공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)3481-1234</span></li>
			                    <li><strong>위치</strong><span>사당동 127-48</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/W/024248900/')">신한공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)424-8900</span></li>
			                    <li><strong>위치</strong><span>잠실동 44-3</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/5082280/')">제일공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02-706-1515</span></li>
			                    <li><strong>위치</strong><span>원효로2가 86-3</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/lhglhg/')">딸기공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>010)6847-6444</span></li>
			                    <li><strong>위치</strong><span>역삼동 610</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/010-5511-1899/')">방문공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>010-5511-1899</span></li>
			                    <li><strong>위치</strong><span>마곡동 794-1</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/S/4118/')">대한민국공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2647-2223</span></li>
			                    <li><strong>위치</strong><span>신정동 86-7</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/W/5994700/')">래미안114공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)599-4700</span></li>
			                    <li><strong>위치</strong><span>반포동 18-3</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/U/개포부자/')">부자공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)573-5739</span></li>
			                    <li><strong>위치</strong><span>개포동 140</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/W/8880839/')">건영공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)888-0839</span></li>
			                    <li><strong>위치</strong><span>신림동 92-362</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/R/명일동인/')">동인공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)3427-8855</span></li>
			                    <li><strong>위치</strong><span>명일동 15</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/9418949/')">에코빌(단지내)공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02-941-8949</span></li>
			                    <li><strong>위치</strong><span>상월곡동 101</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/26871010/')">114공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2687-1010</span></li>
			                    <li><strong>위치</strong><span>신정동 769-7</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/8768889/')">한성인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>010-7709-5332</span></li>
			                    <li><strong>위치</strong><span>사당동 1039-27</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/dfsgfdg/')">우림공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>010-9054-1416</span></li>
			                    <li><strong>위치</strong><span>역촌동 46-12</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/R/하나공인/')">하나공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)915-3300</span></li>
			                    <li><strong>위치</strong><span>종암동 104-1</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/01034464241/')">파트너공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>010-3945-8984</span></li>
			                    <li><strong>위치</strong><span>마곡동 758-2</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/703-1002/')">공덕삼성공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)703-1002</span></li>
			                    <li><strong>위치</strong><span>공덕동 371</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/01038241252/')">미나공인중개사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)591-4000</span></li>
			                    <li><strong>위치</strong><span>송파동 </span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/4192323/')">중앙공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)419-2800</span></li>
			                    <li><strong>위치</strong><span>방이동 34-9</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class b">B</i><a href="javascript:" onclick="openWindow('http://www.r114.net/U/9357800/')">성운공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)935-7800</span></li>
			                    <li><strong>위치</strong><span>중계동 364-19</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/V/7988800/')">부동산자이공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)798-8800</span></li>
			                    <li><strong>위치</strong><span>한강로3가 40-171</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/558-1400/')">세종공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)558-1400</span></li>
			                    <li><strong>위치</strong><span>역삼동 755</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/025015040/')">타임공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)501-5040</span></li>
			                    <li><strong>위치</strong><span>역삼동 690-11</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/S/9428989/')">HaNa공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>010)7771-5723</span></li>
			                    <li><strong>위치</strong><span>역삼동 708-26</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/W/029568100/')">부동산114LG공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)956-8100</span></li>
			                    <li><strong>위치</strong><span>도봉동 30-1</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/S/olympic114/')">하나공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)400-3399</span></li>
			                    <li><strong>위치</strong><span>방이동 89-11</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/U/572-8889/')">타워이화공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)3461-0001</span></li>
			                    <li><strong>위치</strong><span>도곡동 467-19</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/findhouse/')">건우공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2666-0456</span></li>
			                    <li><strong>위치</strong><span>수유동 605-302</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/W/7734900/')">행운재개발공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)773-4900</span></li>
			                    <li><strong>위치</strong><span>갈월동 59-14</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/311408/')">스타파크공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02-423-1114</span></li>
			                    <li><strong>위치</strong><span>신천동 7-14</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/8257171/')">엔젤(단지내)공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)825-7171</span></li>
			                    <li><strong>위치</strong><span>흑석동 247</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/S/clickbest/')">클릭베스트빌공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2651-8114</span></li>
			                    <li><strong>위치</strong><span>목동 777-20</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/573-0060/')">내곡공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)573-0060</span></li>
			                    <li><strong>위치</strong><span>내곡동 149</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/S/26120300/')">경남공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2612-0300</span></li>
			                    <li><strong>위치</strong><span>오류동 156-100</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/26908888/')">삼성공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2690-8888</span></li>
			                    <li><strong>위치</strong><span>화곡동 1165-1</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/2693-2100/')">현대힐스테이트공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2693-2100</span></li>
			                    <li><strong>위치</strong><span>신정동 1028-4</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/U/9429540/')">부동산114테마공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)941-2211</span></li>
			                    <li><strong>위치</strong><span>정릉동 1020</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/R/신정동삼성/')">삼성공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2644-4545</span></li>
			                    <li><strong>위치</strong><span>신정동 311</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/02-995-9992/')">홍익부동산공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)995-9992</span></li>
			                    <li><strong>위치</strong><span>수유동 172-173</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/94440/')">강남공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>010-8987-9444</span></li>
			                    <li><strong>위치</strong><span>상도동 488</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/8641145/')">더바른공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)864-1145</span></li>
			                    <li><strong>위치</strong><span>신림동 487-15</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/W/8056647/')">믿음공인중개사</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)894-9303</span></li>
			                    <li><strong>위치</strong><span>시흥동 262-6</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/26958983/')">팔구사공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02-2695-8983</span></li>
			                    <li><strong>위치</strong><span>동교동 205-3</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/S/4411800/')">드림공인합동중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)4411-800</span></li>
			                    <li><strong>위치</strong><span>명일동 44</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/V/5622929/')">미래공인부동산중개주식회사</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)562-2929</span></li>
			                    <li><strong>위치</strong><span>역삼동 725-24</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/Prigia114/')">래미안114공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)968-1114</span></li>
			                    <li><strong>위치</strong><span>이문동 291-26</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/U/36663331/')">신화공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)3666-3331</span></li>
			                    <li><strong>위치</strong><span>고척동 303</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/V/027044989/')">대한민국공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)704-4989</span></li>
			                    <li><strong>위치</strong><span>도화동 357</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/0226998782/')">가원공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>010-5436-1763</span></li>
			                    <li><strong>위치</strong><span>마곡동 794-1</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/U/9423500/')">부동산114 OK공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)917-8000</span></li>
			                    <li><strong>위치</strong><span>길음동 1280-6</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/26058948/')">하늘공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>010-8501-4135</span></li>
			                    <li><strong>위치</strong><span>화곡동 159-5</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/V/ds-r114/')">나라공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2653-3003</span></li>
			                    <li><strong>위치</strong><span>목동 773-3</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/541-8998/')">국가대표공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)541-8998</span></li>
			                    <li><strong>위치</strong><span>논현동 230</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/S/kiwi/')">부동산114제일공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)568-8888</span></li>
			                    <li><strong>위치</strong><span>대치동 974</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/415-9000/')">으뜸헬리오시티공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)415-9000</span></li>
			                    <li><strong>위치</strong><span>가락동 479</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/575-3399/')">가온공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)575-3399</span></li>
			                    <li><strong>위치</strong><span>신원동 271-23</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/dreammiso87/')">드림공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2659-6606</span></li>
			                    <li><strong>위치</strong><span>등촌동 637-19</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/V/0226496009/')">신목동공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2648-6633</span></li>
			                    <li><strong>위치</strong><span>목동 901</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/027610119/')">올리브 공인중개사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)761-0119</span></li>
			                    <li><strong>위치</strong><span>여의도동 18-3</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/5084270/')">굿모닝공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)555-7755</span></li>
			                    <li><strong>위치</strong><span>대치동 670</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class b">B</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/a5732929/')">한영부동산중개</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)573-2929</span></li>
			                    <li><strong>위치</strong><span>개포동 158-1</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/557807501/')">수부동산공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)569-7409</span></li>
			                    <li><strong>위치</strong><span>역삼동 690-11</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/S/drk60/')">래미안공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)718-3636</span></li>
			                    <li><strong>위치</strong><span>염리동 520</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/W/028233800/')">부동산114(단지내)공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)823-3800</span></li>
			                    <li><strong>위치</strong><span>흑석동 45-2</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/S/dawon114/')">미도금성공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)3453-8885</span></li>
			                    <li><strong>위치</strong><span>대치동 511</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/26443300/')">대건목동푸르지오공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2644-3300</span></li>
			                    <li><strong>위치</strong><span>목동 404-13</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/3ik4001/')">삼익부동산중개사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)533-4001</span></li>
			                    <li><strong>위치</strong><span>서초동 1687-2</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/V/7032020/')">희망공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)703-2020</span></li>
			                    <li><strong>위치</strong><span>원효로1가 133-3</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/V/97002444/')">리츠공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)4388-114</span></li>
			                    <li><strong>위치</strong><span>면목동 105-22</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/0297584841/')">미성합동공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02-975-8484</span></li>
			                    <li><strong>위치</strong><span>월계동 17</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/R/가양남산/')">남산공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2659-6000</span></li>
			                    <li><strong>위치</strong><span>가양동 1490</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/02594/')">부동산명가공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)594-0045</span></li>
			                    <li><strong>위치</strong><span>잠원동 75-19</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/art1/')">아트공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2299-6555</span></li>
			                    <li><strong>위치</strong><span>하왕십리동 903-3</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class b">B</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/a4771800/')">헬리오명품공인중개사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)477-1800</span></li>
			                    <li><strong>위치</strong><span>가락동 479</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/36671900/')">아크로황금공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)3667-2400</span></li>
			                    <li><strong>위치</strong><span>영등포동7가 105-7</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/U/919-9000/')">소망부동산</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)919-9000</span></li>
			                    <li><strong>위치</strong><span>장위동 64-8</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/b3646262/')">일등공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)364-6262</span></li>
			                    <li><strong>위치</strong><span>아현동 744</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/R/목동서울/')">서울공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2654-7070</span></li>
			                    <li><strong>위치</strong><span>신정동 1279</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/023896100/')">동명공인중개사</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)389-6100</span></li>
			                    <li><strong>위치</strong><span>대조동 190-16</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/R/vision/')">부동산114비전공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)3217-8945</span></li>
			                    <li><strong>위치</strong><span>홍제동 459</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/025578075/')">수오피스부동산중개법인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)555-6369</span></li>
			                    <li><strong>위치</strong><span>역삼동 690-11</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/4817000/')">칠성공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)481-7000</span></li>
			                    <li><strong>위치</strong><span>암사동 509</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/R/wondang/')">이화공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2652-7070</span></li>
			                    <li><strong>위치</strong><span>신정동 310</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/R/mjsamsung/')">삼성공인중개사</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)449-0002</span></li>
			                    <li><strong>위치</strong><span>문정동 9-11</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/V/0988/')">조은공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2668-0988</span></li>
			                    <li><strong>위치</strong><span>가양동 1474</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/024246114/')">푸르지오공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)424-6114</span></li>
			                    <li><strong>위치</strong><span>신천동 11-4</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/01077078557/')">웰컴공인중개사</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)3663-8948</span></li>
			                    <li><strong>위치</strong><span>종로3가 종로3가 10</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/311410/')">JS부동산중개법인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02-430-3114</span></li>
			                    <li><strong>위치</strong><span>문정동 644-2</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/0226668940/')">미다스공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>010-4019-7605</span></li>
			                    <li><strong>위치</strong><span>화곡동 354-76</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/S/목동삼성공인/')">삼성공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2648-0090</span></li>
			                    <li><strong>위치</strong><span>목동 925</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/5537400/')">서연종합부동산중개법인주식회사</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)553-7400</span></li>
			                    <li><strong>위치</strong><span>역삼동 708-38</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/W/4229997/')">로얄공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)422-9997</span></li>
			                    <li><strong>위치</strong><span>석촌동 232</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/0263730304/')">지앤택공인중개사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)6737-0304</span></li>
			                    <li><strong>위치</strong><span>마곡동 797-1</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/5981/')">강남공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>010-7777-5981</span></li>
			                    <li><strong>위치</strong><span>상도동 488</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class b">B</i><a href="javascript:" onclick="openWindow('http://www.r114.net/S/nwds/')">두산공인중개사</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)933-0888</span></li>
			                    <li><strong>위치</strong><span>상계동 1110-6</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/foaldksgjqm/')">래미안114공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)835-4242</span></li>
			                    <li><strong>위치</strong><span>신길동 2039</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/548-2406/')">JS공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02-2202-7744</span></li>
			                    <li><strong>위치</strong><span>신천동 11-8</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/S/8124900/')">대명공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)812-4900</span></li>
			                    <li><strong>위치</strong><span>대방동 502</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/V/5585001/')">개나리공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)558-5001</span></li>
			                    <li><strong>위치</strong><span>역삼동 716-1</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/26475333/')">시범공인중개사</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2647-5333</span></li>
			                    <li><strong>위치</strong><span>목동 903</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/U/4243009/')">삼원공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)424-3009</span></li>
			                    <li><strong>위치</strong><span>잠실동 320</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/0226620049/')">마곡믿음공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2662-0049</span></li>
			                    <li><strong>위치</strong><span>마곡동 796-6</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/0264941333/')">제테크박사공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)6101-8705</span></li>
			                    <li><strong>위치</strong><span>상도동 356-187</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/1644-8149/')">주식회사알이엠부동산중개</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>1644-8149</span></li>
			                    <li><strong>위치</strong><span>양재동 350-8</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/421-6100/')">헬리오시티114부동산공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)421-6100</span></li>
			                    <li><strong>위치</strong><span>석촌동 297-32</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/R/쉐르빌/')">쉐르빌공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2646-6292</span></li>
			                    <li><strong>위치</strong><span>목동 408-259</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/woosic35981/')">행운공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)353-3598</span></li>
			                    <li><strong>위치</strong><span>대조동 77-12</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/R/이채/')">미래공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2282-3100</span></li>
			                    <li><strong>위치</strong><span>행당동 347</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/W/0234368000/')">현대부동산공인중개사</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)3436-8000</span></li>
			                    <li><strong>위치</strong><span>구의동 631-1</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/3584684/')">미래공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)389-8405</span></li>
			                    <li><strong>위치</strong><span>갈현동 406-27</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/mshousing/')">믿음공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)3667-4834</span></li>
			                    <li><strong>위치</strong><span>상수동 324-5</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/02206104041/')">파트너공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2069-1277</span></li>
			                    <li><strong>위치</strong><span>마곡동 758-2</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/0220610404/')">파트너공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2068-3133</span></li>
			                    <li><strong>위치</strong><span>마곡동 758-2</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/5568983/')">삼성공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)557-4969</span></li>
			                    <li><strong>위치</strong><span>대치동 938-24</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/4443100/')">중앙공인중개사</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)444-3100</span></li>
			                    <li><strong>위치</strong><span>구의동 631-1</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/U/8788945/')">유진부동산</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)878-8947</span></li>
			                    <li><strong>위치</strong><span>신림동 1432-86</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/U/4001/')">태림 공인중개사</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2648-4001</span></li>
			                    <li><strong>위치</strong><span>신정동 310</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/foaldks99/')">대우래미안공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)534-1155</span></li>
			                    <li><strong>위치</strong><span>반포동 18-3</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/024459000/')">샘터공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)445-9000</span></li>
			                    <li><strong>위치</strong><span>일원동 718</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/01045499001/')">모아공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)888-7738</span></li>
			                    <li><strong>위치</strong><span>신림동 504-3</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/26468844/')">행운공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2646-8844</span></li>
			                    <li><strong>위치</strong><span>목동 912</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/blessed/')">더행복한공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)532-5577</span></li>
			                    <li><strong>위치</strong><span>반포동 2-8</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/S/5822007/')">타워공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)5822-007</span></li>
			                    <li><strong>위치</strong><span>방배동 485-4</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/025654241/')">윌공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)565-4241</span></li>
			                    <li><strong>위치</strong><span>대치동 901-63</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/V/0226490071/')">서울공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2649-0071</span></li>
			                    <li><strong>위치</strong><span>목동 912</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/0226541114/')">파라곤메종공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2654-1114</span></li>
			                    <li><strong>위치</strong><span>목동 917</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/W/024264488/')">소망공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)426-4488</span></li>
			                    <li><strong>위치</strong><span>고덕동 688</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/023855550/')">골든공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)385-5550</span></li>
			                    <li><strong>위치</strong><span>구산동 199-3</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/025663993/')">래미안현대공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)566-3993</span></li>
			                    <li><strong>위치</strong><span>대치동 624</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/add12/')">제일공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)464-3600</span></li>
			                    <li><strong>위치</strong><span>성수동2가 </span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/77350/')">강남공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>010-7672-4626</span></li>
			                    <li><strong>위치</strong><span>상도동 488</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/5394989/')">시원공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)3454-0100</span></li>
			                    <li><strong>위치</strong><span>삼성동 124-28</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/S/DDR114/')">우방공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)5695-114</span></li>
			                    <li><strong>위치</strong><span>대치동 623</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/R/7363600/')">부동산114새천년공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)736-3600</span></li>
			                    <li><strong>위치</strong><span>무악동 45-60</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/88810600/')">삼성공인중개사</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)888-1060</span></li>
			                    <li><strong>위치</strong><span>신림동 251-51</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/U/5910003/')">뉴타운공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)591-0003</span></li>
			                    <li><strong>위치</strong><span>잠원동 58-24</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/36638948/')">성공공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>010-7707-8557</span></li>
			                    <li><strong>위치</strong><span>화곡동 1012-19</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/R/025371177/')">제일공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)537-1177</span></li>
			                    <li><strong>위치</strong><span>잠원동 69-2</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/R/이화공인/')">7단지이화공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2644-0040</span></li>
			                    <li><strong>위치</strong><span>목동 925</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/V/20609114/')">하나공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2060-9114</span></li>
			                    <li><strong>위치</strong><span>개봉동 450-13</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/R/정성/')">정성부동산</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)403-0410</span></li>
			                    <li><strong>위치</strong><span>석촌동 297-9</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/house2017f/')">팔구사공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02-2695-8989</span></li>
			                    <li><strong>위치</strong><span>동교동 205-3</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/025664011/')">진선미공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)566-4011</span></li>
			                    <li><strong>위치</strong><span>역삼동 754</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/ms0712/')">팔구사공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2695-8986</span></li>
			                    <li><strong>위치</strong><span>동교동 205-3</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/64940929/')">채움부동산공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)6494-0929</span></li>
			                    <li><strong>위치</strong><span>화곡동 841-1</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/R/jaetech/')">재테크공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)711-8952</span></li>
			                    <li><strong>위치</strong><span>신공덕동 155</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/946-1300/')">서울공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)946-1300</span></li>
			                    <li><strong>위치</strong><span>미아동 1353-5</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/4885005/')">동아공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)488-5005</span></li>
			                    <li><strong>위치</strong><span>풍납동 506</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/714-8988/')">세종(714-8988)공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)714-8988</span></li>
			                    <li><strong>위치</strong><span>구수동 41-4</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/01062508338/')">광영부동산중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>010)6250-8338</span></li>
			                    <li><strong>위치</strong><span>아현동 347-4</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/5444944/')">아이파크공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02-512-8944</span></li>
			                    <li><strong>위치</strong><span>청담동 </span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/01052469134/')">레드공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>010)3292-8908</span></li>
			                    <li><strong>위치</strong><span>중곡동 233-1</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/S/26455300/')">현대부동산</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2645-5300</span></li>
			                    <li><strong>위치</strong><span>목동 406-82</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/024674455/')">힐스테이트한강공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)467-4455</span></li>
			                    <li><strong>위치</strong><span>성수동1가 714</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/554-8511/')">한별공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)554-8511</span></li>
			                    <li><strong>위치</strong><span>역삼동 826-37</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/W/025958880/')">반포자이공인중개사</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)595-8880</span></li>
			                    <li><strong>위치</strong><span>반포동 20-45</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class b">B</i><a href="javascript:" onclick="openWindow('http://www.r114.net/R/jeil9800/')">제일부동산중개법인알앤유(주)</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)422-9800</span></li>
			                    <li><strong>위치</strong><span>신천동 7</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/953-3400/')">114센츄리공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)953-3400</span></li>
			                    <li><strong>위치</strong><span>돈암동 15-1</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/V/34873336/')">서초래미안공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)3487-3336</span></li>
			                    <li><strong>위치</strong><span>서초동 1640-25</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/3340409/')">한마음공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)334-0409</span></li>
			                    <li><strong>위치</strong><span>연희동 92-18</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/S/코오롱공인/')">코오롱공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)995-0033</span></li>
			                    <li><strong>위치</strong><span>창동 27-3</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/S/himihyun/')">e타임공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)877-1133</span></li>
			                    <li><strong>위치</strong><span>봉천동 36-29</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/22823900/')">미래파크힐스공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2293-0500</span></li>
			                    <li><strong>위치</strong><span>옥수동 528</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/sunpte0786/')">고덕역5호선공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)481-5005</span></li>
			                    <li><strong>위치</strong><span>상일동 194</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/459-2121/')">가이드(샘터마을)공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)459-2121</span></li>
			                    <li><strong>위치</strong><span>일원동 718</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/R/에덴/')">에덴공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)420-8300</span></li>
			                    <li><strong>위치</strong><span>잠실동 22-6</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/025662752/')">넥스트알누리부동산</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)566-2752</span></li>
			                    <li><strong>위치</strong><span>역삼동 825-20</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class b">B</i><a href="javascript:" onclick="openWindow('http://www.r114.net/S/노원금빛공인/')">금빛공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)937-5050</span></li>
			                    <li><strong>위치</strong><span>상계동 1269</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/4009500/')">래미안공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)400-9500</span></li>
			                    <li><strong>위치</strong><span>문정동 1</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/S/6688/')">길음뉴타운OK공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)909-9300</span></li>
			                    <li><strong>위치</strong><span>길음동 543-75</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class b">B</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/8158942/')">콜아크로공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)815-8940</span></li>
			                    <li><strong>위치</strong><span>흑석동 158-1</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/5545999/')">대치99공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)554-5999</span></li>
			                    <li><strong>위치</strong><span>대치동 626</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/W/5910927/')">선경부동산</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)591-0927</span></li>
			                    <li><strong>위치</strong><span>반포동 20-45</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/029864989/')">행복공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)986-4989</span></li>
			                    <li><strong>위치</strong><span>미아동 1353-5</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/R/superland/')">부동산랜드공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)393-8111</span></li>
			                    <li><strong>위치</strong><span>아현동 613-35</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/S/7016700/')">예스공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)701-6700</span></li>
			                    <li><strong>위치</strong><span>공덕동 225-1</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/025638942/')">뉴탑공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02-567-8942</span></li>
			                    <li><strong>위치</strong><span>대치동 898-31</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/26629595/')">동양부동산중개</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2661-9595</span></li>
			                    <li><strong>위치</strong><span>화곡동 1081</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/dhrndh595/')">오구오공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)595-5995</span></li>
			                    <li><strong>위치</strong><span>서초동 1691-8</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/0312323533/')">노란주택공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>010)7155-4997</span></li>
			                    <li><strong>위치</strong><span>가양동 1482</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/V/972-3001/')">부동산114삼성공인</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)972-3001</span></li>
			                    <li><strong>위치</strong><span>하계동 251</span></li>
			                </ul>
			            </li>
		                
		                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/443-1177/')">황금공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)443-1177</span></li>
			                    <li><strong>위치</strong><span>장지동 854</span></li>
			                </ul>
			            </li>
		                
	                <li style="float: left; list-style: none; position: relative; margin-right: 20px; width: 190px;" class="bx-clone" aria-hidden="true">
			                <div class="mem_name">
			                    <i class="ico_class p">P</i><a href="javascript:" onclick="openWindow('http://www.r114.net/T/6979200/')">우장산대야공인중개사사무소</a>
			                </div>
			                <ul class="info">
			                    <li><strong>전화</strong><span>02)2697-9200</span></li>
			                    <li><strong>위치</strong><span>화곡동 1159-1</span></li>
			                </ul>
			            </li></ul></div><div class="bx-controls"></div></div>
                </div>
                <div class="slide_recomm_ui">
					<div>
						<div id="slidercounter_recommendOffice"> <strong class="current-index">1</strong>/  294</div>
					<a class="bx-next" href="">Next</a><a class="bx-prev" href="">Prev</a></div>
				</div>
                <div id="pager_recommendOffice"></div>
			</div>
			<!--// 부동산114가 추천하는 지역 중개회원 -->
		</div>
		 <!-- LOOP END TMP_row_recommendOfficeBlank -->

		<!-- 매물제공기준 안내 -->
        <div style="display:" class="bx_gray">
            <a href="javascript:" onclick="openSupplyEstateGuide();"><img src="https://image.r114.co.kr/W1/images/sub/banner_r114_standard_maemul.png" alt=""> </a>
        </div>
        <!--// 매물제공기준 안내 -->

        <!-- 시세제공기준 안내 -->
        <div style="display: none" class="bx_gray">
            <a href="javascript:" onclick="openSupplyMarketPriceGuide();"><img src="https://image.r114.co.kr/W1/images/sub/banner_r114_standard_sise.png" alt=""> </a>
        </div>
        <!--// 시세제공기준 안내 -->

		<div class="bx_gray">
			<!-- 부동산거래 단계별가이드 -->
			<div class="inner news_r">
				<h4 class="h4_type2">부동산거래 단계별가이드</h4><!--2017-09-26 해당요소를 단계별 가이드로 수정-->
				<div class="tab_a tab_ui" style="margin:5px 0 10px 0">
					<a href="javascript:;" class="on">매매</a>
					<a href="javascript:;">전월세</a>
					<a href="javascript:;">분양</a>
				</div>
				<ul class="tab_cont">
					<li class="on">
						<!--매매-->
						<ul class="report_step_vertical">
							<li><a href="/?_c=Research&amp;_m=ReportNews&amp;_a=StepGuide&amp;deal=매매&amp;dealNum=1"><em class="emnum">01.</em>사전준비</a></li><li><a href="/?_c=Research&amp;_m=ReportNews&amp;_a=StepGuide&amp;deal=매매&amp;dealNum=2"><em class="emnum">02.</em>정보수집</a></li><li><a href="/?_c=Research&amp;_m=ReportNews&amp;_a=StepGuide&amp;deal=매매&amp;dealNum=3"><em class="emnum">03.</em>계약단계</a></li><li><a href="/?_c=Research&amp;_m=ReportNews&amp;_a=StepGuide&amp;deal=매매&amp;dealNum=4"><em class="emnum">04.</em>등기/이사</a></li><li><a href="/?_c=Research&amp;_m=ReportNews&amp;_a=StepGuide&amp;deal=매매&amp;dealNum=5"><em class="emnum">05.</em>거주</a></li><li class="step_tip"><a href="/?_c=Research&amp;_m=ReportNews&amp;_a=StepGuide&amp;deal=매매&amp;dealNum=6">매도팁</a></li>
						</ul>
					</li>
					<li>
						<!--전월세-->
						<ul class="report_step_vertical">
							<li><a href="/?_c=Research&amp;_m=ReportNews&amp;_a=StepGuide&amp;deal=전월세&amp;dealNum=7"><em class="emnum">01.</em>사전준비</a></li><li><a href="/?_c=Research&amp;_m=ReportNews&amp;_a=StepGuide&amp;deal=전월세&amp;dealNum=8"><em class="emnum">02.</em>정보수집</a></li><li><a href="/?_c=Research&amp;_m=ReportNews&amp;_a=StepGuide&amp;deal=전월세&amp;dealNum=9"><em class="emnum">03.</em>계약단계</a></li><li><a href="/?_c=Research&amp;_m=ReportNews&amp;_a=StepGuide&amp;deal=전월세&amp;dealNum=10"><em class="emnum">04.</em>이사/확정일자</a></li><li><a href="/?_c=Research&amp;_m=ReportNews&amp;_a=StepGuide&amp;deal=전월세&amp;dealNum=11"><em class="emnum">05.</em>거주/재계약/퇴거</a></li><li class="step_tip"><a href="/?_c=Research&amp;_m=ReportNews&amp;_a=StepGuide&amp;deal=전월세&amp;dealNum=13">임대팁</a></li>
						</ul>
					</li>
					<li>
						<!--분양권-->
						<ul class="report_step_vertical">						
							<li><a href="/?_c=Research&amp;_m=ReportNews&amp;_a=StepGuide&amp;deal=분양&amp;dealNum=14"><em class="emnum">01.</em>청약통장 가입</a></li><li><a href="/?_c=Research&amp;_m=ReportNews&amp;_a=StepGuide&amp;deal=분양&amp;dealNum=15"><em class="emnum">02.</em>분양정보 확인</a></li><li><a href="/?_c=Research&amp;_m=ReportNews&amp;_a=StepGuide&amp;deal=분양&amp;dealNum=16"><em class="emnum">03.</em>청약신청</a></li><li><a href="/?_c=Research&amp;_m=ReportNews&amp;_a=StepGuide&amp;deal=분양&amp;dealNum=17"><em class="emnum">04.</em>입주단계</a></li><li><a href="/?_c=Research&amp;_m=ReportNews&amp;_a=StepGuide&amp;deal=분양&amp;dealNum=18"><em class="emnum">05.</em>입주 후</a></li><li class="step_tip"><a href="/?_c=Research&amp;_m=ReportNews&amp;_a=StepGuide&amp;deal=분양&amp;dealNum=19">분양권 거래</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>

		<!-- 광고
		<div class="bn_vertical_thin" id="ad_side_right3">
		<iframe src="/?_c=memul&_m=memulRight&_a=MemulSubAdvertise3&adType=sale" scrolling="no" marginheight="0" marginwidth="0" frameborder="0" width="100%" height="600px"></iframe>
		</div>
		// 광고 -->

<script type="text/javascript">

	$(document).ready( function() {
		slide_recommendOffice_load();
		
		if($.browser.msie && parseInt($.browser.version) <= parseInt(8)){
			$("#ad_side_right2").remove();
		//	$("#ad_side_right3").remove();
		}

		$(".report_step_vertical").each(function()
		{
			$(this).children().last().addClass("step_tip");
			$(this).children().last().find(".emnum").remove();
		});

	});

</script>
</div>
			<div class="right_inner_wrap" id="divMemulRight05"><div class="bn_vertical_thin" id="ad_side_right3"><iframe src="/?_c=memul&amp;_m=memulRight&amp;_a=MemulSubAdvertise3&amp;adType=total" scrolling="no" marginheight="0" marginwidth="0" frameborder="0" width="100%" height="600px"></iframe></div></div>
		</div>
		<!-- 라이트 끝 -->

	</div>
</div>

<!-- 181122 매물리스트하단네비:시작 -->
<div class="foot_navi" id="divfootnavi">
	<div>
		<ul class="foot_list_con">
			<li>
				<span>
					<p>찾는 매물이 없다면?</p>매물의뢰
					<span class="foot_icon_maemul"></span>
				</span>
				<a href="javascript:goAskBuyPage();" id="fnAskbuy" title="매물의뢰 바로가기"></a>
			</li>
			<li>
				<span>
					<p>지금도 일일이 검색하나요?</p>알리미서비스
					<span class="foot_icon_register"></span>
				</span>
				<a href="/?_c=mypage&amp;_m=notification" target="_blank" title="알리미서비스 바로가기"></a>
			</li>
			<li>
				<span>
					<p>어려운 창업 쉽게하자!</p>창업지원
					<span class="foot_icon_startup"></span>
				</span>
				<a href="?_c=StartupSupport&amp;_s=StoreInfo&amp;subMenu=Shop" target="_blank" title="창업지원 바로가기"></a>
			</li>
			<li>
				<span>
					<p>청약? 세금? 궁금하다면</p>부동산 상담
					<span class="foot_icon_consul"></span>
				</span>
				<a href="/?_c=service&amp;_m=counsel" target="_blank" title="부동산 상담 바로가기"></a>
			</li>
			<li>
				<span>
					<p>중개수수료는 얼마일까?</p>부동산 계산기
					<span class="foot_icon_calculator"></span>
				</span>
				<a href="/?_c=solution&amp;_s=calculator&amp;_m=Brokerage" target="_blank" title="부동산 계산기 바로가기"></a>
			</li>
		</ul>
		<a href="javascript:_footnaviViewInfo('1');" class="close_bar"><span></span>닫기</a>
		<a href="javascript:_footnaviViewInfo('2');" class="open_bar"><span></span>열기</a>
		<a href="#" class="move_top"><span></span>TOP</a>
	</div>
</div>
<!--// 181122 매물리스트하단네비:끝 -->

<!-- 바디  -->

<!-- 매물비교 레이업팝업 시작 -->
<div id="lp_layout_memulCompare" style="display:none">
	<!-- 팝업바디 시작 -->
	<div class="lp_wrap" style="width:980px">
		<!-- 팝업컨텐츠 시작 -->
		<div class="inner">
			<div class="lp_con  lp_layout_memulComparePrint">
				<h4 class="h4_type4 left">매물 비교하기<em class="rb"><a href="javascript:" onclick="printMemulCompare();" class="ico_comm_s print2">프린트</a></em></h4>
				<table class="tbl_type2 lf">
					<colgroup><col style="width: 125px"></colgroup>
					<caption>기본정보</caption>
					<tbody class="memulCompareInfo">

					</tbody>
				</table>
			</div>
			<!-- 팝업컨텐츠 끝 -->
			<div class="lp_close">
				<a href="javascript:closeLp('#lp_layout_memulCompare')">닫기</a>
			</div>
			<div class="btn_wrap">
				<a href="javascript:" class="btn_type1" onclick="closeLp('#lp_layout_memulCompare')">닫기</a>
			</div>
		</div>
	</div>
	<!-- 팝업바디 끝 -->
</div>
<!-- 레이업팝업1 끝 -->

<div id="lp_layout2">
</div>

<!-- 중개사무소 문의 팝업 -->
<div id="lp_layout_questionToAgent">
</div>
<!-- //중개사무소 문의 팝업 -->

<!-- 시세비교 레이업팝업 시작 -->
<div id="lp_layout_siseCompare" style="display;none">
	<!-- 팝업바디 시작 -->
	<div class="lp_wrap" style="width:980px">
		<!-- 팝업컨텐츠 시작 -->
		<div class="inner">
			<div class="lp_con lp_layout_siseComparePrint">
				<h4 class="h4_type4 left">시세 비교하기<em class="rb"><a href="javascript:" onclick="printSiseCompare();" class="ico_comm_s print2">프린트</a></em></h4>
				<table class="tbl_type2 lf">
					<colgroup> <col style="width: 125px"> </colgroup>
					<caption>기본정보</caption>
					<tbody class="siseCompareInfo"></tbody>
				</table>
			</div>
			<div class="lp_close">
				<a href="javascript:closeLp('#lp_layout_siseCompare')">닫기</a>
			</div>
			<div class="btn_wrap">
				<a href="javascript:" class="btn_type1" onclick="closeLp('#lp_layout_siseCompare')">닫기</a>
			</div>
		</div>
	</div>
	<!-- 팝업바디 끝 -->
</div>
<!-- 시세비교 레이업팝업 끝 -->

<!-- 시세비교 중개사무소 문의 팝업 -->
<div id="lp_layout_questionToAgentSise"></div>
<!-- //시세비교 중개사무소 문의 팝업 -->

<!-- 매물제공기준 레이업팝업 -->
<div id="lp_layout_supply_estate" style="display: none">
	<!-- 팝업바디 -->
	<div class="lp_wrap type1 print_supply_estate_pop" style="width:680px">
		<div class="inner">
			<div class="lp_con">
				<h4>부동산114 매물제공 기준</h4>
				<div class="cont">
					<h4 class="h4_type4 line">부동산114 매물 및 중개회원 구분<em class="rb"><a href="javascript:" class="ico_comm_s print2" onclick="printSupplyEstateGuide();">프린트</a></em></h4>
					<ul class="list_tutorial">
						<li>
							<strong>알짜매물 : <span>알짜매물은 부동산114 중개사무소 회원이 등록한 매물 중 가장 최상위에 노출되는 매물입니다.</span></strong>
							<dl class="box_if t1">
								<dt>알짜매물<br>17.07.26</dt>
								<dd>최초등록일이 2017.07.26인 알짜매물</dd>
							</dl>
						</li>
						<li>
							<strong>추천매물 : <span>추천매물은 부동산114 중개사무로 회원이 직접 추천한 매물입니다.</span></strong>
							<dl class="box_if t2">
                                <dt>추천매물<br>17.07.26</dt>
                                <dd>최초등록일이 2017.07.26인 추천매물</dd>
                            </dl>
						</li>
						<li>
							<strong>중개의뢰 매물 : <span>부동산114의 개인회원이 내놓기 서비스를 이용하여 등록한 매물입니다.</span></strong>
							<dl class="box_if t3">
                                <dt>중개의뢰<br>17.07.26</dt>
                                <dd>고객이 부동산114 사이트에 의뢰한 날짜가 2017.07.26인 중개의뢰매물</dd>
                            </dl>
						</li>
						<li>
							<strong>부동산114 회원중개사무소</strong>
							<table class="tbl_type2">
							    <colgroup>
							     <col style="width: 10%">
							    </colgroup>
								<tbody>
									<tr>
										<td><i class="ico_class b">B</i></td>
										<td class="left">부동산114의 Brand 회원 중개사무소 입니다.</td>
									</tr>
									<tr>
										<td><i class="ico_class p">P</i></td>
										<td class="left">부동산114의 Premium 회원 중개사무소 입니다.</td>
									</tr>
									<tr>
										<td><i class="ico_class r">R</i></td>
										<td class="left">부동산114의 Royal 회원 중개사무소 입니다.</td>
									</tr>
									<tr>
										<td><i class="ico_class c">C</i></td>
										<td class="left">부동산114의 Classic 회원 중개사무소 입니다.</td>
									</tr>
								</tbody>
							</table>
						</li>
					</ul>
					<h4 class="h4_type4 line">허위매물 관리규정</h4>
					<div class="box_yk type2 gray">
						<strong>부동산114의 매물은 중개사무소를 통해서 실시간 등록되고 있으며, 중개사무소의 사정으로 이미 거래된 매물이나 거래가 불가능한 매물이 등록되지 않도록 다음과 같은 허위매물 관리 규정을 두고 있습니다.</strong>
						<h5>매물 등록에 대한 가격제한</h5>
						<p>아파트, 재건축, 주상복합, 오피스텔 매물의 경우, 호객용 매물이 등록되지 않도록 당사가 시세제공 중개사무소로부터 제공받은 시세를 기준으로 등록을 제한합니다.</p>
						<h5>허위매물 신고제도</h5>
						<p>부동산114는 허위매물에 대한 신고제도를 운영하고 있습니다. 신고된 매물은 서비스를 제한하고, 당사에서 거래가능여부를 확인하여 최대 48시간 이내에 고객님께 확인결과를 통보합니다.</p>
						<h5>중개사무소 제재조치</h5>
						<p>3회 이상 허위매물 등록업소로 신고된 중개사무소는 1개월간 매물등록을 제한하고, 등록 제한이 2회 이상 반복되면 부동산114 중개사무소 회원 자격을 박탈합니다.</p>
						<h5>허위매물 관리 전담부서 배치</h5>
						<p>부동산114 매물을 관리하고, 허위매물을 관리하는 전담부서인 고객센터가 배치되어 있습니다.</p>
					</div>
					<h4 class="h4_type4 line">부동산114 매물 및 회원업소 구분</h4>
					<div class="box_yk type2 gray">
        		        <p class="t1">매물서비스에 대한 문의는 매물을 등록한 중개사무소에 확인하셔야 합니다. 거래 전에 매물정보와 매물가격을 반드시 확인하신 후 거래하시기 바랍니다. 부동산114의 매물서비스 운영에 대해 궁금하시면 <a href="javascript:" class="link red" id="cmdMyInquiry">부동산 114 고객센터</a>로 메일을 보내주시면 빠른 시일 내에 답변 드리겠습니다. 부동산114는 정확한 매물정보를 제공하여 신뢰할 수 있는 중개거래를 할 수 있도록 앞으로도 최선의 노력을 다하겠습니다. 감사합니다. 부동산114(주)를 비롯한 11개사는 부동한 허위매물 광고행위를 방지하기 위해 공정거래위원회 에서 제정한 『온라인 부동산광고 자율규약』을 2009년 9월25일 부터 시행하고 있습니다.</p>
        		        <a href="javascript:;" class="btn_type16" onclick="openAutonomousProtocol();">온라인 부동산 광고 자율규약 원문보기</a>
    			    </div>
    				<div class="btn_wrap">
    				    <a href="javascript:;" class="btn_type1" onclick="closeLp('#lp_layout_supply_estate')">닫기</a>
    				</div>
				</div>
			</div>

			<div class="lp_close">
				<a href="javascript:;" onclick="closeLp('#lp_layout_supply_estate')"><span class="ico_comm_s close_lp">닫기</span></a>
			</div>
		</div>
	</div>
	<!-- //팝업바디 -->
</div>
<!-- //  매물제공기준 레이업팝업 -->

<!-- 시세제공기준 레이업팝업 -->
<div id="lp_layout_supply_price" style="display: none">
	<!-- 팝업바디 시작 -->
    <div class="lp_wrap" style="width:980px">
        <!-- 팝업컨텐츠 시작 -->
        <div class="inner">
            <div class="lp_con">
                <div style="padding-top: 30px">
                    <ul class="list_tab tab_ui n3">
                        <li class="on"><a href="javascript:;">시세제공원칙</a></li>
                        <li><a href="javascript:">조사개요 및 통계기준</a></li>
                        <li><a href="javascript:">시세조사 안내사항(FAQ)</a></li>
                    </ul>
                    <ul class="tab_cont">
                        <li class="on">
                            <h4 class="head">1. 부동산114가 제공하는 가격정보</h4>
                            <ul class="list_li bline_non">
                                <li class="bold">1) 부동산114 시세 : 부동산114가 조사하는 전국 아파트·오피스텔 시세</li>
                                <li class="bold">2) 국토교통부 시세  : 국토교통부가 매월 15일경 발표하는 실거래 신고가격</li>
                                <li class="bold">3) 한국감정원 시세  : 한국감정원이 조사하는 전국 아파트 시세</li>
                                <li>
                                    <p>
                                        <strong>부동산을 거래하실 때에는,</strong><br>
                                        <strong><em>부동산114의 시세와 최근 신고된 국토교통부의 실거래가격 등을 종합적으로 비교, 분석</em>하여 합리적인 의사결정을 하시기 바랍니다.</strong>
                                    </p>
                                    <p>
                                      <strong class="tit">① 부동산114 가격 동향조사</strong>
                                        아파트 시세는 부동산114가 매주 실거래사례에 준거하여 직접 조사한 가격정보입니다.<br>
                                        오피스텔 시세는 부동산114가 매월 실거래사례에 준거하여 직접 조사한 가격정보입니다.<br>
                                        혹시 최근 거래 사례가 없을 경우 실제 거래가 가능한 가격대를 반영합니다.<br>
                                        조사항목은 시세하한가, 시세상한가 입니다.<br>
                                        거래된 가격을 기준으로 최저, 최고가격을 조사하되 실제 거래사례가 많은 중간층 시세를 기준으로 하며 최저, 최상층의 가격은 시세에서 제외합니다.
                                    </p>
                                    <p>
                                        <strong class="tit">② 국토교통부 실거래가격</strong>
                                        국토교통부가 매월 발표하는 아파트 실거래가격입니다.<br>
                                        실거래가 공개는 전월 신고된 자료로 매매 20일 이후, 전월세 28일 이후 확인할 수 있습니다.
                                    </p>
                                </li>
                            </ul>
                            <h4 class="head">2. 부동산114 시세모니터 공인중개사무소 선정 기준</h4>
                            <ul class="list_li">
                                <li class="bold">1) 근거리 위치 : 해당 아파트와 가까운 위치에 있는 공인중개사사무소의 시세모니터링</li>
                                <li class="bold">2) 매물 취급 여부 : 해당 아파트의 매물을 많이 취급하는 공인중개사무소의 시세모니터링</li>
                                <li>시세 제공 중개사무소 변경 : 시세 제공 중개사무소가 이전 혹은 폐업을 하였을 때, 또는 시세가 부정확하게 제공될 때에는 부동산114가 조사, 검증 후에 변경합니다.<br>그리고, 일반인도 부정확한 시세라고 판단될 때에는 중개사무소 수정을 요청할 수 있습니다.<br><a href="javascript:" class="link" onclick="goMyInquiryCenter();">시세모니터 수정 요청</a></li>
                                <li>
                                    <div class="deco_arr red">조사 및 통계관련 문의 : 리서치센터 DB개발팀 (☎ 031-710-1929)</div>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <h4 class="head">1. 부동산114가 제공하는 시세 및 통계정보</h4>
                            <ul class="list_li bline_non">
                                <li class="bold"><strong class="tit">조사목적</strong>부동산114는 전국의 아파트와 오피스텔 등의 매매, 전세, 월세 가격을 조사하여 정확하고 신뢰도 높은 시세를 제공하여 부동산 거래의 투명성 확보를 목적으로 하며, 더 나아가 거래동향을 제공하여 거래 시장의 분석과 예측에 활용될 수 있도록 합니다.</li>
                                <li>
                                    <strong class="tit">조사주기</strong>
                                    <ul>
                                        <li class="deco_dot1">아파트 : 주간 시세조사를 원칙으로 합니다. 단, 주간 영업일수 5일중 3일 이상 휴무일 경우 주간 시세조사는 진행하지 않습니다.</li>
										<li class="deco_dot1">오피스텔 : 월간 시세조사를 원칙으로 합니다.</li>
                                    </ul>
                                </li>
                                <li>
                                    <strong class="tit">조사표본</strong>
                                    <p>전국 총17개 광역자치단체에 위치한 거래 가능한 아파트, 오피스텔의 시세를 조사합니다.</p>
                                    <ul>
                                        <li><strong class="tit deco_dot1">조사지역</strong>
                                            <table class="tbl_type2 c2">
                                                <caption>서울특별시 아파트 최근 시세</caption>
                                                <colgroup>
                                                    <col style="width:33.4%">
                                                    <col style="width:33.3%">
                                                    <col style="width:33.3%">
                                                </colgroup>
                                                <thead>
                                                    <tr>
                                                        <th scope="col">구분</th>
                                                        <th scope="col">아파트</th>
                                                        <th scope="col">오피스텔</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>매매가격</td>
                                                        <td>전국 17개 광역자치단체</td>
                                                        <td rowspan="3">전국 17개 광역자치단체</td>
                                                    </tr>
                                                    <tr>
                                                        <td>전세가격</td>
                                                        <td class="rt_line">전국 17개 광역자치단체</td>
                                                    </tr>
                                                    <tr>
                                                        <td>월세보증금<br>(보증금,월임대료)</td>
                                                        <td class="rt_line">전국 17개 광역자치단체<br>(서울특별시, 경기도, 인천광역시)</td>
                                                    </tr>

                                                </tbody>
                                            </table>
                                        </li>
                                        <li><strong class="tit deco_dot1">조사대상</strong>
                                            <table class="tbl_type2 c2">
                                                <caption>서울특별시 아파트 최근 시세</caption>
                                                <colgroup>
                                                    <col style="width:20%">
                                                    <col style="width:20%">
                                                    <col style="width:20%">
                                                    <col style="width:20%">
                                                    <col style="width:20%">
                                                </colgroup>
                                                <thead>
                                                    <tr>
                                                        <th rowspan="2" scope="col">구분</th>
                                                        <th colspan="2" scope="col">아파트</th>
                                                        <th colspan="2" scope="col">오피스텔</th>
                                                    </tr>
                                                    <tr>
                                                        <th scope="col">면적</th>
                                                        <th scope="col">가구수</th>
                                                        <th scope="col">면적</th>
                                                        <th scope="col">가구수</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th>수도권</th>
                                                        <td>35,604</td>
														<td>4,242,848</td>
                                                        <td>8,097</td>
                                                        <td>326,289</td>
                                                    </tr>
                                                    <tr>
                                                        <th>지방광역도시</th>
                                                        <td>30,667</td>
														<td>3,913,541</td>
                                                        <td>1,474</td>
                                                        <td>69,216</td>
                                                    </tr>
                                                    <tr>
                                                        <th><strong>전국</strong></th>
                                                        <td>66,271</td>
														<td>8,156,389</td>
                                                        <td>9,571</td>
                                                        <td>395,505</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                           * 2019. 01. 21. 기준 시세조사 대상임
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <strong class="tit">조사항목</strong>
                                    시세는 매매하한·상한, 월세보증금, 월임대료 가격이 조사됩니다.
                                </li>
                                <li>
                                    <strong class="tit">조사방법</strong>
                                    시세모니터 공인중개사무소가 거래사례 비교법으로 가격을 조사하여 온라인상의 조사표에 기입하는 방식과 부동산114 전문조사자가 전화로 해당 시세모니터 공인중개사무소에 문의하여 시세 및 조사가격의 적정성을 검토하고 있습니다.
                                </li>
                                <li>
                                    <strong class="tit">통계항목</strong>
                                    부동산114가 조사한 시세를 기초로 하여 아래와 같은 통계가 산출됩니다.<br>단, 연립/빌라 시세는 통계산출에서 제외됩니다.
                                    <dl class="list_dd">
                                        <dt class="deco_dot1"><strong>가격변동률 : </strong>시세 하한가와 상한가를 산술평균하여 시가총액을 산출한 후 기준시점과 비교대상시점의 가격변화를 백분율로 나타낸 것입니다.<br>단, 기준시점과 비교대상 시점 모두 시세가 존재하는 경우만 가격 변동률 산정의 대상이 됩니다. </dt>
                                        <dd>
                                            <ul>
                                                <li class="deco_dot2">시가총액 = ∑ (면적 별 평균시세 × 면적 별 가구수)</li>
                                                <li class="deco_dot2">가격변동률 = ((t시점 시가총액)-(t-1시점 시가총액) / (t-1시점 시가총액)) × 100</li>
                                            </ul>
                                        </dd>
                                        <dt class="deco_dot1"><strong>면적당가 (3.3㎡) : </strong>각 대상주택의 시세 하한가와 상한가를 산술평균하여 시가총액을 산출한 후 공급면적 3.3㎡당 평균 가격을 산출합니다.</dt>
                                        <dd>
                                            <ul>
                                                <li class="deco_dot2">면적당가 = ((시가총액) / ∑ (면적 별 가구수 × 공급면적)) × 3.3</li>
                                            </ul>
                                        </dd>
                                        <dt class="deco_dot1"><strong>전세가격/매매가격 비율 : </strong>각 대상주택의 시세 하한가와 상한가를 산술평균하여 시가총액을 산출한 후 매매가격 대비한 전세가격의 비중을 산출합니다.<br>단, 매매가격과 전세가격 모두 시세가 존재하는 경우만 전세/매매비율 산정의 대상이 됩니다.</dt>
                                        <dd>
                                            <ul>
                                                <li class="deco_dot2">전세/매매비율 = (전세 시가총액) / (매매 시가총액)</li>
                                            </ul>
                                        </dd>
                                        <dt class="deco_dot1"><strong>전월세 전환율(월세이율) : </strong>월세보증금 (또는 전세) 를 월세로 전환할 때 사용되는 비율입니다.</dt>
                                        <dd>
                                            <ul>
                                                <li class="deco_dot2">전월세전환율 = (월임대료 × 12) / (전세 평균시세 – 월세 보증금)</li>
                                            </ul>
                                        </dd>
                                        <dt class="deco_dot1"><strong>연간 임대수익률 : </strong>주택소유자가 세입자에게 주택을 임대하였을 때 매년 마다 얻는 수익률을 나타냅니다.<br>세입자가 내는 임대료는 보증부 월세로 월세보증금과 월임대료를 각각 납부합니다.<br>이 때, 월세보증금은 주택소유자가 주택을 구매할 때 구매대금으로 사용된다고 가정합니다.</dt>
                                        <dd>
                                            <ul>
                                                <li class="deco_dot2">연간 임대수익률 = (월임대료 × 12) / (매매 평균시세 – 월세 보증금)</li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </li>
                                <li>
                                    <strong class="tit">조사결과 공표</strong>
                                    <ul class="list_li2">
                                        <li class="deco_dot1"><strong>공표일 : </strong>아파트는 매주 금요일 기준으로 시세 및 통계가 업데이트 됩니다.<br>오피스텔은 매월 29일 기준으로 시세 및 통계가 업데이트 됩니다.</li>
                                        <li class="deco_dot1"><strong>공표방법 : </strong>홈페이지 (<a href="www.r114.com">www.r114.com</a>) 와 REPS (Real Estate Power Solution) 를 통해 공표됩니다.</li>
                                        <li class="deco_dot1"><strong>공표항목 :</strong></li>
                                    </ul>
                                </li>
                                <li>
                                    <table class="tbl_type2 c2">
                                        <caption>아파트 오피스텔 비교</caption>
                                        <colgroup>
                                            <col style="width:50%">
                                            <col style="width:50%">
                                        </colgroup>
                                        <thead>
                                            <tr>
                                                <th scope="col">아파트</th>
                                                <th scope="col">오피스텔</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    시세, 가격변동률, 면적단가,<br>
                                                    전세가격/매매가격 비율,<br>
                                                    전월세전환율, 연간임대수익률, 가격지수
                                                </td>
                                                <td>
                                                    시세, 가격변동률, 면적단가,<br>
                                                    전세가격/매매가격 비율,<br>
                                                    전월세전환율, 연간임대수익률, 가격지수
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </li>
                            </ul>
                            <div class="deco_arr red">조사 및 통계관련 문의 : 리서치센터 DB개발팀 (☎ 031-710-1929)</div>
                        </li>
                        <li>
                            <h4 class="head">시세조사 안내사항(FAQ)</h4>
                            <ul class="list_li">
                                <li>
                                    <strong class="tit deco_q">부동산114 시세는 무엇인가요?</strong>
                                    <p>부동산114 시세는 최근 거래된 실거래 가격을 참고하여 시세모니터사 (공인중개사무소)주1)에서 조사한 시장표준가격을 대상으로 작성한 조사통계 입니다.
                            전국 1만6천여 개의 아파트, 6만여 개의 주택형 시세를 매주 전수조사하고, 매매하한가·매매상한가, 전세하한가·전세상한가, 보증금·월세 가격이 조사됩니다.
                            최근 거래 사례가 없을 경우 직전 거래사례 및 주변현황을 참고하여 거래 가능한 가격대가 반영되는데, 경매 낙찰가, 내부수리, 조망 등 특이 사항에 따라
                            결정되는 가격은 시세에서 제외됩니다.</p>
                                    <div class="box">주1) 시세모니터사는 거래동향과 매물시세를 수시로 체크하여 부동산114에 시세정보를 정기적으로 제공하는 공인중개사무소를 의미합니다.</div>
                                </li>
                                <li>
                                    <strong class="tit deco_q">부동산114 시세는 언제부터 조사됐나요?</strong>
                                    <p>부동산114는 2000년 01월부터 아파트 시세조사를 진행하고 있습니다.</p>
                                </li>
                                <li>
                                    <strong class="tit deco_q">부동산114 시세 조사방법은 어떻게 됩니까?</strong>
                                    <p>시세모니터사가 R플러스주2)에 시세를 입력하면 부동산114는 입력된 시세를 취합하여 시세 적정성 검증과정을 거친 이후에 서비스를 적용합니다.<br>다만, 시세모니터사가 온라인상에 시세를 입력하지 않을 경우 전문시세조사요원이 전화로 시세를 조사합니다.</p>
                                    <div class="box">주2) R플러스는 공인중개사무소 회원전용 서비스로 시세관리, 매물관리 등을 하는 온라인 중개업무 통합관리시스템입니다.</div>
                                    <div class="img_wrap">
                                        <img src="https://image.r114.co.kr/W1/images/sub/ss_moniter_step.png" alt="">
                                    </div>
                                </li>
                                <li>
                                    <strong class="tit deco_q">시세모니터사는 1곳입니까?</strong>
                                    <p>부동산114는 조사의 효율성 및 시세의 연속성 등을 고려하여 1개 시세모니터사의 시세제공을 원칙으로 합니다. 다만, 특정 시세모니터사의 시세조사 편중을 막고자 시세 적정성 검증을 진행합니다.</p>
                                </li>
                                <li>
                                    <strong class="tit deco_q">시세 적정성 검증은 어떻게 진행되나요?</strong>
                                    <p>부동산114는 조사의 효율성 및 시세의 연속성 등을 고려하여 1개 시세모니터사의 시세제공을 원칙으로 합니다. 다만, 특정 시세모니터사의 시세조사 편중을 막고자 시세 적정성 검증을 진행합니다.</p>
                                    <dl class="list_dd2">
                                        <dt class="deco_arr">주간조사</dt>
                                        <dd>① 시세입력 오류검증은 주간 동안의 가격 변동액과 변동률을 확인합니다. 단지별 변동현황을 확인하여 지역 내 평균값 이상(±10%)으로 가격변동이 있을 경우 시세 재조사가 진행됩니다.</dd>
                                        <dd>② 주간 평형별 시세 상,하한가의 격차가 평형 시세평균가와 대비하였을 때 평균값 이상(±20%)으로 상,하한가 격차가 심한 단지는 재 시세조사가 진행됩니다.</dd>
                                        <dt class="deco_arr">월간조사</dt>
                                        <dd>③ 실거래가격 비교검증은 월 1회, 부동산114의 시세평균과 실거래가를 비교해 ±5% 이상 가격변동이 있을 경우 시세 재조사가 진행됩니다.</dd>
                                        <dt class="deco_arr">분기조사</dt>
                                        <dd>④ 실거래가가 계약 후 60일이내 신고 의무화되고 있어 조사시점 괴리 문제점이 있으므로, 시세 정보 제휴를 통해 제공 받고 있는 한국감정원의 시세를 부동산114의 시세와 비교하여 ±5%이상 가격변동이 있을 경우 분기 단위로 시세 재조사를 진행하고 있습니다.</dd>
                                        <dd>⑤ 최근 3개월간 실거래 사례가 없는 단지의 경우 매물가격 비교검증을 분기단위로 실시하고 있습니다. 부동산114의 중개회원 매물가격과 비교하여 ±5%이상치에 대해서 시세재조사를 진행합니다. 이때 시세는 주변 유사 단지의 거래 현황을 참고하여 거래 가능한 가격대가 반영됩니다.</dd>
                                    </dl>
                                </li>
                                <li>
                                    <strong class="tit deco_q">부동산114 시세는 언제 발표되나요?</strong>
                                    <p>아파트는 매주 금요일 부동산114(<a href="www.r114.com">www.r114.com</a>) 사이트와 부동산시장 분석 솔루션(Real Estate Power Solution)에 게재됩니다. 또한 다음부동산(<a href="http://estate.nate.com/">http://realestate.daum.net</a>), 네이트부동산(<a href="http://estate.nate.com/">http://estate.nate.com/</a> ) 등의 외부 CP에도 서비스됩니다.</p>
                                </li>
                                <li>
                                    <strong class="tit deco_q">부동산114 사이트에서 제공하는 가격정보는 무엇이 있나요?</strong>
                                    <p>①부동산114 시세 ②국토교통부 시세(실거래가 공개는 국토교통부 실거래가 사이트[<a href="http://rt.molit.go.kr/">http://rt.molit.go.kr/</a>]에서 매매 20일 이후, 전월세 28일 이후 노출된 가격을 제공) ③한국감정원 시세(한국감정원이 주간으로 조사하는 전국 아 파트 시세) 3가지 항목을 모두 확인 할 수 있습니다. 그 외 부가적으로 수도권 아파트의 공시가격이 함께 노출됩니다.
                                    매물은 부동산114 안심! 가격분석 서비스로 "부동산114시세, 국토교통부 실거래가, 한국감정원 시세" 가격지표로 매물가격의 적정성을 판단할 수 있도록 도움을 드리는 서비스를 진행하고 있습니다.</p>
                                </li>
                                <li>
                                    <strong class="tit deco_q">왜 우리 단지의 시세는 없나요?</strong>
                                    <p>시세조사를 할 수 없는 예외상황에서는 시세를 서비스하지 않습니다. ① 거래사례가 적고 특수한 사례로 시세파악이 되지 않는 경우 ② 시세모니터사 부재 등 지속적인 조사가 불가능한 경우 ③ 전매제한, 임대 아파트로 거래가 불가능한 경우 ④ 재건축으로 인해 아파트가 멸실된 경우 ⑤ 해당단지의 민원, 분쟁 및 법정소송이 발생해 지속적인 조사가 불가능한 경우 등입니다.</p>
                                </li>
                                <li>
                                    <strong class="tit deco_q">시세모니터사 선정 기준은 무엇인가요?</strong>
                                    <p>① 해당 아파트 및 오피스텔과 1km내 위치한 공인중개사무소(단, 1km내 공인중개사무소 희소한 경우 거리제한은 예외가 될 수 있음) ② 매물취급과 실거래 빈도수가 높은 곳 ③ 부동산114 회원사 우선순위 기준으로 시세모니터사가 선정됩니다.</p>
                                </li>
                                <li>
                                    <strong class="tit deco_q">시세모니터사를 바꿀 수 있나요?</strong>
                                    <p>시세 제공 공인중개사무소가 이전 혹은 폐업을 하였을 때, 또는 시세가 부정확하게 제공될 때에는 부동산114가 조사, 검증 후에 변경합니다. 일반인도 부정확한 시세라고 판단될 때에는 자사에 수정을 요청할 수 있습니다.</p>
                                </li>
                                <li>
                                    <strong class="tit deco_q">시세수정 요청은 어떻게 하나요?</strong>
                                    <p>전화 (☏031-789-1114), 부동산114 helper mail로 문의 주시면 담당자가 확인 후 1일 이내 회신 드립니다.<br>시세는 ①국토교통부 실거래가격 ②부동산114 매물 ③ 타사 시세 및 매물 가격 등 비교로 재 확인됩니다.</p>
                                </li>
                                <li>
                                    <strong class="tit deco_q">시세와 매물가격의 차이는 무엇 때문인가요?</strong>
                                    <p>부동산114시세는 단순 매수·매도희망가격이 아닌 거래사례에 준거한 시세를 기반으로 작성하므로 특정물건의 개별적인 호가와는 다를 수 있습니다.</p>
                                </li>
                                <li>
                                    <strong class="tit deco_q">시세와 실거래가의 차이는 무엇 때문인가요?</strong>
                                    <p>부동산114시세는 시세모니터사에서 조사된 시장표준가격을 대상으로 작성한 "조사통계"인 반면, 실거래가 통계는 계약체결된 거래주택에 대해 신고된 거래가격을 토대로 한 "보고통계"입니다.<br>거래신고는 계약일로부터 60일 이내 신고기간이 의무화돼 있어 현재시세와 시점 차이가 있을 수 있습니다. 또한 개별적인 물건의 특성과 사정에 따라 형성된 실거래 사례도 있으므로 부동산114 시세범주 밖의 실거래가가 존재 할 수 있습니다.</p>
                                </li>
                                <li>
                                    <strong class="tit deco_q">부동산114 시세의 장점은 무엇인가요?</strong>
                                    <p>부동산114는 단지별 이력관리를 통해 변동상황 체크 시스템을 확보하고 있고 자체 개발 검수시스템 운영을 통해 시세정확성을 확보하고자 노력하고 있습니다.<br>
                                    또한 시장변화에 따른 신속하고 지속적인 정보수집 및 보강 시스템을 통해 아파트 외 오피스텔, 도시형생활주택 등의 임대수익형 상품시세를 확보하고 있습니다.<br>
                                    부동산114는 단순시세조사 외 인덱스 개발 및 솔루션 등을 통해 전문성을 갖추고 있어 정부(기획재정부, 한국은행 등), 지자체(서울부동산정보광장), 건설사(삼성물산 등), 연구기관(건설산업연구원 등), 금융권까지 부동산114데이터를 활용하고 있어 공신력과 광범위한 시장 니즈를 확보하고 있습니다.<br>
                                    앞으로도 이용자가 느끼는 체감통계와 부동산114시세 통계 차이를 해소해 나감으로써 보다 정확하고 신뢰성 있는 가격정보를 제공하고자 노력하겠습니다.
                                    </p><div class="deco_arr red">조사 및 통계관련 문의 : 리서치센터 DB개발팀 (☎ 031-710-1929)</div>
                                    <p></p>
                                </li>


                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="btn_wrap">
                <a href="javascript:closeLp('#lp_layout_supply_price')" class="btn_type1">닫기</a>
            </div>
            <!-- 팝업컨텐츠 끝 -->
            <div class="lp_close">
                <a href="javascript:closeLp('#lp_layout_supply_price')">닫기</a>
            </div>
        </div>
    </div>
    <!-- 팝업바디 끝 -->
</div>
<!-- //  시세제공기준 레이업팝업 -->

<!--전체로딩-->
<div class="loading_wrap" style="display: none;">
    <!--  <img src="http://image.r114.co.kr/W1/images/common/loading-bubbles.svg" width="64" height="64">  -->
    <img src="https://image.r114.co.kr/W1/images/sub/loading.gif">
</div>

<!-- 푸터 시작 -->
<div id="foot_layout">
	<div class="menu_wrap clearfix">
		<div class="w_fix">
			<ul class="menu">
				<li><a href="javascript:;" onclick="window.open('http://info.r114.com/r114/',  target='_blank');">회사소개</a></li>
				<li><a href="/?_c=information&amp;_m=information&amp;_a=UsingTerms">이용약관</a></li>
				<li><a href="/?_c=information&amp;_m=information&amp;_a=UsingTermsLBS">위치기반서비스이용약관</a></li>
				<li><a href="/?_c=information&amp;_m=information&amp;_a=ContactUs">제휴문의</a></li>
				<li><a href="/?_c=information&amp;_m=information&amp;_a=PrivacyPolicy">개인정보처리방침</a></li>
				<li><a href="/?_c=information&amp;_m=information&amp;_a=CopyrightStatement" target="_blank">저작권규약</a></li>
				<li><a href="/?_c=information&amp;_m=information&amp;_a=LiabilityLimit">책임한계 및 법적고지</a></li>
				<li><a href="javascript:" onclick="opeRejectCrolling();">이메일 무단수집거부</a></li>
				<li><a href="javascript:" onclick="openEditPolicy();">콘텐츠 편집 원칙</a></li>
				<li><a href="javascript:" onclick="openInquiry();">고객센터문의</a></li>
			</ul>
			<div class="sitemap">
				<a href="javascript:">sitemap</a>
				<div class="cont">
					<div class="header">
                        <strong>SITE MAP</strong><em>부동산114사이트를 한 눈에 보실 수 있습니다.</em>
                    </div>
                    <div class="sub_memul">
                        <h4 class="h4_type4">매물/시세<em class="small">부동산114의 다양한 매물을 확인하실 수 있습니다.</em></h4>
                        <ul>
                            <li><a href="/?_c=memul&amp;_m=p10&amp;direct=A">아파트</a></li>
                            <li><a href="/?_c=memul&amp;_m=p10&amp;direct=B">주상복합</a></li>
                            <li><a href="/?_c=memul&amp;_m=p10&amp;direct=C">재건축</a></li>
                            <li><a href="/?_c=memul&amp;_m=p10&amp;direct=D">오피스텔</a></li>
                            <li><a href="/?_c=memul&amp;_m=p10&amp;direct=E">분양권</a></li>
                            <li><a href="/?_c=memul&amp;_m=p10&amp;direct=F">빌라</a></li>
                            <li><a href="/?_c=memul&amp;_m=p10&amp;direct=G">원룸</a></li>
                            <li><a href="/?_c=memul&amp;_m=p10&amp;direct=H">주택</a></li>
                            <li><a href="/?_c=memul&amp;_m=p10&amp;direct=I">재개발</a></li>
                            <li><a href="/?_c=memul&amp;_m=p10&amp;direct=J">상가</a></li>
                            <li><a href="/?_c=memul&amp;_m=p10&amp;direct=K">사무실</a></li>
                            <li><a href="/?_c=memul&amp;_m=p10&amp;direct=L">건물</a></li>
                            <li><a href="/?_c=memul&amp;_m=p10&amp;direct=M">공장</a></li>
                            <li><a href="/?_c=memul&amp;_m=p10&amp;direct=N">창고</a></li>
                            <li><a href="/?_c=memul&amp;_m=p10&amp;direct=O">토지</a></li>
                            <li><a href="/?_c=memul&amp;_m=p10&amp;direct=P">숙박/펜션</a></li>
                            <li><a href="/?_c=memul&amp;_m=p10&amp;direct=Q">경매</a></li>
                            <li><a href="/?_c=memul&amp;_m=p10&amp;direct=R">기타</a></li>
                        </ul>
                    </div>
                    <ul class="hover_menu">
                        <li><a href="/?_c=ask">매물의뢰</a>
                            <ul>
                                <li><a href="javascript:goAskSellPage();">내놓기 등록</a></li>
                                <li><a href="javascript:goAskBuyPage();">구하기 등록</a></li>
                                <li><a href="/?_c=ask&amp;_m=asklist">의뢰현황</a></li>
                                <li><a href="/?_c=ask&amp;_m=customerreview">고객후기</a></li>
                                <li><a href="/?_c=ask&amp;_m=findagent">중개사무소 찾기</a></li>
                            </ul>
                        </li>

						<li><a href="/?_c=service&amp;_s=directdeal&amp;_m=directdeallistPersonal">직거래</a>
							<ul>
								<li><a href="/?_c=service&amp;_s=directdeal&amp;_m=directdeallistPersonal">개인매물</a></li>
								<li><a href="/?_c=service&amp;_s=directdeal&amp;_m=directdeallistEnterprise">기업매물</a></li>
								<li><a href="/?_c=service&amp;_s=directdeal&amp;_m=directdeallistState">국유재산 사용/매각</a></li>
							</ul>
						</li>
						 <li><a href="/?_c=lots">분양</a>
                            <ul>
                                <li><a href="/?_c=lots&amp;_s=info&amp;_m=infolist">분양정보</a></li>
                                <li><a href="/?_c=lots&amp;_s=lotsSchedule&amp;_m=lotsSchedule">분양일정</a></li>
                                <li><a href="/?_c=lots&amp;_m=lotsnews">분양뉴스</a></li>								
                                <li><a href="/?_c=lots&amp;_s=lotsScene&amp;_m=lotsScene">분양&amp;현장</a></li>
                                <li><a href="/?_c=lots&amp;_m=ipjuinfo">입주지원센터</a></li>
                                <li><a href="/?_c=lots&amp;_s=offerStrategy&amp;_m=lotsOfferGuide">청약전략</a></li>
								<li><a href="/?_c=lots&amp;_s=Jigu&amp;_m=JiguList">지역개발정보</a></li>
								<!--<li><a href="/?_c=lots&_m=VrCenterlist&_s=VrCenterlist">VR분양관</a></li>-->
                            </ul>
                        </li>
                        <li><a href="/?_c=research">리서치</a>
                            <ul>
                                <li><a href="/?_c=Research&amp;_m=ReportNews">리포트&amp;뉴스</a></li>
                                <li><a href="/?_c=Research&amp;_m=LocalAnalysis">로컬분석</a></li>
                                <li><a href="/?_c=Research&amp;_m=KnowHow">상식</a></li>
                                <li><a href="/?_c=Research&amp;_m=Column">칼럼</a></li>
                                <li><a href="/?_c=Research&amp;_m=ZoomIn">TV속 부동산114</a></li>
                            </ul>
                        </li>
                       
						 <li><a href="/?_c=StartupSupport" target="_blank">창업지원</a>
                            <ul>
                                <li><a href="/?_c=StartupSupport&amp;_s=StoreInfo" target="_blank">상가, 상가건물정보</a></li>
								<li><a href="/?_c=StartupSupport&amp;_s=Franchise" target="_blank">프랜차이즈정보</a></li>
								<li><a href="/?_c=StartupSupport&amp;_s=MarketAnalysis" target="_blank">상권분석</a></li>
                            </ul>
							 <a href="?_c=service&amp;_m=counsel">커뮤니티</a>
                            <ul>
                                <li><a href="/?_c=service&amp;_m=counsel">부동산상담</a></li>
								<li><a href="/?_c=service&amp;_s=community&amp;tabGubun=1">우리동네, 단지 이야기</a></li>
								<li><a href="/?_c=service&amp;_s=community&amp;pageNo=1&amp;tabGubun=2&amp;sortTag=0">공인중개사 현장이야기</a></li>
								<li><a href="/?_c=solution&amp;_m=event">이벤트</a></li>
                            </ul>
                        </li>

						<li><a href="/?_c=service&amp;_m=Auction">경매</a>
                            <ul>
                                <li><a href="/?_c=service&amp;_m=Auction&amp;tab=1">경매물건조회</a></li>
								<li><a href="/?_c=service&amp;_m=Auction&amp;tab=2">경매STUDY</a></li>
								<li><a href="/?_c=service&amp;_m=Auction&amp;tab=3">경매결과/통계</a></li>
								<li><a href="/?_c=service&amp;_m=Auction&amp;tab=4">경매커뮤니티</a></li>
								<li><a href="/?_c=service&amp;_m=Auction&amp;tab=5">FUN경매</a></li>
								<li><a href="/?_c=service&amp;_m=Auction&amp;tab=6">My페이지</a></li>
                            </ul>
                        </li>

						<li><a href="/?_c=service&amp;_s=life&amp;_m=Interior">이사/인테리어</a>
                            <ul>
                                <li><a href="/?_c=service&amp;_s=life&amp;_m=Interior">인테리어견적</a></li>
								<li><a href="/?_c=service&amp;_s=life&amp;_m=move&amp;_a=estimate">이사견적</a></li>
								<li><a href="/?_c=service&amp;_s=life&amp;_m=move&amp;_a=cleaner">입주청소</a></li>
								<li><a href="/?_c=service&amp;_s=life&amp;_m=moveguide">이사가이드</a></li>
                            </ul>
							<a href="/?_c=service&amp;_s=life&amp;_m=loan">대출</a>
                            <ul>
                                <li><a href="/?_c=service&amp;_s=life&amp;_m=loan">대출상품조회</a></li>
                            </ul>
                        </li>

					

                        <li><a href="/?_c=ForPartners">중개회원존</a>
                            <ul>
                                <li><a href="/?_c=ForPartners&amp;_m=AgentGuide">중개회원 가입안내</a></li>
                                <li><a href="/?_c=ForPartners&amp;_m=AgentGuide&amp;_a=RPlus">알플러스 안내</a></li>
                                <li><a href="/?_c=ForPartners&amp;_m=AgentOffice">중개사무소자리</a></li>
                                <li><a href="/?_c=ForPartners&amp;_m=AgentWants">구인/구직</a></li>
                                <li><a href="/?_c=ForPartners&amp;_m=AgentNotice">중개회원존 공지사항</a></li>
                            </ul>
                        </li>
                        <li><a href="/?_c=mypage&amp;_m=mypage">마이페이지</a>
                            <ul>
                                <li><a href="/?_c=mypage&amp;_m=mytrace">나의활동</a></li>
                                <li><a href="/?_c=mypage&amp;_m=myconcern">나의관심</a></li>
                                <li><a href="/?_c=mypage&amp;_s=myasking&amp;_m=myasking">의뢰내역</a></li>
                                <li><a href="/?_c=mypage&amp;_s=directdeal&amp;_m=mydirectdeal">직거래</a></li>
                                <li><a href="/?_c=mypage&amp;_m=mycoupon">지식나눔쿠폰</a></li>
                                <li><a href="/?_c=mypage&amp;_m=notification">알리미서비스</a></li>
                                <li><a href="/?_c=mypage&amp;_m=myinquiry">나의문의</a></li>
                                <li><a href="/?_c=mypage&amp;_m=mypage&amp;_a=modify">회원정보 수정</a></li>
                            </ul>
                        </li>
                    </ul>
                    <div class="bottom">
                        <strong class="appdown_title">모바일로 만나는 부동산114 앱 다운받기</strong>
                        <a href="/?_c=information&amp;_m=information&amp;_a=MobileIntroduce&amp;flag=r114" class="btn_appdown_114">부동산114 앱 다운받기</a>
                        <a href="/?_c=information&amp;_m=information&amp;_a=MobileIntroduce&amp;flag=r114go" class="btn_appdown_bdsgo">부동산GO 앱 다운받기</a>
                        <a href="/?_c=information&amp;_m=information&amp;_a=MobileIntroduce&amp;flag=bangcall" class="btn_appdown_bangcall">방콜 앱 다운받기</a>
                    </div>
				</div>
			</div>
		</div>
	</div>
	<div class="info_wrap">
		<div class="w_fix clearfix">
			<div class="info">
				<span class="logo_miraeasset">mirae asset 부동산114</span>
				<p>
					<span>부동산114주식회사</span><span>대표: 이성용</span><span>경기도 성남시 분당구 판교역로241번길 20, 미래에셋벤처타워 10층 (삼평동)</span><span>사업자번호: 211-86-53421</span><span>통신판매업: 제 2011-경기성남-1356호
 <br>팩스: 031-789-1127</span><span>인터넷뉴스서비스등록번호: 경기,자60006 (등록일자: 2010.01.17)</span><span>발행·편집인: 이성용</span><span>기사배열 책임자: 김은진</span><span>청소년보호책임자: 이연희</span>
				</p>
				<p class="info2">
					<span class="copyright">Copyright © 부동산114. All rights reserved</span><span class="tel_set"><span class="tel">고객센터<em>031-789-1114</em></span><span class="tel">중개회원가입문의<em>031-707-0114</em></span></span>
				</p>
				<div class="f_site">
                    
                </div>
			</div>
		</div>
	</div>
	<div class="info_wrap2">
		<div class="w_fix clearfix">
			<ul class="awards">
				<li>부동산 종합정보<br>1위 인증</li>
				<li>부동산 종합정보<br>포털부문 1위</li>
				<li>Verisign<br>인증사이트</li>
			</ul>
			<div class="social_set">
				<a href="http://post.naver.com/my.nhn?memberNo=478443" target="_blank" class="naver">네이버</a>
				<a href="https://www.facebook.com/realestate114" target="_blank" class="face">페이스북</a>
				<a href="http://blog.naver.com/r114korea" target="_blank" class="blog">네이버블로그</a>
				<a href="https://www.youtube.com/channel/UCXvGtSJUybn-j_grFsWJfuw" target="_blank" class="youtube">유튜브</a>
				<!--<a href="https://twitter.com/R114_kr" target="_blank" class="tw">트위터</a>-->
			</div>
		</div>
	</div>
</div>
<!-- 푸터  -->


<!-- 이메일무단수집거부 레이업팝업 -->
<div id="lp_layout_rejectCrolling" style="display: none">
	<!-- 팝업바디 -->
	<div class="lp_wrap type1" style="width:680px">
		<div class="inner">
			<div class="lp_con agreement">
				<h4>이메일 무단수집거부</h4>
				<div class="cont">
					<span class="ico_comm_l email_d"></span>
                    <div class="bx_guide1">
                        <p class="fc_gray3">본 웹사이트에 게시된 이메일 주소가 전자우편 수집 프로그램이나 그 밖의 기술적 장치를 이용하여 무단으로 수집되는 것을 거부하며, 이를 위반시 <strong class="txt_bold">정보통신망법에 의해 형사처벌</strong>됨을 유념하시기 바랍니다.</p><br>
                        <div class="fc_gray3 fw4 rt">[게시일 2004년 1월 26일]</div>
                    </div>
				</div>
			</div>
			<div class="lp_close">
				<a href="#none" onclick="closeLp('#lp_layout_rejectCrolling')"><span class="ico_comm_s close_lp">닫기</span></a>
			</div>
		</div>
	</div>
	<!-- //팝업바디 -->
</div>
<!-- //레이업팝업 -->

<!-- 컨텐츠편집원칙 레이업팝업 -->
<div id="lp_layout_editPolicy" style="display: none">
	<!-- 팝업바디 -->
	<div class="lp_wrap type1" style="width:800px">
		<div class="inner">
			<div class="lp_con agreement">
				<h4>콘텐츠 편집 원칙</h4>
				<div class="cont">
                    <div class="bx_guide1">
                        <strong class="fc_gray3 fw4">부동산114는 콘텐츠 편집에 있어 다음의 원칙을 공개하고 이를 준수하겠습니다. <br>콘텐츠제공의 사회적 책임을 높이고 편집과정의 투명성을 높여, 이용자에게 유익한 정보를 제공하도록 힘쓰겠습니다.</strong>
                    </div>
					<ul class="mgt4">
                        <li>1. <strong class="fc_gray3">다양한 정보를 신속하게 제공하겠습니다. </strong><br>
                            이용자가 필요로 하는 정보를 신속하게 전달하겠습니다. <br>
                            신뢰성 있는 매체를 통해 다양하고 차별화된 정보를 함께 제공하겠습니다. <br>
                            이용자 제작 콘텐츠를 제공해 이용자 참여의 장을 확대시키겠습니다.
                        </li>
                        <li>2. <strong class="fc_gray3">공익적이며 보편적인 콘텐츠제공을 유지하겠습니다. </strong><br>
                            특정 계층, 집단, 지역, 종교 등에 편향된 기사는 배제하겠습니다. <br>
                            상업적이거나 선정적인 내용의 기사는 지양하고 유익한 정보 전달에 힘쓰겠습니다. <br>
                            장애인, 비정규직, 외국인노동자, 여성, 노인, 어린이 등 사회적 약자의 인권을 배려하고 존중하겠습니다.
                        </li>
                        <li>3. <strong class="fc_gray3">개인정보 보호에 힘쓰겠습니다. </strong><br>
                            개인정보와 인격침해 및 명예훼손을 최소화 할수 있도록 편집하겠습니다. <br>
                            기사나 댓글을 통해 개인정보가 유출되거나 상업적으로 이용되지 않도록 모니터 의무를 하겠습니다. <br>
                            콘텐츠서비스에 대한 궁금점 및 개선사항 등의 이용자 의견을 수렴하고, 답변을 드리는 고객센터를 상시 <br>
                            운영하겠습니다.
                        </li>
                        <li>4. <strong class="fc_gray3">정치적 중립을 지키겠습니다. </strong><br>
                            정치적으로 특정계층의 이해관계의 입장을 지양하고 균형잡힌 정보를 제공하겠습니다.
                        </li>
                    </ul>
				</div>
			</div>
			<div class="lp_close">
				<a href="#none" onclick="closeLp('#lp_layout_editPolicy')"><span class="ico_comm_s close_lp">닫기</span></a>
			</div>
		</div>
	</div>
	<!-- //팝업바디 -->
</div>
<!-- //레이업팝업 -->

</script>

<div class="ui-selectmenu-menu ui-front"><ul aria-hidden="true" aria-labelledby="ui-id-1-button" id="ui-id-1-menu" role="listbox" tabindex="0" class="ui-menu ui-corner-bottom ui-widget ui-widget-content" aria-activedescendant="ui-id-74" aria-disabled="false"><li class="ui-menu-item"><div id="ui-id-74" tabindex="-1" role="option" class="ui-menu-item-wrapper ui-state-active">전체</div></li><li class="ui-menu-item"><div id="ui-id-75" tabindex="-1" role="option" class="ui-menu-item-wrapper">1억 이하</div></li><li class="ui-menu-item"><div id="ui-id-76" tabindex="-1" role="option" class="ui-menu-item-wrapper">2억 이하</div></li><li class="ui-menu-item"><div id="ui-id-77" tabindex="-1" role="option" class="ui-menu-item-wrapper">3억 이하</div></li><li class="ui-menu-item"><div id="ui-id-78" tabindex="-1" role="option" class="ui-menu-item-wrapper">4억 이하</div></li><li class="ui-menu-item"><div id="ui-id-79" tabindex="-1" role="option" class="ui-menu-item-wrapper">5억 이하</div></li><li class="ui-menu-item"><div id="ui-id-80" tabindex="-1" role="option" class="ui-menu-item-wrapper">6억 이하</div></li><li class="ui-menu-item"><div id="ui-id-81" tabindex="-1" role="option" class="ui-menu-item-wrapper">7억 이하</div></li><li class="ui-menu-item"><div id="ui-id-82" tabindex="-1" role="option" class="ui-menu-item-wrapper">8억 이하</div></li><li class="ui-menu-item"><div id="ui-id-83" tabindex="-1" role="option" class="ui-menu-item-wrapper">9억 이하</div></li><li class="ui-menu-item"><div id="ui-id-84" tabindex="-1" role="option" class="ui-menu-item-wrapper">10억 이하</div></li><li class="ui-menu-item"><div id="ui-id-85" tabindex="-1" role="option" class="ui-menu-item-wrapper">직접입력</div></li></ul></div><div class="ui-selectmenu-menu ui-front"><ul aria-hidden="true" aria-labelledby="ui-id-2-button" id="ui-id-2-menu" role="listbox" tabindex="0" class="ui-menu ui-corner-bottom ui-widget ui-widget-content" aria-activedescendant="ui-id-86" aria-disabled="false"><li class="ui-menu-item"><div id="ui-id-86" tabindex="-1" role="option" class="ui-menu-item-wrapper ui-state-active">전체</div></li><li class="ui-menu-item"><div id="ui-id-87" tabindex="-1" role="option" class="ui-menu-item-wrapper">5천만원 이하</div></li><li class="ui-menu-item"><div id="ui-id-88" tabindex="-1" role="option" class="ui-menu-item-wrapper">1억 이하</div></li><li class="ui-menu-item"><div id="ui-id-89" tabindex="-1" role="option" class="ui-menu-item-wrapper">1.5억 이하</div></li><li class="ui-menu-item"><div id="ui-id-90" tabindex="-1" role="option" class="ui-menu-item-wrapper">2억 이하</div></li><li class="ui-menu-item"><div id="ui-id-91" tabindex="-1" role="option" class="ui-menu-item-wrapper">2.5억 이하</div></li><li class="ui-menu-item"><div id="ui-id-92" tabindex="-1" role="option" class="ui-menu-item-wrapper">3억 이하</div></li><li class="ui-menu-item"><div id="ui-id-93" tabindex="-1" role="option" class="ui-menu-item-wrapper">3.5억 이하</div></li><li class="ui-menu-item"><div id="ui-id-94" tabindex="-1" role="option" class="ui-menu-item-wrapper">4억 이하</div></li><li class="ui-menu-item"><div id="ui-id-95" tabindex="-1" role="option" class="ui-menu-item-wrapper">4.5억 이하</div></li><li class="ui-menu-item"><div id="ui-id-96" tabindex="-1" role="option" class="ui-menu-item-wrapper">5억 이하</div></li><li class="ui-menu-item"><div id="ui-id-97" tabindex="-1" role="option" class="ui-menu-item-wrapper">직접입력</div></li></ul></div><div class="ui-selectmenu-menu ui-front"><ul aria-hidden="true" aria-labelledby="ui-id-3-button" id="ui-id-3-menu" role="listbox" tabindex="0" class="ui-menu ui-corner-bottom ui-widget ui-widget-content" aria-activedescendant="ui-id-98" aria-disabled="false"><li class="ui-menu-item"><div id="ui-id-98" tabindex="-1" role="option" class="ui-menu-item-wrapper ui-state-active">전체</div></li><li class="ui-menu-item"><div id="ui-id-99" tabindex="-1" role="option" class="ui-menu-item-wrapper">30만원 이하</div></li><li class="ui-menu-item"><div id="ui-id-100" tabindex="-1" role="option" class="ui-menu-item-wrapper">50만원 이하</div></li><li class="ui-menu-item"><div id="ui-id-101" tabindex="-1" role="option" class="ui-menu-item-wrapper">100만원 이하</div></li><li class="ui-menu-item"><div id="ui-id-102" tabindex="-1" role="option" class="ui-menu-item-wrapper">200만원 이하</div></li><li class="ui-menu-item"><div id="ui-id-103" tabindex="-1" role="option" class="ui-menu-item-wrapper">직접입력</div></li></ul></div><div class="ui-selectmenu-menu ui-front"><ul aria-hidden="true" aria-labelledby="areaSizeM2Type-button" id="areaSizeM2Type-menu" role="listbox" tabindex="0" class="ui-menu ui-corner-bottom ui-widget ui-widget-content" aria-activedescendant="ui-id-112" aria-disabled="false"><li class="ui-menu-item"><div id="ui-id-112" tabindex="-1" role="option" class="ui-menu-item-wrapper ui-state-active">전체</div></li><li class="ui-menu-item"><div id="ui-id-113" tabindex="-1" role="option" class="ui-menu-item-wrapper">0~66㎡</div></li><li class="ui-menu-item"><div id="ui-id-114" tabindex="-1" role="option" class="ui-menu-item-wrapper">66~99㎡</div></li><li class="ui-menu-item"><div id="ui-id-115" tabindex="-1" role="option" class="ui-menu-item-wrapper">99~132㎡</div></li><li class="ui-menu-item"><div id="ui-id-116" tabindex="-1" role="option" class="ui-menu-item-wrapper">132~165㎡</div></li><li class="ui-menu-item"><div id="ui-id-117" tabindex="-1" role="option" class="ui-menu-item-wrapper">165~198㎡</div></li><li class="ui-menu-item"><div id="ui-id-118" tabindex="-1" role="option" class="ui-menu-item-wrapper">198~330㎡</div></li><li class="ui-menu-item"><div id="ui-id-119" tabindex="-1" role="option" class="ui-menu-item-wrapper">330~991㎡</div></li><li class="ui-menu-item"><div id="ui-id-120" tabindex="-1" role="option" class="ui-menu-item-wrapper">직접입력</div></li></ul></div><div class="ui-selectmenu-menu ui-front"><ul aria-hidden="true" aria-labelledby="areaSizePyType-button" id="areaSizePyType-menu" role="listbox" tabindex="0" class="ui-menu ui-corner-bottom ui-widget ui-widget-content" aria-activedescendant="ui-id-104" aria-disabled="false"><li class="ui-menu-item"><div id="ui-id-104" tabindex="-1" role="option" class="ui-menu-item-wrapper ui-state-active">전체</div></li><li class="ui-menu-item"><div id="ui-id-105" tabindex="-1" role="option" class="ui-menu-item-wrapper">20평 이하</div></li><li class="ui-menu-item"><div id="ui-id-106" tabindex="-1" role="option" class="ui-menu-item-wrapper">20평대</div></li><li class="ui-menu-item"><div id="ui-id-107" tabindex="-1" role="option" class="ui-menu-item-wrapper">30평대</div></li><li class="ui-menu-item"><div id="ui-id-108" tabindex="-1" role="option" class="ui-menu-item-wrapper">40평대</div></li><li class="ui-menu-item"><div id="ui-id-109" tabindex="-1" role="option" class="ui-menu-item-wrapper">50평대</div></li><li class="ui-menu-item"><div id="ui-id-110" tabindex="-1" role="option" class="ui-menu-item-wrapper">50평 이상</div></li><li class="ui-menu-item"><div id="ui-id-111" tabindex="-1" role="option" class="ui-menu-item-wrapper">직접입력</div></li></ul></div><div class="ui-selectmenu-menu ui-front"><ul aria-hidden="true" aria-labelledby="ui-id-4-button" id="ui-id-4-menu" role="listbox" tabindex="0" class="ui-menu ui-corner-bottom ui-widget ui-widget-content" aria-activedescendant="ui-id-121" aria-disabled="false"><li class="ui-menu-item"><div id="ui-id-121" tabindex="-1" role="option" class="ui-menu-item-wrapper ui-state-active">전체</div></li><li class="ui-menu-item"><div id="ui-id-122" tabindex="-1" role="option" class="ui-menu-item-wrapper">1개</div></li><li class="ui-menu-item"><div id="ui-id-123" tabindex="-1" role="option" class="ui-menu-item-wrapper">2개</div></li><li class="ui-menu-item"><div id="ui-id-124" tabindex="-1" role="option" class="ui-menu-item-wrapper">3개</div></li><li class="ui-menu-item"><div id="ui-id-125" tabindex="-1" role="option" class="ui-menu-item-wrapper">4개 이상</div></li></ul></div><div class="ui-selectmenu-menu ui-front"><ul aria-hidden="true" aria-labelledby="ui-id-5-button" id="ui-id-5-menu" role="listbox" tabindex="0" class="ui-menu ui-corner-bottom ui-widget ui-widget-content" aria-activedescendant="ui-id-131" aria-disabled="false"><li class="ui-menu-item"><div id="ui-id-131" tabindex="-1" role="option" class="ui-menu-item-wrapper ui-state-active">전체</div></li><li class="ui-menu-item"><div id="ui-id-132" tabindex="-1" role="option" class="ui-menu-item-wrapper">10만원 이하</div></li><li class="ui-menu-item"><div id="ui-id-133" tabindex="-1" role="option" class="ui-menu-item-wrapper">20만원 이하</div></li><li class="ui-menu-item"><div id="ui-id-134" tabindex="-1" role="option" class="ui-menu-item-wrapper">30만원 이하</div></li><li class="ui-menu-item"><div id="ui-id-135" tabindex="-1" role="option" class="ui-menu-item-wrapper">40만원 이하</div></li><li class="ui-menu-item"><div id="ui-id-136" tabindex="-1" role="option" class="ui-menu-item-wrapper">50만원 이하</div></li><li class="ui-menu-item"><div id="ui-id-137" tabindex="-1" role="option" class="ui-menu-item-wrapper">직접입력</div></li></ul></div><div class="ui-selectmenu-menu ui-front"><ul aria-hidden="true" aria-labelledby="ui-id-6-button" id="ui-id-6-menu" role="listbox" tabindex="0" class="ui-menu ui-corner-bottom ui-widget ui-widget-content" aria-activedescendant="ui-id-126" aria-disabled="false"><li class="ui-menu-item"><div id="ui-id-126" tabindex="-1" role="option" class="ui-menu-item-wrapper ui-state-active">전체</div></li><li class="ui-menu-item"><div id="ui-id-127" tabindex="-1" role="option" class="ui-menu-item-wrapper">1개</div></li><li class="ui-menu-item"><div id="ui-id-128" tabindex="-1" role="option" class="ui-menu-item-wrapper">2개</div></li><li class="ui-menu-item"><div id="ui-id-129" tabindex="-1" role="option" class="ui-menu-item-wrapper">3개</div></li><li class="ui-menu-item"><div id="ui-id-130" tabindex="-1" role="option" class="ui-menu-item-wrapper">4개 이상</div></li></ul></div><div class="ui-selectmenu-menu ui-front"><ul aria-hidden="true" aria-labelledby="ui-id-7-button" id="ui-id-7-menu" role="listbox" tabindex="0" class="ui-menu ui-corner-bottom ui-widget ui-widget-content" aria-activedescendant="ui-id-142" aria-disabled="false"><li class="ui-menu-item"><div id="ui-id-142" tabindex="-1" role="option" class="ui-menu-item-wrapper ui-state-active">전체</div></li><li class="ui-menu-item"><div id="ui-id-143" tabindex="-1" role="option" class="ui-menu-item-wrapper">남</div></li><li class="ui-menu-item"><div id="ui-id-144" tabindex="-1" role="option" class="ui-menu-item-wrapper">동</div></li><li class="ui-menu-item"><div id="ui-id-145" tabindex="-1" role="option" class="ui-menu-item-wrapper">남동</div></li><li class="ui-menu-item"><div id="ui-id-146" tabindex="-1" role="option" class="ui-menu-item-wrapper">남서</div></li></ul></div><div class="ui-selectmenu-menu ui-front"><ul aria-hidden="true" aria-labelledby="ui-id-8-button" id="ui-id-8-menu" role="listbox" tabindex="0" class="ui-menu ui-corner-bottom ui-widget ui-widget-content" aria-activedescendant="ui-id-138" aria-disabled="false"><li class="ui-menu-item"><div id="ui-id-138" tabindex="-1" role="option" class="ui-menu-item-wrapper ui-state-active">전체</div></li><li class="ui-menu-item"><div id="ui-id-139" tabindex="-1" role="option" class="ui-menu-item-wrapper">개별난방</div></li><li class="ui-menu-item"><div id="ui-id-140" tabindex="-1" role="option" class="ui-menu-item-wrapper">중앙난방</div></li><li class="ui-menu-item"><div id="ui-id-141" tabindex="-1" role="option" class="ui-menu-item-wrapper">지역난방</div></li></ul></div><div class="ui-selectmenu-menu ui-front"><ul aria-hidden="true" aria-labelledby="ui-id-9-button" id="ui-id-9-menu" role="listbox" tabindex="0" class="ui-menu ui-corner-bottom ui-widget ui-widget-content"></ul></div><div class="ui-selectmenu-menu ui-front"><ul aria-hidden="true" aria-labelledby="areaSizeList-button" id="areaSizeList-menu" role="listbox" tabindex="0" class="ui-menu ui-corner-bottom ui-widget ui-widget-content"></ul></div><iframe name="easyXDM_Kakao_default737_provider" id="easyXDM_Kakao_default737_provider" src="https://kapi.kakao.com/cors/?xdm_e=https%3A%2F%2Fwww.r114.com&amp;xdm_c=default737&amp;xdm_p=1" frameborder="0" style="position: absolute; top: -2000px; left: 0px;"></iframe></body></html>