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
    <input type="text" placeholder="일일이 검색하지 말고 알리미서비스 받으세요!" id="dqSearchTerm" name="dqSearchTerm" autocomplete="off" onmousedown="dq_setTextbox('1',event);" onkeydown="dq_setTextbox('1',event);" onkeypress="if(event.keyCode==13) {dq_search(); return false;}" class="g_search" value="">    
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

	<input type="hidden" name="adSearchKeyword" id="adSearchKeyword" value="일일이 검색하지 말고 알리미서비스 받으세요!">
	<input type="hidden" name="adSearchKeywordUrl" id="adSearchKeywordUrl" value="http://www.r114.com/?_c=mypage&amp;_m=notification">
	<input type="hidden" name="adSearchKeywordOption" id="adSearchKeywordOption" value="1">
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
							<li class=""><a href="/?_c=lots&amp;_m=lotsnews">분양뉴스</a></li>
							<li class=""><a href="/?_c=lots&amp;_s=lotsScene&amp;_m=lotsScene">분양&amp;현장</a></li>
							<li class=""><a href="/?_c=lots&amp;_m=ipjuinfo">입주지원센터</a></li>
							<li class=""><a href="/?_c=lots&amp;_s=offerStrategy&amp;_m=lotsOfferGuide">청약전략</a></li>
							<li class="on"><a href="/?_c=lots&amp;_s=Jigu&amp;_m=JiguList">지역개발정보</a></li>
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
					<li class="on"><a href="/?_c=lots&amp;_s=Jigu&amp;_m=JiguList">지역개발정보</a></li>
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

<!--<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=96aaac957e58d4708856a248d971bcf088469d6c&libraries=services"></script>-->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=23c84af6c9dbeecc7814689bde8f6cd1&amp;libraries=services"></script><script charset="UTF-8" src="https://t1.daumcdn.net/mapjsapi/js/main/4.0.10/kakao.js"></script><script charset="UTF-8" src="https://s1.daumcdn.net/svc/attach/U03/cssjs/mapapi/libs/1.0.1/1515130215283/services.js"></script>
<script type="text/javascript">
	var GlobalVworldKey = "0E04E2D0-99E7-33DB-8FD4-64D57CAD2378";

    var _MAP_INFO_TYPE	= "1";		//1:호가, 2:수익, 3:MY앱
	var mapFirstLoadGbn = "none";	// 학교 지도 정보 보기로 매물찾기화면 오픈시 or 지하철 위치보기
	var mapFirstLoadId = "";	// 학교 지도 정보 보기로 매물찾기화면 오픈시 or 지하철 위치보기
	var mapFirstLoadX = "";
	var mapFirstLoadY = "";
	var doParam = "";
	var _ISLOTS = true;
	var _SEARCHCOMPLEX = false;
	var markerData = [{"지구지정번호":"지구변경", "지도좌표Y":"37.506471369373045", "지도좌표X":"127.13780466186736"},{"지구지정번호":"준공", "지도좌표Y":"37.611940500879349", "지도좌표X":"127.09882953400293"},{"지구지정번호":"실시변경", "지도좌표Y":"37.615797859520583", "지도좌표X":"127.10989330550248"},{"지구지정번호":"실시변경", "지도좌표Y":"37.688127750876284", "지도좌표X":"127.05345872560106"},{"지구지정번호":"실시변경", "지도좌표Y":"37.585351957313534", "지도좌표X":"126.88075219015506"},{"지구지정번호":"실시변경", "지도좌표Y":"37.484934487522565", "지도좌표X":"126.84269863858724"},{"지구지정번호":"실시변경", "지도좌표Y":"37.480934171508778", "지도좌표X":"126.83969363094978"},{"지구지정번호":"실시변경", "지도좌표Y":"37.46370552033455", "지도좌표X":"127.02424798760796"},{"지구지정번호":"실시변경", "지도좌표Y":"37.484219121004614", "지도좌표X":"127.11841837440052"},{"지구지정번호":"실시변경", "지도좌표Y":"37.56448427719041", "지도좌표X":"127.17670799951897"},{"지구지정번호":"실시변경", "지도좌표Y":"37.564584792760321", "지도좌표X":"126.82889582223304"},{"지구지정번호":"실시변경", "지도좌표Y":"37.555057648159519", "지도좌표X":"127.04012973199701"},{"지구지정번호":"실시변경", "지도좌표Y":"37.509709306097996", "지도좌표X":"126.86915391814335"},{"지구지정번호":"실시변경", "지도좌표Y":"37.452572391788586", "지도좌표X":"127.05739390565209"},{"지구지정번호":"실시변경", "지도좌표Y":"37.462468890792749", "지도좌표X":"127.10272315188827"},{"지구지정번호":"실시변경", "지도좌표Y":"37.478935494693495", "지도좌표X":"126.8218258784966"},{"지구지정번호":"실시변경", "지도좌표Y":"37.600348754601477", "지도좌표X":"126.89212201041134"},{"지구지정번호":"실시변경", "지도좌표Y":"37.609113966093595", "지도좌표X":"127.10642852982438"},{"지구지정번호":"실시변경", "지도좌표Y":"37.628438031464746", "지도좌표X":"127.07555714129973"},{"지구지정번호":"실시변경", "지도좌표Y":"37.638045847205269", "지도좌표X":"126.92653364900792"},{"지구지정번호":"실시변경", "지도좌표Y":"37.496862919427848", "지도좌표X":"127.15834571607343"},{"지구지정번호":"실시변경", "지도좌표Y":"37.565840843442807", "지도좌표X":"127.1691075697277"},{"지구지정번호":"실시변경", "지도좌표Y":"37.475323846693179", "지도좌표X":"127.10697663090075"},{"지구지정번호":"실시변경", "지도좌표Y":"37.654498911261491", "지도좌표X":"126.88949602391482"},{"지구지정번호":"실시변경", "지도좌표Y":"37.505911261468363", "지도좌표X":"126.83489876592411"},{"지구지정번호":"실시변경", "지도좌표Y":"37.56938858648823", "지도좌표X":"126.91322445078818"},{"지구지정번호":"실시변경", "지도좌표Y":"37.4952393607874", "지도좌표X":"126.84608967861251"},{"지구지정번호":"부분준공", "지도좌표Y":"37.475955988539233", "지도좌표X":"127.14592679269106"},{"지구지정번호":"부분준공", "지도좌표Y":"37.562956021516634", "지도좌표X":"127.18862148348933"},{"지구지정번호":"개발계획", "지도좌표Y":"37.546224016106905", "지도좌표X":"126.83594487660201"},{"지구지정번호":"개발계획", "지도좌표Y":"37.476521377290638", "지도좌표X":"127.06578537603036"}];
	var _GISX = "126.83594487660201";
	var _GISY = "37.546224016106905";
</script>
<script type="text/javascript" src="/W1/js/appJS.js?ver=2"></script>
<script type="text/javascript" src="/W1/js/muse7th.js"></script>
<script type="text/javascript" src="/W1/js/Memul/default.js?v=1"></script><div id="fb-root" class=" fb_reset"><div style="position: absolute; top: -10000px; width: 0px; height: 0px;"><div><iframe name="fb_xdm_frame_https" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" id="fb_xdm_frame_https" aria-hidden="true" title="Facebook Cross Domain Communication Frame" tabindex="-1" src="https://staticxx.facebook.com/connect/xd_arbiter/r/d_vbiawPdxB.js?version=44#channel=f2bcf5596b327b4&amp;origin=https%3A%2F%2Fwww.r114.com" style="border: none;"></iframe></div><div></div></div></div>

<input type="hidden" id="_SEL_METRO" name="_SEL_METRO" value="서울특별시">
<input type="hidden" id="_SEL_COUNTY" name="_SEL_COUNTY" value="">
<input type="hidden" id="_SEL_STEP" name="_SEL_STEP" value="{진행단계(기본)}">

<input type="hidden" id="txt_cortarInfo" name="txt_cortarInfo" value="">
<input type="hidden" id="txt_area" name="txt_area" value="">
<input type="hidden" id="txt_cortarInfo2" name="txt_cortarInfo2" value="">
<input type="hidden" id="txt_area2" name="txt_area2" value="">
<input type="hidden" id="txt_cortarInfo3" name="txt_cortarInfo3" value="">
<input type="hidden" id="txt_area3" name="txt_area3" value="">

<input type="hidden" id="mapSt" name="mapSt" value="">

