<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<body style="">
<!-- 스킵네비 시작 -->
<div id="skipNavi">
	<ul>
		<li><a href="#gnb">메뉴 바로가기</a></li>
		<li><a href="#body_layout">본문 바로가기</a></li>
	</ul>
</div>
<!-- 스킵네비 끝 -->

<!-- 로그인 레이업팝업 -->
<div id="lp_layout_login">
	<!-- 팝업바디 -->
	<div class="lp_wrap" style="width:400px">
		<div class="inner">
			<div class="lp_con">
				<div class="login_wrap" style="width:300px">
					<form id="Loginfrm" name="Loginfrm">
					<input type="hidden" id="sns_gbn" name="sns_gbn" value="">
					<input type="hidden" id="sns_id" name="sns_id" value="">
					<input type="hidden" id="sns_email" name="sns_email" value="">
					<input type="hidden" id="jl_gbn" name="jl_gbn" value="L">
					<input type="hidden" id="loginSNS" name="loginSNS" value="N">
					<input type="hidden" id="sns_pw" name="sns_pw" value="">
					<input type="hidden" id="loginGoUrl" name="loginGoUrl" value="">
					<input type="hidden" id="joinSNS" name="joinSNS" value="">
						<h4>로그인</h4>
						<input type="text" class="inp_txt" title="아이디" name="user_id" id="user_id" placeholder="아이디">
						<input type="password" class="inp_txt" name="user_pw" id="user_pw" title="비밀번호" placeholder="비밀번호" onkeypress="fn_enter(event)">
						<a href="javascript:;" onclick="fn_login();" class="btn_type6">로그인</a>
						<div class="ct">
							<a href="javascript:;" onclick="fn_findInfoLayer()">아이디/비밀번호 찾기</a>
							<a href="javascript:;" onclick="location.href='/?_c=mypage&amp;_m=joinmain'">회원가입</a>
						</div>
						<p class="txt1">SNS 계정으로 간편하게 로그인 하실 수 있습니다.</p>
						<div class="login_simple">
							<a href="javascript:;" id="btn_login_kakao" name="btn_login_kakao" class="kakao btn_login_kakao"><span class="ico_comm_l lg_kakao"></span>카카오톡 로그인</a>
							<a href="javascript:;" id="btn_login_naver" name="btn_login_naver" class="naver btn_login_naver"><span class="ico_comm_l lg_naver"></span>네이버 로그인</a>
							<a href="javascript:;" id="btn_login_facebook" class="facebook btn_login_facebook"><span class="ico_comm_l lg_facebook"></span>페이스북 로그인</a>
						</div>
					</form>
				</div>
			</div>
			<div class="lp_close">
				<a href="#none" onclick="closeLp('#lp_layout_login')">닫기</a>
			</div>
		</div>
	</div>
	<!-- //팝업바디 -->
</div>
<!-- // 로그인 레이업팝업 -->

<!-- 아이디 비밀번호 찾기 레이어 팝업 -->
<div id="lp_layout_findInfo">
	<!-- 팝업바디 -->
	<div class="lp_wrap" style="width:400px">
		<div class="inner">
			<div class="lp_con">
				<div class="login_wrap">
					<h4>아이디 / 비밀번호 찾기</h4>
					<label for="id_find">아이디 찾기</label>
					<input type="text" class="inp_txt" id="find_email" name="find_email" placeholder="이메일 주소를 입력해주세요" style="border-color:#ff5252">
					<!-- alert --><p class="txt_warning noMemberEmail" style="display:none"><span class="ico_comm_s warning"></span>등록된 이메일이 없습니다.</p><!-- //alert -->
					<a href="javascript:;" onclick="fn_findInfo('id')" class="btn_type6">아이디 찾기</a>
					<hr>
					<label for="id_find">비밀번호 찾기</label>
					<input type="text" class="inp_txt" id="find_id" name="find_id" placeholder="아이디를 입력해주세요">
					<input type="text" class="inp_txt" id="find_email2" name="find_email2" placeholder="이메일 주소를 입력해주세요">
					<ul class="list_info">
						<li>회원 가입시 등록한 이메일로 임시 비밀번호를 보내드립니다.</li>
						<li>임시 비밀번호로 로그인 후 반드시 마이페이지 &gt; 설정에서 비밀번호를 변경해주세요.</li>
					</ul>
					<a href="javascript:;" onclick="fn_findInfo('pw')" class="btn_type6">비밀번호 찾기</a>
				</div>
			</div>
			<div class="lp_close">
				<a href="#none" onclick="closeLp('#lp_layout_findInfo')">닫기</a>
			</div>
		</div>
	</div>
	<!-- //팝업바디 -->
</div>
<!-- // 아이디 비밀번호 찾기 레이어 팝업 -->

<!-- 트랜드쇼 팝업 180820 : S -->
<div id="lp_layout_180820pop">
	<!-- 팝업바디 -->
	<div class="lp_wrap" style="width:634px">
		<p>
			<img src="https://image.r114.co.kr/W1/images/etc/popup/main_pop_180820.gif" border="0" usemap="#Map">
			<map name="Map">
				<area shape="rect" coords="211,369,424,419" href="https://goo.gl/forms/P0NEHFxb15XWu3Sm1" target="_blank" title="부동산상담 사전신청">
				<area shape="rect" coords="475,254,598,279" href="http://www.rtrendshow.com/visitor/index/" target="_blank" title="전시장 무료입장 신청">
			</map>
		</p>
		<div>
			<div class="fl"><input type="checkbox" class="ico_comm_s inp_chk" id="chk_doNotOpenPop180820"><label for="chk_doNotOpenPop180820"><span class="ico_comm_s chk"></span>오늘하루 열지않기</label></div>
			<a href="#none" onclick="close_180820pop();" class="fr"><span></span> 닫기</a>
		</div>
	</div>
	<!-- //팝업바디 -->
</div>
<!-- // 트랜드쇼 팝업 180820 : E -->

<!-- 1807 실거래가팝업 -->
<div id="lp_layout_realDealList" name="lp_layout_realDealList" style="display:none">
	<!-- 팝업바디 시작 -->
	<div class="lp_wrap" style="width:700px;left:-125px">
		<!-- 팝업컨텐츠 시작 -->
		<div class="inner">
			<div class="lp_con" id="templateHeader_realPriceMorePop"></div>
			<div class="btn_wrap">
				<a href="javascript:closeLp('#lp_layout_realDealList')" class="btn_type1">닫기</a>
			</div>
			<!-- 팝업컨텐츠 끝 -->
			<div class="lp_close">
				<a href="#none" onclick="closeLp('#lp_layout_realDealList')">닫기</a>
			</div>
		</div>
	</div>
