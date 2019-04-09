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
                <ul id="MemulType1">
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

            <li class="on">
				<span>
					<a href="/?_c=lots">분양</a>
					<div class="layer_menu lm_5">
						<ul>
							<li class=""><a href="/?_c=lots&amp;_s=info&amp;_m=infolist">분양정보</a></li>
							<li class=""><a href="/?_c=lots&amp;_s=lotsSchedule&amp;_m=lotsSchedule">분양일정</a></li>
							<li class="on"><a href="/?_c=lots&amp;_m=lotsnews">분양뉴스</a></li>
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
					<li class="on"><a href="/?_c=lots&amp;_m=lotsnews">분양뉴스</a></li>
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
 //fix for IE9 이하
 $(function () {
	 if($.browser.msie && parseInt($.browser.version) <= parseInt(9)){
		$('#body_layout').each(function(){
			$(this).find("input[type=text]").each(function(){

				if ($(this).val() == $(this).attr("placeholder"))
				{
					$(this).val("");
					$(this).removeAttr('placeholder');
				}
			});
		});
	 }
 });
</script>
<!-- 바디 시작 -->
<div id="body_layout">
	<div class="body_wrap">
    	<!-- 타이틀 시작 -->
    	<div class="title_wrap">
            <div class="title">
                <h3>분양뉴스</h3>
            </div>
            <div class="location">
                <ul>
                    <li><a href="/">홈</a></li>
                    <li><a href="/?_c=lots">분양</a></li>
                    <li>분양뉴스</li>
                </ul>
            </div>
        </div>
    	<!-- 타이틀 끝 -->

        <!-- 컨텐츠 시작 -->
        <div class="contents_wrap">
			<ul class="list_tab type4">
				<li class="on"><a href="/?_c=lots&amp;_m=lotsnews&amp;bno=70">분양속보<span class="skip">현재메뉴</span></a></li>
				<li class=""><a href="/?_c=lots&amp;_m=lotsnews&amp;bno=72">업계동향</a></li>
				<li class=""><a href="/?_c=lots&amp;_m=lotsnews&amp;bno=200&amp;kind=8">공급시장동향</a></li>
				<li class=""><a href="/?_c=lots&amp;_m=lotsnews&amp;bno=200&amp;kind=4">유망분양시장</a></li>
			</ul>
			<div class="rt">
				<span class="inp_wrap btn_type">
					<button type="button" class="btn_srchbox"><span class="ico_comm_s search">검색</span></button>
					<!-- <input type="text" class="inp_txt" placeholder="시,구,동 등을 입력하세요." onkeyup="fn_autoFillSearchKeyIn(this.value)" id="searchAddr" value=""> -->
					<input type="text" class="inp_txt" placeholder="시,구,동 등을 입력하세요." onclick="search_CreateAddrHtml('body', this.value);" id="searchAddr" value="">
					<button type="button" class="btn_del round_s" id="cmdDeleteAddr">삭제버튼</button>
				<!--	<div id="moveAutoFillAddressDiv" style="display:none;position:absolute;height:150px;width:295px;border:1px solid #003333;z-index:1;background-color:#FFFFFF;overflow-y:auto;text-align:center"></div>
				-->
				</span>
			</div>
			<div class="sort_wrap">
        		<a href="javascript:;" onclick="fn_newsListSetUp('1')" class="selected">최신순</a>
        		<a href="javascript:;" onclick="fn_newsListSetUp('2')" class="">조회순</a>
        		<a href="javascript:;" onclick="fn_newsListSetUp('3')" class="">추천순</a>
        		<div class="total_cnt">
        			총 <span id="totalNewsCount">7,019</span>개 글
        		</div>
        	</div>
			<!-- 리스트 -->
			<ul class="list_thumb_type2"><li><a href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=0&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=1&amp;sort2=down&amp;page=1&amp;num=14290"><span class="thumb"><img src="https://image.r114.co.kr/images/r114/2014/jo_g20190405.png" alt=""></span></a><!-- 영상일경우 class='mp' 추가 --><div><a href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=0&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=1&amp;sort2=down&amp;page=1&amp;num=14290"><strong class="tit">트리플역세권으로 강남까지 더 빠르게! "금정역동양라파크"</strong><span class="desc">   
  모집문의: 1666-0881 
  - 1-4호선, GTX금정역 트리플역세권
 - 강남까지 10분대!
 
   금정역동양라파크 에서 아파트 조합원 모집을 모집 중이다. 경기도 군포시 금정동 80번지 일원에 지하2층~지상29층(예정), 8개동, 59㎡~84㎡ 소형아파트 위주로 877세대 규모로 들..</span></a><div><span class="info_wrap1"><span><span class="ico_comm_s writer">작성자</span>부동산114</span><span>2019.04.05</span><span>조회  319</span><span><span class="ico_comm_s like">공감</span>0</span></span></div></div></li><li><a href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=0&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=1&amp;sort2=down&amp;page=1&amp;num=14289"><span class="thumb"><img src="https://image.r114.co.kr/images/r114/2014/jo_g20190404.jpg" alt=""></span></a><!-- 영상일경우 class='mp' 추가 --><div><a href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=0&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=1&amp;sort2=down&amp;page=1&amp;num=14289"><strong class="tit">GS건설, "성남고등자이" 5월 분양</strong><span class="desc">  
  ◆ 아파트 전용면적 84㎡ 364가구, 오피스텔 전용면적 22~52㎡ 363실 분양
  ◆ 상업시설 총 101실… 가시성, 접근성 우수한 스트리트형 상가배치
  ◆ 뛰어난 도로교통 갖춰 강남·판교 더블 생활권 가능한 입지 여건 
 
 성남 고등지구의 마지막 민간분양으로 GS건설 자이가 들어선다...</span></a><div><span class="info_wrap1"><span><span class="ico_comm_s writer">작성자</span></span><span>2019.04.04</span><span>조회  129</span><span><span class="ico_comm_s like">공감</span>0</span></span></div></div></li><li><a href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=0&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=1&amp;sort2=down&amp;page=1&amp;num=14288"><span class="thumb"><img src="https://image.r114.co.kr/images/r114/2014/jo_g20190402.jpg" alt=""></span></a><!-- 영상일경우 class='mp' 추가 --><div><a href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=0&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=1&amp;sort2=down&amp;page=1&amp;num=14288"><strong class="tit">송파대우이안(이스트원),다세권 확보한 ‘똘똘한 한 채’</strong><span class="desc">   
  모집문의: 1666-0887 
  - 거여역 0.3km 초 역세권
 
   송파대우이안(이스트원) 에서 아파트 조합원 모집을 모집 중이다. 서울시 송파구 거여동 17-9번지 일원에 지하2층~지상33층(예정), 49㎡~84㎡ 소형아파트 위주로 624세대 규모로 들어설 예정이다. 가변성 설계와 팬..</span></a><div><span class="info_wrap1"><span><span class="ico_comm_s writer">작성자</span>부동산114</span><span>2019.04.02</span><span>조회  1,174</span><span><span class="ico_comm_s like">공감</span>0</span></span></div></div></li><li><a href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=0&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=1&amp;sort2=down&amp;page=1&amp;num=14287"><span class="thumb"><img src="https://image.r114.co.kr/images/r114/2014/jo_g20190326.jpg" alt=""></span></a><!-- 영상일경우 class='mp' 추가 --><div><a href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=0&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=1&amp;sort2=down&amp;page=1&amp;num=14287"><strong class="tit">GS건설 방배그랑자이 4월 분양예정</strong><span class="desc">  ◆ 방배경남아파트 재건축 전용면적 59~84㎡ 256가구 일반분양 예정
  ◆ 서리풀터널 개통 호재.. 내방역-서초 5분대 주파
  ◆ 우면산-매봉재산 연결한 산책로 조성..뛰어난 조경 선보여
  ◆ GS건설이 개발한 국내 최초 환기형 공기청정 시스템 "시스클라인" 도입 
 
    
  GS건설이 ..</span></a><div><span class="info_wrap1"><span><span class="ico_comm_s writer">작성자</span>부동산114</span><span>2019.03.26</span><span>조회  573</span><span><span class="ico_comm_s like">공감</span>1</span></span></div></div></li><li><a href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=0&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=1&amp;sort2=down&amp;page=1&amp;num=14286"><span class="thumb"><img src="https://image.r114.co.kr/images/r114/2014/jo_h20190325.png" alt=""></span></a><!-- 영상일경우 class='mp' 추가 --><div><a href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=0&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=1&amp;sort2=down&amp;page=1&amp;num=14286"><strong class="tit"><b>현대건설 힐스테이트 리뉴얼로No.1 브랜드 위상 강화</b>
