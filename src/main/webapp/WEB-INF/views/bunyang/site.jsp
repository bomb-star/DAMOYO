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
							<li class="on"><a href="/?_c=lots&amp;_s=lotsScene&amp;_m=lotsScene">분양&amp;현장</a></li>
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
					<li class="on"><a href="/?_c=lots&amp;_s=lotsScene&amp;_m=lotsScene">분양&amp;현장</a></li>
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


<!-- 바디 시작 -->
<div id="body_layout">
	<div class="body_wrap">
		<!-- 타이틀 시작 -->
		<div class="title_wrap">
			<div class="title">
				<h3>분양&amp;현장</h3>
			</div>
			<div class="location">
				<ul>
					<li><a href="/">홈</a></li>
					<li><a href="/?_c=lots">분양</a></li>
					<li>분양&amp;현장</li>
				</ul>
			</div>
		</div>
		<!-- 타이틀 끝 -->
		<!-- 컨텐츠 시작 -->
		<div class="contents_wrap">

			<!-- 최신동영상 -->
			<div class="sale_media_wrap_">
				<h4 class="h4_type4">최신동영상</h4>
				<ul>
				    
				    <li>
				        <div class="sale_media">
				        	<div class="mp_thumb">
								<iframe id="ifrVideo" src="https://www.youtube.com/embed/rDzqgc6nbM4" frameborder="0" allowfullscreen=""></iframe>
							</div>
							<a href="javascript:goDetailPage(200, 4, 6828)">
                            <strong class="tit">수원 화서역에 들어서는 "화서역 파크 푸르지오" 오피스텔</strong>
                            <p class="desc">     
   
  주거대체형 오피스텔로 불리는 
 "화서역 파크 푸르지오" 분양현장에 나왔습니다.
 
 "화서역 파크 푸르지오" 오피스텔이 갖는 차별화된 경쟁력은 과연 무엇일까요? 
 지금부터 함께 알아보시죠. </p>
                            <div class="clearfix">
                                <div class="info_wrap1 fl">
                                    <span>2018.11.06</span>
                                    <span>조회 2,609</span>
                                    <span><span class="ico_comm_s like">공감</span>2</span>
                                </div>
                            </div>
                            </a>
				        </div>
				    </li>
				    
				</ul>
			</div>
			<!-- //최신동영상 -->

			<div class="list_thumb_type4 no_line">
				<ul id="list">
<li>
	<a href="javascript:goDetailPage(200, 4, 6731)">
		<span class="thumb mp"><img src="http://deveimage.r114.co.kr/FocusNews/2018/20180705113327.jpg" width="233" height="145" alt=""></span>
		<strong class="tit">강북의 뉴타운 장위7구역 "꿈의숲 아이파크"</strong>
		<span class="info_wrap2">
			<span>2018.07.05</span>
			<span>조회 6,204</span>
			<span><span class="ico_comm_s like">공감</span>13</span>
		</span>
	</a>
</li>

<li>
	<a href="javascript:goDetailPage(200, 4, 6691)">
		<span class="thumb mp"><img src="https://image.r114.co.kr/FocusNews/2018/201805232306111.jpg" width="233" height="145" alt=""></span>
		<strong class="tit">"안양 센트럴 헤센2차" 분양현장</strong>
		<span class="info_wrap2">
			<span>2018.05.23</span>
			<span>조회 7,634</span>
			<span><span class="ico_comm_s like">공감</span>9</span>
		</span>
	</a>
</li>

<li>
	<a href="javascript:goDetailPage(200, 4, 6545)">
		<span class="thumb mp"><img src="https://image.r114.co.kr/FocusNews/2017/201711271029521.jpg" width="233" height="145" alt=""></span>
		<strong class="tit">미분양 급감 중인 "평택소사벌푸르지오"</strong>
		<span class="info_wrap2">
			<span>2017.11.27</span>
			<span>조회 3,189</span>
			<span><span class="ico_comm_s like">공감</span>17</span>
		</span>
	</a>
</li>