</div>
<!--// 1807 실거래가팝업 -->



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
			<li class="">
				<span>
					<a href="${pageContext.request.contextPath}/sisae/mainSisae">매물/시세</a>
					<div class="layer_menu lm_1">
						<ul class="col">
							<li><a href="${pageContext.request.contextPath}/sisae/apartDetail">아파트</a></li>
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
                <ul id="MemulType1">
                    <li><a href="${pageContext.request.contextPath}/sisae/apartDetail">아파트</a></li>
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
            </li>
           <li class="">
				<span>
					<a href="${pageContext.request.contextPath}/eroe/mainEroe">매물의뢰</a>
					<div class="layer_menu lm_2">
						<ul>
							<li class=""><a href="javascript:goAskSellPage();">내놓기</a></li>
							<li class=""><a href="javascript:goAskBuyPage();">구하기</a></li>
							<li class=""><a href="${pageContext.request.contextPath}/eroe/eroeStatus">의뢰현황</a></li>
							<li class=""><a href="${pageContext.request.contextPath}/eroe/customerReview">고객후기</a></li>
							<li class=""><a href="${pageContext.request.contextPath}/eroe/searchSaleseman">중개사무소찾기</a></li>
						</ul>
					</div>
				</span>
                <ul>
					<li class=""><a href="javascript:goAskSellPage();">내놓기</a></li>
					<li class=""><a href="javascript:goAskBuyPage();">구하기</a></li>
                    <li class=""><a href="${pageContext.request.contextPath}/eroe/eroeStatus">의뢰현황</a></li>
					<li class=""><a href="${pageContext.request.contextPath}/eroe/customerReview">고객후기</a></li>
					<li class=""><a href="${pageContext.request.contextPath}/eroe/searchSaleseman">중개사무소찾기</a></li>
                </ul>
            </li>

			<li class="on">
				<span>
					<a href="${pageContext.request.contextPath}/zicgurae/personal">직거래</a>
					<div class="layer_menu lm_3">
						<ul>
							<li class=""><a href="${pageContext.request.contextPath}/zicgurae/personal">개인매물</a></li>
							<li class=""><a href="${pageContext.request.contextPath}/zicgurae/company">기업매물</a></li>
				            <li class=""><a href="${pageContext.request.contextPath}/zicgurae/national">국유재산사용/매각</a></li>
						</ul>
					</div>
				</span>
                <ul>
                    <li class=""><a href="${pageContext.request.contextPath}/zicgurae/personal">개인매물</a></li>
					<li class=""><a href="${pageContext.request.contextPath}/zicgurae/company">기업매물</a></li>
				    <li class=""><a href="${pageContext.request.contextPath}/zicgurae/national">국유재산사용/매각</a></li>
                </ul>
            </li>

            <li class="">
				<span>
					<a href="${pageContext.request.contextPath}/bunyang/main">분양</a>
					<div class="layer_menu lm_5">
						<ul>
							<li class=""><a href="${pageContext.request.contextPath}/bunyang/information">분양정보</a></li>
							<li class=""><a href="${pageContext.request.contextPath}/bunyang/plan">분양일정</a></li>
							<li class=""><a href="${pageContext.request.contextPath}/bunyang/news">분양뉴스</a></li>
							<li class=""><a href="${pageContext.request.contextPath}/bunyang/site">분양&amp;현장</a></li>
							<li class=""><a href="${pageContext.request.contextPath}/bunyang/supply">입주지원센터</a></li>
							<li class=""><a href="${pageContext.request.contextPath}/bunyang/stategy">청약전략</a></li>
							<li class=""><a href="${pageContext.request.contextPath}/bunyang/develop">지역개발정보</a></li>
							<!--<li class=""><a href="/?_c=lots&_m=VrCenterlist&_s=VrCenterlist">VR분양관</a></li>			-->
						</ul>
					</div>
				</span>
                <ul>
						<li class=""><a href="${pageContext.request.contextPath}/bunyang/information">분양정보</a></li>
						<li class=""><a href="${pageContext.request.contextPath}/bunyang/plan">분양일정</a></li>
						<li class=""><a href="${pageContext.request.contextPath}/bunyang/news">분양뉴스</a></li>
						<li class=""><a href="${pageContext.request.contextPath}/bunyang/site">분양&amp;현장</a></li>
						<li class=""><a href="${pageContext.request.contextPath}/bunyang/supply">입주지원센터</a></li>
						<li class=""><a href="${pageContext.request.contextPath}/bunyang/stategy">청약전략</a></li>
						<li class=""><a href="${pageContext.request.contextPath}/bunyang/develop">지역개발정보</a></li>
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
					<a href="${pageContext.request.contextPath}/gyeongmae/inquiry">경매</a>
					<div class="layer_menu lm_9">
						<ul>
							<li class=""><a href="${pageContext.request.contextPath}/gyeongmae/inquiry">경매물건조회</a></li>
							<li class=""><a href="${pageContext.request.contextPath}/gyeongmae/study">경매STUDY</a></li>
							<li class=""><a href="${pageContext.request.contextPath}/gyeongmae/result">경매결과/통계</a></li>
							<li class=""><a href="${pageContext.request.contextPath}/gyeongmae/community">경매커뮤니티</a></li>
							<li class=""><a href="${pageContext.request.contextPath}/gyeongmae/fun">FUN경매</a></li>
							<li class=""><a href="${pageContext.request.contextPath}/gyeongmae/myPage">My페이지</a></li>
						</ul>
					</div>
				</span>
                <ul>
					<li class=""><a href="${pageContext.request.contextPath}/gyeongmae/inquiry">경매물건조회</a></li>
					<li class=""><a href="${pageContext.request.contextPath}/gyeongmae/study">경매STUDY</a></li>
					<li class=""><a href="${pageContext.request.contextPath}/gyeongmae/result">경매결과/통계</a></li>
					<li class=""><a href="${pageContext.request.contextPath}/gyeongmae/community">경매커뮤니티</a></li>
					<li class=""><a href="${pageContext.request.contextPath}/gyeongmae/fun">FUN경매</a></li>
					<li class=""><a href="${pageContext.request.contextPath}/gyeongmae/myPage">My페이지</a></li>
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