<!-- 바디 시작 -->
<div id="body_layout">
	<div class="body_wrap">
		<!-- 타이틀 시작 -->
		<div class="title_wrap">
			<div class="title">
				<h3>지역개발정보</h3>
			</div>
			<div class="location">
				<ul>
					<li><a href="/">홈</a></li>
					<li><a href="/?_c=lots">분양</a></li>
					<li>지역개발정보</li>
				</ul>
			</div>
		</div>
		<!-- 타이틀 끝 -->
		<!-- 컨텐츠 시작 -->
		<div class="contents_wrap">
			<!-- 검색 및 옵션 -->
			<div class="srch_deal_wrap srch_sale_wrap regional_deve_srch"><!-- 180903class추가 -->
				<div class="inner">
					<span class="inp_wrap">
						<input type="text" title="지역입력" placeholder="도/시, 시/군/구 등을 입력하세요." class="inp_txt" id="addrSearchWord" readonly="" onclick="search_CreateAddrHtml('body', this.value);">
						<button type="button" class="ico_search"><span class="ico_comm_s search2">검색</span></button>
					</span>
					
				</div>
				<div class="option_detail_wrap">
					<button type="button" class="btn_option">상세옵션<span class="ico_comm_s op_arrow"></span></button>
					<div class="option_wrap">
						<form name="frm" id="frm">
						<div class="option_item regional_potion" id="optFilter1">
							<strong class="option_tit">진행단계</strong>
							<span class="inp_wrap">
								<input type="radio" class="inp_rdo2" name="filterParam1" id="filterParam1_0" value="">
								<label for="filterParam1_0" class="txt_sel">전체</label>
							</span>
							<span class="inp_wrap">
								<input type="radio" class="inp_rdo2" name="filterParam1" id="filterParam1_1" value="지구지정">
								<label for="filterParam1_1" class="txt_sel">지구지정</label>
							</span>
							<span class="inp_wrap">
								<input type="radio" class="inp_rdo2" name="filterParam1" id="filterParam1_5" value="지구변경">
								<label for="filterParam1_5" class="txt_sel">지구변경</label>
							</span>
							 <span class="inp_wrap">
								<input type="radio" class="inp_rdo2" name="filterParam1" id="filterParam1_2" value="개발계획">
								<label for="filterParam1_2" class="txt_sel">개발계획</label>
							</span>
							<span class="inp_wrap">
								<input type="radio" class="inp_rdo2" name="filterParam1" id="filterParam1_6" value="개발변경">
								<label for="filterParam1_6" class="txt_sel">개발변경</label>
							</span>
							 <span class="inp_wrap">
								<input type="radio" class="inp_rdo2" name="filterParam1" id="filterParam1_3" value="실시계획">
								<label for="filterParam1_3" class="txt_sel">실시계획</label>
							</span>
							<span class="inp_wrap">
								<input type="radio" class="inp_rdo2" name="filterParam1" id="filterParam1_7" value="실시변경">
								<label for="filterParam1_7" class="txt_sel">실시변경</label>
							</span>
							<span class="inp_wrap">
								<input type="radio" class="inp_rdo2" name="filterParam1" id="filterParam1_8" value="부분준공">
								<label for="filterParam1_8" class="txt_sel">부분준공</label>
							</span>
							 <span class="inp_wrap">
								<input type="radio" class="inp_rdo2" name="filterParam1" id="filterParam1_4" value="준공">
								<label for="filterParam1_4" class="txt_sel">준공</label>
							</span>
						</div>
						
						
						<div class="btn_wrap">
							<button type="button" class="btn_a blue" onclick="searchWithDetailOption();">검색</button>
							<button type="button" class="btn_a btn_cl" onclick="closeOption();">닫기</button>
						</div>
						</form>
					</div>
				</div>
			</div>
			<!-- //검색 및 옵션 -->
			<!-- 지도 영역 -->
			<div class="map_wrap sale">
				<div class="map_area" style="overflow:hidden;">
					<div id="map_layout"><div class="gis pst_r" style="z-index:101;">	<button type="button" onclick="zoomInMap (this);" class="plus"><span class="blind">확대</span></button>	<button type="button" onclick="zoomOutMap (this);" class="minus"><span class="blind">축소</span></button></div>	<div id="map" style="width: 100%; height: 100%; margin-left: 1px; position: relative; overflow: hidden; background: url(&quot;https://i1.daumcdn.net/dmaps/apis/loading_n.png&quot;);" onclick="mapDivClick();"><div style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%; touch-action: none; cursor: url(&quot;https://i1.daumcdn.net/dmaps/apis/cursor/openhand.cur.ico&quot;) 7 5, url(&quot;https://i1.daumcdn.net/dmaps/apis/cursor/openhand.cur.ico&quot;), default;"><div style="position: absolute;"><div style="position: absolute; z-index: 1; left: 0px; top: 0px;"><img src="https://map0.daumcdn.net/map_2d_hd/1902usc/L9/30/12.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -124px; top: 205px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map1.daumcdn.net/map_2d_hd/1902usc/L9/30/13.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 132px; top: 205px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map2.daumcdn.net/map_2d_hd/1902usc/L9/30/14.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 388px; top: 205px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map3.daumcdn.net/map_2d_hd/1902usc/L9/30/15.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 644px; top: 205px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map0.daumcdn.net/map_2d_hd/1902usc/L9/31/12.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -124px; top: -51px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map1.daumcdn.net/map_2d_hd/1902usc/L9/31/13.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 132px; top: -51px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map2.daumcdn.net/map_2d_hd/1902usc/L9/31/14.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 388px; top: -51px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map3.daumcdn.net/map_2d_hd/1902usc/L9/31/15.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 644px; top: -51px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map0.daumcdn.net/map_2d_hd/1902usc/L9/32/12.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -124px; top: -307px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map1.daumcdn.net/map_2d_hd/1902usc/L9/32/13.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 132px; top: -307px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map2.daumcdn.net/map_2d_hd/1902usc/L9/32/14.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 388px; top: -307px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map3.daumcdn.net/map_2d_hd/1902usc/L9/32/15.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 644px; top: -307px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"></div><div style="position: absolute; z-index: 0; left: 0px; top: 0px;"><img src="https://map3.daumcdn.net/map_2d_hd/1902usc/L13/1/-1.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -7285px; top: -50px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 4096px; height: 4096px;"><img src="https://map0.daumcdn.net/map_2d_hd/1902usc/L13/1/0.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -3189px; top: -50px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 4096px; height: 4096px;"><img src="https://map1.daumcdn.net/map_2d_hd/1902usc/L13/1/1.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 907px; top: -50px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 4096px; height: 4096px;"><img src="https://map2.daumcdn.net/map_2d_hd/1902usc/L13/1/2.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 5003px; top: -50px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 4096px; height: 4096px;"><img src="https://map3.daumcdn.net/map_2d_hd/1902usc/L13/2/-1.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -7285px; top: -4146px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 4096px; height: 4096px;"><img src="https://map0.daumcdn.net/map_2d_hd/1902usc/L13/2/0.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -3189px; top: -4146px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 4096px; height: 4096px;"><img src="https://map1.daumcdn.net/map_2d_hd/1902usc/L13/2/1.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 907px; top: -4146px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 4096px; height: 4096px;"><img src="https://map2.daumcdn.net/map_2d_hd/1902usc/L13/2/2.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 5003px; top: -4146px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 4096px; height: 4096px;"><img src="https://map3.daumcdn.net/map_2d_hd/1902usc/L13/3/-1.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -7285px; top: -8242px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 4096px; height: 4096px;"><img src="https://map0.daumcdn.net/map_2d_hd/1902usc/L13/3/0.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -3189px; top: -8242px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 4096px; height: 4096px;"><img src="https://map1.daumcdn.net/map_2d_hd/1902usc/L13/3/1.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 907px; top: -8242px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 4096px; height: 4096px;"><img src="https://map2.daumcdn.net/map_2d_hd/1902usc/L13/3/2.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 5003px; top: -8242px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 4096px; height: 4096px;"></div><div style="position: absolute; z-index: 1;"></div><div style="width: 726px; height: 317px; position: absolute; z-index: 1;"></div><div style="position: absolute; z-index: 1;"><svg version="1.1" style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; transform: translateZ(0px); position: absolute; left: -1452px; top: -634px; width: 3630px; height: 1585px;" viewBox="0 0 3630 1585"><defs></defs></svg></div><div style="position: absolute; z-index: 1; width: 100%; height: 0px;"><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 99; left: 588px; top: 247px;"><img draggable="false" src="/images/common/maker_point.png" alt="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 22px, 33px, 0px); top: 0px; left: 0px; width: 22px; height: 33px;"><img src="https://i1.daumcdn.net/dmaps/apis/transparent.gif" alt="" draggable="false" usemap="#daum.maps.Marker.Area:1" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; width: 22px; height: 33px;"><map id="daum.maps.Marker.Area:1" name="daum.maps.Marker.Area:1"><area href="javascript:void(0)" alt="" shape="rect" coords="0,0,22,33" title="" style="-webkit-tap-highlight-color: transparent;"></map></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 99; left: 534px; top: 64px;"><img draggable="false" src="/images/common/maker_point.png" alt="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 22px, 33px, 0px); top: 0px; left: 0px; width: 22px; height: 33px;"><img src="https://i1.daumcdn.net/dmaps/apis/transparent.gif" alt="" draggable="false" usemap="#daum.maps.Marker.Area:2" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; width: 22px; height: 33px;"><map id="daum.maps.Marker.Area:2" name="daum.maps.Marker.Area:2"><area href="javascript:void(0)" alt="" shape="rect" coords="0,0,22,33" title="" style="-webkit-tap-highlight-color: transparent;"></map></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 99; left: 549px; top: 58px;"><img draggable="false" src="/images/common/maker_point.png" alt="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 22px, 33px, 0px); top: 0px; left: 0px; width: 22px; height: 33px;"><img src="https://i1.daumcdn.net/dmaps/apis/transparent.gif" alt="" draggable="false" usemap="#daum.maps.Marker.Area:3" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; width: 22px; height: 33px;"><map id="daum.maps.Marker.Area:3" name="daum.maps.Marker.Area:3"><area href="javascript:void(0)" alt="" shape="rect" coords="0,0,22,33" title="" style="-webkit-tap-highlight-color: transparent;"></map></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 99; left: 471px; top: -68px; display: none;"><img draggable="false" src="/images/common/maker_point.png" alt="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 22px, 33px, 0px); top: 0px; left: 0px; width: 22px; height: 33px;"><img src="https://i1.daumcdn.net/dmaps/apis/transparent.gif" alt="" draggable="false" usemap="#daum.maps.Marker.Area:4" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; width: 22px; height: 33px;"><map id="daum.maps.Marker.Area:4" name="daum.maps.Marker.Area:4"><area href="javascript:void(0)" alt="" shape="rect" coords="0,0,22,33" title="" style="-webkit-tap-highlight-color: transparent;"></map></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 99; left: 233px; top: 111px;"><img draggable="false" src="/images/common/maker_point.png" alt="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 22px, 33px, 0px); top: 0px; left: 0px; width: 22px; height: 33px;"><img src="https://i1.daumcdn.net/dmaps/apis/transparent.gif" alt="" draggable="false" usemap="#daum.maps.Marker.Area:5" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; width: 22px; height: 33px;"><map id="daum.maps.Marker.Area:5" name="daum.maps.Marker.Area:5"><area href="javascript:void(0)" alt="" shape="rect" coords="0,0,22,33" title="" style="-webkit-tap-highlight-color: transparent;"></map></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 99; left: 180px; top: 285px;"><img draggable="false" src="/images/common/maker_point.png" alt="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 22px, 33px, 0px); top: 0px; left: 0px; width: 22px; height: 33px;"><img src="https://i1.daumcdn.net/dmaps/apis/transparent.gif" alt="" draggable="false" usemap="#daum.maps.Marker.Area:6" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; width: 22px; height: 33px;"><map id="daum.maps.Marker.Area:6" name="daum.maps.Marker.Area:6"><area href="javascript:void(0)" alt="" shape="rect" coords="0,0,22,33" title="" style="-webkit-tap-highlight-color: transparent;"></map></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 99; left: 176px; top: 291px;"><img draggable="false" src="/images/common/maker_point.png" alt="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 22px, 33px, 0px); top: 0px; left: 0px; width: 22px; height: 33px;"><img src="https://i1.daumcdn.net/dmaps/apis/transparent.gif" alt="" draggable="false" usemap="#daum.maps.Marker.Area:7" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; width: 22px; height: 33px;"><map id="daum.maps.Marker.Area:7" name="daum.maps.Marker.Area:7"><area href="javascript:void(0)" alt="" shape="rect" coords="0,0,22,33" title="" style="-webkit-tap-highlight-color: transparent;"></map></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 99; left: 431px; top: 322px; display: none;"><img draggable="false" src="/images/common/maker_point.png" alt="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 22px, 33px, 0px); top: 0px; left: 0px; width: 22px; height: 33px;"><img src="https://i1.daumcdn.net/dmaps/apis/transparent.gif" alt="" draggable="false" usemap="#daum.maps.Marker.Area:8" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; width: 22px; height: 33px;"><map id="daum.maps.Marker.Area:8" name="daum.maps.Marker.Area:8"><area href="javascript:void(0)" alt="" shape="rect" coords="0,0,22,33" title="" style="-webkit-tap-highlight-color: transparent;"></map></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 99; left: 561px; top: 286px;"><img draggable="false" src="/images/common/maker_point.png" alt="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 22px, 33px, 0px); top: 0px; left: 0px; width: 22px; height: 33px;"><img src="https://i1.daumcdn.net/dmaps/apis/transparent.gif" alt="" draggable="false" usemap="#daum.maps.Marker.Area:9" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; width: 22px; height: 33px;"><map id="daum.maps.Marker.Area:9" name="daum.maps.Marker.Area:9"><area href="javascript:void(0)" alt="" shape="rect" coords="0,0,22,33" title="" style="-webkit-tap-highlight-color: transparent;"></map></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 99; left: 641px; top: 147px;"><img draggable="false" src="/images/common/maker_point.png" alt="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 22px, 33px, 0px); top: 0px; left: 0px; width: 22px; height: 33px;"><img src="https://i1.daumcdn.net/dmaps/apis/transparent.gif" alt="" draggable="false" usemap="#daum.maps.Marker.Area:a" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; width: 22px; height: 33px;"><map id="daum.maps.Marker.Area:a" name="daum.maps.Marker.Area:a"><area href="javascript:void(0)" alt="" shape="rect" coords="0,0,22,33" title="" style="-webkit-tap-highlight-color: transparent;"></map></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 99; left: 161px; top: 146px;"><img draggable="false" src="/images/common/maker_point.png" alt="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 22px, 33px, 0px); top: 0px; left: 0px; width: 22px; height: 33px;"><img src="https://i1.daumcdn.net/dmaps/apis/transparent.gif" alt="" draggable="false" usemap="#daum.maps.Marker.Area:b" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; width: 22px; height: 33px;"><map id="daum.maps.Marker.Area:b" name="daum.maps.Marker.Area:b"><area href="javascript:void(0)" alt="" shape="rect" coords="0,0,22,33" title="" style="-webkit-tap-highlight-color: transparent;"></map></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 99; left: 453px; top: 163px;"><img draggable="false" src="/images/common/maker_point.png" alt="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 22px, 33px, 0px); top: 0px; left: 0px; width: 22px; height: 33px;"><img src="https://i1.daumcdn.net/dmaps/apis/transparent.gif" alt="" draggable="false" usemap="#daum.maps.Marker.Area:c" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; width: 22px; height: 33px;"><map id="daum.maps.Marker.Area:c" name="daum.maps.Marker.Area:c"><area href="javascript:void(0)" alt="" shape="rect" coords="0,0,22,33" title="" style="-webkit-tap-highlight-color: transparent;"></map></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 99; left: 216px; top: 242px;"><img draggable="false" src="/images/common/maker_point.png" alt="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 22px, 33px, 0px); top: 0px; left: 0px; width: 22px; height: 33px;"><img src="https://i1.daumcdn.net/dmaps/apis/transparent.gif" alt="" draggable="false" usemap="#daum.maps.Marker.Area:d" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; width: 22px; height: 33px;"><map id="daum.maps.Marker.Area:d" name="daum.maps.Marker.Area:d"><area href="javascript:void(0)" alt="" shape="rect" coords="0,0,22,33" title="" style="-webkit-tap-highlight-color: transparent;"></map></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 99; left: 477px; top: 341px; display: none;"><img draggable="false" src="/images/common/maker_point.png" alt="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 22px, 33px, 0px); top: 0px; left: 0px; width: 22px; height: 33px;"><img src="https://i1.daumcdn.net/dmaps/apis/transparent.gif" alt="" draggable="false" usemap="#daum.maps.Marker.Area:e" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; width: 22px; height: 33px;"><map id="daum.maps.Marker.Area:e" name="daum.maps.Marker.Area:e"><area href="javascript:void(0)" alt="" shape="rect" coords="0,0,22,33" title="" style="-webkit-tap-highlight-color: transparent;"></map></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 99; left: 539px; top: 324px; display: none;"><img draggable="false" src="/images/common/maker_point.png" alt="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 22px, 33px, 0px); top: 0px; left: 0px; width: 22px; height: 33px;"><img src="https://i1.daumcdn.net/dmaps/apis/transparent.gif" alt="" draggable="false" usemap="#daum.maps.Marker.Area:f" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; width: 22px; height: 33px;"><map id="daum.maps.Marker.Area:f" name="daum.maps.Marker.Area:f"><area href="javascript:void(0)" alt="" shape="rect" coords="0,0,22,33" title="" style="-webkit-tap-highlight-color: transparent;"></map></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 99; left: 151px; top: 295px;"><img draggable="false" src="/images/common/maker_point.png" alt="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 22px, 33px, 0px); top: 0px; left: 0px; width: 22px; height: 33px;"><img src="https://i1.daumcdn.net/dmaps/apis/transparent.gif" alt="" draggable="false" usemap="#daum.maps.Marker.Area:g" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; width: 22px; height: 33px;"><map id="daum.maps.Marker.Area:g" name="daum.maps.Marker.Area:g"><area href="javascript:void(0)" alt="" shape="rect" coords="0,0,22,33" title="" style="-webkit-tap-highlight-color: transparent;"></map></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 99; left: 248px; top: 85px;"><img draggable="false" src="/images/common/maker_point.png" alt="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 22px, 33px, 0px); top: 0px; left: 0px; width: 22px; height: 33px;"><img src="https://i1.daumcdn.net/dmaps/apis/transparent.gif" alt="" draggable="false" usemap="#daum.maps.Marker.Area:h" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; width: 22px; height: 33px;"><map id="daum.maps.Marker.Area:h" name="daum.maps.Marker.Area:h"><area href="javascript:void(0)" alt="" shape="rect" coords="0,0,22,33" title="" style="-webkit-tap-highlight-color: transparent;"></map></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 99; left: 544px; top: 69px;"><img draggable="false" src="/images/common/maker_point.png" alt="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 22px, 33px, 0px); top: 0px; left: 0px; width: 22px; height: 33px;"><img src="https://i1.daumcdn.net/dmaps/apis/transparent.gif" alt="" draggable="false" usemap="#daum.maps.Marker.Area:i" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; width: 22px; height: 33px;"><map id="daum.maps.Marker.Area:i" name="daum.maps.Marker.Area:i"><area href="javascript:void(0)" alt="" shape="rect" coords="0,0,22,33" title="" style="-webkit-tap-highlight-color: transparent;"></map></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 99; left: 501px; top: 36px;"><img draggable="false" src="/images/common/maker_point.png" alt="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 22px, 33px, 0px); top: 0px; left: 0px; width: 22px; height: 33px;"><img src="https://i1.daumcdn.net/dmaps/apis/transparent.gif" alt="" draggable="false" usemap="#daum.maps.Marker.Area:j" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; width: 22px; height: 33px;"><map id="daum.maps.Marker.Area:j" name="daum.maps.Marker.Area:j"><area href="javascript:void(0)" alt="" shape="rect" coords="0,0,22,33" title="" style="-webkit-tap-highlight-color: transparent;"></map></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 99; left: 296px; top: 19px;"><img draggable="false" src="/images/common/maker_point.png" alt="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 22px, 33px, 0px); top: 0px; left: 0px; width: 22px; height: 33px;"><img src="https://i1.daumcdn.net/dmaps/apis/transparent.gif" alt="" draggable="false" usemap="#daum.maps.Marker.Area:k" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; width: 22px; height: 33px;"><map id="daum.maps.Marker.Area:k" name="daum.maps.Marker.Area:k"><area href="javascript:void(0)" alt="" shape="rect" coords="0,0,22,33" title="" style="-webkit-tap-highlight-color: transparent;"></map></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 99; left: 616px; top: 264px;"><img draggable="false" src="/images/common/maker_point.png" alt="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 22px, 33px, 0px); top: 0px; left: 0px; width: 22px; height: 33px;"><img src="https://i1.daumcdn.net/dmaps/apis/transparent.gif" alt="" draggable="false" usemap="#daum.maps.Marker.Area:l" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; width: 22px; height: 33px;"><map id="daum.maps.Marker.Area:l" name="daum.maps.Marker.Area:l"><area href="javascript:void(0)" alt="" shape="rect" coords="0,0,22,33" title="" style="-webkit-tap-highlight-color: transparent;"></map></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 99; left: 631px; top: 144px;"><img draggable="false" src="/images/common/maker_point.png" alt="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 22px, 33px, 0px); top: 0px; left: 0px; width: 22px; height: 33px;"><img src="https://i1.daumcdn.net/dmaps/apis/transparent.gif" alt="" draggable="false" usemap="#daum.maps.Marker.Area:m" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; width: 22px; height: 33px;"><map id="daum.maps.Marker.Area:m" name="daum.maps.Marker.Area:m"><area href="javascript:void(0)" alt="" shape="rect" coords="0,0,22,33" title="" style="-webkit-tap-highlight-color: transparent;"></map></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 99; left: 545px; top: 301px;"><img draggable="false" src="/images/common/maker_point.png" alt="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 22px, 33px, 0px); top: 0px; left: 0px; width: 22px; height: 33px;"><img src="https://i1.daumcdn.net/dmaps/apis/transparent.gif" alt="" draggable="false" usemap="#daum.maps.Marker.Area:n" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; width: 22px; height: 33px;"><map id="daum.maps.Marker.Area:n" name="daum.maps.Marker.Area:n"><area href="javascript:void(0)" alt="" shape="rect" coords="0,0,22,33" title="" style="-webkit-tap-highlight-color: transparent;"></map></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 99; left: 245px; top: -9px; display: none;"><img draggable="false" src="/images/common/maker_point.png" alt="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 22px, 33px, 0px); top: 0px; left: 0px; width: 22px; height: 33px;"><img src="https://i1.daumcdn.net/dmaps/apis/transparent.gif" alt="" draggable="false" usemap="#daum.maps.Marker.Area:o" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; width: 22px; height: 33px;"><map id="daum.maps.Marker.Area:o" name="daum.maps.Marker.Area:o"><area href="javascript:void(0)" alt="" shape="rect" coords="0,0,22,33" title="" style="-webkit-tap-highlight-color: transparent;"></map></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 99; left: 169px; top: 248px;"><img draggable="false" src="/images/common/maker_point.png" alt="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 22px, 33px, 0px); top: 0px; left: 0px; width: 22px; height: 33px;"><img src="https://i1.daumcdn.net/dmaps/apis/transparent.gif" alt="" draggable="false" usemap="#daum.maps.Marker.Area:p" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; width: 22px; height: 33px;"><map id="daum.maps.Marker.Area:p" name="daum.maps.Marker.Area:p"><area href="javascript:void(0)" alt="" shape="rect" coords="0,0,22,33" title="" style="-webkit-tap-highlight-color: transparent;"></map></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 99; left: 277px; top: 138px;"><img draggable="false" src="/images/common/maker_point.png" alt="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 22px, 33px, 0px); top: 0px; left: 0px; width: 22px; height: 33px;"><img src="https://i1.daumcdn.net/dmaps/apis/transparent.gif" alt="" draggable="false" usemap="#daum.maps.Marker.Area:q" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; width: 22px; height: 33px;"><map id="daum.maps.Marker.Area:q" name="daum.maps.Marker.Area:q"><area href="javascript:void(0)" alt="" shape="rect" coords="0,0,22,33" title="" style="-webkit-tap-highlight-color: transparent;"></map></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 99; left: 185px; top: 267px;"><img draggable="false" src="/images/common/maker_point.png" alt="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 22px, 33px, 0px); top: 0px; left: 0px; width: 22px; height: 33px;"><img src="https://i1.daumcdn.net/dmaps/apis/transparent.gif" alt="" draggable="false" usemap="#daum.maps.Marker.Area:r" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; width: 22px; height: 33px;"><map id="daum.maps.Marker.Area:r" name="daum.maps.Marker.Area:r"><area href="javascript:void(0)" alt="" shape="rect" coords="0,0,22,33" title="" style="-webkit-tap-highlight-color: transparent;"></map></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 99; left: 599px; top: 300px;"><img draggable="false" src="/images/common/maker_point.png" alt="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 22px, 33px, 0px); top: 0px; left: 0px; width: 22px; height: 33px;"><img src="https://i1.daumcdn.net/dmaps/apis/transparent.gif" alt="" draggable="false" usemap="#daum.maps.Marker.Area:s" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; width: 22px; height: 33px;"><map id="daum.maps.Marker.Area:s" name="daum.maps.Marker.Area:s"><area href="javascript:void(0)" alt="" shape="rect" coords="0,0,22,33" title="" style="-webkit-tap-highlight-color: transparent;"></map></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 99; left: 658px; top: 149px;"><img draggable="false" src="/images/common/maker_point.png" alt="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 22px, 33px, 0px); top: 0px; left: 0px; width: 22px; height: 33px;"><img src="https://i1.daumcdn.net/dmaps/apis/transparent.gif" alt="" draggable="false" usemap="#daum.maps.Marker.Area:t" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; width: 22px; height: 33px;"><map id="daum.maps.Marker.Area:t" name="daum.maps.Marker.Area:t"><area href="javascript:void(0)" alt="" shape="rect" coords="0,0,22,33" title="" style="-webkit-tap-highlight-color: transparent;"></map></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 99; left: 171px; top: 178px;"><img draggable="false" src="/images/common/maker_point.png" alt="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 22px, 33px, 0px); top: 0px; left: 0px; width: 22px; height: 33px;"><img src="https://i1.daumcdn.net/dmaps/apis/transparent.gif" alt="" draggable="false" usemap="#daum.maps.Marker.Area:u" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; width: 22px; height: 33px;"><map id="daum.maps.Marker.Area:u" name="daum.maps.Marker.Area:u"><area href="javascript:void(0)" alt="" shape="rect" coords="0,0,22,33" title="" style="-webkit-tap-highlight-color: transparent;"></map></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 99; left: 488px; top: 299px;"><img draggable="false" src="/images/common/maker_point.png" alt="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 22px, 33px, 0px); top: 0px; left: 0px; width: 22px; height: 33px;"><img src="https://i1.daumcdn.net/dmaps/apis/transparent.gif" alt="" draggable="false" usemap="#daum.maps.Marker.Area:v" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; width: 22px; height: 33px;"><map id="daum.maps.Marker.Area:v" name="daum.maps.Marker.Area:v"><area href="javascript:void(0)" alt="" shape="rect" coords="0,0,22,33" title="" style="-webkit-tap-highlight-color: transparent;"></map></div></div></div></div><div style="position: absolute; cursor: default; z-index: 1; white-space: nowrap; font: 11px tahoma, sans-serif; color: rgb(85, 85, 85); left: 7px; bottom: 5px;"><a target="_blank" href="http://map.daum.net/" title="Daum 지도로 보시려면 클릭하세요." style="float: left; width: 38px; height: 17px; cursor: pointer;"><img src="https://t1.daumcdn.net/localimg/localimages/07/mapjsapi/2x/m_bi.png" alt="Daum 지도로 이동" style="width: 37px; height: 18px; border: none;"></a><div style="color: rgb(0, 0, 0); text-align: center; font-size: 10px; margin: 0px 2px; float: left; width: 64px;"><div style="color: rgb(0, 0, 0);">4km</div><div style="position: relative; overflow: hidden; height: 8px; margin-top: -4px;"><img src="https://t1.daumcdn.net/localimg/localimages/07/mapjsapi/2x/scalebar.png" alt="" style="position: absolute; width: 164px; height: 40px; max-width: none; top: -20px; left: -82px;"></div></div><div style="font: 11px tahoma, sans-serif; float: left; margin: 3px 2px 0px;">© Kakao<span></span></div></div><div style="cursor: auto; position: absolute; z-index: 2; left: 0px; top: 0px;"></div></div>	<div id="map_alert" class="my_empty" style="z-index:10;"></div></div><div class="row vizGap">	<div class="col-sm-9 col-md-9 col-lg-9">   	<div class="price_info" style="z-index:11;">   		<div class="smr_info">   			<p class="dev_leg_title"></p>   			<span class="fc_gray1 dev_leg_subTit"></span>   			<span class="fc_gray1 fr dev_leg_unit"></span>   		</div>   		<div id="vizLegend" class="daumMapWebLegend" style="width:350px"></div>   		<p class="txt_info dev_leg_cont"></p>   	</div>   </div></div><div id="vizText" style="z-index:3;"></div>
				</div>
			</div>
			<p class="txt_star type1 mgt0">지도에 보여지는 지역의 분양 정보가 하단의 리스트에서 보여집니다.</p>
			<!-- //지도 영역 -->
			<!-- sort -->
			<a id="listTop"></a>
			<div class="sort_wrap mgt3 scrollTarget">
				<a href="javascript:;" onclick="listSort(0);" class="up selected">진행단계순</a>
				<a href="javascript:;" onclick="listSort(1);" class="">사업명순</a>
				<a href="javascript:;" onclick="listSort(2);" class="">사업기간순</a>
				<div class="total_cnt">
					총 <span id="totCount">31</span>건
				</div>
			</div>
			<!-- //sort -->
			<!-- table -->
			<div id="lotsInfoList">
<table class="tbl_type1 type11">
	<caption>분양단지 안내</caption>
	<colgroup>
		<col style="width:11%;">
		<col style="width:*;">
		<col style="width:20%;">
		<col style="width:15%;">
		<col style="width:18%;">
	</colgroup>
	<thead>
		<tr>
			<th scope="col">진행단계</th>
			<th scope="col">사업지구명/위치</th>
			<th scope="col">사업기간</th>
			<th scope="col">사업면적(㎡)</th>
			<th scope="col">사업규모(명/가구)</th>
		</tr>
	</thead>		
	<tbody class="InfoList" id="lotsInfoList">
		
		
		<tr id="Row_11710DC2012001" data-info="{팝업데이터}">
			<td><span class="tag_comm type1">지구변경</span></td> 
			<td class="lf"><a href="javascript:;" class="link_s" onclick="goView('11710DC2012001');"><span class="fc_blue">서울오금 공공주택지구</span><br>서울특별시 송파구 오금동 99번지 일원</a></td>
			<td>
				<span class="lf">2012.07.06~2018.12.31</span>
			</td>
			<td>128,257㎡</td>
			<td><span class="lf">4,259명 / 1,613가구</span></td>
		</tr>
		
		<tr id="Row_11500PV2017001" data-info="{팝업데이터}">
			<td><span class="tag_comm type2">개발계획</span></td> 
			<td class="lf"><a href="javascript:;" class="link_s" onclick="goView('11500PV2017001');"><span class="fc_blue">강서 화곡 기업형 임대주택(역세권 청년주택) 공급촉진지구</span><br>서울특별시 강서구 화곡동 1013-3번지 일대</a></td>
			<td>
				<span class="lf">2017.09.18~2019.12.31</span>
			</td>
			<td>5,790㎡</td>
			<td><span class="lf">680명 / 429가구</span></td>
		</tr>
		
		<tr id="Row_11680DC2016001" data-info="{팝업데이터}">
			<td><span class="tag_comm type2">개발계획</span></td> 
			<td class="lf"><a href="javascript:;" class="link_s" onclick="goView('11680DC2016001');"><span class="fc_blue">개포 구룡마을 도시개발사업</span><br>서울특별시 강남구 개포동 567-1번지 일원</a></td>
			<td>
				<span class="lf">2016.12.08~2020.12.31</span>
			</td>
			<td>266,304㎡</td>
			<td><span class="lf">- / -</span></td>
		</tr>
		
		<tr id="Row_41281KL2006001" data-info="{팝업데이터}">
			<td><span class="tag_comm type14">실시변경</span></td> 
			<td class="lf"><a href="javascript:;" class="link_s" onclick="goView('41281KL2006001');"><span class="fc_blue">고양삼송지구 택지개발사업</span><br>경기도 고양시 덕양구 대자동, 동산동, 삼송동, 신원동, 오금동, 용두동, 원흥동, 지축동</a></td>
			<td>
				<span class="lf">2006.12.11~2018.10.31</span>
			</td>
			<td>5,069,999㎡</td>
			<td><span class="lf">62,215명 / 23,729가구</span></td>
		</tr>
		
		<tr id="Row_11470DC2012001" data-info="{팝업데이터}">
			<td><span class="tag_comm type14">실시변경</span></td> 
			<td class="lf"><a href="javascript:;" class="link_s" onclick="goView('11470DC2012001');"><span class="fc_blue">서울신정4 공공주택지구</span><br>서울특별시 양천구 신정동 831번지 일원</a></td>
			<td>
				<span class="lf">2012.07.06~2017.12.31</span>
			</td>
			<td>35,594㎡</td>
			<td><span class="lf">1,478명 / 560가구</span></td>
		</tr>
		
		<tr id="Row_11440LH2014001" data-info="{팝업데이터}">
			<td><span class="tag_comm type14">실시변경</span></td> 
			<td class="lf"><a href="javascript:;" class="link_s" onclick="goView('11440LH2014001');"><span class="fc_blue">행복주택 건설을 위한 가좌 주택지구</span><br>서울특별시 마포구 성산동 120-1, 중동 268, 서대문구 남가좌동 296-13 일원</a></td>
			<td>
				<span class="lf">-</span>
			</td>
			<td>25,762㎡</td>
			<td><span class="lf">579명 / 362가구</span></td>
		</tr>
		
		<tr id="Row_11530LH2014001" data-info="{팝업데이터}">
			<td><span class="tag_comm type14">실시변경</span></td> 
			<td class="lf"><a href="javascript:;" class="link_s" onclick="goView('11530LH2014001');"><span class="fc_blue">행복주택 건설을 위한 오류동 주택지구</span><br>서울특별시 구로구 오류동 33-177 일원</a></td>
			<td>
				<span class="lf">-</span>
			</td>
			<td>83,806㎡</td>
			<td><span class="lf">1,772명 / 890가구</span></td>
		</tr>
		
		<tr id="Row_11200KL2010001" data-info="{팝업데이터}">
			<td><span class="tag_comm type14">실시변경</span></td> 
			<td class="lf"><a href="javascript:;" class="link_s" onclick="goView('11200KL2010001');"><span class="fc_blue">행당 도시개발구역</span><br>서울특별시 성동구 행당동 87-4번지 일원</a></td>
			<td>
				<span class="lf">2005.12.15~2018.12.31</span>
			</td>
			<td>70,866㎡</td>
			<td><span class="lf">- / -</span></td>
		</tr>
		
		<tr id="Row_11470DC2018001" data-info="{팝업데이터}">
			<td><span class="tag_comm type14">실시변경</span></td> 
			<td class="lf"><a href="javascript:;" class="link_s" onclick="goView('11470DC2018001');"><span class="fc_blue">신정 도시개발구역</span><br>서울특별시 양천구 신정동 171-61번지 일대</a></td>
			<td>
				<span class="lf">2014.06.26~2019.12.31</span>
			</td>
			<td>33,844㎡</td>
			<td><span class="lf">1,157명 / 476가구</span></td>
		</tr>
		
		<tr id="Row_11650DA2009001" data-info="{팝업데이터}">
			<td><span class="tag_comm type14">실시변경</span></td> 
			<td class="lf"><a href="javascript:;" class="link_s" onclick="goView('11650DA2009001');"><span class="fc_blue">서울내곡 공공주택지구</span><br>서울특별시 서초구 내곡동, 신원동, 염곡동, 원지동 일원</a></td>
			<td>
				<span class="lf">2009.12.03~2018.12.31</span>
			</td>
			<td>811,615㎡</td>
			<td><span class="lf">12,119명 / 4,629가구</span></td>
		</tr>
		
		
		
		
	</tbody>
</table>
</div>
			<!-- //table -->
			<!-- paging -->
			<div class="paging"><strong><span class="skip">현재페이지</span>1</strong><a href="javascript:goPage(2, 1);">2</a><a href="javascript:goPage(3, 1);">3</a><a href="javascript:goPage(4, 1);">4</a></div>
			<!-- //paging -->

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
		<tr>
			<th scope="row">04.08</th>
			<th scope="row">계약</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A01040037510085', 'schedule')">서울특별시 강서구 화곡동 화곡한울에이치밸리움B동</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.08</th>
			<th scope="row">접수</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A01120015400011', 'schedule')">서울특별시 동작구 사당동 학수복합(행복주택)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.08</th>
			<th scope="row">접수</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('C', 'G02170039330004', 'schedule')">경기도 파주시 와동동 파주운정지구디에이블</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.08</th>
			<th scope="row">접수</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A14150040000000', 'schedule')">충청남도 예산군 삽교읍 충남도청이전도시RM6(영구임대)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.08</th>
			<th scope="row">계약</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A05060008720000', 'schedule')">인천광역시 서구 불로동 인천불로대광로제비앙</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.08</th>
			<th scope="row">접수</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('C', 'G02040028480003', 'schedule')">경기도 구리시 수택동 유탑트윈팰리스</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.08</th>
			<th scope="row">접수</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A01250008770003', 'schedule')">서울특별시 중랑구 신내동 신내글로리움(행복주택)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.08</th>
			<th scope="row">접수</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('C', 'G01060037330009', 'schedule')">서울특별시 광진구 화양동 빌리브인테라스</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.08</th>
			<th scope="row">접수</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A10020016170000', 'schedule')">경상남도 김해시 삼계동 김해삼계두곡한라비발디센텀시티</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.08</th>
			<th scope="row">계약</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A06010000400003', 'schedule')">광주광역시 광산구 월계동 광주첨단H3(행복주택)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.08</th>
			<th scope="row">계약</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A06010000400002', 'schedule')">광주광역시 광산구 쌍암동 광주첨단H2(행복주택)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.08</th>
			<th scope="row">계약</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A06010000400001', 'schedule')">광주광역시 광산구 쌍암동 광주첨단H1(창업지원주택)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.08</th>
			<th scope="row">접수</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A01020039080000', 'schedule')">서울특별시 강동구 강일동 강일2준주거1(행복주택)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.09</th>
			<th scope="row">접수</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A14150040000001', 'schedule')">충청남도 예산군 삽교읍 충남도청이전도시RM6(국민임대)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.09</th>
			<th scope="row">계약</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A12230020420001', 'schedule')">전라남도 진도군 진도읍 진도동외(영구임대)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.09</th>
			<th scope="row">계약</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A02150035890003', 'schedule')">경기도 의왕시 삼동 의왕역경기행복주택(따복하우스)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.09</th>
			<th scope="row">계약</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A09050000420003', 'schedule')">강원도 원주시 무실동 원주더샵센트럴파크(4단지)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.09</th>
			<th scope="row">계약</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A09050000420002', 'schedule')">강원도 원주시 명륜동 원주더샵센트럴파크(3단지)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.09</th>
			<th scope="row">계약</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A09050000420001', 'schedule')">강원도 원주시 명륜동 원주더샵센트럴파크(2단지)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.09</th>
			<th scope="row">계약</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A09050000420000', 'schedule')">강원도 원주시 무실동 원주더샵센트럴파크(1단지)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.09</th>
			<th scope="row">계약</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A02620036650000', 'schedule')">경기도 오산시 가장동 오산가장경기행복주택(따복하우스)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.09</th>
			<th scope="row">발표</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A12050021740001', 'schedule')">전라남도 여수시 관문동 여수관문(행복주택)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.09</th>
			<th scope="row">접수</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A07040018190004', 'schedule')">대전광역시 유성구 복용동 대전아이파크시티2단지(민간임대)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.09</th>
			<th scope="row">접수</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A07040018190003', 'schedule')">대전광역시 유성구 복용동 대전아이파크시티1단지(민간임대)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.09</th>
			<th scope="row">계약</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A02070005280003', 'schedule')">경기도 남양주시 진건읍 다산역(A2)경기행복주택(따복하우스)2회</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.09</th>
			<th scope="row">접수</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A13070025880003', 'schedule')">전라북도 고창군 고창읍 고창석정파크빌3차</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.10</th>
			<th scope="row">접수</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('C', 'G01110026420007', 'schedule')">서울특별시 동대문구 용두동 청량리역해링턴플레이스</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.10</th>
			<th scope="row">접수</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('C', 'G04060032630003', 'schedule')">대구광역시 수성구 두산동 수성레이크푸르지오</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.10</th>
			<th scope="row">접수</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A02011426550000', 'schedule')">경기도 고양시 일산동 e편한세상일산어반스카이</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.10</th>
			<th scope="row">발표</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A02790027680006', 'schedule')">경기도 화성시 향남읍 화성향남2A20(행복주택)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.10</th>
			<th scope="row">발표</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A02790027680007', 'schedule')">경기도 화성시 향남읍 화성발안A1(행복주택)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.10</th>
			<th scope="row">접수</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A02790039910010', 'schedule')">경기도 화성시 남양읍 화성남양뉴타운A5(행복주택)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.10</th>
			<th scope="row">발표</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('C', 'G05070004130018', 'schedule')">인천광역시 연수구 송도동 호반써밋송도(M2)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.10</th>
			<th scope="row">접수</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A02180005760005', 'schedule')">경기도 하남시 감일동 하남감일A6(행복주택)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.10</th>
			<th scope="row">접수</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A02640039980000', 'schedule')">경기도 평택시 청북읍 평택청북B12(행복주택)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.10</th>
			<th scope="row">접수</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A02640016300009', 'schedule')">경기도 평택시 고덕면 평택고덕Ca2(행복주택)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.10</th>
			<th scope="row">접수</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A02640016300010', 'schedule')">경기도 평택시 고덕면 평택고덕Ca1(행복주택)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.10</th>
			<th scope="row">계약</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A02640016300008', 'schedule')">경기도 평택시 서정동 평택고덕신혼희망타운(공공분양)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.10</th>
			<th scope="row">접수</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A02170029800001', 'schedule')">경기도 파주시 법원읍 파주법원(행복주택)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.10</th>
			<th scope="row">접수</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A15020317200001', 'schedule')">충청북도 청주시 운동동 청주동남A5(행복주택)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.10</th>
			<th scope="row">접수</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A14062819150003', 'schedule')">충청남도 천안시 두정동 천안두정A1(행복주택)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.10</th>
			<th scope="row">접수</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A05030017280003', 'schedule')">인천광역시 남동구 서창동 인천서창2지구14BL(행복주택)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.10</th>
			<th scope="row">발표</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A05060007900000', 'schedule')">인천광역시 서구 당하동 인천검단대방노블랜드1차(AB4)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.10</th>
			<th scope="row">접수</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A12190013890005', 'schedule')">전라남도 영암군 삼호읍 영암용앙(행복주택)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.10</th>
			<th scope="row">접수</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A14050002290007', 'schedule')">충청남도 아산시 배방읍 아산배방2A12(행복주택)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.10</th>
			<th scope="row">접수</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A04060032630000', 'schedule')">대구광역시 수성구 두산동 수성레이크푸르지오</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.10</th>
			<th scope="row">접수</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A13051222520000', 'schedule')">전라북도 전주시 서완산동2가 서완산골드클래스</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.10</th>
			<th scope="row">발표</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A08010001420005', 'schedule')">울산광역시 남구 신정동 문수로두산위브더제니스</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.10</th>
			<th scope="row">발표</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A07040018190004', 'schedule')">대전광역시 유성구 복용동 대전아이파크시티2단지(민간임대)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.10</th>
			<th scope="row">발표</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A07040018190003', 'schedule')">대전광역시 유성구 복용동 대전아이파크시티1단지(민간임대)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.10</th>
			<th scope="row">접수</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A14020021490000', 'schedule')">충청남도 논산시 취암동 논산골든타워</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.10</th>
			<th scope="row">접수</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A02070036850002', 'schedule')">경기도 남양주시 진접읍 남양주더샵퍼스트시티(A1)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.10</th>
			<th scope="row">접수</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A13070025880003', 'schedule')">전라북도 고창군 고창읍 고창석정파크빌3차</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.11</th>
			<th scope="row">발표</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('C', 'G01110026420007', 'schedule')">서울특별시 동대문구 용두동 청량리역해링턴플레이스</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.11</th>
			<th scope="row">계약</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('C', 'G01110026420007', 'schedule')">서울특별시 동대문구 용두동 청량리역해링턴플레이스</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.11</th>
			<th scope="row">접수</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A02011426550000', 'schedule')">경기도 고양시 일산동 e편한세상일산어반스카이</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.11</th>
			<th scope="row">발표</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A05070004130009', 'schedule')">인천광역시 연수구 송도동 호반써밋송도(M2)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.11</th>
			<th scope="row">계약</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('C', 'G05070004130018', 'schedule')">인천광역시 연수구 송도동 호반써밋송도(M2)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.11</th>
			<th scope="row">접수</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A02040028480001', 'schedule')">경기도 구리시 수택동 한양수자인구리역</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.11</th>
			<th scope="row">발표</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('C', 'G02170039330004', 'schedule')">경기도 파주시 와동동 파주운정지구디에이블</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.11</th>
			<th scope="row">발표</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A01110026420010', 'schedule')">서울특별시 동대문구 용두동 청량리역해링턴플레이스</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.11</th>
			<th scope="row">발표</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A10140006430001', 'schedule')">경상남도 의령군 의령읍 의령동동5(행복주택)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.11</th>
			<th scope="row">발표</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A01220014330010', 'schedule')">서울특별시 은평구 구산동 은평서해그랑블</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.11</th>
			<th scope="row">발표</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('C', 'G02040028480003', 'schedule')">경기도 구리시 수택동 유탑트윈팰리스</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.11</th>
			<th scope="row">발표</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A01250027850001', 'schedule')">서울특별시 중랑구 망우동 신내역금강펜테리움센트럴파크(C2)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.11</th>
			<th scope="row">접수</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A04060032630000', 'schedule')">대구광역시 수성구 두산동 수성레이크푸르지오</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.11</th>
			<th scope="row">접수</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A13051222520000', 'schedule')">전라북도 전주시 서완산동2가 서완산골드클래스</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.11</th>
			<th scope="row">발표</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('C', 'G01060037330009', 'schedule')">서울특별시 광진구 화양동 빌리브인테라스</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.11</th>
			<th scope="row">발표</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A02090400100002', 'schedule')">경기도 성남시 수내동 분당지웰푸르지오</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.11</th>
			<th scope="row">계약</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A07040018190004', 'schedule')">대전광역시 유성구 복용동 대전아이파크시티2단지(민간임대)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.11</th>
			<th scope="row">계약</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A07040018190003', 'schedule')">대전광역시 유성구 복용동 대전아이파크시티1단지(민간임대)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.11</th>
			<th scope="row">발표</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A07040018190001', 'schedule')">대전광역시 유성구 원신흥동 대전도안2A21(행복주택)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.11</th>
			<th scope="row">발표</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A01110038680003', 'schedule')">서울특별시 동대문구 답십리동 답십리엘림퍼스트</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.11</th>
			<th scope="row">접수</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A14020021490000', 'schedule')">충청남도 논산시 취암동 논산골든타워</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.11</th>
			<th scope="row">접수</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A02070036850002', 'schedule')">경기도 남양주시 진접읍 남양주더샵퍼스트시티(A1)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.11</th>
			<th scope="row">발표</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A11020038240000', 'schedule')">경상북도 경주시 용강동 경주용강1단지증축(영구임대)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.12</th>
			<th scope="row">오픈</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A02790022740001', 'schedule')">경기도 화성시 기안동 화성우방아이유쉘메가시티(2단지)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.12</th>
			<th scope="row">오픈</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A02790022740000', 'schedule')">경기도 화성시 기안동 화성우방아이유쉘메가시티(1단지)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.12</th>
			<th scope="row">오픈</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A04030006490002', 'schedule')">대구광역시 동구 방촌동 방촌역세영리첼</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.12</th>
			<th scope="row">오픈</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A04040022630001', 'schedule')">대구광역시 북구 읍내동 강북태왕아너스더퍼스트</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.12</th>
			<th scope="row">발표</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A02180012380001', 'schedule')">경기도 하남시 학암동 힐스테이트북위례(A3-4a)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.12</th>
			<th scope="row">접수</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A02040028480001', 'schedule')">경기도 구리시 수택동 한양수자인구리역</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.12</th>
			<th scope="row">계약</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('C', 'G02170039330004', 'schedule')">경기도 파주시 와동동 파주운정지구디에이블</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.12</th>
			<th scope="row">발표</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A02160031200005', 'schedule')">경기도 의정부시 고산동 의정부고산S2-1(행복주택)</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.12</th>
			<th scope="row">계약</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('C', 'G02040028480003', 'schedule')">경기도 구리시 수택동 유탑트윈팰리스</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.12</th>
			<th scope="row">발표</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A03070026970006', 'schedule')">부산광역시 북구 만덕동 신만덕베스티움에코포레</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.12</th>
			<th scope="row">접수</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A04060032630000', 'schedule')">대구광역시 수성구 두산동 수성레이크푸르지오</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.12</th>
			<th scope="row">계약</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('C', 'G01060037330009', 'schedule')">서울특별시 광진구 화양동 빌리브인테라스</a></td>
		</tr>
	
		<tr>
			<th scope="row">04.12</th>
			<th scope="row">발표</th>
			<td><a href="javascript:goLotsInfoDetailPageRight('B', 'A10020016170000', 'schedule')">경상남도 김해시 삼계동 김해삼계두곡한라비발디센텀시티</a></td>
		</tr>
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
<!-- 바디 끝 -->

<!-- GIS 영역 S-->
<!--///////////////// 데모 데이터 //////////////////////////////////-->
<script src="/gis/data/seoul_map_data.js"></script>
<script src="/gis/data/korea_map_data.js"></script>
<!--///////////////////////////////////////////////////-->
<!--///////////////// 데모 데이터(구시군,읍면동 폴리곤) //////////////////////////////////-->
<script src="/gis/data/sKorea_do_geo.js"></script>
<script src="/gis/data/sKorea_gu_geo.js"></script>
<!--///////////////////////////////////////////////////-->

<!-- IE9 에서 arrayBuffer, Float64Array 등의 에러가 발생하여 아래의 polyfill 추가 : https://github.com/inexorabletash/polyfill -->
<script src="/W1/js/typedarray.js"></script>
<!-- IE9 에서 history.pushState 에러가 발생하여 아래의 polyfill 추가 : https://github.com/devote/HTML5-History-API -->
<script src="/W1/js/history.min.js"></script>

<!--[if IE 8]>
<script src="/gis/lib/getComputedStyle.js"></script>
<script src="/gis/lib/es5-shim.min.js"></script>
<script src="/gis/lib/r2d3.min.js"></script>
<script src="/gis/lib/aight.js"></script>
<![endif]-->
<script src="/gis/lib/d3.min.js"></script>
<!--[if IE 8]>
<script src="/gis/lib/d3.ie8.js"></script>
<![endif]-->

<script src="/gis/gis.maker.js"></script>


<style>
#divRealPrice .axis .domain{
	stroke-width: 0.3 !important;
}
#divTrendPrice .axis .domain{
	stroke-width: 0.3 !important;
}
</style>