<li>
	<a href="javascript:goDetailPage(200, 4, 6538)">
		<span class="thumb mp"><img src="https://image.r114.co.kr/imgdata/apt/lim1711102.jpg" width="233" height="145" alt=""></span>
		<strong class="tit">속초의 강남에 들어서는 "속초자이"</strong>
		<span class="info_wrap2">
			<span>2017.11.10</span>
			<span>조회 4,204</span>
			<span><span class="ico_comm_s like">공감</span>15</span>
		</span>
	</a>
</li>

<li>
	<a href="javascript:goDetailPage(200, 4, 6537)">
		<span class="thumb mp"><img src="https://image.r114.co.kr/imgdata/apt/lim171107.jpg" width="233" height="145" alt=""></span>
		<strong class="tit">10년간 임대료는 그대로, 청년ㆍ신혼부부 임대주택 첫 공급</strong>
		<span class="info_wrap2">
			<span>2017.11.07</span>
			<span>조회 3,442</span>
			<span><span class="ico_comm_s like">공감</span>15</span>
		</span>
	</a>
</li>

<li>
	<a href="javascript:goDetailPage(200, 4, 6491)">
		<span class="thumb mp"><img src="https://image.r114.co.kr/FocusNews/2017/201709151800011.PNG" width="233" height="145" alt=""></span>
		<strong class="tit">한강 조망 가치 누리는 반포주공1단지, 재건축 수주 누가 될까?</strong>
		<span class="info_wrap2">
			<span>2017.09.18</span>
			<span>조회 3,927</span>
			<span><span class="ico_comm_s like">공감</span>14</span>
		</span>
	</a>
</li>

<li>
	<a href="javascript:goDetailPage(200, 4, 6492)">
		<span class="thumb mp"><img src="https://image.r114.co.kr/FocusNews/2017/201709181053291.jpg" width="233" height="145" alt=""></span>
		<strong class="tit">여수웅천 꿈에그린 더 테라스 분양설명회</strong>
		<span class="info_wrap2">
			<span>2017.08.25</span>
			<span>조회 3,111</span>
			<span><span class="ico_comm_s like">공감</span>13</span>
		</span>
	</a>
</li>

<li>
	<a href="javascript:goDetailPage(200, 4, 6118)">
		<span class="thumb mp"><img src="https://image.r114.co.kr/imgdata/apt/dys170110.jpg" width="233" height="145" alt=""></span>
		<strong class="tit">미군 맞춤형 렌탈하우스, 평택 메디슨 스퀘어 3차</strong>
		<span class="info_wrap2">
			<span>2017.01.10</span>
			<span>조회 9,050</span>
			<span><span class="ico_comm_s like">공감</span>15</span>
		</span>
	</a>
</li>

<li>
	<a href="javascript:goDetailPage(200, 4, 6070)">
		<span class="thumb mp"><img src="https://image.r114.co.kr/FocusNews/2016/201611181841011.jpg" width="233" height="145" alt=""></span>
		<strong class="tit">청약통장 필요 없는 "뉴스테이"  힐스테이트 호매실</strong>
		<span class="info_wrap2">
			<span>2016.11.18</span>
			<span>조회 9,269</span>
			<span><span class="ico_comm_s like">공감</span>11</span>
		</span>
	</a>
</li>

<li>
	<a href="javascript:goDetailPage(200, 4, 6066)">
		<span class="thumb mp"><img src="https://image.r114.co.kr/imgdata/apt/m161111.jpg" width="233" height="145" alt=""></span>
		<strong class="tit">브랜드타운의 완성, 힐스테이트 평택 3차 분양</strong>
		<span class="info_wrap2">
			<span>2016.11.11</span>
			<span>조회 8,199</span>
			<span><span class="ico_comm_s like">공감</span>10</span>
		</span>
	</a>
</li>