<!-- 바디 시작 -->
<div id="body_layout">
	<div class="body_wrap">
	<!-- 타이틀 시작 -->
	<div class="title_wrap">
		<div class="title">
			<h3>국유재산 사용/매각</h3>
		</div>
		<div class="location">
			<ul>
				<li><a href="/">홈</a></li>
				<li><a href="/?_c=service&amp;_s=directdeal&amp;_m=directdeallistPersonal">직거래</a></li>
				<li><a href="#">국유재산 사용/매각</a></li>
			</ul>
		</div>
	</div>
	<!-- 타이틀 끝 -->
	<!-- 컨텐츠 시작 -->
	<div class="contents_wrap">
		<!-- 이용안내 -->
		<div class="info_smr bm" style="background-image:url(https://image.r114.co.kr/W1/images/sub/bg_info_dd.jpg)">
			<div class="inner">
				<strong>대한민국 부동산 포털 1위! <br>실제 거래 고객이 최다!</strong>
				<p>자타공인 부동산 사이트 1위, <br>30~50대 실제거래를 희망하는 고객이 가장 많은 사이트입니다.</p>				
			</div>
		</div>
		<!-- //이용안내 -->
		<!-- tab 
		<ul class="list_tab type3">
			<li><a href="javascript:" id="listPersonal">개인매물</a></li>
			<li><a href="javascript:" id="listEnterprise">기업매물</a></li>
			<li class="on"><a href="javascript:" id="listState">국유재산 사용/매각<span class="skip">현재메뉴</span></a></li>
		</ul>
		//tab -->

		<!-- 검색 -->
		<div class="srch_deal_wrap">
			<div class="inner">
				<span class="inp_slt" style="width:170px;">
					<select title="구분 선택" id="useType" style="display: none;">
						
					<option value="">전체</option><option value="사용">사용</option><option value="매각">매각</option></select><span tabindex="0" id="useType-button" role="combobox" aria-expanded="false" aria-autocomplete="list" aria-owns="useType-menu" aria-haspopup="true" title="구분 선택" class="ui-selectmenu-button ui-selectmenu-button-closed ui-corner-all ui-button ui-widget"><span class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span><span class="ui-selectmenu-text">전체</span></span>
				</span>
				<span class="inp_wrap btn_type"><button type="button" class="btn_srchbox"><span class="ico_comm_s search">검색</span></button>
				<input type="text" class="inp_txt" placeholder="시,구,동 등을 입력하세요." style="width:308px;margin-right:0;" name="addrSearchWord" id="addrSearchWord" readonly="" onclick="search_CreateAddrHtml('body');">
				<button type="button" class="btn_del round_s" id="cmdDeleteAddr">삭제버튼</button>
				</span>
				<button type="button" class="btn_ico_type1"><span class="ico_comm_l initial" id="cmdInitial">초기화</span></button>
				<a href="#none" class="btn_type9" id="cmdSearch">검색</a>
			</div>
		</div>
		<!-- //검색 -->

		<div id="list_firstLoad">
			<!-- 사진으로 보는 토지매물 -->
			<h4 class="h4_type4">사진으로 보는 토지매물</h4>
			<ul class="list_thumb_type5 type4" id="list_pic">			
			<li> <!-- loop , max 12-->
				<a href="javascript:" onclick="goDetailPage('4')">
					<div class="thumb">
						<img src="https://www.kr.or.kr/boardCnts/fileDown.do?fileSeq=ff34aa49a677a95631e513813b7c2abb&amp;seq=1&amp;m=Landsch" alt="">
					</div>
					<span class="s_type">
						<span class="tag_comm2 type1">사용</span>
						지목 : 철도용지
					</span>
					<strong class="tit">인천광역시 남동구 고잔동 5,009㎡</strong>
				</a>
			</li>
			
			<li> <!-- loop , max 12-->
				<a href="javascript:" onclick="goDetailPage('6')">
					<div class="thumb">
						<img src="https://www.kr.or.kr/boardCnts/fileDown.do?fileSeq=b594de45812a40da55b5cb43d5631f7f&amp;seq=1&amp;m=Landsch" alt="">
					</div>
					<span class="s_type">
						<span class="tag_comm2 type1">사용</span>
						지목 : 전
					</span>
					<strong class="tit">경기도 광명시 소하동 500㎡</strong>
				</a>
			</li>
			
			<li> <!-- loop , max 12-->
				<a href="javascript:" onclick="goDetailPage('10')">
					<div class="thumb">
						<img src="https://www.kr.or.kr/boardCnts/fileDown.do?fileSeq=dd17846766d22ee4ea06d2914b750d5e&amp;seq=1&amp;m=Landsch" alt="">
					</div>
					<span class="s_type">
						<span class="tag_comm2 type1">사용</span>
						지목 : 대
					</span>
					<strong class="tit">경기도 용인시 기흥구 상갈동 2,308㎡</strong>
				</a>
			</li>
			
			<li> <!-- loop , max 12-->
				<a href="javascript:" onclick="goDetailPage('11')">
					<div class="thumb">
						<img src="https://www.kr.or.kr/boardCnts/fileDown.do?fileSeq=a8b90da0a4f3c1165c137ead9a31017d&amp;seq=1&amp;m=Landsch" alt="">
					</div>
					<span class="s_type">
						<span class="tag_comm2 type1">사용</span>
						지목 : 철도용지
					</span>
					<strong class="tit">경기도 안양시 만안구 안양동 1,031㎡</strong>
				</a>
			</li>
			
			<li> <!-- loop , max 12-->
				<a href="javascript:" onclick="goDetailPage('13')">
					<div class="thumb">
						<img src="https://www.kr.or.kr/boardCnts/fileDown.do?fileSeq=8ae4cfe93a5557efecedf4adde0e3266&amp;seq=1&amp;m=Landsch" alt="">
					</div>
					<span class="s_type">
						<span class="tag_comm2 type1">사용</span>
						지목 : 답
					</span>
					<strong class="tit">경기도 동두천시 송내동 450㎡</strong>
				</a>
			</li>
			
			<li> <!-- loop , max 12-->
				<a href="javascript:" onclick="goDetailPage('14')">
					<div class="thumb">
						<img src="https://www.kr.or.kr/boardCnts/fileDown.do?fileSeq=0f31203549d491cc864cc12b9ab32932&amp;seq=1&amp;m=Landsch" alt="">
					</div>
					<span class="s_type">
						<span class="tag_comm2 type1">사용</span>
						지목 : 철도용지
					</span>
					<strong class="tit">경기도 양주시 덕정동 300㎡</strong>
				</a>
			</li>
			
			<li> <!-- loop , max 12-->
				<a href="javascript:" onclick="goDetailPage('15')">
					<div class="thumb">
						<img src="https://www.kr.or.kr/boardCnts/fileDown.do?fileSeq=1095b9bc6ad7b2393a07c3e24e427ac8&amp;seq=1&amp;m=Landsch" alt="">
					</div>
					<span class="s_type">
						<span class="tag_comm2 type1">사용</span>
						지목 : 철도용지
					</span>
					<strong class="tit">경기도 의정부시 녹양동 250㎡</strong>
				</a>
			</li>
			
			<li> <!-- loop , max 12-->
				<a href="javascript:" onclick="goDetailPage('16')">
					<div class="thumb">
						<img src="https://www.kr.or.kr/boardCnts/fileDown.do?fileSeq=bda77ce7d827fe3a0c8ea1cb5e6c492a&amp;seq=1&amp;m=Landsch" alt="">
					</div>
					<span class="s_type">
						<span class="tag_comm2 type1">사용</span>
						지목 : 철도용지
					</span>
					<strong class="tit">경기도 의정부시 호원동 500㎡</strong>
				</a>
			</li>
			
			<li> <!-- loop , max 12-->
				<a href="javascript:" onclick="goDetailPage('17')">
					<div class="thumb">
						<img src="https://www.kr.or.kr/boardCnts/fileDown.do?fileSeq=7e8a5f6fcb350ef784bf4a88f4787135&amp;seq=1&amp;m=Landsch" alt="">
					</div>
					<span class="s_type">
						<span class="tag_comm2 type1">사용</span>
						지목 : 철도용지
					</span>
					<strong class="tit">서울특별시 마포구 동교동 127㎡</strong>
				</a>
			</li>
			
			<li> <!-- loop , max 12-->
				<a href="javascript:" onclick="goDetailPage('18')">
					<div class="thumb">
						<img src="https://www.kr.or.kr/boardCnts/fileDown.do?fileSeq=8e3788c1439633894b7d43cea6f24a7c&amp;seq=1&amp;m=Landsch" alt="">
					</div>
					<span class="s_type">
						<span class="tag_comm2 type1">사용</span>
						지목 : 철도용지
					</span>
					<strong class="tit">서울특별시 용산구 신계동 1,200㎡</strong>
				</a>
			</li>
			
			<li> <!-- loop , max 12-->
				<a href="javascript:" onclick="goDetailPage('19')">
					<div class="thumb">
						<img src="https://www.kr.or.kr/boardCnts/fileDown.do?fileSeq=3f3840ab9e87d69390452199137fbb1e&amp;seq=1&amp;m=Landsch" alt="">
					</div>
					<span class="s_type">
						<span class="tag_comm2 type1">사용</span>
						지목 : 철도용지
					</span>
					<strong class="tit">경기도 남양주시 삼패동 3,959㎡</strong>
				</a>
			</li>
			
			<li> <!-- loop , max 12-->
				<a href="javascript:" onclick="goDetailPage('20')">
					<div class="thumb">
						<img src="https://www.kr.or.kr/boardCnts/fileDown.do?fileSeq=d8cff98792ee4ae99c4030842de4b48c&amp;seq=1&amp;m=Landsch" alt="">
					</div>
					<span class="s_type">
						<span class="tag_comm2 type1">사용</span>
						지목 : 철도용지
					</span>
					<strong class="tit">경기도 양평군 양서면 용담리 968㎡</strong>
				</a>
			</li>
		
					</ul>
			<!-- //사진으로 보는 토지매물 -->
			<!-- 국유재산 사용/매각기능 토지매물 -->
			<h4 class="h4_type4">국유재산 사용/매각기능 토지매물</h4>
			<table class="tbl_type1" id="list_list">
				<caption>국유재산 사용/매각기능 토지매물</caption>
				<colgroup>
					<col style="width:9%;"><col style="width:28%;"><col style="width:14%;"><col style="width:12%;"><col style="width:20%;"><col style="width:17%;">
				</colgroup>
				<thead>
					<tr>
						<th scope="col">구분</th>
						<th scope="col">소재지</th>
						<th scope="col">면적(m²)</th>
						<th scope="col">지목</th>
						<th scope="col">담당본부</th>
						<th scope="col">문의처</th>
					</tr>
				</thead>
				<tbody>					
					<tr>
						<td>사용</td>
						<td class="lf"><a href="javascript:" onclick="goDetailPage('4')">인천광역시 남동구 고잔동</a></td>
						<td>5,009㎡</td>
						<td>철도용지</td>
						<td class="lf">수도권본부</td>
						<td>02-788-5097</td>
					</tr>	
					
					<tr>
						<td>사용</td>
						<td class="lf"><a href="javascript:" onclick="goDetailPage('6')">경기도 광명시 소하동</a></td>
						<td>500㎡</td>
						<td>전</td>
						<td class="lf">수도권본부</td>
						<td>02-788-5135</td>
					</tr>	
					
					<tr>
						<td>사용</td>
						<td class="lf"><a href="javascript:" onclick="goDetailPage('10')">경기도 용인시 기흥구 상갈동</a></td>
						<td>2,308㎡</td>
						<td>대</td>
						<td class="lf">수도권본부</td>
						<td>02-788-5094</td>
					</tr>	
					
					<tr>
						<td>사용</td>
						<td class="lf"><a href="javascript:" onclick="goDetailPage('11')">경기도 안양시 만안구 안양동</a></td>
						<td>1,031㎡</td>
						<td>철도용지</td>
						<td class="lf">수도권본부</td>
						<td>02-788-5121</td>
					</tr>	
					
					<tr>
						<td>사용</td>
						<td class="lf"><a href="javascript:" onclick="goDetailPage('13')">경기도 동두천시 송내동</a></td>
						<td>450㎡</td>
						<td>답</td>
						<td class="lf">수도권본부</td>
						<td>02-788-5123</td>
					</tr>	
					
					<tr>
						<td>사용</td>
						<td class="lf"><a href="javascript:" onclick="goDetailPage('14')">경기도 양주시 덕정동</a></td>
						<td>300㎡</td>
						<td>철도용지</td>
						<td class="lf">수도권본부</td>
						<td>02-788-5123</td>
					</tr>	
					
					<tr>
						<td>사용</td>
						<td class="lf"><a href="javascript:" onclick="goDetailPage('15')">경기도 의정부시 녹양동</a></td>
						<td>250㎡</td>
						<td>철도용지</td>
						<td class="lf">수도권본부</td>
						<td>02-788-5123</td>
					</tr>	
					
					<tr>
						<td>사용</td>
						<td class="lf"><a href="javascript:" onclick="goDetailPage('16')">경기도 의정부시 호원동</a></td>
						<td>500㎡</td>
						<td>철도용지</td>
						<td class="lf">수도권본부</td>
						<td>02-788-5123</td>
					</tr>	
					
					<tr>
						<td>사용</td>
						<td class="lf"><a href="javascript:" onclick="goDetailPage('17')">서울특별시 마포구 동교동</a></td>
						<td>127㎡</td>
						<td>철도용지</td>
						<td class="lf">수도권본부</td>
						<td>02-788-5124</td>
					</tr>	
					
					<tr>
						<td>사용</td>
						<td class="lf"><a href="javascript:" onclick="goDetailPage('18')">서울특별시 용산구 신계동</a></td>
						<td>1,200㎡</td>
						<td>철도용지</td>
						<td class="lf">수도권본부</td>
						<td>02-788-5124</td>
					</tr>	
					
					<tr>
						<td>사용</td>
						<td class="lf"><a href="javascript:" onclick="goDetailPage('19')">경기도 남양주시 삼패동</a></td>
						<td>3,959㎡</td>
						<td>철도용지</td>
						<td class="lf">수도권본부</td>
						<td>02-788-5129</td>
					</tr>	
					
					<tr>
						<td>사용</td>
						<td class="lf"><a href="javascript:" onclick="goDetailPage('20')">경기도 양평군 양서면 용담리</a></td>
						<td>968㎡</td>
						<td>철도용지</td>
						<td class="lf">수도권본부</td>
						<td>02-788-5129</td>
					</tr>	
					
					<tr>
						<td>사용</td>
						<td class="lf"><a href="javascript:" onclick="goDetailPage('21')">경기도 양평군 옥천면 옥천리</a></td>
						<td>4,705㎡</td>
						<td>철도용지</td>
						<td class="lf">수도권본부</td>
						<td>02-788-5129</td>
					</tr>	
					
					<tr>
						<td>사용</td>
						<td class="lf"><a href="javascript:" onclick="goDetailPage('22')">경기도 양평군 지평면 망미리</a></td>
						<td>342,915㎡</td>
						<td>철도용지</td>
						<td class="lf">수도권본부</td>
						<td>02-788-5129</td>
					</tr>	
					
					<tr>
						<td>사용</td>
						<td class="lf"><a href="javascript:" onclick="goDetailPage('23')">경기도 양평군 지평면 일신리</a></td>
						<td>7,240㎡</td>
						<td>철도용지</td>
						<td class="lf">수도권본부</td>
						<td>02-788-5129</td>
					</tr>	
					
					<tr>
						<td>사용</td>
						<td class="lf"><a href="javascript:" onclick="goDetailPage('24')">경기도 파주시 금촌동</a></td>
						<td>1,429㎡</td>
						<td>철도용지</td>
						<td class="lf">수도권본부</td>
						<td>02-788-5120</td>
					</tr>	
					
					<tr>
						<td>사용</td>
						<td class="lf"><a href="javascript:" onclick="goDetailPage('25')">강원도 춘천시 퇴계동</a></td>
						<td>2,894㎡</td>
						<td>철도용지</td>
						<td class="lf">수도권본부</td>
						<td>02-788-5127</td>
					</tr>	
					
					<tr>
						<td>사용</td>
						<td class="lf"><a href="javascript:" onclick="goDetailPage('26')">경기도 가평군 청평면 대성리</a></td>
						<td>2,799㎡</td>
						<td>임야</td>
						<td class="lf">수도권본부</td>
						<td>02-788-5127</td>
					</tr>	
					
					<tr>
						<td>사용</td>
						<td class="lf"><a href="javascript:" onclick="goDetailPage('27')">경상남도 사천시 곤명면 봉계리</a></td>
						<td>129㎡</td>
						<td>답</td>
						<td class="lf">영남본부</td>
						<td>051-664-5452</td>
					</tr>	
					
					<tr>
						<td>사용</td>
						<td class="lf"><a href="javascript:" onclick="goDetailPage('28')">경상남도 사천시 곤명면 봉계리</a></td>
						<td>445㎡</td>
						<td>답</td>
						<td class="lf">영남본부</td>
						<td>051-664-5452</td>
					</tr>	
							