</strong><span class="desc">  힐스테이트의 새로운 브랜드 철학 "라이프스타일 리더"
 현대건설, 힐스테이트 리뉴얼로 No.1 브랜드 위상 강화 
 
  - 소비자 인지도 제고 위한 브랜드명 한글 적용 및 로고 색상 단색 표기 
  … "Hillstate" → 국문 "힐스테이트"로, 기존 음영 적용 색상 와인 칼라 단색으로 통일
 ..</span></a><div><span class="info_wrap1"><span><span class="ico_comm_s writer">작성자</span>부동산114</span><span>2019.03.25</span><span>조회  387</span><span><span class="ico_comm_s like">공감</span>0</span></span></div></div></li><li><a href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=0&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=1&amp;sort2=down&amp;page=1&amp;num=14285"><span class="thumb"><img src="https://image.r114.co.kr/images/r114/2014/jo_y20190315.jpg" alt=""></span></a><!-- 영상일경우 class='mp' 추가 --><div><a href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=0&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=1&amp;sort2=down&amp;page=1&amp;num=14285"><strong class="tit">신개념 타운하우스 도시형생활주택 "영종이오브릭스"</strong><span class="desc">   
  모집문의: 1666-0887 
  - 영종하늘도시 역세권
 
   영종도이오브릭스 는 즉시 입주가 가능한 지하1층~지상4층 전용면적 원룸 16.93~18.06㎡ 21세대, 1.5룸 33.86~37.00㎡ 57세대 총 78세대 규모의 6개동으로 이루어져있는 도시형생활주택으로 실수요자의 선호가 높..</span></a><div><span class="info_wrap1"><span><span class="ico_comm_s writer">작성자</span>부동산114</span><span>2019.03.15</span><span>조회  1,839</span><span><span class="ico_comm_s like">공감</span>0</span></span></div></div></li><li><a href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=0&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=1&amp;sort2=down&amp;page=1&amp;num=14284"><span class="thumb"><img src="https://image.r114.co.kr/images/r114/2014/jo_s20190211.jpg" alt=""></span></a><!-- 영상일경우 class='mp' 추가 --><div><a href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=0&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=1&amp;sort2=down&amp;page=1&amp;num=14284"><strong class="tit">송파의 트리플 역세권, 숲세권, 학세권 프리미엄을 선점하라!</strong><span class="desc">   
  모집문의: 1666-0881 
  - 송파구의 新프리미엄 시대를 열다
 - 트리플역세권, 숲세권, 학세권, 생활권 까지!
 
   송파가락지역주택아파트 에서 마지막 "특별분양" 조합원 모집하고 있다. 1단지와 2단지로 각각 서울시 송파구 가락동 39번지, 34번지 일대로 지하2층~지상20층(예..</span></a><div><span class="info_wrap1"><span><span class="ico_comm_s writer">작성자</span>부동산114</span><span>2018.10.29</span><span>조회  21,875</span><span><span class="ico_comm_s like">공감</span>22</span></span></div></div></li><li><a href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=0&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=1&amp;sort2=down&amp;page=1&amp;num=14283"><span class="thumb"><img src="https://image.r114.co.kr/images/r114/2014/jo_g20181025.jpg" alt=""></span></a><!-- 영상일경우 class='mp' 추가 --><div><a href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=0&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=1&amp;sort2=down&amp;page=1&amp;num=14283"><strong class="tit">GS건설, "일산자이3차" 12월 분양 예정</strong><span class="desc">  	- 2차 성공 분양에 이은 1333가구 대단지...전용 59~100㎡, 중소형 91% 차지
  	- 판상형 중심 설계?알파룸 등 배치로 공간활용도 높여…세대별 지하창고 제공
  	- 국제고 등 명문학군, 동국대병원 등 편리한 인프라, 서울~문산 고속도로 호재 
 
    
 일산의 부촌으로 꼽히는 ..</span></a><div><span class="info_wrap1"><span><span class="ico_comm_s writer">작성자</span>부동산114</span><span>2018.10.25</span><span>조회  4,009</span><span><span class="ico_comm_s like">공감</span>4</span></span></div></div></li><li><a href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=0&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=1&amp;sort2=down&amp;page=1&amp;num=14282"><span class="thumb"><img src="https://image.r114.co.kr/images/r114/2014/jo_g20181018(1).jpg" alt=""></span></a><!-- 영상일경우 class='mp' 추가 --><div><a href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=0&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=1&amp;sort2=down&amp;page=1&amp;num=14282"><strong class="tit">자이S&amp;D, "별내자이엘라" 모델하우스 19일 오픈</strong><span class="desc">  - 지하 2층~지상 최고 26층 총 296실 규모의 주거용 오피스텔
 - 4호선 북부별내역(가칭) 초역세권, 교육·편의 등 최적의 주거환경
 - 23~24일 양일간 현장청약, 25일 당첨자 발표...26~27일 계약 진행 
 
    
 별내신도시에 주거용 오피스텔 "별내자이엘라"가 모델하우스를 열고..</span></a><div><span class="info_wrap1"><span><span class="ico_comm_s writer">작성자</span>부동산114</span><span>2018.10.18</span><span>조회  2,267</span><span><span class="ico_comm_s like">공감</span>1</span></span></div></div></li><li><a href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=0&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=1&amp;sort2=down&amp;page=1&amp;num=14281"><span class="thumb"><img src="https://image.r114.co.kr/images/r114/2014/jo_s20181010.jpg" alt=""></span></a><!-- 영상일경우 class='mp' 추가 --><div><a href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=0&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=1&amp;sort2=down&amp;page=1&amp;num=14281"><strong class="tit">서희스타힐스 부평 센트럴, 10월 분양 예정!</strong><span class="desc">  ■ 6천 세대 미니신도시급 뉴시티 프로젝트의 시작!
 ■ 서희스타힐스 부평 센트럴, 완벽한 원스톱 라이프 실현!  
 
 나홀로 아파트나 소규모 아파트보다 대단지 아파트를 선호하는 까닭은 세대 수가 많을수록 생활편의가 덩달아 향상되기 때문이다. 사는 사람이 많을수록 초중고 교육 인프라는 물론이고 각종..</span></a><div><span class="info_wrap1"><span><span class="ico_comm_s writer">작성자</span>부동산114</span><span>2018.10.10</span><span>조회  2,445</span><span><span class="ico_comm_s like">공감</span>1</span></span></div></div></li><li><a href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=0&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=1&amp;sort2=down&amp;page=1&amp;num=14280"><span class="thumb"><img src="https://image.r114.co.kr/images/r114/2014/jo_s20180927.jpg" alt=""></span></a><!-- 영상일경우 class='mp' 추가 --><div><a href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=0&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=1&amp;sort2=down&amp;page=1&amp;num=14280"><strong class="tit">상계 뉴타운, 상계 신도시 프리미엄 선점 "상계파밀리에빛그린"</strong><span class="desc">   
  모집문의: 1666-0887 
  - 상계 뉴타운, 상계 신도시 프리미엄 선점
 - 4호선 당고개역 초역세권 대단지
 
   상계파밀리에빛그린 에서 아파트 조합원 모집을 앞두고 있다. 서울시 노원구 상계동 37-16번지 일대에 지하2층~지상25층(예정), 총 21개 동 소형아파트 59㎡,84㎡..</span></a><div><span class="info_wrap1"><span><span class="ico_comm_s writer">작성자</span>부동산114</span><span>2018.09.27</span><span>조회  16,232</span><span><span class="ico_comm_s like">공감</span>8</span></span></div></div></li><li><a href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=0&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=1&amp;sort2=down&amp;page=1&amp;num=14279"><span class="thumb"><img src="https://image.r114.co.kr/images/r114/2014/jo_20180914(2).jpg" alt=""></span></a><!-- 영상일경우 class='mp' 추가 --><div><a href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=0&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=1&amp;sort2=down&amp;page=1&amp;num=14279"><strong class="tit">GS건설, 문성레이크자이 견본주택 13일 오픈</strong><span class="desc">  ◆19일(수)특별공급, 20일(목)1순위, 당첨자는 10월 2일(화) 발표
 ◆구미 3대 명소인 문성지를 품은 숲세권 아파트, 뛰어난 조망권 갖춰 관심 집중
 ◆단지 내 조경이나 공원, 휴게시설 등 다양한 녹지 및 부대시설 조성 
 ◆GS건설 구미 문성레이크자이가 견본주택을 오픈하고 본격 분양에 나선..</span></a><div><span class="info_wrap1"><span><span class="ico_comm_s writer">작성자</span>부동산114</span><span>2018.09.14</span><span>조회  1,709</span><span><span class="ico_comm_s like">공감</span>0</span></span></div></div></li><li><a href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=0&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=1&amp;sort2=down&amp;page=1&amp;num=14278"><span class="thumb"><img src="https://image.r114.co.kr/images/r114/2014/jo_s201809006(1).jpg" alt=""></span></a><!-- 영상일경우 class='mp' 추가 --><div><a href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=0&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=1&amp;sort2=down&amp;page=1&amp;num=14278"><strong class="tit">마곡지구의 숨은진주 신마곡지구 송정서희스타힐스 아파트</strong><span class="desc">   
  대표전화: 1800-3884    
 서울의 마지막 황금알 땅으로 마곡지구는 투자자들과 실수요자들의 주목을 가장 많이
 받고 있는 최대의 개발지구 이다.
 
    
 마곡지구는 경기 성남에 위치한 판교테크노밸리의 6배 이상의 크기이며 현재 LG사이언스파크를 시작으로 100여개 기업이 입주를 ..</span></a><div><span class="info_wrap1"><span><span class="ico_comm_s writer">작성자</span>부동산114</span><span>2018.09.06</span><span>조회  22,863</span><span><span class="ico_comm_s like">공감</span>22</span></span></div></div></li><li><a href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=0&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=1&amp;sort2=down&amp;page=1&amp;num=14277"><span class="thumb"><img src="https://image.r114.co.kr/images/r114/2014/jo_y20180822(3).jpg" alt=""></span></a><!-- 영상일경우 class='mp' 추가 --><div><a href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=0&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=1&amp;sort2=down&amp;page=1&amp;num=14277"><strong class="tit">연신내가 아껴둔 한자리 "연신내트리플파크"</strong><span class="desc">   
  모집문의: 1666-0881 
  - 지하철3,6호선, GTX-A 트리플 역세권으로 강남까지 한걸음
 - 삶의 혁신을 이루는 대규모 재개발사업을 통한 미래가치와 파크형 대단지
 
   연신내트리플파크 에서 아파트 조합원 모집을 앞두고 있다. 서울시 은평구 불광동 312번지 일대에 지하3층~지상..</span></a><div><span class="info_wrap1"><span><span class="ico_comm_s writer">작성자</span>부동산114</span><span>2018.08.22</span><span>조회  15,200</span><span><span class="ico_comm_s like">공감</span>3</span></span></div></div></li><li><a href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=0&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=1&amp;sort2=down&amp;page=1&amp;num=14276"><span class="thumb"><img src="https://image.r114.co.kr/images/r114/2014/jo_y20180820.jpg" alt=""></span></a><!-- 영상일경우 class='mp' 추가 --><div><a href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=0&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=1&amp;sort2=down&amp;page=1&amp;num=14276"><strong class="tit">GS건설, 여수 "웅천자이 더 스위트"
생활숙박시설 9월 분양 예정</strong><span class="desc">   
  문의: 1833-5724
 
 - 웅천지구 내 지하3층~지상최고42층 4개동 전용면적 132~313㎡ 584실 분양
 - 단지 인근 마리나 시설 및 이순신 공원 있어 뛰어난 주변 경관 갖춰
 - 전국 어디서든 청약통장 없이 19세 이상이면 청약 가능하고 전매 자유로워   
 
 GS건설이 전남..</span></a><div><span class="info_wrap1"><span><span class="ico_comm_s writer">작성자</span>부동산114</span><span>2018.08.20</span><span>조회  2,227</span><span><span class="ico_comm_s like">공감</span>0</span></span></div></div></li></ul>
			<!-- //리스트 -->

			<div class="srch_bbs">
				<form name="newsSearchFrm" id="newsSearchFrm" method="post" action="/?_c=lots&amp;_m=lotsnews">
				<input type="hidden" name="search_addr" id="search_addr" value="">
				<input type="hidden" name="search_addr1" id="search_addr1" value="">
				<input type="hidden" name="search_addr2" id="search_addr2" value="">
				<input type="hidden" name="search_addr3" id="search_addr3" value="">
				<input type="hidden" name="sort" id="sort" value="1"><!-- 정렬방식 -->
				<input type="hidden" name="sort2" id="sort2" value="down"><!-- 정렬순서(오름/내림) -->
				<input type="hidden" name="bno" id="bno" value="70">
				<input type="hidden" name="kind" id="kind" value="">
				<input type="hidden" name="page" id="page" value="1">
				<span class="inp_slt">
					<select title="검색기준 선택" name="search_keyword" id="search_keyword" style="display: none;">
						<option value="전체" selected="">전체</option> <option value="제목">제목</option> <option value="내용">내용</option>
					</select><span tabindex="0" id="search_keyword-button" role="combobox" aria-expanded="false" aria-autocomplete="list" aria-owns="search_keyword-menu" aria-haspopup="true" title="검색기준 선택" class="ui-selectmenu-button ui-selectmenu-button-closed ui-corner-all ui-button ui-widget"><span class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span><span class="ui-selectmenu-text">전체</span></span>
				</span>
				<div class="srch_box">
					<input type="text" name="search_writer" id="searchStr" value="" class="inp_txt" title="검색어 입력" placeholder="검색어를 입력하세요">
					<a href="javascript:;" id="cmdSearch" class="ico_comm_l btn_srch">검색</a>
				</div>
				</form>
			</div>

			<div class="paging"><strong><span class="skip">현재페이지</span>1</strong><a href="javascript:goPage(2, 1);">2</a><a href="javascript:goPage(3, 1);">3</a><a href="javascript:goPage(4, 1);">4</a><a href="javascript:goPage(5, 1);">5</a><a href="javascript:goPage(6, 1);">6</a><a href="javascript:goPage(7, 1);">7</a><a href="javascript:goPage(8, 1);">8</a><a href="javascript:goPage(9, 1);">9</a><a href="javascript:goPage(10, 1);">10</a><a href="javascript:next_page(1);"><span class="ico_comm_s next_10">다음 10페이지</span></a></div>

			<!--분양 바디 하단 광고 -->
			<div>
			<iframe src="/?_c=Common&amp;_m=Ad&amp;banner=pc_boonyang_bottom_ad" scrolling="no" marginheight="0" marginwidth="0" frameborder="0" width="100%" height="90px" style="border:0; margin:0; padding-top:0px"></iframe>
			</div>
			<!--//분양 바디 하단 광고 -->

        </div>
        <!-- 컨텐츠 끝 -->
        <!-- 라이트 시작 -->
		<div class="right_wrap" id="divLotsRight">
        <!-- 라이드 시작 -->
        <div class="right_wrap">
        	<!-- 내/외부 광고영역
        	<div class="ad_wrap">
        		광고
        	</div>
        	 //내/외부 광고영역 -->
        	<div class="bx_gray">
				<!-- 분양뉴스 -->
				<div class="inner news">
					<h4 class="h4_type2">분양뉴스</h4>
					<div class="slide_type6">
						<div class="bx-wrapper" style="max-width: 100%;"><div class="bx-viewport" aria-live="polite" style="width: 100%; overflow: hidden; position: relative; height: 173px;"><ul style="width: 5215%; position: relative; transition-duration: 0s; transform: translate3d(-190px, 0px, 0px);"><li style="float: left; list-style: none; position: relative; width: 190px;" class="bx-clone" aria-hidden="true">
								<a href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=2&amp;sort2=down&amp;page=1&amp;num=14286" class="thumb_wrap">
									<span class="thumb gra"><img src="https://image.r114.co.kr/images/r114/2014/jo_h20190325.png" alt=""></span>
									<span class="desc"><b>현대건설 힐스테이트 리뉴얼로No.1 브랜드 위상 강화</b>
</span>
									<span class="info_wrap2">
										<span>부동산114</span>
										<span>2019.03.25</span>
									</span>
								</a>
							</li>
							
							<li style="float: left; list-style: none; position: relative; width: 190px;" aria-hidden="false">
								<a href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=2&amp;sort2=down&amp;page=1&amp;num=14290" class="thumb_wrap">
									<span class="thumb gra"><img src="https://image.r114.co.kr/images/r114/2014/jo_g20190405.png" alt=""></span>
									<span class="desc">트리플역세권으로 강남까지 더 빠르게! "금정역동양라파크"</span>
									<span class="info_wrap2">
										<span>부동산114</span>
										<span>2019.04.05</span>
									</span>
								</a>
							</li>
							
							<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 190px;">
								<a href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=2&amp;sort2=down&amp;page=1&amp;num=14289" class="thumb_wrap">
									<span class="thumb gra"><img src="https://image.r114.co.kr/images/r114/2014/jo_g20190404.jpg" alt=""></span>
									<span class="desc">GS건설, "성남고등자이" 5월 분양</span>
									<span class="info_wrap2">
										<span></span>
										<span>2019.04.04</span>
									</span>
								</a>
							</li>
							
							<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 190px;">
								<a href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=2&amp;sort2=down&amp;page=1&amp;num=14288" class="thumb_wrap">
									<span class="thumb gra"><img src="https://image.r114.co.kr/images/r114/2014/jo_g20190402.jpg" alt=""></span>
									<span class="desc">송파대우이안(이스트원),다세권 확보한 ‘똘똘한 한 채’</span>
									<span class="info_wrap2">
										<span>부동산114</span>
										<span>2019.04.02</span>
									</span>
								</a>
							</li>
							
							<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 190px;">
								<a href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=2&amp;sort2=down&amp;page=1&amp;num=14287" class="thumb_wrap">
									<span class="thumb gra"><img src="https://image.r114.co.kr/images/r114/2014/jo_g20190326.jpg" alt=""></span>
									<span class="desc">GS건설 방배그랑자이 4월 분양예정</span>
									<span class="info_wrap2">
										<span>부동산114</span>
										<span>2019.03.26</span>
									</span>
								</a>
							</li>
							
							<li style="float: left; list-style: none; position: relative; width: 190px;" aria-hidden="true">
								<a href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=2&amp;sort2=down&amp;page=1&amp;num=14286" class="thumb_wrap">
									<span class="thumb gra"><img src="https://image.r114.co.kr/images/r114/2014/jo_h20190325.png" alt=""></span>
									<span class="desc"><b>현대건설 힐스테이트 리뉴얼로No.1 브랜드 위상 강화</b>
</span>
									<span class="info_wrap2">
										<span>부동산114</span>
										<span>2019.03.25</span>
									</span>
								</a>
							</li>
							
						<li style="float: left; list-style: none; position: relative; width: 190px;" class="bx-clone" aria-hidden="true">
								<a href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=2&amp;sort2=down&amp;page=1&amp;num=14290" class="thumb_wrap">
									<span class="thumb gra"><img src="https://image.r114.co.kr/images/r114/2014/jo_g20190405.png" alt=""></span>
									<span class="desc">트리플역세권으로 강남까지 더 빠르게! "금정역동양라파크"</span>
									<span class="info_wrap2">
										<span>부동산114</span>
										<span>2019.04.05</span>
									</span>
								</a>
							</li></ul></div><div class="bx-controls bx-has-pager"><div class="bx-pager bx-default-pager"><div class="bx-pager-item"><a href="" data-slide-index="0" class="bx-pager-link active">1</a></div><div class="bx-pager-item"><a href="" data-slide-index="1" class="bx-pager-link">2</a></div><div class="bx-pager-item"><a href="" data-slide-index="2" class="bx-pager-link">3</a></div><div class="bx-pager-item"><a href="" data-slide-index="3" class="bx-pager-link">4</a></div><div class="bx-pager-item"><a href="" data-slide-index="4" class="bx-pager-link">5</a></div></div></div></div>
					</div>
					<a href="/?_c=lots&amp;_m=lotsnews" class="more_type1" title="분양뉴스">더보기 <span class="ico_comm_s more1"></span></a>
				</div>
				<!-- //분양뉴스 -->
			</div>
			<div class="bx_gray banner">
				<!-- 분양알리미 -->
				<a href="javascript:" class="bn_a" id="cmdAlarmSave">
					<strong>분양알리미 신청하기</strong>
					<p>분양정보를 보다 <br>편리하게 확인하세요!</p>
					<span class="ico_comm_l sale_noti"></span>
				</a>
				<!-- //분양알리미 -->
			</div>
			<div class="bx_gray">
				<!-- 추천 분양현장 -->
				<div class="inner news">
					<h4 class="h4_type2">추천 분양현장</h4>
					<div class="slide_type6">
						<div class="bx-wrapper" style="max-width: 100%;"><div class="bx-viewport" aria-live="polite" style="width: 100%; overflow: hidden; position: relative; height: 204px;"><ul style="width: 3215%; position: relative; transition-duration: 0s; transform: translate3d(-190px, 0px, 0px);"><li style="float: left; list-style: none; position: relative; width: 190px;" class="bx-clone" aria-hidden="true">
								<a href="http://www.r114.com/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;num=14278" class="thumb_wrap">
									<span class="thumb gra"><img src="https://image.r114.co.kr/MainGnb/2018/20180906090729.jpg" alt=""></span>
									<strong class="tit">"신마곡지구 송정서희스타힐스"</strong>
									<span class="desc">전세대 소형아파트 위주로 공급할 예정</span>
								</a>
							</li>
							
							<li style="float: left; list-style: none; position: relative; width: 190px;" aria-hidden="false">
								<a href="http://www.r114.com/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=&amp;search_keyword=전체&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=1&amp;sort2=down&amp;page=1&amp;num=14290" class="thumb_wrap">
									<span class="thumb gra"><img src="https://image.r114.co.kr/MainGnb/2019/20190405090621.png" alt=""></span>
									<strong class="tit">“금정역동양라파크”</strong>
									<span class="desc">트리플역세권으로 강남까지 더 빠르게!</span>
								</a>
							</li>
							
							<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 190px;">
								<a href="http://www.r114.com/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=1&amp;sort2=down&amp;page=1&amp;num=14288" class="thumb_wrap">
									<span class="thumb gra"><img src="https://image.r114.co.kr/MainGnb/2019/20190402101449.jpg" alt=""></span>
									<strong class="tit">"송파대우이안(이스트원)"</strong>
									<span class="desc">다세권 확보한 똘똘한 한 채</span>
								</a>
							</li>
							
							<li style="float: left; list-style: none; position: relative; width: 190px;" aria-hidden="true">
								<a href="http://www.r114.com/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;num=14278" class="thumb_wrap">
									<span class="thumb gra"><img src="https://image.r114.co.kr/MainGnb/2018/20180906090729.jpg" alt=""></span>
									<strong class="tit">"신마곡지구 송정서희스타힐스"</strong>
									<span class="desc">전세대 소형아파트 위주로 공급할 예정</span>
								</a>
							</li>
							
						<li style="float: left; list-style: none; position: relative; width: 190px;" class="bx-clone" aria-hidden="true">
								<a href="http://www.r114.com/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=&amp;search_keyword=전체&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=1&amp;sort2=down&amp;page=1&amp;num=14290" class="thumb_wrap">
									<span class="thumb gra"><img src="https://image.r114.co.kr/MainGnb/2019/20190405090621.png" alt=""></span>
									<strong class="tit">“금정역동양라파크”</strong>
									<span class="desc">트리플역세권으로 강남까지 더 빠르게!</span>
								</a>
							</li></ul></div><div class="bx-controls bx-has-pager"><div class="bx-pager bx-default-pager"><div class="bx-pager-item"><a href="" data-slide-index="0" class="bx-pager-link active">1</a></div><div class="bx-pager-item"><a href="" data-slide-index="1" class="bx-pager-link">2</a></div><div class="bx-pager-item"><a href="" data-slide-index="2" class="bx-pager-link">3</a></div></div></div></div>
					</div>
					<a href="/?_c=lots&amp;_m=lotsnews" class="more_type1" title="분양뉴스">더보기 <span class="ico_comm_s more1"></span></a>
				</div>
				<!-- //추천 분양현장 -->
				<!-- 프로모션
				<div class="slide_type6 type2">
					<ul>
						<li>
							<a href="#">
								<span class="thumb gra"><img src="https://placeholdit.imgix.net/~text?txtsize=30&txt=230%C3%97120&w=230&h=120" alt=""></span>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="thumb gra"><img src="https://placeholdit.imgix.net/~text?txtsize=30&txt=230%C3%97120&w=230&h=120" alt=""></span>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="thumb gra"><img src="https://placeholdit.imgix.net/~text?txtsize=30&txt=230%C3%97120&w=230&h=120" alt=""></span>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="thumb gra"><img src="https://placeholdit.imgix.net/~text?txtsize=30&txt=230%C3%97120&w=230&h=120" alt=""></span>
							</a>
						</li>
					</ul>
				</div>
				//프로모션 -->
			</div>
			<div class="bx_gray">
				<!-- 분양N현장 -->
				<div class="inner news">
					<h4 class="h4_type2">분양&amp;현장</h4>
					<div class="slide_type6">
						<div class="bx-wrapper" style="max-width: 100%;"><div class="bx-viewport" aria-live="polite" style="width: 100%; overflow: hidden; position: relative; height: 204px;"><ul style="width: 3215%; position: relative; transition-duration: 0s; transform: translate3d(-190px, 0px, 0px);"><li style="float: left; list-style: none; position: relative; width: 190px;" class="bx-clone" aria-hidden="true">
								<a href="/?_c=lots&amp;_s=lotsScene&amp;_m=lotsScene&amp;_a=moviedetail&amp;bno=200&amp;gno=4&amp;num=6691" class="thumb_wrap">
									<span class="thumb gra"><img src="https://image.r114.co.kr/FocusNews/2018/201805232306111.jpg" alt=""></span>
									<strong class="tit">"안양 센트럴 헤센2차" 분양현장</strong>
									<span class="desc"> 안양시의 개발 축이 동안구에서 "만안구"로 옮겨가면서 분양시장에서 흥행의 바람이 불어오고 있죠. 공공기관 이전 자리와 공장부지에 새로운 행정업무복합타운과 첨단지식산업센터 조성계획으로 투자 관심이 높아졌습니다. 이곳에 복합단지가 분양을 준비 중인데요. 현장을 찾아가 보았습니다.
 
   
   
 </span>
								</a>
							</li>
							
							<li style="float: left; list-style: none; position: relative; width: 190px;" aria-hidden="false">
								<a href="/?_c=lots&amp;_s=lotsScene&amp;_m=lotsScene&amp;_a=moviedetail&amp;bno=200&amp;gno=4&amp;num=6828" class="thumb_wrap">
									<span class="thumb gra"><img src="https://image.r114.co.kr/FocusNews/2018/201811061447541.png" alt=""></span>
									<strong class="tit">수원 화서역에 들어서는 "화서역 파크 푸르지오" 오피스텔</strong>
									<span class="desc">   
   
  주거대체형 오피스텔로 불리는 
 "화서역 파크 푸르지오" 분양현장에 나왔습니다.
 
 "화서역 파크 푸르지오" 오피스텔이 갖는 차별화된 경쟁력은 과연 무엇일까요? 
 지금부터 함께 알아보시죠. </span>
								</a>
							</li>
							
							<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 190px;">
								<a href="/?_c=lots&amp;_s=lotsScene&amp;_m=lotsScene&amp;_a=moviedetail&amp;bno=200&amp;gno=4&amp;num=6731" class="thumb_wrap">
									<span class="thumb gra"><img src="https://deveimage.r114.co.kr/FocusNews/2018/20180705113327.jpg" alt=""></span>
									<strong class="tit">강북의 뉴타운 장위7구역 "꿈의숲 아이파크"</strong>
									<span class="desc"> 서울 도심에 선보이는 대규모 주거타운인 
 장위뉴타운 7구역 꿈의숲 아이파크 분양현장에 나왔습니다. 
 6가지 프리미엄을 갖췄다는데, 한 번 알아보러 갈까요?
 
   
 
    
 
 </span>
								</a>
							</li>
							
							<li style="float: left; list-style: none; position: relative; width: 190px;" aria-hidden="true">
								<a href="/?_c=lots&amp;_s=lotsScene&amp;_m=lotsScene&amp;_a=moviedetail&amp;bno=200&amp;gno=4&amp;num=6691" class="thumb_wrap">
									<span class="thumb gra"><img src="https://image.r114.co.kr/FocusNews/2018/201805232306111.jpg" alt=""></span>
									<strong class="tit">"안양 센트럴 헤센2차" 분양현장</strong>
									<span class="desc"> 안양시의 개발 축이 동안구에서 "만안구"로 옮겨가면서 분양시장에서 흥행의 바람이 불어오고 있죠. 공공기관 이전 자리와 공장부지에 새로운 행정업무복합타운과 첨단지식산업센터 조성계획으로 투자 관심이 높아졌습니다. 이곳에 복합단지가 분양을 준비 중인데요. 현장을 찾아가 보았습니다.
 
   
   
 </span>
								</a>
							</li>
							
						<li style="float: left; list-style: none; position: relative; width: 190px;" class="bx-clone" aria-hidden="true">
								<a href="/?_c=lots&amp;_s=lotsScene&amp;_m=lotsScene&amp;_a=moviedetail&amp;bno=200&amp;gno=4&amp;num=6828" class="thumb_wrap">
									<span class="thumb gra"><img src="https://image.r114.co.kr/FocusNews/2018/201811061447541.png" alt=""></span>
									<strong class="tit">수원 화서역에 들어서는 "화서역 파크 푸르지오" 오피스텔</strong>
									<span class="desc">   
   
  주거대체형 오피스텔로 불리는 
 "화서역 파크 푸르지오" 분양현장에 나왔습니다.
 
 "화서역 파크 푸르지오" 오피스텔이 갖는 차별화된 경쟁력은 과연 무엇일까요? 
 지금부터 함께 알아보시죠. </span>
								</a>
							</li></ul></div><div class="bx-controls bx-has-pager"><div class="bx-pager bx-default-pager"><div class="bx-pager-item"><a href="" data-slide-index="0" class="bx-pager-link active">1</a></div><div class="bx-pager-item"><a href="" data-slide-index="1" class="bx-pager-link">2</a></div><div class="bx-pager-item"><a href="" data-slide-index="2" class="bx-pager-link">3</a></div></div></div></div>
					</div>
					<a href="/?_c=lots&amp;_s=lotsScene&amp;_m=lotsScene" class="more_type1" title="분양뉴스">더보기 <span class="ico_comm_s more1"></span></a>
				</div>
				<!-- //분양N현장 -->
	        </div>

        	<!-- 청약 -->
        	<div class="bx_gray banner">
        		<a href="/?_c=lots&amp;_s=offerStrategy&amp;_m=lotsOfferGuide" class="bn_a">
					<strong>청약가이드보기</strong>
					<p>청약신청 순서<br>A에서 Z 까지. 신청 전 <br>꼭 확인하세요</p>
					<span class="ico_comm_l ss_guide"></span>
				</a>
			</div>

			<div class="bx_gray banner">
				<a href="/?_c=Lots&amp;_s=offerStrategy&amp;_m=lotsOfferFAQ" class="bn_a">
					<strong>청약도우미</strong>
					<p>청약관련 궁금증을 <br>모두 해소시켜 드립니다</p>
					<span class="ico_comm_l ss_helper"></span>
				</a>
			</div>
        	<!-- //청약 -->

        	<div class="bx_white">
	        	<!-- 금주의 분양정보 -->
	        	<div class="inner qa_some type2">
	        		<h4 class="h4_type2">금주의 분양정보</h4>
	        		<!-- 기간설정 -->
	        		<div class="set_date">
	        			<button type="button" id="calendarPrevWeekRight" onclick="changeWeeklyCalendarRight('prev', true);"><span class="ico_comm_s pv_arrow5">지난주</span></button>
	        			<span id="calendarWeekRight">04.08 ~ 04.14</span>
	        			<button type="button" id="calendarNextMonthRight" onclick="changeWeeklyCalendarRight('next', true);"><span class="ico_comm_s nx_arrow5">다음주</span></button>
	        		</div>
	        		<!-- //기간설정 -->
	        		<table class="tbl_type1 type13">
						<caption>금주의 분양 단지</caption>
						<colgroup>
							<col style="width:22%;"><col style="width:21%;"><col>
						</colgroup>
						<!--
						<tbody id="lotsInfoListRight">
						</tbody>
						-->
					</table>
					<div style="height: 160px; overflow: auto">
					<table class="tbl_type1 type13">
						<colgroup>
							<col style="width:22%;"><col style="width:21%;"><col>
						</colgroup>
						<tbody id="lotsInfoListRight">
							<!--
							<tr>
								<th scope="row" rowspan="5">08.07</th>
								<th scope="row">오픈</th>
								<td><a href="#none">강원원주혁신도시강원원주혁신도시</a></td>
							</tr>
							-->
						</tbody>
					</table>
					</div>
					<a href="?_c=lots&amp;_s=lotsSchedule&amp;_m=lotsSchedule" class="more_type1">더보기 <span class="ico_comm_s more1"></span></a>
	        	</div>
	        	<!-- //금주의 분양정보 -->
			</div>

        	<!-- Google 광고 -->
        	<div class="ad_wrap">

        	</div>
        	<!-- //Google 광고 -->
        </div>
        <!-- 라이드 끝 -->

<script type="text/javascript">

	var calendarWeekDateRight;
	var calendarModeRight;
	var lotsScheduleDataRight;
	var sortTypeRight, sortOrderbyRight;
	var isFirstLoadRight = false;

    slide_type6_load();

	$(document).ready(function() {
		$("#cmdAlarmSave").on("click", function() {
			var url = "/?_c=mypage&_s=MarketPriceNotification&_m=marketPriceNotificationSell";
			if (fn_isLogin() == "") {
				alert(ALERT_REQUEST_LOGIN);
				fn_loginDiv(url);
			}
			else {
				window.location.href = url;
			}
		});

		sortTypeRight = "날짜";
		sortOrderbyRight = "DESC";

		calendarModeRight = "W";

		calendarWeekDateRight  = getFirstDayOfThisWeekRight( todayToDateStringRight() );

//		setInitCalendarRight();

		changeWeeklyCalendarRight("", false);

	});

	function getFirstDayOfThisWeekRight(dt) {
		var year = parseInt(dt.substr(0,4));
		var month = parseInt(dt.substr(4,2));
		var day = parseInt(dt.substr(6,2));
		var date = new Date(year, month-1, day)
		var week = date.getDay();

		if (week == 0) {
			date.setDate(date.getDate() - 6);
		}
		else {
			date.setDate(date.getDate() - (week - 1));
		}

		var sYear = date.getFullYear();
	    var sMonth = pad(date.getMonth() + 1, 2);
	    var sDate = pad(date.getDate(), 2);

	    return sYear + sMonth + sDate;

	}

	/* 주 이전/다음 변경 */
	function changeWeeklyCalendarRight(way, isLoad) {

		if (way != "") {
			calendarWeekDateRight = getMonthDayRight(calendarWeekDateRight, way);
		}

		var firstdate = calendarWeekDateRight.substr(4,2)+ "." +  calendarWeekDateRight.substr(6,2);
		var lastdate = "";

		var year = parseInt(calendarWeekDateRight.substr(0,4));
		var month = parseInt(calendarWeekDateRight.substr(4,2));
		var day = parseInt(calendarWeekDateRight.substr(6,2));
		var date = new Date(year, month-1, day)

		date.setDate(date.getDate() + 6);

		var sYear = date.getFullYear();
	    var sMonth = pad(date.getMonth() + 1, 2);
	    var sDate = pad(date.getDate(), 2);

	    lastdate = sMonth + "." + sDate;

		$("#calendarWeekRight").html(firstdate + " ~ " + lastdate);

		calendarModeRight = "W";

		getLotsScheduleInfoRight(calendarModeRight, calendarWeekDateRight);

	}

	/* 이전, 다음 주 구하기 */
	function getMonthDayRight(dt, way) {

		var year = parseInt(dt.substr(0,4));
		var month = parseInt(dt.substr(4,2));
		var day = parseInt(dt.substr(6,2));
		var date = new Date(year, month-1, day)

		if (way == "prev") {
			date.setDate(date.getDate() - 7);
		}
		else {
			date.setDate(date.getDate() + 7);
		}

		var sYear = date.getFullYear();
	    var sMonth = pad(date.getMonth() + 1, 2);
	    var sDate = pad(date.getDate(), 2);

	    return sYear + sMonth + sDate;

	}

	function todayToDateStringRight() {
		var today = new Date();
		var year = today.getFullYear();
		var month = today.getMonth()  +1;
		var day = today.getDate();

		return pad(year, 4) + pad(month, 2) + pad(day, 2)
	}

	/* 분양일정 조회 */
	function getLotsScheduleInfoRight(searchDateType, searchDate) {

		var address ="";;
		var estateType, searchStatus;
		var sorting, sortOrder;

		searchStatus = "";
		estateType = "";

		var formData = { estateType: estateType, searchDateType: searchDateType,  searchDate: searchDate, searchStatus: searchStatus, sorting: sortTypeRight, sortOrder: sortOrderbyRight, metro: "", county: "", town: "" };

		return $.ajax({
			url : "/?_c=lots&_m=lotsDefault&_a=LotsScheduleListBanner.ajax",
			type: "POST",
			data : formData,
			success: function(data, textStatus, jqXHR){
				if (jQuery.trim(data).length > 0) {
					$("#lotsInfoListRight").html(data);
				}
				else { // 자료가 없을때.
					$("#lotsInfoListRight").html("<tr><td colspan='3' class='result_nodata'>분양일정이 없습니다.</td></tr>");
				}
			},
			error: function (jqXHR, textStatus, errorThrown){
		 		//$("#lotsScheduleList").html("<li class='result_nodata'>분양일정이 없습니다.</li>");
		 			$("#lotsInfoListRight").html("<tr><td colspan='3' class='result_nodata'>분양일정이 없습니다.</td></tr>");
			}
		});

	}

	/* 분양단지 상세 조회 */
	function goLotsInfoDetailPageRight(typeGubun, compelxCd, owner) {
		/**********************************************************************
		 Modified by Mornlux(2017-12-05)
		 상세페이지에서 자신을 호출한 페이지로 되돌아 갈 수 있도록 수정
		**********************************************************************/
		// 복귀할 URL
		$.QueryString._c = 'lots';
		if(owner == 'schedule') {
			//일정
			$.QueryString._s = 'lotsSchedule';
			$.QueryString._m = 'lotsSchedule';
		}
		else {
			//정보
			$.QueryString._s = 'info';
			$.QueryString._m = 'infolist';
		}
		$.QueryString.rtu = $.QueryStringSerialize() + $.HashSerialize();

		// 상세 URL
		$.QueryString._c = 'lots';
		$.QueryString._m = 'lotsinfodetail';
		$.QueryString.type_g = typeGubun;
		$.QueryString.aptcode = compelxCd;

		window.location.href = $.QueryStringSerialize();

		//window.location.href = "/?_c=lots&_m=lotsinfodetail&type_g="+ typeGubun +"&aptcode=" + compelxCd;
	}


</script>
</div>
		<!-- 라이트 끝 -->
    </div>
</div>
<!-- 바디 시작 -->

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






<script type="text/javascript" src="/W1/js/Lots/Lots.js"></script>
<script type="text/javascript" src="/W1/js/placeholders.jquery.min.js"></script>

<script>
	var __loadingString = "<div class=\"loding_wrap on\"><img src=\"https://image.r114.co.kr/W1/images/sub/loding.gif\" alt=\"로딩중\"></div>";
	var _CALLBACKFUNCALL	= "fnAreaSearchAll";		// 선택 전체
	var _CALLBACKFUNC		= "fnAreaSearch";			// 선택 하위
	var _CALLBACKFUNCSEARCH = "fnAreaSearchIn";			// 입력
</script>

<script type="text/javascript" src="/W1/js/PageUtil.js"></script>
<script type="text/javascript" src="/W1/js/search.js"></script>

<script>
	var util1 = new PageUtil();

	$(document).ready(function() {
		util1.setNum = 1;
		util1.curPage = "1";
		util1.callFunction = fn_newsAjax;

		fn_newsAjax();

		//search_CreateAddrHtml("body");

		$("#cmdDeleteAddr").on("click", function() {
			/*
			$("#searchAddr").val("");
			$("#search_addr").val("");
			$("#search_addr1").val("");
			$("#search_addr2").val("");
			$("#search_addr3").val("");
			util1.curPage = 1;

			fn_newsAjax();
			*/
			fn_selectSearchValue("", "", "");
			util1.curPage = 1;
			$('#newsSearchFrm [name=page]').val(util1.curPage);
			$('#newsSearchFrm').submit();
		});


		/* 검색 */
		$("#cmdSearch").click(function()
		{
			if (fnIsEmpty($("#searchStr").val())) {
				alert("검색어를 입력해주세요.");
				$("#searchStr").focus();
				return;
			}
			else
			{
				alert("최근 1년 내 콘텐츠만 검색됩니다.");
				util1.curPage = 1;
				$('#newsSearchFrm [name=page]').val(util1.curPage);
				$('#newsSearchFrm').submit();
			}
		});

		 $("#searchStr").keypress(function(e) {
			if(e.which == 10 || e.which == 13) {

				if (fnIsEmpty($("#searchStr").val())) {
					alert("검색어를 입력해주세요.");
					$("#searchStr").focus();
					return false;
				}
				else
				{
					alert("최근 1년 내 콘텐츠만 검색됩니다.");
					util1.curPage = 1;
					$('#newsSearchFrm [name=page]').val(util1.curPage);
					$('#newsSearchFrm').submit();
				}
			}
		});
		/* 검색 */
	});

	function fnAreaSearch( code, level, name , posX,posY, Addr1 , Addr2 ,Addr3 ){
		fn_selectSearchValue(Addr1, Addr2, Addr3);
		util1.curPage = 1;
		$('#newsSearchFrm [name=page]').val(util1.curPage);
		$('#newsSearchFrm').submit();
	}

	function fnAreaSearchAll(pCartNo, pLevel , all, upPosX ,upPosY , Addr1 ,Addr2 , Addr3 ,tmpval, code, posX, posY){
		fn_selectSearchValue(Addr1, Addr2, Addr3);
		util1.curPage = 1;
		$('#newsSearchFrm [name=page]').val(util1.curPage);
		$('#newsSearchFrm').submit();
	}

	function fnAreaSearchIn(Addr1, Addr2, Addr3, coordx, coordy, gubuncode, gubuncode1, gubuncode2, identifycode, searchkeyword){
		fn_selectSearchValue(Addr1, Addr2, Addr3);
		util1.curPage = 1;
		$('#newsSearchFrm [name=page]').val(util1.curPage);
		$('#newsSearchFrm').submit();
	}

	function fn_newsAjax(){
		$("#newsSearchFrm [name=page]").val(util1.curPage);

		$(".list_thumb_type2").html("<div style='line-height:500px;text-align:center;width:750px;' >"+__loadingString+"</div>");

		if (fnIsEmpty($("#searchStr").val()))
		{
			$("#search_keyword").val("");
		}

		$.ajax({
			type:"POST",
			data:$("#newsSearchFrm").serialize(),
			url:"/?_c=lots&_m=lotsnews&_a=newslistajax",
			dataType:"html",
			success:function(data){
				var res = data.split("<!--@#$ INFO AREA $#@-->");
				util1.totalCnt = parseInt(res[1].replace(",","")); // {총글수};
				util1.curPage  = parseInt(res[2]); // {현재페이지};
				util1.pageRows = parseInt(res[3]); // {출력글수};
				util1.disPagepCnt = parseInt(res[4]); // {출력페이지수}
				util1.setTotalPage();
				$(".list_thumb_type2").html(res[0])
				$("#totalNewsCount").html(res[1]);
				fn_DrowPageNumber(1, ".paging")	;
				$("#searchAddr").val(res[5]);
				$('#newsSearchFrm [name=search_addr]').val(res[5]);
			},
			error:function(reparam){
				//console.log(reparam);
				//console.log("error");
			}
		});
	}

	function fn_autoFillSearchReset(){
		var addrAutoList = $("#moveAutoFillAddressDiv");
		addrAutoList.css("display","none");
		addrAutoList.html("");
	}

	function fn_autoFillSearchKeyIn(inputKey){
		fn_autoFillSearchReset();
		var addrAutoList = $("#moveAutoFillAddressDiv");
		var jsonSearchAddressList = '{"rows":[]}';
		if ( inputKey.trim().length >= 2) {
			jsonSearchAddressList = fn_APIAutoFill( inputKey , 0 , 3);
		}
		returnData = JSON.parse(jsonSearchAddressList);
		if ( returnData.rows.length < 1){
			return false;
		}
		for (addri = 0; addri < returnData.rows.length ; addri ++ ){
			if ( returnData.rows[addri].addr3 ){
				addrAutoList.append('<div onclick=fn_selectSearchValue("'+ returnData.rows[addri].addr1+'","'+ returnData.rows[addri].addr2+'","'+ returnData.rows[addri].addr3+'"); style="cursor:pointer;text-align:left">'+ returnData.rows[addri].addr1+'&nbsp;'+ returnData.rows[addri].addr2+'&nbsp;'+ returnData.rows[addri].addr3+'&nbsp;</div>')
			}
		}
		addrAutoList.css("display","");
	}

	function fn_selectSearchValue(addr1, addr2, addr3){
		$('#newsSearchFrm [name=search_addr1]').val(addr1);
		$('#newsSearchFrm [name=search_addr2]').val(addr2);
		$('#newsSearchFrm [name=search_addr3]').val(addr3);
		$('#newsSearchFrm [name=search_addr]').val(addr1 +" "+ addr2 +" "+ addr3);
		$('#searchAddr').val(addr1 +" "+ addr2 +" "+ addr3);
		fn_autoFillSearchReset();
	}

	//*************************************************************************
	// fn_newsListSetUp(sortnum)
	//
	// sortKey 		-> $('#newsSearchFrm [names=sort]')
	// sortOrder	-> $('#newsSearchFrm [names=sort2]')
	//
	// <최신순> down, <조회순> up/down, <추천순> up/down
	// <최신순>은 무조건 down
	// <조회순> 클릭한 경우,
	// sortnum = 2;
	// if(sortKey.val() == sortnum) -> sortOrder.val() toggle;
	// if(sortKey.val() != sortnum) -> sortOrder.val('down');
	//*************************************************************************
	function fn_newsListSetUp(sortnum){
		var sortKey = $('#newsSearchFrm [name=sort]');
		var sortOrder = $('#newsSearchFrm [name=sort2]');

		if ( sortnum ){
			if (sortnum == 1) {
				// 최신순이 클릭됐을 경우
				sortOrder.val('down');
			}
			else {
				// <조회순> 또는 <추천순>이 클릭된 경우
				if (sortKey.val() != sortnum) {
					// <조회순> 또는 <추천순>이 새로 클릭된 경우
					sortOrder.val('down');
				}
				else {
					// <조회순> 또는 <추천순>이 재차 클릭된 경우
					if (sortOrder.val() == 'down') {
						sortOrder.val('up');
					}
					else {
						sortOrder.val('down');
					}
				}
			}
			sortKey.val(sortnum);
		}
		util1.curPage = 1;
		$('#newsSearchFrm [name=page]').val(util1.curPage);
		$('#newsSearchFrm').submit();
	}

	function setUtilObj(setNum){
		if(setNum == 1){
			return util1;
		}
	}

	function fn_DrowPageNumber(setNum, setArea){
		var setUtil = setUtilObj(setNum)
		setUtil.setTotalPage();
		$(setArea).html(setUtil.Drow());
	}

	function goPage(pageNo, setNum){
		var setUtil = setUtilObj(setNum)

		util1.curPage = pageNo;
		$('#newsSearchFrm [name=page]').val(pageNo);
		$('#newsSearchFrm').submit();

		//setUtil.curPage = pageNo;
		//setUtil.callFunction();
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

</script><div class="ui-selectmenu-menu ui-front"><ul aria-hidden="true" aria-labelledby="search_keyword-button" id="search_keyword-menu" role="listbox" tabindex="0" class="ui-menu ui-corner-bottom ui-widget ui-widget-content"></ul></div><iframe name="easyXDM_Kakao_default3802_provider" id="easyXDM_Kakao_default3802_provider" src="https://kapi.kakao.com/cors/?xdm_e=https%3A%2F%2Fwww.r114.com&amp;xdm_c=default3802&amp;xdm_p=1" frameborder="0" style="position: absolute; top: -2000px; left: 0px;"></iframe><div id="fb-root" class=" fb_reset"><div style="position: absolute; top: -10000px; width: 0px; height: 0px;"><div><iframe name="fb_xdm_frame_https" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" id="fb_xdm_frame_https" aria-hidden="true" title="Facebook Cross Domain Communication Frame" tabindex="-1" src="https://staticxx.facebook.com/connect/xd_arbiter/r/d_vbiawPdxB.js?version=44#channel=f34556b58cea1f4&amp;origin=https%3A%2F%2Fwww.r114.com" style="border: none;"></iframe></div><div></div></div></div></body>
</html>