<li>
	<a href="javascript:goDetailPage(200, 4, 6053)">
		<span class="thumb mp"><img src="https://image.r114.co.kr/imgdata/apt/lim1610241.jpg" width="233" height="145" alt=""></span>
		<strong class="tit">동탄생활권 서동탄역 더샵 파크시티</strong>
		<span class="info_wrap2">
			<span>2016.10.24</span>
			<span>조회 8,468</span>
			<span><span class="ico_comm_s like">공감</span>11</span>
		</span>
	</a>
</li>

<li>
	<a href="javascript:goDetailPage(200, 4, 5984)">
		<span class="thumb mp"><img src="https://image.r114.co.kr/imgdata/apt/d1607181.jpg" width="233" height="145" alt=""></span>
		<strong class="tit">교육 여건 우수한 평촌 더샵 아이파크</strong>
		<span class="info_wrap2">
			<span>2016.07.18</span>
			<span>조회 12,291</span>
			<span><span class="ico_comm_s like">공감</span>11</span>
		</span>
	</a>
</li>

	
</ul>
			</div>

			<div class="paging"><strong><span class="skip">현재페이지</span>1</strong><a href="javascript:goPage(2, 1);">2</a><a href="javascript:goPage(3, 1);">3</a><a href="javascript:goPage(4, 1);">4</a><a href="javascript:goPage(5, 1);">5</a><a href="javascript:goPage(6, 1);">6</a><a href="javascript:goPage(7, 1);">7</a><a href="javascript:goPage(8, 1);">8</a><a href="javascript:goPage(9, 1);">9</a><a href="javascript:goPage(10, 1);">10</a></div>

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
						<div class="bx-wrapper" style="max-width: 100%;"><div class="bx-viewport" aria-live="polite" style="width: 100%; overflow: hidden; position: relative; height: 173px;"><ul style="width: 5215%; position: relative; transition-duration: 0.5s; transform: translate3d(-380px, 0px, 0px);"><li style="float: left; list-style: none; position: relative; width: 190px;" class="bx-clone" aria-hidden="true">
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
							
							<li style="float: left; list-style: none; position: relative; width: 190px;" aria-hidden="true">
								<a href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=2&amp;sort2=down&amp;page=1&amp;num=14290" class="thumb_wrap">
									<span class="thumb gra"><img src="https://image.r114.co.kr/images/r114/2014/jo_g20190405.png" alt=""></span>
									<span class="desc">트리플역세권으로 강남까지 더 빠르게! "금정역동양라파크"</span>
									<span class="info_wrap2">
										<span>부동산114</span>
										<span>2019.04.05</span>
									</span>
								</a>
							</li>
							
							<li aria-hidden="false" style="float: left; list-style: none; position: relative; width: 190px;">
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
							</li></ul></div><div class="bx-controls bx-has-pager"><div class="bx-pager bx-default-pager"><div class="bx-pager-item"><a href="" data-slide-index="0" class="bx-pager-link">1</a></div><div class="bx-pager-item"><a href="" data-slide-index="1" class="bx-pager-link active">2</a></div><div class="bx-pager-item"><a href="" data-slide-index="2" class="bx-pager-link">3</a></div><div class="bx-pager-item"><a href="" data-slide-index="3" class="bx-pager-link">4</a></div><div class="bx-pager-item"><a href="" data-slide-index="4" class="bx-pager-link">5</a></div></div></div></div>
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
						<div class="bx-wrapper" style="max-width: 100%;"><div class="bx-viewport" aria-live="polite" style="width: 100%; overflow: hidden; position: relative; height: 204px;"><ul style="width: 3215%; position: relative; transition-duration: 0.5s; transform: translate3d(-380px, 0px, 0px);"><li style="float: left; list-style: none; position: relative; width: 190px;" class="bx-clone" aria-hidden="true">
								<a href="http://www.r114.com/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;num=14278" class="thumb_wrap">
									<span class="thumb gra"><img src="https://image.r114.co.kr/MainGnb/2018/20180906090729.jpg" alt=""></span>
									<strong class="tit">"신마곡지구 송정서희스타힐스"</strong>
									<span class="desc">전세대 소형아파트 위주로 공급할 예정</span>
								</a>
							</li>
							
							<li style="float: left; list-style: none; position: relative; width: 190px;" aria-hidden="true">
								<a href="http://www.r114.com/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=&amp;search_keyword=전체&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=1&amp;sort2=down&amp;page=1&amp;num=14290" class="thumb_wrap">
									<span class="thumb gra"><img src="https://image.r114.co.kr/MainGnb/2019/20190405090621.png" alt=""></span>
									<strong class="tit">“금정역동양라파크”</strong>
									<span class="desc">트리플역세권으로 강남까지 더 빠르게!</span>
								</a>
							</li>
							
							<li aria-hidden="false" style="float: left; list-style: none; position: relative; width: 190px;">
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
							</li></ul></div><div class="bx-controls bx-has-pager"><div class="bx-pager bx-default-pager"><div class="bx-pager-item"><a href="" data-slide-index="0" class="bx-pager-link">1</a></div><div class="bx-pager-item"><a href="" data-slide-index="1" class="bx-pager-link active">2</a></div><div class="bx-pager-item"><a href="" data-slide-index="2" class="bx-pager-link">3</a></div></div></div></div>
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
						<div class="bx-wrapper" style="max-width: 100%;"><div class="bx-viewport" aria-live="polite" style="width: 100%; overflow: hidden; position: relative; height: 204px;"><ul style="width: 3215%; position: relative; transition-duration: 0.5s; transform: translate3d(-380px, 0px, 0px);"><li style="float: left; list-style: none; position: relative; width: 190px;" class="bx-clone" aria-hidden="true">
								<a href="/?_c=lots&amp;_s=lotsScene&amp;_m=lotsScene&amp;_a=moviedetail&amp;bno=200&amp;gno=4&amp;num=6691" class="thumb_wrap">
									<span class="thumb gra"><img src="https://image.r114.co.kr/FocusNews/2018/201805232306111.jpg" alt=""></span>
									<strong class="tit">"안양 센트럴 헤센2차" 분양현장</strong>
									<span class="desc"> 안양시의 개발 축이 동안구에서 "만안구"로 옮겨가면서 분양시장에서 흥행의 바람이 불어오고 있죠. 공공기관 이전 자리와 공장부지에 새로운 행정업무복합타운과 첨단지식산업센터 조성계획으로 투자 관심이 높아졌습니다. 이곳에 복합단지가 분양을 준비 중인데요. 현장을 찾아가 보았습니다.
 
   
   
 </span>
								</a>
							</li>
							
							<li style="float: left; list-style: none; position: relative; width: 190px;" aria-hidden="true">
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
							
							<li aria-hidden="false" style="float: left; list-style: none; position: relative; width: 190px;">
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
							</li></ul></div><div class="bx-controls bx-has-pager"><div class="bx-pager bx-default-pager"><div class="bx-pager-item"><a href="" data-slide-index="0" class="bx-pager-link">1</a></div><div class="bx-pager-item"><a href="" data-slide-index="1" class="bx-pager-link active">2</a></div><div class="bx-pager-item"><a href="" data-slide-index="2" class="bx-pager-link">3</a></div></div></div></div>
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
<script type="text/javascript" src="/W1/js/PageUtil.js"></script>
<script type="text/javascript" src="/W1/js/Research/Research.js"></script>
<script type="text/javascript">

	var util = new PageUtil();

	$(window).load(function() {

		util.setNum = 1;
		util.curPage = $.HashGet('page', 1);
		util.callFunction = getNewsList;

		$.Hash.page = $.HashGet('page', 1);
	//	location.href = '#';
		location.href = $.HashSerialize();

		getNewsList();
	});

	/**************************************************************************
	해시 변경 이벤트 처리
	**************************************************************************/
	$(window).hashchange( function(){
		if ($.HashTriggerCount++ > 0) {
			getNewsList();

			return;
		}
	});

	var getNewsList = function() {

		var formData = {pageNo: $.HashGet('page', '1'), searchType : "", searchStr : "", sortType : "최신순", sortOrderby : "DESC", movieGbn : "3" };

		$.ajax({
			url : "/?_c=Lots&_s=LotsScene&_m=LotsScene&_a=movieList.ajax",
			type: "POST",
			data : formData,
			success: function(data, textStatus, jqXHR){
				var res = data.split("<!--@#$ INFO AREA $#@-->");
				if (data.length > 0) { // 자료가 있을때.

					if (parseInt(res[1]) == 0)
					{
						$("#list").html("<li class=\"result_nodata\">검색 결과가 없습니다.</li>");
					}
					else
					{
						$("#list").html(res[0]);
					}

					util.totalCnt = parseInt(res[1]); // {총글수};
					util.curPage  = parseInt(res[2]); // {현재페이지};
					util.pageRows = parseInt(res[3]); // {출력글수};
					util.disPagepCnt = parseInt(res[4]); // {출력페이지수}
					util.setTotalPage();

					drawPageNumber(1);

					//$("#spnTotalCount").html(res[5]);

					//if(util.curPage != 1){ //처음로딩 시에는 실행 하지 않음
					//	$(".list_thumb_type2").scrollintoview({ duration: "normal", complete: "" });
					//}
					//else{
					//	isLoadFirst = false;
					//}

				}
				else { // 자료가 없을때.
					$("#idList").html("<li class=\"result_nodata\">검색 결과가 없습니다.</li>");
					util.totalCnt = 0;
					util.setTotalPage();
					drawPageNumber(1);

					//$("#spnTotalCount").html("0");
				}
			},
			error: function (jqXHR, textStatus, errorThrown){
		 	// 	alert("code:"+jqXHR.status+"\n"+"message:"+jqXHR.responseText+"\n"+"error:"+errorThrown);
			}
		});

	}

	/* 상세페이지 */
	function goDetailPage(bno, gno, num) {
		$.QueryString._c = 'lots';
		$.QueryString._s = 'lotsScene';
		$.QueryString._m = 'lotsScene';
		$.QueryString._a = 'moviedetail';
		$.QueryString.bno = bno;
		$.QueryString.gno = gno;
		$.QueryString.num = num;

		location.href = $.QueryStringSerialize() + $.HashSerialize();

		//window.location.href = "/?_c=lots&_s=lotsScene&_m=lotsScene&_a=moviedetail&bno=" + bno + "&gno=" + gno + "&num=" + num;

	}

	// 페이지유틸 객체 리턴한다.
	function setUtilObj(setNum){
		if(setNum == 1){
			return util;
		}
	}

	// 페이징 영역을 화면에 출력한다.
	function drawPageNumber(setNum){
		var setUtil = setUtilObj(setNum)

		if(setUtil.setNum == 1){
			$('.paging').html(setUtil.Drow());
		}
	}

	// 해당 페이지의 데이터를 출력한다.
	function goPage(pageNo, setNum){
		$.Hash.page = pageNo;

		$('.sale_media_wrap').attr('name', $.HashSerialize());	// 리스트 상단으로 이동

		$('.sale_media_wrap').each(function(){
			this.scrollIntoView(true);
		});

		location.href = $.HashSerialize();
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

</script><iframe name="easyXDM_Kakao_default7460_provider" id="easyXDM_Kakao_default7460_provider" src="https://kapi.kakao.com/cors/?xdm_e=https%3A%2F%2Fwww.r114.com&amp;xdm_c=default7460&amp;xdm_p=1" frameborder="0" style="position: absolute; top: -2000px; left: 0px;"></iframe><div id="fb-root" class=" fb_reset"><div style="position: absolute; top: -10000px; width: 0px; height: 0px;"><div><iframe name="fb_xdm_frame_https" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" id="fb_xdm_frame_https" aria-hidden="true" title="Facebook Cross Domain Communication Frame" tabindex="-1" src="https://staticxx.facebook.com/connect/xd_arbiter/r/d_vbiawPdxB.js?version=44#channel=f1753c21dda931&amp;origin=https%3A%2F%2Fwww.r114.com" style="border: none;"></iframe></div><div></div></div></div></body>
</html>