</tbody>
			</table>
			<!-- //국유재산 사용/매각기능 토지매물 -->
			<!-- paging -->
			<div class="paging" id="pagingList"><strong><span class="skip">현재페이지</span>1</strong><a href="javascript:goPage(2, 1);">2</a><a href="javascript:goPage(3, 1);">3</a><a href="javascript:goPage(4, 1);">4</a><a href="javascript:goPage(5, 1);">5</a><a href="javascript:goPage(6, 1);">6</a><a href="javascript:goPage(7, 1);">7</a><a href="javascript:goPage(8, 1);">8</a><a href="javascript:goPage(9, 1);">9</a><a href="javascript:goPage(10, 1);">10</a><a href="javascript:next_page(1);"><span class="ico_comm_s next_10">다음 10페이지</span></a></div>
			<!-- //paging -->
		</div>

		<!-- 검색 결과 -->
		<div id="list_searchLoad" style="display: none;">
			<h4 class="h4_type4"><span class="fc_red" id="searchAddressView"></span> 국유재산 <span class="fc_red" id="searchTypeView"></span> 토지매물(<span class="fc_red" id="searchCount"></span>)</h4>
			<table class="tbl_type1" id="list_search">
				<caption>국유재산 사용/매각기능 토지매물</caption>
				<colgroup>
					<col style="width:9%;"><col style="width:28%;"><col style="width:14%;"><col style="width:12%;"><col style="width:20%;"><col style="width:17%;">
				</colgroup>
				<thead>
					<tr>
						<th scope="col">구분</th>
						<th scope="col">소재지</th>
						<th scope="col">면적(m²)</th>
						<th scope="col">지목</th>
						<th scope="col">담당본부</th>
						<th scope="col">문의처</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>사용</td>
						<td class="lf"><a href="#none">경남 밀양시 내이동</a></td>
						<td>121,502㎡</td>
						<td>철도용지</td>
						<td class="lf">충청본부 재산부</td>
						<td>010-9959-0617</td>
					</tr>
				</tbody>
			</table>
			<!-- paging -->
			<div class="paging" id="pagingSearch">
			</div>
			<!-- //paging -->
		</div>
		<!-- //검색 결과 -->
	</div>
	<!-- 컨텐츠 끝 -->
	<!-- 라이트 시작 -->
	<div class="right_wrap" id="divServiceRight">		<!-- 라이드 시작 -->
        <div class="right_wrap">
        	<!-- 부동산 GO -->
        	<a href="/?_c=service&amp;_m=realGo"><img src="https://image.r114.co.kr/W1/images/sub/banner_rgo.png" alt="부동산GO 내 손안의 모든 부동산"></a>
        	<!-- //부동산 GO -->
			<div class="bx_gray">
				<!-- 우리동네, 단지 이야기 BEST -->
				<div class="inner weekly">
					<h4 class="h4_type2">우리동네 이야기 BEST</h4>
					<ol class="list_num_type1" id="listCommunityBest">
						
						<li><a href="javascript:goCommunityDetailPage(1694);">화곡, 마곡을 통틀어 토종 부촌인 화곡푸르지오</a></li>
						
						<li><a href="javascript:goCommunityDetailPage(1693);">보라매파크시티 지역주택조합 은 주변에 보라매공원,롯데아파트,시립보라매병원이 있어서 좋아요</a></li>
						
						<li><a href="javascript:goCommunityDetailPage(1688);">서현역이랑 5분거리이고 입지 진짜 좋아요</a></li>
						
						<li><a href="javascript:goCommunityDetailPage(1689);">아파트는 좀 오래 되었지만, 주변역(분당선)이 가깝고, 편의시설(이마트 등)이 인접</a></li>
						
						<li><a href="javascript:goCommunityDetailPage(1692);">창현2지구에 마석 에듀파크가 들어선다고 합니다.</a></li>
						
					</ol>
					<a href="/?_c=service&amp;_s=community" class="more_type1">더보기 <span class="ico_comm_s more1"></span></a>
				</div>
				<!-- //우리동네, 단지 이야기 BEST -->
			</div>
			<div class="bx_gray">
				<!-- 부동산상담 BEST -->
				<div class="inner weekly">
					<h4 class="h4_type2">부동산상담 BEST</h4>
					<ol class="list_num_type1" id="listCounselBest">
						
						<li><a href="javascript:goCounselDetailPage('expert', 5433);">청약시 세대주 변경 관련 추가 문의 드립니다</a></li>
						
						<li><a href="javascript:goCounselDetailPage('expert', 5430);">청약 시 세대주 변경 문의</a></li>
						
						<li><a href="javascript:goCounselDetailPage('expert', 5439);">신청채권자 매수신고서 제출에 관해 문의드립니다.</a></li>
						
						<li><a href="javascript:goCounselDetailPage('expert', 5451);">대항력없는 세입자의 미배당보증금</a></li>
						
						<li><a href="javascript:goCounselDetailPage('expert', 5459);">	1세대 1주택 비과세 관련</a></li>
						
					</ol>
					<a href="/?_c=service&amp;_m=counsel" class="more_type1">더보기 <span class="ico_comm_s more1"></span></a>
				</div>
				<!-- //부동산상담 BEST -->
			</div>
			<div class="bx_gray">
				<!-- 프로모션 
				<div class="slide_type6 type2">
					<ul>
						<li>
							<a href="#">
								<span class="thumb"><img src="https://placeholdit.imgix.net/~text?txtsize=30&txt=230%C3%97120&w=230&h=120" alt=""></span>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="thumb"><img src="https://placeholdit.imgix.net/~text?txtsize=30&txt=230%C3%97120&w=230&h=120" alt=""></span>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="thumb"><img src="https://placeholdit.imgix.net/~text?txtsize=30&txt=230%C3%97120&w=230&h=120" alt=""></span>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="thumb"><img src="https://placeholdit.imgix.net/~text?txtsize=30&txt=230%C3%97120&w=230&h=120" alt=""></span>
							</a>
						</li>
					</ul>
				</div>
				 //프로모션 -->
				<!-- 직거래 팝니다 -->
				<div class="inner weekly">
					<h4 class="h4_type2">직거래 매물</h4>
					<ul class="list_txt_type1">
						
						<li><a href="javascript:goDirectDealDetailPage(77288);"><em class="fc_blue">[전원농가주택] </em>경상북도 경주시 내남면</a></li>
						
						<li><a href="javascript:goDirectDealDetailPage(77749);"><em class="fc_blue">[오피스텔] </em>강원도 속초시 교동</a></li>
						
						<li><a href="javascript:goDirectDealDetailPage(77738);"><em class="fc_blue">[창고] </em>경기도 평택시 신대동</a></li>
						
					</ul>
					<a href="/?_c=service&amp;_s=directdeal&amp;_m=directdeallistPersonal" class="more_type1">더보기<span class="ico_comm_s more1"></span></a>
				</div>
				<!-- //직거래 팝니다 -->
			</div>
			<div class="bx_gray">
				<!-- 부동산114dml 솔루션 -->
				<div class="slide_type6 type2">
					<div class="bx-wrapper" style="max-width: 100%;"><div class="bx-viewport" aria-live="polite" style="width: 100%; overflow: hidden; position: relative; height: 120px;"><ul style="width: 2215%; position: relative; transition-duration: 0s; transform: translate3d(-228px, 0px, 0px);"><li style="float: left; list-style: none; position: relative; width: 228px;" class="bx-clone" aria-hidden="true">
							<a href="/?_c=solution&amp;_m=solutiondefault&amp;_a=katlas">
								<span class="thumb"><img src="https://image.r114.co.kr/W1/images/sub/banner_sol_katlas.jpg" alt="지역기반 데이터 융합 분석 서비스 K-atlas"></span>
							</a>
						</li>
						<li style="float: left; list-style: none; position: relative; width: 228px;" aria-hidden="false">
							<a href="/?_c=solution&amp;_m=solutiondefault&amp;_a=reps">
								<span class="thumb"><img src="https://image.r114.co.kr/W1/images/sub/banner_sol_reps.jpg" alt="부동산 통계분석 솔루션 REPS"></span>
							</a>
						</li>
						<li style="float: left; list-style: none; position: relative; width: 228px;" aria-hidden="true">
							<a href="/?_c=solution&amp;_m=solutiondefault&amp;_a=katlas">
								<span class="thumb"><img src="https://image.r114.co.kr/W1/images/sub/banner_sol_katlas.jpg" alt="지역기반 데이터 융합 분석 서비스 K-atlas"></span>
							</a>
						</li>
					<li style="float: left; list-style: none; position: relative; width: 228px;" class="bx-clone" aria-hidden="true">
							<a href="/?_c=solution&amp;_m=solutiondefault&amp;_a=reps">
								<span class="thumb"><img src="https://image.r114.co.kr/W1/images/sub/banner_sol_reps.jpg" alt="부동산 통계분석 솔루션 REPS"></span>
							</a>
						</li></ul></div><div class="bx-controls bx-has-pager"><div class="bx-pager bx-default-pager"><div class="bx-pager-item"><a href="" data-slide-index="0" class="bx-pager-link active">1</a></div><div class="bx-pager-item"><a href="" data-slide-index="1" class="bx-pager-link">2</a></div></div></div></div>
				</div>
				<!-- //부동산114dml 솔루션 -->
			</div>
			<div class="bx_gray">
				<!-- 부동산거래 단계별 가이드 -->
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
				<!-- //부동산거래 단계별 가이드 -->

				<!-- Google 광고 -->
				<div></div>
				<!-- //Google 광고 -->
			</div>
        </div>
        <!-- 라이드 끝 -->

        
 <script type="text/javascript">      

 		slide_type6_load();
 
		 $(document).ready(function() {

			$(".report_step_vertical").each(function()
			{
				$(this).children().last().addClass("step_tip");
				$(this).children().last().find(".emnum").remove();
			});
			
		});
       
        function goCommunityDetailPage(g){

			var formData = {"page": 1, "Metro": "", "County": "", "Town": "", "complexCd": "", "sortTag": "", "sortTag2": "", "tabGubun": "1", "searchGubun": "", "searchText": "", "viewId": g};
			createHisFrm(formData, "/?_c=service&_s=community&_m=communityview&_a=townview");
					
		}
		
		function goCounselDetailPage(tabGubun, g){

			//var formData = {"page": 1, "Metro": "", "County": "", "Town": "", "complexCd": "", "sortTag": "", "sortTag2": "", "tabGubun": "2", "searchGubun": "", "searchText": "", "viewId": g};
			window.location.href = "/?_c=service&_s=counsel&_m=counselview&consultgubun=" + tabGubun + "&idx=" + g;
					
		}
		
		function goDirectDealDetailPage(g) {
		
			window.location.href = "/?_c=service&_s=directdeal&_m=directdealdetailPersonal&seq=" + g;
		
		}

	