<script type="text/javascript" src="/W1/js/PageUtil.js"></script>
<script type="text/javascript" src="/W1/js/search.js"></script>
<script type="text/javascript" src="/W1/js/Lots/Lots.js"></script>
<script type="text/javascript" src="/W1/js/jquery.browser.js"></script>

<script type="text/javascript">
	var util = new PageUtil();		// 매물리스트

	var _SEL_METRO = $("input[type=hidden][name=_SEL_METRO]").val();
	var _SEL_COUNTY = $("input[type=hidden][name=_SEL_COUNTY]").val();
	
	var _SEL_STEP  = $("input[type=hidden][name=_SEL_STEP]").val();

	var sortTag = "";
	var sortTag2 = "";
	var firstData;

    var _SEARCHTXTMSG = "도/시, 시/군/구 등을 입력하세요.";
	//var _LOADACT = "1100000000|1|서울특별시";
	var _CALLBACKFUNC = "fnAreaSearch";
	var _CALLBACKFUNCALL = "fnAreaSearch";
	var _CALLBACKFUNCSEARCH = "fn_selectSearchValue";
	var  _SEARCHTYPE = 0;
	var _NECESSARYADDRLEVEL = 2;

	// 정렬방법
	//var gOrderKeys = ['사업단계', '분양시기', '입주시기', '총세대수', '사업명'];
	var gOrderKeys = ['진행단계', '사업명', '사업기간'];
	var gIsPagingCase = false;
	var gIsDetailOptionCase = false;
	// Filter

	// 최초 로드 여부
	var isFirstLoadJiguInfo = true;

	function setUtilObj(setNum){
		if(setNum == 1){
			return util;
		}
	}

	/**************************************************************************
	Document Ready
	**************************************************************************/
	$(document).ready(function(){
		var mapLevel;

		//search_CreateAddrHtml("body");

		util.totalCnt = 31; //게시물의 총 건수
		util.pageRows = 10; // 한번에 출력될 게시물 수
		util.disPagepCnt = 10; //화면 출력 페이지 수
		util.curPage = 1; //현재 페이지
		util.setNum = 1;
		util.callFunction = ajaxCall_List;

		// 김동현 추가(2017-12-05)
		$.Hash.metro = $.Hash.metro || '서울특별시';

		



	});

	/**************************************************************************
	해시 변경 이벤트 처리
	**************************************************************************/
	$(function () {

		$(window).hashchange(function(){
			var mapLevel;

			if (location.hash == '') $.Hash.page = 1;
			
			_SEL_METRO = $.Hash.metro;
			_SEL_COUNTY = $.Hash.county;
		

			$("input[type=hidden][name=_SEL_METRO]").val(_SEL_METRO);
			$("input[type=hidden][name=_SEL_COUNTY]").val(_SEL_COUNTY);
		

			

			detailOptionSetting();

			orderView();
			ajaxCall_List();

		});

		$(window).hashchange();
	});

	/**************************************************************************
	데이터 호출 ajax
	**************************************************************************/
	var ajaxCall_List = function (hisData){

		// 로딩중...
		$("#lotsInfoList").html('<table class="tbl_type1"><tr><td><div class="loding_wrap on" style="line-height:350px"><img src="https://image.r114.co.kr/W1/images/sub/loding.gif" alt="로딩중"></div></td></tr></table>');

		util.curPage = $.HashGet('page', 1);
		_SEL_METRO = $.HashGet('metro', '');
		_SEL_COUNTY = $.HashGet('county', '');
		sortTag = gOrderKeys[$.HashGet('oKey', '0')];
		sortTag2 = $.HashGet('oDir', 'ASC');
	
		filterParam1 = $.HashGet('filter1', '');
	

		// 지역 검색
		$("#addrSearchWord").val(_SEL_METRO+" "+_SEL_COUNTY);
		//alert("_SEL_METRO=>" + _SEL_METRO);
		//alert("_SEL_COUNTY=>" + _SEL_COUNTY);
		var formData = {
			"page": util.curPage,
			"Metro": _SEL_METRO,
			"County": _SEL_COUNTY,
			"sortTag": sortTag,
			"sortTag2": sortTag2,
			"filterParam1": filterParam1
		};
		
		$.ajax({
			url : "/?_c=lots&_s=Jigu&_m=JiguList&_a=index.ajax",
			type: "POST",
			data : formData,
			success: function(data, textStatus, jqXHR){
				var res = data.split("<!--@#$ INFO AREA $#@-->");
				if (data.length > 0) { // 자료가 있을때.
					util.totalCnt = res[1];

					if(res[2].trim() != ""){
						markerData = [JSON.parse('{"data": [' + res[2] + ']}')];
						markerData = markerData[0].data;
					}
					else{
						markerData = "";
					}

					_GISX = res[3];
					_GISY = res[4];
					$("#totCount").html(parseInt(res[1]));
					$("#lotsInfoList").html(res[0]);

					fn_DrowPageNumber(1, ".paging");

					$(".scrollTarget").scrollintoview({ duration: "normal", complete: "" });

					$("img").on("error", function() {
						$(this).css("display", "none");
					});

					
					var mapLevel;
					if (_SEL_COUNTY != "") {
						mapLevel = 7;
					}
					else {
						mapLevel = 11;
					}

					//
					if(_SEL_METRO == "서울특별시" && _SEL_COUNTY == "") {
						mapLevel = 9;
					}

				

					if (_SEL_COUNTY == '') {	//구시군 전체일때				
						$.ajax({
							type: "POST",
							data: { "addr1": _SEL_METRO, "addr2": _SEL_COUNTY, "addr3": '' },
							url: "/?_c=comm&_m=getCortarNoInfo&_p=AJAX",
							dataType: "json",
							success: function(reparam) {
									
								if (Object.keys(reparam).length > 0) {
								
									if (isFirstLoadJiguInfo) {
										Set_MapJigu({"title":"","CortarNo":"","Level":_MAP_LEVEL,"Addr1": _SEL_METRO,"Addr2": _SEL_COUNTY,"ComplexNm":"","gisx":reparam.지도좌표X,"gisy":reparam.지도좌표Y, "AddrCodeList":[{"mapLevel":"" + mapLevel + ""}],"bunList": ""});
										isFirstLoadJiguInfo = false;
									}

									ReSet_MapJigu({"title":"",
										"CortarNo":"",
										"Level":_MAP_LEVEL,
										"Addr1":_SEL_METRO,
										"Addr2":_SEL_COUNTY,
										"ComplexNm":"",
										"gisx":reparam.지도좌표X,
										"gisy":reparam.지도좌표Y,
										"AddrCodeList":[{"mapLevel":_GIS_MAP.getInfo().level }],
										"bunList":markerData
									});
								}
							},
							error: function(reparam) {
								console.log(reparam);
							}
						});

				
					} else {


						if (isFirstLoadJiguInfo) {
							Set_MapJigu({"title":"","CortarNo":"","Level":_MAP_LEVEL,"Addr1": _SEL_METRO,"Addr2": _SEL_COUNTY,"ComplexNm":"","gisx":_GISX,"gisy":_GISY, "AddrCodeList":[{"mapLevel":"" + mapLevel + ""}],"bunList": ""});
							isFirstLoadJiguInfo = false;
						}

						ReSet_MapJigu({"title":"",
							"CortarNo":"",
							"Level":_MAP_LEVEL,
							"Addr1":_SEL_METRO,
							"Addr2":_SEL_COUNTY,
							"ComplexNm":"",
							"gisx":_GISX,
							"gisy":_GISY,
							"AddrCodeList":[{"mapLevel":_GIS_MAP.getInfo().level }],
							"bunList":markerData
						});
					
					}
					
				}
				else { // 자료가 없을때.

				}
			},
			error: function (jqXHR, textStatus, errorThrown){
			}
		});
	}



	
	/**************************************************************************
	Paging
	**************************************************************************/
	function goPage(pageNo, setNum) {
		$.Hash.page = util.curPage = pageNo;

		$('#listTop').attr('name', $.HashSerialize());
		$('#listTop').each(function(){
			this.scrollIntoView(true);
		});

		location.href = $.HashSerialize();

		var verString = get_version_of_IE();
		var verNumber = parseInt ( get_version_of_IE() , 10 );

		if (verNumber <= 9)
		{
			detailOptionSetting();
			orderView();
			ajaxCall_List();
		}
	}

	function next_page(setNum) {
		var setUtil = setUtilObj(setNum);
		goPage(setUtil.getNextPage(), setNum);
	}

	function next(setNum) {
		var setUtil = setUtilObj(setNum);
		goPage(setUtil.getNext(), setNum);
	}

	function prev_page(setNum) {
		var setUtil = setUtilObj(setNum);
		goPage(setUtil.getPrevPage(), setNum);
	}

	function prev(setNum) {
		var setUtil = setUtilObj(setNum);
		goPage(setUtil.getPrev(), setNum);
	}

	function fn_DrowPageNumber(setNum, setArea){
		var setUtil = setUtilObj(setNum)

		setUtil.setTotalPage();
		$(setArea).html(setUtil.Drow());
	}

	/**************************************************************************
	상세 검색
	**************************************************************************/

	function searchWithDetailOption() {
		$.Hash.filter1 = $(':input:radio[name=filterParam1]:checked').val();
	
		gIsDetailOptionCase = true;
		$.Hash.page = 1;
		$(".option_wrap").removeClass("on");
		location.href = $.HashSerialize();

		if($.browser.msie && parseInt($.browser.version) <= parseInt(9)){
			detailOptionSetting();
			orderView();
			ajaxCall_List();
		}
	}

	function filterClear(form){
		 $(':input', '#frm').each(function() {
			var type = this.type;
			var tag = this.tagName.toLowerCase(); // normalize case
			if (type == 'text' || type == 'password' || tag == 'textarea')
				this.value = "";
			else if (type == 'checkbox' || type == 'radio')
				$(this).removeAttr("checked");
			else if (tag == 'select')
				this.selectedIndex = 0;
		});


		delete $.Hash.filter1;
	}

	function closeOption() {
	 	$(".option_wrap").removeClass("on");
	}

	function detailOptionSetting() {

		// 진행단계
		$('input:radio[name=filterParam1]').filter(function () {
			return $(this).val() == $.Hash.filter1;
		}).prop('checked', true);

		
	}
	/**************************************************************************
	정렬
	**************************************************************************/
	function orderView() {
		var oKeyIndex = $.HashGet('oKey', 0);
		var oDir = $.HashGet('oDir', 'ASC');

		$(".sort_wrap").find("a").each(function(index) {
			if(oKeyIndex == index) {
				$(this).addClass('selected');
				if (oDir == 'DESC') {
					$(this).addClass('down');
					$(this).removeClass('up');
				}
				else {
					$(this).addClass('up');
					$(this).removeClass('down');
				}
			}
			else{
				$(this).removeClass("selected");
				$(this).removeClass("down");
				$(this).removeClass("up");
			}
		});
	}

	function listSort(g) {
		var oldOrderKey = $.HashGet('oKey', 0);
		var oldOrderDirection = $.HashGet('oDir', 'ASC');
		var newOrderDirection = '';

		if (g == oldOrderKey && oldOrderDirection == 'ASC') {
			newOrderDirection = 'DESC';
		}
		else {
			newOrderDirection = 'ASC';
		}

		$.Hash.oKey = g;
		$.Hash.oDir = newOrderDirection;
		$.Hash.page = 1;
		gIsSortingCase = true;

		location.href = $.HashSerialize();

		if($.browser.msie && parseInt($.browser.version) <= parseInt(9)){
			detailOptionSetting();
			orderView();
			ajaxCall_List();
		}

	}


	/**************************************************************************
	분양 상세 정보
	**************************************************************************/
	function goView(g){

		// 자신의 URL 저장
		$.QueryString.rtu = $.QueryStringSerialize() + $.HashSerialize();

		$.QueryString._c = 'lots';
		//$.QueryString._m = 'lotsinfodetail';
		$.QueryString._m = 'jigudetail';
		$.QueryString.idx = g;

		
		location.href = $.QueryStringSerialize();
		//window.open($.QueryStringSerialize(), "_blank");
	}

	/**************************************************************************
	지역 검색
	**************************************************************************/
	function fn_selectSearchValue(addr1, addr2, addr3, coordx, coordy, gubuncode, gubuncode1, gubuncode2, identifycode, searchkeyword){
		$.Hash.metro = _SEL_METRO = addr1;
		$.Hash.county = _SEL_COUNTY = addr2;

		_GIS_moveToCenter(coordx, coordy);
		closeLp('type3');

		$("#addrSearchWord").val(addr1+" "+addr2+" "+addr3);
		search_autoFillSearchReset();

		location.href = $.HashSerialize();

		if($.browser.msie && parseInt($.browser.version) <= parseInt(9)){
			detailOptionSetting();
			orderView();
			ajaxCall_List();
		}
	}






	function fnAreaSearch(coartNo, addrLevel, addrAll, addrMapX, addrMapY, addr1, addr2, addr3, addrCode, mapX, mapY){
		var _GISX2 = '';
		var _GISY2 = '';
		$.Hash.metro = _SEL_METRO = addr1;
		$.Hash.county = _SEL_COUNTY = addr3;

		fn_Remove_sticker_info();				// 2017-12-18 김선호 추가.

		var formData = {

			"page": util.curPage,
			"Metro": _SEL_METRO,
			"County": _SEL_COUNTY,
			"sortTag": sortTag,
			"sortTag2": sortTag2,
			"filterParam1": filterParam1

		};


		$.ajax({
			url : "/?_c=lots&_s=Jigu&_m=JiguList&_a=index.ajax",
			type: "POST",
			data : formData,
			success: function(data, textStatus, jqXHR){
				var res = data.split("<!--@#$ INFO AREA $#@-->");
				if (data.length > 0) { // 자료가 있을때.
					
					_GISX2 = res[3];
					_GISY2 = res[4];
				
					//_GIS_moveToCenter(addrMapX, addrMapY);
					if (res[3].indexOf(1) !=-1) {
						if (addr3 == '') {
							fn_setFullView(coartNo,addrLevel,addrAll,addrMapX,addrMapY, addr1, addr2, addr3, addrCode, mapX, mapY);
						} else {
							fn_setFullView(coartNo,addrLevel,addrAll,_GISX2,_GISY2, addr1, addr2, addr3, addrCode, mapX, mapY);
						}
						
					} else {
						fn_setFullView(coartNo,addrLevel,addrAll,addrMapX,addrMapY, addr1, addr2, addr3, addrCode, mapX, mapY);
					}

				} 
			},
			error: function (jqXHR, textStatus, errorThrown){
				//alert('error')
			}



		});
		closeLp('type3');

		$("#addrSearchWord").val(addr1+" "+addr2+" "+addr3);
		location.href = $.HashSerialize();

		if($.browser.msie && parseInt($.browser.version) <= parseInt(9)){
			detailOptionSetting();
			orderView();
			ajaxCall_List();
		}

	}

	function goSearch(){
		$.Hash.page = 1;
		$.Hash.metro = _SEL_METRO;
		$.Hash.county = _SEL_COUNTY;

		location.href = $.HashSerialize();
	}
	
	/*  페이지에 로딩 레이어 표시 */
	 function fn_WaitingPage(on) {

		if (on == true) {
			$('.loading_wrap').show();
		}
		else {
			$('.loading_wrap').hide();
		}

	}
</script>

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




<iframe name="easyXDM_Kakao_default1010_provider" id="easyXDM_Kakao_default1010_provider" src="https://kapi.kakao.com/cors/?xdm_e=https%3A%2F%2Fwww.r114.com&amp;xdm_c=default1010&amp;xdm_p=1" frameborder="0" style="position: absolute; top: -2000px; left: 0px;"></iframe></body>
</html>