</script>	</div>
	<!-- 라이트 끝 -->
	</div>
</div>
<!-- 바디  -->

<!--전체로딩-->
<div class="loading_wrap" style="display:none;">
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






<script type="text/javascript" src="/W1/js/search.js"></script>
<script type="text/javascript" src="/W1/js/Service/Service.js"></script>
<script type="text/javascript" src="/W1/js/Service/DirectDealList.js"></script>
<script type="text/javascript" src="/W1/js/PageUtil.js"></script>
<script type="text/javascript">

	var util1 = new PageUtil();		// 기본리스트용
	var util2 = new PageUtil();		// 검색매물용

	var _SEL_METRO = "{도시(기본)}";
	var _SEL_COUNTY = "{구시군(기본)}";
	var _SEL_TOWN = "{읍면동(기본)}";
	var _LOADACT = "1100000000|1|서울특별시";
	var _CALLBACKFUNC = "selectAreaValue";
	var _CALLBACKFUNCALL = "selectAreaValue";
	var _CALLBACKFUNCSEARCH = "selectSearchValue";
	var  _SEARCHTYPE = 0;				//	시구동 레벨로 조회 결과 받음
	var _NECESSARYADDRLEVEL = 3;		// 시도, 구시군, 읍면동 모두 출력
	var _SEARCHTXTMSG = "시, 구, 동 등을 입력하세요."

	$(document).ready(function() {

		/* 김동현(2017-12-02)
		search_CreateAddrHtml("body");
		*/

		$("#list_searchLoad").css("display", "none");

		util1.curPage = "";
		util1.setNum = 1;
		util1.callFunction = getDirectDealList;

		util2.curPage = "";
		util2.setNum = 2;
		util2.callFunction = getDirectDealSearch;

		// 구분 설정
	    setUseTypeList();

	    getDirectDealPic();
		getDirectDealList();

		// 구분 선택	(변경)
		$('#useType').on('selectmenuchange', function() {

		});

		// 다른 매물 목록 보기
		$("#listEnterprise").on('click', function(){

			window.location.href = "/?_c=service&_s=directdeal&_m=directdeallistEnterprise";

		});
		$("#listPersonal").on('click', function(){

			window.location.href = "/?_c=service&_s=directdeal&_m=directdeallistPersonal";

		});

		/* 검색 클릭  */
		$("#cmdSearch").on("click", function(e) {

			getDirectDealSearch();

		});

		// 초기화 클릭
		$('.btn_ico_type1').click(function () {
			initializeSearch();
		});

		/* 이용안내 클릭  */
		$("#cmdGuide").on("click", function(e) {
			goGuidePage();
		});

		// 주소삭제 클릭
		$("#cmdDeleteAddr").on("click", function(e) {

			$("#addrSearchWord").val("");

		});

		// 숫자만 입력
		$("input:text[numberOnly]").on("change keyup input", function(e) {
			if (!isEmpty($(this).data("price")) && $(this).data("price").toString() == "Y") {
				$(this).val(numberWithCommas($(this).val().replace(/[^0-9.]/gi,"")));
			} else {
				$(this).val( $(this).val().replace(/[^0-9.]/gi,"") );
			}
		});

	})

	/* 구분 설정 */
	function setUseTypeList() {

		$('#useType').find("option").remove().end().append($('<option>',{
				value: "",
				text: "전체",
			}));
		var option = $("<option value='사용'>사용</option>");
		$('#useType').append(option);
		option = $("<option value='매각'>매각</option>");
		$('#useType').append(option);
		$("#useType").selectmenu("destroy").selectmenu({style:'dropdown'});
	}

	/* 검색 조건 초기화  */
	function initializeSearch() {

		setUseTypeList();

		$("#addrSearchWord").val("");

	}

	/* 매물 조회 사진  */
	var getDirectDealPic = function() {

		var useType, addr, picture;
		useType = "";
		addr = "";
		picture = "1";

		var formData = { useType: useType,
							 addr: addr,
							 picture: picture }

//		$("div.contents_wrap ul.list_review").html("<li>" + util.curPage + " 페이지 자료조회 중 입니다." + "</li>");

		$.ajax({
			url : "/?_c=service&_s=directdeal&_m=directDealListState&_a=DirectDealListStatePic.ajax",
			type: "POST",
			data : formData,
			success: function(data, textStatus, jqXHR){
				var res = data.split("<!--@#$ INFO AREA $#@-->");
				if (data.length > 0) { // 자료가 있을때.
					$("#list_pic").html(res[0]);
				}
				else { // 자료가 없을때.
				}
			},
			error: function (jqXHR, textStatus, errorThrown){
		 	// 	alert("code:"+jqXHR.status+"\n"+"message:"+jqXHR.responseText+"\n"+"error:"+errorThrown);
			}
		});

	}

	/* 매물 조회  */
	var getDirectDealList = function() {

		var useType, addr, picture;
		useType = "";
		addr = "";
		picture = "";

		var formData = { page: util1.curPage,
							 useType: useType,
							 addr: addr,
							 picture: picture }

//		$("div.contents_wrap ul.list_review").html("<li>" + util.curPage + " 페이지 자료조회 중 입니다." + "</li>");

		$.ajax({
			url : "/?_c=service&_s=directdeal&_m=directDealListState&_a=DirectDealListStateList.ajax",
			type: "POST",
			data : formData,
			success: function(data, textStatus, jqXHR){
				var res = data.split("<!--@#$ INFO AREA $#@-->");
				if (data.length > 0) { // 자료가 있을때.
					if (parseInt(res[1])> 0) {
						$("#list_list > tbody").html(res[0]);
					}
					else {
						$("#list_list > tbody").html("<tr><td colspan='6' class='result_nodata'>검색 결과가 없습니다.</td></tr>");
					}

					util1.totalCnt = parseInt(res[1]); // {총글수};
					util1.curPage  = parseInt(res[2]); // {현재페이지};
					util1.pageRows = parseInt(res[3]); // {출력글수};
					util1.disPagepCnt = parseInt(res[4]); // {출력페이지수}
					util1.setTotalPage();

					drawPageNumber(1);
				}
				else { // 자료가 없을때.
					$("#list_list > tbody").html("<tr><td colspan='6' class='result_nodata'>검색 결과가 없습니다.</td></tr>");
					util1.totalCnt = 0;
					drawPageNumber(1);
				}
			},
			error: function (jqXHR, textStatus, errorThrown){
		 	// 	alert("code:"+jqXHR.status+"\n"+"message:"+jqXHR.responseText+"\n"+"error:"+errorThrown);
			}
		});

	}

	/* 매물 조회 (검색) */
	var getDirectDealSearch = function() {

		var useType, addr, picture;
		useType = $('#useType option:selected').val();
		addr = $("#addrSearchWord").val().trim();
		picture = "";

		// 검색을 실행하면 기본 리스트는 제거한다
		$("#list_firstLoad").css("display", "none");
		$("#list_firstLoad").remove();

		$("#list_searchLoad").css("display", "");
		$("#searchAddressView").html($("#addrSearchWord").val());
		$("#searchTypeView").html(useType);

		var formData = { page: util2.curPage,
							 useType: useType,
							 addr: addr,
							 picture: picture };

//		$("div.contents_wrap ul.list_review").html("<li>" + util.curPage + " 페이지 자료조회 중 입니다." + "</li>");

		$.ajax({
			url : "/?_c=service&_s=directdeal&_m=directDealListState&_a=DirectDealListStateSearch.ajax",
			type: "POST",
			data : formData,
			success: function(data, textStatus, jqXHR){
				var res = data.split("<!--@#$ INFO AREA $#@-->");
				if (data.length > 0) { // 자료가 있을때.
					if (parseInt(res[1])> 0) {
						$("#list_search > tbody").html(res[0]);
					}
					else {
						$("#list_search > tbody").html("<tr><td colspan='6' class='result_nodata'>검색 결과가 없습니다.</td></tr>");
					}

					util2.totalCnt = parseInt(res[1]); // {총글수};
					util2.curPage  = parseInt(res[2]); // {현재페이지};
					util2.pageRows = parseInt(res[3]); // {출력글수};
					util2.disPagepCnt = parseInt(res[4]); // {출력페이지수}
					util2.setTotalPage();

					$("#searchCount").html(parseInt(res[5]) + " 건");

					drawPageNumber(2);
				}
				else { // 자료가 없을때.
					$("#list_search > tbody").html("<tr><td colspan='6' class='result_nodata'>검색 결과가 없습니다.</td></tr>");
					util1.totalCnt = 0;
					drawPageNumber(2);
				}
			},
			error: function (jqXHR, textStatus, errorThrown){
		 	// 	alert("code:"+jqXHR.status+"\n"+"message:"+jqXHR.responseText+"\n"+"error:"+errorThrown);
			}
		});

	}

	/* 상세페이지로 이동 */
	function goDetailPage(seq) {

		//window.location.href = "/?_c=service&_s=directdeal&_m=directdealdetailState&seq=" + seq;
		var link = "/?_c=service&_s=directdeal&_m=directdealdetailState&seq=" + seq;
		fnWinUrl(link, "_blank", "", "","","");

	}

	/* 주소검색 결과  */
	function selectAreaValue(coartNo, addrLevel, addrAll, addrMapX, addrMapY, addr1, addr2, addr3, addrCode, mapX, mapY){
		var area = addr1 + " " + addr2 + " " + addr3;
		$("#addrSearchWord").val(area);
		closeLp('type3');
	}

	function selectSearchValue(addr1, addr2, addr3, coordx, coordy, gubuncode, gubuncode1, gubuncode2, identifycode, searchkeyword){
		_SEL_METRO = addr1;
		_SEL_COUNTY = addr2;
		_SEL_TOWN = addr3;

		closeLp('type3');

		$("#addrSearchWord").val(addr1+" "+addr2+" "+addr3);
		search_autoFillSearchReset();
	}

	// 페이지유틸 객체 리턴한다.
	function setUtilObj(setNum){
		if(setNum == 1){
			return util1;
		}
		else if(setNum == 2){
			return util2;
		}
	}

	// 페이징 영역을 화면에 출력한다.
	function drawPageNumber(setNum){
		var setUtil = setUtilObj(setNum)

		if(setUtil.setNum == 1){
			$("#pagingList").html(setUtil.Drow());
		}
		else if(setUtil.setNum == 2){
			$("#pagingSearch").html(setUtil.Drow());
		}
	}

	// 해당 페이지의 데이터를 출력한다.
	function goPage(pageNo, setNum){
		var setUtil = setUtilObj(setNum)

		setUtil.curPage = pageNo;
		setUtil.callFunction();
	}

	function next_page(setNum){
		var setUtil = setUtilObj(setNum)

		setUtil.curPage = setUtil.getNextPage();
		setUtil.callFunction();
	}

	function next(setNum){
		var setUtil = setUtilObj(setNum)

		setUtil.curPage = setUtil.getNext();
		setUtil.callFunction();
	}

	function prev_page(setNum){
		var setUtil = setUtilObj(setNum)

		setUtil.curPage = setUtil.getPrevPage();
		setUtil.callFunction();
	}

	function prev(setNum){
		var setUtil = setUtilObj(setNum)

		setUtil.curPage = setUtil.getPrev();
		setUtil.callFunction();
	}

</script><div class="ui-selectmenu-menu ui-front"><ul aria-hidden="true" aria-labelledby="useType-button" id="useType-menu" role="listbox" tabindex="0" class="ui-menu ui-corner-bottom ui-widget ui-widget-content"></ul></div><iframe name="easyXDM_Kakao_default4117_provider" id="easyXDM_Kakao_default4117_provider" src="https://kapi.kakao.com/cors/?xdm_e=https%3A%2F%2Fwww.r114.com&amp;xdm_c=default4117&amp;xdm_p=1" frameborder="0" style="position: absolute; top: -2000px; left: 0px;"></iframe><div id="fb-root" class=" fb_reset"><div style="position: absolute; top: -10000px; width: 0px; height: 0px;"><div>
				<iframe name="fb_xdm_frame_https" frameborder="0"
					allowtransparency="true" allowfullscreen="true" scrolling="no"
					allow="encrypted-media" id="fb_xdm_frame_https" aria-hidden="true"
					title="Facebook Cross Domain Communication Frame" tabindex="-1"
					src="https://staticxx.facebook.com/connect/xd_arbiter/r/d_vbiawPdxB.js?version=44#channel=f3e2f74556712c&amp;origin=https%3A%2F%2Fwww.r114.com"
					style="border: none;"></iframe>
			</div><div></div></div></div></body>
</html>