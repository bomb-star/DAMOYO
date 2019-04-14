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
<link
	href="${pageContext.request.contextPath}/resources/css/jquery-ui.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/template.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/common.css"
	rel="stylesheet">
</head>
<body>
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
		<div class="lp_wrap" style="width: 400px">
			<div class="inner">
				<div class="lp_con">
					<div class="login_wrap" style="width: 300px">
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
							<input type="text" class="inp_txt" title="아이디" name="user_id"
								id="user_id" placeholder="아이디"> <input type="password"
								class="inp_txt" name="user_pw" id="user_pw" title="비밀번호"
								placeholder="비밀번호" onkeypress="fn_enter(event)"> <a
								href="javascript:;" onclick="fn_login();" class="btn_type6">로그인</a>
							<div class="ct">
								<a href="javascript:;" onclick="fn_findInfoLayer()">아이디/비밀번호
									찾기</a> <a href="javascript:;"
									onclick="location.href='/?_c=mypage&amp;_m=joinmain'">회원가입</a>
							</div>
							<p class="txt1">SNS 계정으로 간편하게 로그인 하실 수 있습니다.</p>
							<div class="login_simple">
								<a href="javascript:;" id="btn_login_kakao"
									name="btn_login_kakao" class="kakao btn_login_kakao"><span
									class="ico_comm_l lg_kakao"></span>카카오톡 로그인</a> <a
									href="javascript:;" id="btn_login_naver" name="btn_login_naver"
									class="naver btn_login_naver"><span
									class="ico_comm_l lg_naver"></span>네이버 로그인</a> <a
									href="javascript:;" id="btn_login_facebook"
									class="facebook btn_login_facebook"><span
									class="ico_comm_l lg_facebook"></span>페이스북 로그인</a>
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
		<div class="lp_wrap" style="width: 400px">
			<div class="inner">
				<div class="lp_con">
					<div class="login_wrap">
						<h4>아이디 / 비밀번호 찾기</h4>
						<label for="id_find">아이디 찾기</label> <input type="text"
							class="inp_txt" id="find_email" name="find_email"
							placeholder="이메일 주소를 입력해주세요" style="border-color: #ff5252">
						<!-- alert -->
						<p class="txt_warning noMemberEmail" style="display: none">
							<span class="ico_comm_s warning"></span>등록된 이메일이 없습니다.
						</p>
						<!-- //alert -->
						<a href="javascript:;" onclick="fn_findInfo('id')"
							class="btn_type6">아이디 찾기</a>
						<hr>
						<label for="id_find">비밀번호 찾기</label> <input type="text"
							class="inp_txt" id="find_id" name="find_id"
							placeholder="아이디를 입력해주세요"> <input type="text"
							class="inp_txt" id="find_email2" name="find_email2"
							placeholder="이메일 주소를 입력해주세요">
						<ul class="list_info">
							<li>회원 가입시 등록한 이메일로 임시 비밀번호를 보내드립니다.</li>
							<li>임시 비밀번호로 로그인 후 반드시 마이페이지 &gt; 설정에서 비밀번호를 변경해주세요.</li>
						</ul>
						<a href="javascript:;" onclick="fn_findInfo('pw')"
							class="btn_type6">비밀번호 찾기</a>
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
		<div class="lp_wrap" style="width: 634px">
			<p>
				<img
					src="https://image.r114.co.kr/W1/images/etc/popup/main_pop_180820.gif"
					border="0" usemap="#Map">
				<map name="Map">
					<area shape="rect" coords="211,369,424,419"
						href="https://goo.gl/forms/P0NEHFxb15XWu3Sm1" target="_blank"
						title="부동산상담 사전신청">
					<area shape="rect" coords="475,254,598,279"
						href="http://www.rtrendshow.com/visitor/index/" target="_blank"
						title="전시장 무료입장 신청">
				</map>
			</p>
			<div>
				<div class="fl">
					<input type="checkbox" class="ico_comm_s inp_chk"
						id="chk_doNotOpenPop180820"><label
						for="chk_doNotOpenPop180820"><span class="ico_comm_s chk"></span>오늘하루
						열지않기</label>
				</div>
				<a href="#none" onclick="close_180820pop();" class="fr"><span></span>
					닫기</a>
			</div>
		</div>
		<!-- //팝업바디 -->
	</div>
	<!-- // 트랜드쇼 팝업 180820 : E -->

	<!-- 1807 실거래가팝업 -->
	<div id="lp_layout_realDealList" name="lp_layout_realDealList"
		style="display: none">
		<!-- 팝업바디 시작 -->
		<div class="lp_wrap" style="width: 700px; left: -125px">
			<!-- 팝업컨텐츠 시작 -->
			<div class="inner">
				<div class="lp_con" id="templateHeader_realPriceMorePop"></div>
				<div class="btn_wrap">
					<a href="javascript:closeLp('#lp_layout_realDealList')"
						class="btn_type1">닫기</a>
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

				<div class="inp_wrap search_wrap" id="dqSearchKeywordForm">
					<form id="dqSearchForm" name="dqSearchForm">
						<!--    <input type="text" placeholder="검색없이 건물 토지정보를 바로 확인하세요!" id="dqSearchTerm" name="dqSearchTerm" autocomplete="off" onmousedown="dq_setTextbox('1',event);" onkeydown="dq_setTextbox('1',event);" onkeypress="if(event.keyCode==13) {dq_search(); return false;}" class="g_search" value="" /> -->
						<input type="text" placeholder="일일이 검색하지 말고 알리미서비스 받으세요!"
							id="dqSearchTerm" name="dqSearchTerm" autocomplete="off"
							onmousedown="dq_setTextbox('1',event);"
							onkeydown="dq_setTextbox('1',event);"
							onkeypress="if(event.keyCode==13) {dq_search(); return false;}"
							class="g_search" value=""> <a href="javascript:"
							class="btn_search" id="cmdSearchHome">검색버튼</a>
						<script language="JavaScript" src="/search/js/dqAutoComplete.js"></script>
						<div class="result_combo" id="auto_keyword_box"
							name="auto_keyword_box" style="display: none"></div>
						<div class="result_combo" id="recent_keyword_box"
							name="recent_keyword_box" style="display: none">
							<strong class="lately_serch">최근ㅇ검색어</strong>
							<ul class="search_result_list" id="dqRecentSearchTerms">
								<li><a href="#"><span class="fc_blue">경기도</span> 가평군
										가평읍</a></li>
								<li><a href="#"><span class="fc_blue">경기도</span> 가평군
										가평읍</a></li>
								<li><a href="#"><span class="fc_blue">경기도</span> 가평군
										가평읍</a></li>
							</ul>
						</div>
						<!-- 자동완성 시작 -->
						<input type="hidden" name="dqSearchTermOld" id="dqSearchTermOld"
							value=""> <input type="hidden" name="dqSearchType"
							id="dqSearchType" value=""> <input type="hidden"
							name="dqOption" id="dqOption" value=""> <input
							type="hidden" name="dqTotalCnt" id="dqTotalCnt" value="">
						<input type="hidden" name="dqSearchSubType" id="dqSearchSubType"
							value=""> <input type="hidden" name="dqPage" id="dqPage"
							value="">

						<!-- 검색입력관련 -->
						<input type="hidden" name="hdSearchcd" id="hdSearchcd" value="">
						<input type="hidden" name="hdSearchgb" id="hdSearchgb" value="">
						<input type="hidden" name="hdSearchfrom" id="hdSearchfrom"
							value="1"> <input type="hidden" name="hdSearchmethod"
							id="hdSearchmethod" value="1"> <input type="hidden"
							name="adSearchKeyword" id="adSearchKeyword"
							value="일일이 검색하지 말고 알리미서비스 받으세요!"> <input type="hidden"
							name="adSearchKeywordUrl" id="adSearchKeywordUrl"
							value="http://www.r114.com/?_c=mypage&amp;_m=notification">
						<input type="hidden" name="adSearchKeywordOption"
							id="adSearchKeywordOption" value="1">
					</form>
				</div>

				<ul class="my_utils">


					<li><a href="#" onclick="fn_loginDiv();" class="login_status">로그인</a></li>
					<li><a href="/?_c=mypage&amp;_m=joinmain" class="mypage">회원가입</a></li>
					<li><a href="/?_c=mypage&amp;_m=mytrace" class="myact on">나의활동</a></li>

				</ul>
			</div>
		</div>



		<div class="menu_wrap">
			<ul class="menu">
				<li class=""><span> <a
						href="${pageContext.request.contextPath}/sisae/mainSisae">매물/시세</a>
						<div class="layer_menu lm_1">
							<ul class="col">
								<li><a
									href="${pageContext.request.contextPath}/sisae/apartDetail">아파트</a></li>
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
						<li><a
							href="${pageContext.request.contextPath}/sisae/apartDetail">아파트</a></li>
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
					</ul></li>
				<li class=""><span> <a
						href="${pageContext.request.contextPath}/eroe/mainEroe">매물의뢰</a>
						<div class="layer_menu lm_2">
							<ul>
								<li class=""><a href="javascript:goAskSellPage();">내놓기</a></li>
								<li class=""><a href="javascript:goAskBuyPage();">구하기</a></li>
								<li class=""><a
									href="${pageContext.request.contextPath}/eroe/eroeStatus">의뢰현황</a></li>
								<li class=""><a
									href="${pageContext.request.contextPath}/eroe/customerReview">고객후기</a></li>
								<li class=""><a
									href="${pageContext.request.contextPath}/eroe/searchSaleseman">중개사무소찾기</a></li>
							</ul>
						</div>
				</span>
					<ul>
						<li class=""><a href="javascript:goAskSellPage();">내놓기</a></li>
						<li class=""><a href="javascript:goAskBuyPage();">구하기</a></li>
						<li class=""><a
							href="${pageContext.request.contextPath}/eroe/eroeStatus">의뢰현황</a></li>
						<li class=""><a
							href="${pageContext.request.contextPath}/eroe/customerReview">고객후기</a></li>
						<li class=""><a
							href="${pageContext.request.contextPath}/eroe/searchSaleseman">중개사무소찾기</a></li>
					</ul></li>

				<li class=""><span> <a
						href="${pageContext.request.contextPath}/zicgurae/personal">직거래</a>
						<div class="layer_menu lm_3">
							<ul>
								<li class=""><a
									href="${pageContext.request.contextPath}/zicgurae/personal">개인매물</a></li>
								<li class=""><a
									href="${pageContext.request.contextPath}/zicgurae/company">기업매물</a></li>
								<li class=""><a
									href="${pageContext.request.contextPath}/zicgurae/national">국유재산사용/매각</a></li>
							</ul>
						</div>
				</span>
					<ul>
						<li class=""><a
							href="${pageContext.request.contextPath}/zicgurae/personal">개인매물</a></li>
						<li class=""><a
							href="${pageContext.request.contextPath}/zicgurae/company">기업매물</a></li>
						<li class=""><a
							href="${pageContext.request.contextPath}/zicgurae/national">국유재산사용/매각</a></li>
					</ul></li>

				<li class="on"><span> <a
						href="${pageContext.request.contextPath}/bunyang/main">분양</a>
						<div class="layer_menu lm_5">
							<ul>
								<li class=""><a
									href="${pageContext.request.contextPath}/bunyang/information">분양정보</a></li>
								<li class=""><a
									href="${pageContext.request.contextPath}/bunyang/plan">분양일정</a></li>
								<li class=""><a
									href="${pageContext.request.contextPath}/bunyang/news">분양뉴스</a></li>
								<li class=""><a
									href="${pageContext.request.contextPath}/bunyang/site">분양&amp;현장</a></li>
								<li class=""><a
									href="${pageContext.request.contextPath}/bunyang/supply">입주지원센터</a></li>
								<li class=""><a
									href="${pageContext.request.contextPath}/bunyang/stategy">청약전략</a></li>
								<li class="on"><a
									href="${pageContext.request.contextPath}/bunyang/develop">지역개발정보</a></li>
								<!--<li class=""><a href="/?_c=lots&_m=VrCenterlist&_s=VrCenterlist">VR분양관</a></li>			-->
							</ul>
						</div>
				</span>
					<ul>
						<li class=""><a
							href="${pageContext.request.contextPath}/bunyang/information">분양정보</a></li>
						<li class=""><a
							href="${pageContext.request.contextPath}/bunyang/plan">분양일정</a></li>
						<li class=""><a
							href="${pageContext.request.contextPath}/bunyang/news">분양뉴스</a></li>
						<li class=""><a
							href="${pageContext.request.contextPath}/bunyang/site">분양&amp;현장</a></li>
						<li class=""><a
							href="${pageContext.request.contextPath}/bunyang/supply">입주지원센터</a></li>
						<li class=""><a
							href="${pageContext.request.contextPath}/bunyang/stategy">청약전략</a></li>
						<li class="on"><a
							href="${pageContext.request.contextPath}/bunyang/develop">지역개발정보</a></li>
						<!--<li class=""><a href="/?_c=lots&_m=VrCenterlist&_s=VrCenterlist">VR분양관</a></li>-->

					</ul></li>

				<li class=""><span> <a href="/?_c=research">리서치</a>
						<div class="layer_menu lm_4">
							<ul>
								<li class=""><a href="/?_c=Research&amp;_m=ReportNews">리포트&amp;뉴스</a></li>
								<li class=""><a href="/?_c=Research&amp;_m=LocalAnalysis">로컬분석</a></li>
								<li class=""><a href="/?_c=Research&amp;_m=KnowHow">상식</a></li>
								<li class=""><a href="/?_c=Research&amp;_m=Column">칼럼</a></li>
								<li class=""><a href="/?_c=Research&amp;_m=ZoomIn">TV속
										부동산114</a></li>
							</ul>
						</div>
				</span>
					<ul id="IpResearchMenu">
						<li class=""><a href="/?_c=Research&amp;_m=ReportNews">리포트&amp;뉴스</a></li>
						<li class=""><a href="/?_c=Research&amp;_m=LocalAnalysis">로컬분석</a></li>
						<li class=""><a href="/?_c=Research&amp;_m=KnowHow">상식</a></li>
						<li class=""><a href="/?_c=Research&amp;_m=Column">칼럼</a></li>
						<li class=""><a href="/?_c=Research&amp;_m=ZoomIn">TV속
								부동산114</a></li>
						<!--<li class=""><a href="/?_c=Research&_m=Guide">안내</a></li>-->
					</ul></li>

				<li class="icon_new"><span> <a
						href="/?_c=StartupSupport" target="_blank;">창업지원</a>
						<div class="layer_menu lm_11">
							<ul>
								<li><a href="/?_c=StartupSupport&amp;_s=StoreInfo"
									target="_blank;">상가정보</a></li>
								<li><a href="/?_c=StartupSupport&amp;_s=Franchise"
									target="_blank;">프랜차이즈</a></li>
								<li><a href="/?_c=StartupSupport&amp;_s=MarketAnalysis"
									target="_blank;">상권분석</a></li>
								<li><a href="/?_c=StartupSupport&amp;_s=AddInfo"
									target="_blank;">창업부가정보</a></li>
							</ul>
						</div>
				</span></li>

				<li class=""><span> <a href="?_c=service&amp;_m=counsel">커뮤니티</a>
						<div class="layer_menu lm_6">
							<ul>
								<li class=""><a href="/?_c=service&amp;_m=counsel">부동산상담</a></li>
								<li class=""><a
									href="/?_c=service&amp;_s=community&amp;tabGubun=1">우리동네,
										단지 이야기</a></li>
								<li class=""><a
									href="/?_c=service&amp;_s=community&amp;pageNo=1&amp;tabGubun=2&amp;sortTag=0">공인중개사
										현장이야기</a></li>
								<li class=""><a href="/?_c=solution&amp;_m=event">이벤트</a></li>
							</ul>
						</div>
				</span>
					<ul>
						<li class=""><a href="/?_c=service&amp;_m=counsel">부동산상담</a></li>
						<li class=""><a
							href="/?_c=service&amp;_s=community&amp;tabGubun=1">우리동네, 단지
								이야기</a></li>
						<li class=""><a
							href="/?_c=service&amp;_s=community&amp;pageNo=1&amp;tabGubun=2&amp;sortTag=0">공인중개사
								현장이야기</a></li>
						<li class=""><a href="/?_c=solution&amp;_m=event">이벤트</a></li>
					</ul></li>

				<li class=""><span> <a
						href="${pageContext.request.contextPath}/gyeongmae/inquiry">경매</a>
						<div class="layer_menu lm_9">
							<ul>
								<li class=""><a
									href="${pageContext.request.contextPath}/gyeongmae/inquiry">경매물건조회</a></li>
								<li class=""><a
									href="${pageContext.request.contextPath}/gyeongmae/study">경매STUDY</a></li>
								<li class=""><a
									href="${pageContext.request.contextPath}/gyeongmae/result">경매결과/통계</a></li>
								<li class=""><a
									href="${pageContext.request.contextPath}/gyeongmae/community">경매커뮤니티</a></li>
								<li class=""><a
									href="${pageContext.request.contextPath}/gyeongmae/fun">FUN경매</a></li>
								<li class=""><a
									href="${pageContext.request.contextPath}/gyeongmae/myPage">My페이지</a></li>
							</ul>
						</div>
				</span>
					<ul>
						<li class=""><a
							href="${pageContext.request.contextPath}/gyeongmae/inquiry">경매물건조회</a></li>
						<li class=""><a
							href="${pageContext.request.contextPath}/gyeongmae/study">경매STUDY</a></li>
						<li class=""><a
							href="${pageContext.request.contextPath}/gyeongmae/result">경매결과/통계</a></li>
						<li class=""><a
							href="${pageContext.request.contextPath}/gyeongmae/community">경매커뮤니티</a></li>
						<li class=""><a
							href="${pageContext.request.contextPath}/gyeongmae/fun">FUN경매</a></li>
						<li class=""><a
							href="${pageContext.request.contextPath}/gyeongmae/myPage">My페이지</a></li>
					</ul></li>

				<li class=""><span> <a
						href="/?_c=service&amp;_s=life&amp;_m=loan">대출</a>
						<div class="layer_menu lm_8">
							<ul>
								<li class=""><a href="/?_c=service&amp;_s=life&amp;_m=loan">대출상품조회</a></li>
							</ul>
						</div>
				</span>
					<ul>
						<li class=""><a href="/?_c=service&amp;_s=life&amp;_m=loan">대출상품조회</a></li>
					</ul></li>


				<li class=""><span> <a
						href="/?_c=service&amp;_s=life&amp;_m=Interior">이사/인테리어</a>
						<div class="layer_menu lm_7">
							<ul>
								<li class=""><a
									href="/?_c=service&amp;_s=life&amp;_m=Interior">인테리어견적</a></li>
								<li class=""><a
									href="/?_c=service&amp;_s=life&amp;_m=move&amp;_a=estimate">이사견적</a></li>
								<li class=""><a
									href="/?_c=service&amp;_s=life&amp;_m=move&amp;_a=cleaner">입주청소</a></li>
								<li class=""><a
									href="/?_c=service&amp;_s=life&amp;_m=moveguide">이사가이드</a></li>
							</ul>
						</div>
				</span>
					<ul>
						<li class=""><a
							href="/?_c=service&amp;_s=life&amp;_m=Interior">인테리어견적</a></li>
						<li class=""><a
							href="/?_c=service&amp;_s=life&amp;_m=move&amp;_a=estimate">이사견적</a></li>
						<li class=""><a
							href="/?_c=service&amp;_s=life&amp;_m=move&amp;_a=cleaner">입주청소</a></li>
						<li class=""><a
							href="/?_c=service&amp;_s=life&amp;_m=moveguide">이사가이드</a></li>
					</ul></li>
				<li class=""><span> <a href="/?_c=ForPartners">중개회원존</a>
						<div class="layer_menu lm_10">
							<ul>
								<li class=""><a href="/?_c=ForPartners&amp;_m=AgentGuide">중개회원가입안내</a>
								</li>
								<li class=""><a
									href="/?_c=ForPartners&amp;_m=AgentGuide&amp;_a=RPlus">알플러스안내</a></li>
								<li class=""><a href="/?_c=ForPartners&amp;_m=AgentOffice">중개사무소자리</a></li>
								<li class=""><a href="/?_c=ForPartners&amp;_m=AgentWants">구인/구직</a></li>
								<li class=""><a href="/?_c=ForPartners&amp;_m=AgentNotice">공지사항</a></li>
							</ul>
						</div>
				</span>
					<ul>
						<li class=""><a href="/?_c=ForPartners&amp;_m=AgentGuide">중개회원가입안내</a>
						</li>
						<li class=""><a
							href="/?_c=ForPartners&amp;_m=AgentGuide&amp;_a=RPlus">알플러스안내</a></li>
						<li class=""><a href="/?_c=ForPartners&amp;_m=AgentOffice">중개사무소자리</a></li>
						<li class=""><a href="/?_c=ForPartners&amp;_m=AgentWants">구인/구직</a></li>
						<li class=""><a href="/?_c=ForPartners&amp;_m=AgentNotice">공지사항</a></li>
					</ul></li>
				<li class="">
					<ul>

					</ul>
				</li>
			</ul>

		</div>

	</div>
	<!-- 탑 끝 -->


	<!-- 바디 시작 -->
	<div id="body_layout" class="submain_sale">
		<div class="submain_cont">
			<div class="w_fix clearfix">
				<!-- 분양정보 -->
				<div class="sale_info fl">
					<h4 class="h4_type4">
						분양정보<a href="javascript:" class="more_type1" id="cmdInfoList">더보기
							<span class="ico_comm_s more1"></span>
						</a>
					</h4>
					<!-- 지도 영역 -->
					<div class="map_area">
						<iframe id="frameMap"
							src=""
							frameborder="0" width="100%" height="100%"> </iframe>
					</div>
					<!-- //지도영역 -->

					<!-- sort -->
					<div class="sort_wrap type2" id="estateType">
						<a href="javascript:" onclick="changeEstateType(1)"
							class="selected">아파트</a> <a href="javascript:"
							onclick="changeEstateType(2)">오피스텔</a> <a href="javascript:"
							onclick="changeEstateType(3)">도시형생활주택</a> <a href="javascript:"
							onclick="changeEstateType(4)">상가</a> <a href="javascript:"
							onclick="changeEstateType(5)">아파트형공장</a>
					</div>
					<!-- //sort -->

					<!-- 이미지맵 선택으로 분양정보 조회 -->
					<ul class="list_sale_info" id="saleInfoList">
						<li>
							<!-- loop, max : 6 --> <a
							href="javascript:goLotsInfoDetailPage('B', 'A01020039080000')">
								<span class="txt">[강동구] 강일2준주거1(행복주택)</span> <span
								class="tag_comm type4">분양중</span> <!-- <span class="tag_comm type22">계약</span> -->
						</a>
						</li>

						<li>
							<!-- loop, max : 6 --> <a
							href="javascript:goLotsInfoDetailPage('B', 'A01110038680003')">
								<span class="txt">[동대문구] 답십리엘림퍼스트</span> <span
								class="tag_comm type4">분양중</span> <!-- <span class="tag_comm type22">계약</span> -->
						</a>
						</li>

						<li>
							<!-- loop, max : 6 --> <a
							href="javascript:goLotsInfoDetailPage('B', 'A01250008770003')">
								<span class="txt">[중랑구] 신내글로리움(행복주택)</span> <span
								class="tag_comm type4">분양중</span> <!-- <span class="tag_comm type22">계약</span> -->
						</a>
						</li>

						<li>
							<!-- loop, max : 6 --> <a
							href="javascript:goLotsInfoDetailPage('B', 'A01250027850001')">
								<span class="txt">[중랑구] 신내역금강펜테리움센트럴파크(C2)</span> <span
								class="tag_comm type4">분양중</span> <!-- <span class="tag_comm type22">계약</span> -->
						</a>
						</li>

						<li>
							<!-- loop, max : 6 --> <a
							href="javascript:goLotsInfoDetailPage('B', 'A01220014330010')">
								<span class="txt">[은평구] 은평서해그랑블</span> <span
								class="tag_comm type4">분양중</span> <!-- <span class="tag_comm type22">계약</span> -->
						</a>
						</li>

						<li>
							<!-- loop, max : 6 --> <a
							href="javascript:goLotsInfoDetailPage('B', 'A01110026420002')">
								<span class="txt">[동대문구] 청량리역한양수자인192</span> <span
								class="tag_comm type4">분양중</span> <!-- <span class="tag_comm type22">계약</span> -->
						</a>
						</li>
					</ul>
					<!-- //이미지맵 선택으로 분양정보 조회 -->
				</div>
				<!-- status :
				<span class="tag_comm type4">분양중</span>
				<span class="tag_comm type20">미분양</span>
				<span class="tag_comm type15">오픈</span>
				<span class="tag_comm type21">분양예정</span>
				<span class="tag_comm type22">계약</span>
			//status -->
				<!-- //분양정보 -->

				<!-- 분양뉴스 top 3 -->
				<div class="sale_news fr">
					<h4 class="h4_type4">
						분양뉴스<a href="/?_c=lots&amp;_m=lotsnews" class="more_type1">더보기
							<span class="ico_comm_s more1"></span>
						</a>
					</h4>
					<div class="list_thumb_type2">
						<ul class="list_news" id="lotsNewsList">
							<li><a
								href="http://www.r114.com/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;num=14290">
									<span class="thumb"><img
										src="https://image.r114.co.kr/MainGnb/2019/20190405090809.png"
										alt=""></span> <strong class="tit"><strong class="tit">"금정역동양라파크"</strong></strong>
									<span class="desc">트리플역세권으로 강남까지 더 빠르게!</span>
							</a></li>

							<li><a
								href="http://www.r114.com/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;num=14289">

									<strong class="tit">GS건설,"성남고등자이" 5월 분양</strong>

							</a></li>

							<li><a
								href="http://www.r114.com/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;num=14288">

									<strong class="tit">다세권확보한 똘똘한한채! "송파대우이안(이스트원)"</strong>

							</a></li>

							<li><a
								href="http://www.r114.com/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;num=14280">

									<strong class="tit">"상계뉴타운,상계신도시프리미엄선점/4호선당고개역초역세권대단지</strong>

							</a></li>

							<li><a
								href="http://www.r114.com/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;num=14258">

									<strong class="tit">배후수요16만명, 마곡 10분대 서울전세가보다 싼 생활권</strong>

							</a></li>
						</ul>
						<ul id="list_trends">
							<li><a
								href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=200&amp;kind=8&amp;num=6951">
									<strong class="tit">4월 둘째 주 분양캘린더 - 봄 분양시장 활짝,
										수성레이크푸르지오 등 전국 1.1만 가구 분양</strong>
							</a></li>

							<li><a
								href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=200&amp;kind=8&amp;num=6945">
									<strong class="tit">4월 첫째 주 분양캘린더 - 봄 분양시장 본격 개막,
										힐스테이트북위례 등 전국 1만 가구 분양</strong>
							</a></li>
						</ul>
					</div>
				</div>
				<!-- //분양뉴스 -->
			</div>
		</div>
		<div class="body_wrap">
			<div class="clearfix">
				<!-- 추천분양현장 top 3 -->
				<div class="sale_recomm bg_b fl">
					<h4 class="h4_type5">
						추천분양현장<a href="/?_c=lots&amp;_m=lotsnews" class="more_type1 rb">더보기
							<span class="ico_comm_s more1"></span>
						</a>
					</h4>
					<ul class="list_thumb_type5" id="lotsRecommendList">
						<li><a
							href="http://www.r114.com/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=&amp;search_keyword=전체&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=1&amp;sort2=down&amp;page=1&amp;num=14290">
								<div class="thumb">
									<img
										src="https://image.r114.co.kr/MainGnb/2019/20190405090621.png"
										alt="">
								</div> <span class="s_type">“금정역동양라파크”</span> <span class="s_type sub">GTX개통예정</span>
								<p class="desc">트리플역세권으로 강남까지 더 빠르게!</p>
						</a></li>

						<li><a
							href="http://www.r114.com/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=1&amp;sort2=down&amp;page=1&amp;num=14288">
								<div class="thumb">
									<img
										src="https://image.r114.co.kr/MainGnb/2019/20190402101449.jpg"
										alt="">
								</div> <span class="s_type">"송파대우이안(이스트원)"</span> <span
								class="s_type sub">거여역 초 역세권</span>
								<p class="desc">다세권 확보한 똘똘한 한 채</p>
						</a></li>

						<li><a
							href="http://www.r114.com/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;num=14278">
								<div class="thumb">
									<img
										src="https://image.r114.co.kr/MainGnb/2018/20180906090729.jpg"
										alt="">
								</div> <span class="s_type">"신마곡지구 송정서희스타힐스"</span> <span
								class="s_type sub">서울의 마지막 황금알 땅</span>
								<p class="desc">전세대 소형아파트 위주로 공급할 예정</p>
						</a></li>
					</ul>
				</div>
				<!-- //추천분양현장 -->
				<!-- 분양N현장 top 1 -->
				<div class="sale_n fr">
					<h4 class="h4_type5">
						분양&amp;현장<a href="/?_c=lots&amp;_s=lotsScene&amp;_m=lotsScene"
							class="more_type1 rb">더보기 <span class="ico_comm_s more1"></span></a>
					</h4>
					<div class="list_thumb_type4">
						<ul id="lotsSceneList">
							<li><a
								href="http://www.r114.com/?_c=lots&amp;_s=lotsScene&amp;_m=lotsScene&amp;_a=moviedetail&amp;bno=200&amp;num=6492#page=1">
									<span class="thumb"><img
										src="https://image.r114.co.kr/MainGnb/2017/20170928114812.jpg"
										alt=""></span> <strong class="tit">여수웅천 꿈에그린 더 테라스</strong> <span
									class="subtit">여가생활이 가능한 </span>
									<p class="desc">여수 바다 View가 펼쳐진 아파트를 분양하는데요...</p>
							</a></li>
						</ul>
					</div>
				</div>
				<!-- //분양N현장 -->
			</div>
			<div class="clearfix mgt4">
				<!-- 분양달력 -->
				<div class="calendar_wrap2 bg_b fl">
					<h4 class="h4_type5">
						분양 캘린더<a href="/?_c=lots&amp;_s=lotsSchedule&amp;_m=lotsSchedule"
							class="more_type1 rb">더보기<span class="ico_comm_s more1"></span></a>
					</h4>
					<div class="clearfix">
						<!-- 달력 -->
						<div class="calendar2">
							<div class="period">
								<button type="button" class="btn_cal" id="cmdPrevDate">
									<span class="ico_comm_s pv_cal2">이전</span>
								</button>
								<span id="todayYearMonth">2019. 04</span>
								<button type="button" class="btn_cal" id="cmdNextDate">
									<span class="ico_comm_s nx_cal2">다음</span>
								</button>
							</div>
							<table class="tbl_calendar">
								<caption>달력</caption>
								<colgroup>
									<col>
									<col>
									<col>
									<col>
									<col>
									<col>
									<col>
								</colgroup>
								<thead>
									<tr>
										<th>일</th>
										<th>월</th>
										<th>화</th>
										<th>수</th>
										<th>목</th>
										<th>금</th>
										<th>토</th>
									</tr>
									<tr>
										<td></td>
										<td><span>1</span></td>
										<td><span>2</span></td>
										<td><span>3</span></td>
										<td><span>4</span></td>
										<td><span>5</span></td>
										<td><span>6</span></td>
									</tr>
									<tr>
										<td><span style="color: red">7</span></td>
										<td><span>8</span></td>
										<td><span>9</span></td>
										<td><span class="today"><a
												href="javascript:getLotsScheduleInfo('20190410')"><span>10</span></a></span></td>
										<td><a href="javascript:getLotsScheduleInfo('20190411')"><span>11</span></a></td>
										<td><a href="javascript:getLotsScheduleInfo('20190412')"><span>12</span></a></td>
										<td><span>13</span></td>
									</tr>
									<tr>
										<td><span style="color: red">14</span></td>
										<td><a href="javascript:getLotsScheduleInfo('20190415')"><span>15</span></a></td>
										<td><a href="javascript:getLotsScheduleInfo('20190416')"><span>16</span></a></td>
										<td><a href="javascript:getLotsScheduleInfo('20190417')"><span>17</span></a></td>
										<td><a href="javascript:getLotsScheduleInfo('20190418')"><span>18</span></a></td>
										<td><a href="javascript:getLotsScheduleInfo('20190419')"><span>19</span></a></td>
										<td><span>20</span></td>
									</tr>
									<tr>
										<td><span style="color: red">21</span></td>
										<td><a href="javascript:getLotsScheduleInfo('20190422')"><span>22</span></a></td>
										<td><a href="javascript:getLotsScheduleInfo('20190423')"><span>23</span></a></td>
										<td><a href="javascript:getLotsScheduleInfo('20190424')"><span>24</span></a></td>
										<td><span>25</span></td>
										<td><a href="javascript:getLotsScheduleInfo('20190426')"><span>26</span></a></td>
										<td><span>27</span></td>
									</tr>
									<tr>
										<td><span style="color: red">28</span></td>
										<td><a href="javascript:getLotsScheduleInfo('20190429')"><span>29</span></a></td>
										<td><a href="javascript:getLotsScheduleInfo('20190430')"><span>30</span></a></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
								</thead>
							</table>
						</div>
						<!-- //달력 -->

						<!-- 분양일정 -->
						<div class="schedule">
							<em class="fc_blue" id="lotsScheduleDate">&lt;4월 10일(수)
								분양일정&gt; </em>
							<div class="list_schedule">
								<ul id="lotsScheduleList">
									<li><a
										href="javascript:goLotsInfoDetailPage('B', 'A02011426550000', 'schedule')">
											<em class="fc_skyblue">접수</em>[아파트] 민간분양 - 1순위<br>
											<p class="ellip">경기도 고양시 일산동 e편한세상일산어반스카이</p>
									</a></li>

									<li><a
										href="javascript:goLotsInfoDetailPage('B', 'A02790039910010', 'schedule')">
											<em class="fc_skyblue">접수</em>[아파트] 공공임대<br>
											<p class="ellip">경기도 화성시 남양읍 화성남양뉴타운A5(행복주택)</p>
									</a></li>

									<li><a
										href="javascript:goLotsInfoDetailPage('B', 'A02180005760005', 'schedule')">
											<em class="fc_skyblue">접수</em>[아파트] 공공임대<br>
											<p class="ellip">경기도 하남시 감일동 하남감일A6(행복주택)</p>
									</a></li>

									<li><a
										href="javascript:goLotsInfoDetailPage('B', 'A02640039980000', 'schedule')">
											<em class="fc_skyblue">접수</em>[아파트] 공공임대<br>
											<p class="ellip">경기도 평택시 청북읍 평택청북B12(행복주택)</p>
									</a></li>

									<li><a
										href="javascript:goLotsInfoDetailPage('B', 'A02640016300009', 'schedule')">
											<em class="fc_skyblue">접수</em>[아파트] 공공임대<br>
											<p class="ellip">경기도 평택시 고덕면 평택고덕Ca2(행복주택)</p>
									</a></li>

									<li><a
										href="javascript:goLotsInfoDetailPage('B', 'A02640016300010', 'schedule')">
											<em class="fc_skyblue">접수</em>[아파트] 공공임대<br>
											<p class="ellip">경기도 평택시 고덕면 평택고덕Ca1(행복주택)</p>
									</a></li>

									<li><a
										href="javascript:goLotsInfoDetailPage('B', 'A02170029800001', 'schedule')">
											<em class="fc_skyblue">접수</em>[아파트] 공공임대<br>
											<p class="ellip">경기도 파주시 법원읍 파주법원(행복주택)</p>
									</a></li>

									<li><a
										href="javascript:goLotsInfoDetailPage('B', 'A15020317200001', 'schedule')">
											<em class="fc_skyblue">접수</em>[아파트] 공공임대<br>
											<p class="ellip">충청북도 청주시 운동동 청주동남A5(행복주택)</p>
									</a></li>

									<li><a
										href="javascript:goLotsInfoDetailPage('C', 'G01110026420007', 'schedule')">
											<em class="fc_skyblue">접수</em>[오피스텔] 민간분양<br>
											<p class="ellip">서울특별시 동대문구 용두동 청량리역해링턴플레이스</p>
									</a></li>

									<li><a
										href="javascript:goLotsInfoDetailPage('B', 'A14062819150003', 'schedule')">
											<em class="fc_skyblue">접수</em>[아파트] 공공임대<br>
											<p class="ellip">충청남도 천안시 두정동 천안두정A1(행복주택)</p>
									</a></li>

									<li><a
										href="javascript:goLotsInfoDetailPage('B', 'A05030017280003', 'schedule')">
											<em class="fc_skyblue">접수</em>[아파트] 공공임대<br>
											<p class="ellip">인천광역시 남동구 서창동 인천서창2지구14BL(행복주택)</p>
									</a></li>

									<li><a
										href="javascript:goLotsInfoDetailPage('B', 'A12190013890005', 'schedule')">
											<em class="fc_skyblue">접수</em>[아파트] 공공임대<br>
											<p class="ellip">전라남도 영암군 삼호읍 영암용앙(행복주택)</p>
									</a></li>

									<li><a
										href="javascript:goLotsInfoDetailPage('B', 'A14050002290007', 'schedule')">
											<em class="fc_skyblue">접수</em>[아파트] 공공임대<br>
											<p class="ellip">충청남도 아산시 배방읍 아산배방2A12(행복주택)</p>
									</a></li>

									<li><a
										href="javascript:goLotsInfoDetailPage('B', 'A04060032630000', 'schedule')">
											<em class="fc_skyblue">접수</em>[아파트] 민간분양 - 1순위<br>
											<p class="ellip">대구광역시 수성구 두산동 수성레이크푸르지오</p>
									</a></li>

									<li><a
										href="javascript:goLotsInfoDetailPage('C', 'G04060032630003', 'schedule')">
											<em class="fc_skyblue">접수</em>[오피스텔] 민간분양<br>
											<p class="ellip">대구광역시 수성구 두산동 수성레이크푸르지오</p>
									</a></li>

									<li><a
										href="javascript:goLotsInfoDetailPage('B', 'A13051222520000', 'schedule')">
											<em class="fc_skyblue">접수</em>[아파트] 민간분양 - 1순위<br>
											<p class="ellip">전라북도 전주시 서완산동2가 서완산골드클래스</p>
									</a></li>

									<li><a
										href="javascript:goLotsInfoDetailPage('B', 'A14020021490000', 'schedule')">
											<em class="fc_skyblue">접수</em>[아파트] 민간분양 - 1순위<br>
											<p class="ellip">충청남도 논산시 취암동 논산골든타워</p>
									</a></li>

									<li><a
										href="javascript:goLotsInfoDetailPage('B', 'A02070036850002', 'schedule')">
											<em class="fc_skyblue">접수</em>[아파트] 민간분양 - 1순위<br>
											<p class="ellip">경기도 남양주시 진접읍 남양주더샵퍼스트시티(A1)</p>
									</a></li>

									<li><a
										href="javascript:goLotsInfoDetailPage('B', 'A13070025880003', 'schedule')">
											<em class="fc_skyblue">접수</em>[아파트] 민간분양 - 2순위<br>
											<p class="ellip">전라북도 고창군 고창읍 고창석정파크빌3차</p>
									</a></li>

									<li><a
										href="javascript:goLotsInfoDetailPage('B', 'A02790027680006', 'schedule')">
											<em class="fc_orange">발표</em>[아파트] 공공임대<br>
											<p class="ellip">경기도 화성시 향남읍 화성향남2A20(행복주택)</p>
									</a></li>

									<li><a
										href="javascript:goLotsInfoDetailPage('B', 'A02790027680007', 'schedule')">
											<em class="fc_orange">발표</em>[아파트] 공공임대<br>
											<p class="ellip">경기도 화성시 향남읍 화성발안A1(행복주택)</p>
									</a></li>

									<li><a
										href="javascript:goLotsInfoDetailPage('C', 'G05070004130018', 'schedule')">
											<em class="fc_orange">발표</em>[오피스텔] 민간분양<br>
											<p class="ellip">인천광역시 연수구 송도동 호반써밋송도(M2)</p>
									</a></li>

									<li><a
										href="javascript:goLotsInfoDetailPage('B', 'A05060007900000', 'schedule')">
											<em class="fc_orange">발표</em>[아파트] 민간분양<br>
											<p class="ellip">인천광역시 서구 당하동 인천검단대방노블랜드1차(AB4)</p>
									</a></li>

									<li><a
										href="javascript:goLotsInfoDetailPage('B', 'A08010001420005', 'schedule')">
											<em class="fc_orange">발표</em>[아파트] 민간분양<br>
											<p class="ellip">울산광역시 남구 신정동 문수로두산위브더제니스</p>
									</a></li>

									<li><a
										href="javascript:goLotsInfoDetailPage('B', 'A07040018190004', 'schedule')">
											<em class="fc_orange">발표</em>[아파트] 민간임대<br>
											<p class="ellip">대전광역시 유성구 복용동 대전아이파크시티2단지(민간임대)</p>
									</a></li>

									<li><a
										href="javascript:goLotsInfoDetailPage('B', 'A07040018190003', 'schedule')">
											<em class="fc_orange">발표</em>[아파트] 민간임대<br>
											<p class="ellip">대전광역시 유성구 복용동 대전아이파크시티1단지(민간임대)</p>
									</a></li>

									<li><a
										href="javascript:goLotsInfoDetailPage('B', 'A02640016300008', 'schedule')">
											<em class="fc_green">계약</em>[아파트] 공공분양<br>
											<p class="ellip">경기도 평택시 서정동 평택고덕신혼희망타운(공공분양)</p>
									</a></li>
								</ul>
							</div>
						</div>
						<!-- //분양일정 -->
					</div>
				</div>
				<!-- //분양달력 -->
				<!-- 광고 -->
				<div class="ad_wrap fr">
					<script language="JavaScript1.1"
						src="https://md.r114.co.kr/RealMedia/ads/adstream_jx.ads/www.r114.co.kr/MR@x18"></script>
					<a
						href="https://md.r114.co.kr/RealMedia/ads/click_lx.ads/www.r114.co.kr/MR/1281257846/x18/OasDefault/byuyang_RIGHT_20180129/278x301_e20190320.jpg/30316536633231613563393131656230"
						target="_new"><img
						src="https://md.r114.co.kr/RealMedia/ads/Creatives/OasDefault/byuyang_RIGHT_20180129/278x301_e20190320.jpg"
						alt="" border="0"></a>
				</div>
				<!-- //광고 -->
			</div>
			<!-- util -->
			<div class="quick_a type2 mgt4">
				<div class="cont clearfix">
					<a
						href="/?_c=lots&amp;_s=FreeRegistration&amp;_m=FreeRegistrationOfficetel"
						class="util_sale1"><span>분양정보<br>무료등록
					</span></a>
					<!--<a href="javascript:openReceiveWebzine('#lp_layout_webzine');" class="util_sale2"><span>분양정보를 한눈에<br>분양웹진 신청</span></a>-->
					<a href="/?_c=solution&amp;_m=solutiondefault&amp;_a=reps"
						class="util_sale3"><span>트랜드를 읽어내는<br>통계분석솔루션 REPS
					</span></a> <a href="/?_c=solution&amp;_m=solutiondefault&amp;_a=katlas"
						class="util_sale4"><span>국내 최대 데이터<br>융합지역분석서비스
							K-Atlas
					</span></a> <a href="/?_c=lots&amp;_s=saleDB&amp;_m=saleDB" class="util_sale5"><span>분양
							및 입주예정<br>DB구입 문의
					</span></a>
				</div>
			</div>
			<!-- //util -->
			<div class="clearfix mgt4">
				<!-- 핫이슈현장 top 2 -->
				<div class="sale_issue fl">
					<h4 class="h4_type4">
						핫이슈현장<a href="/?_c=lots&amp;_m=lotsnews" class="more_type1 rb">더보기
							<span class="ico_comm_s more1"></span>
						</a>
					</h4>
					<div class="list_thumb_type4">
						<ul id="lotsHotIssueList">
							<li><a
								href="http://www.r114.com/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;num=14288">
									<span class="thumb"><img
										src="https://image.r114.co.kr/images/r114/2014/jo_g20190402.jpg"
										alt=""></span> <strong class="tit">송파대우이안(이스트원)</strong>
									<p class="desc">서울시 송파구 거여동</p>
									<div class="info_wrap2">
										<span>총 624세대 </span><span> 지하2층 </span><span>지상 33층</span>
									</div>
									<div class="info_wrap2">
										분양면적 &nbsp;<span>1666-0887</span>
									</div>
									<div class="info_wrap2">
										<span>분양 2019 </span><span> 세대 624(예정)</span>
									</div>
							</a></li>

							<li><a
								href="http://www.r114.com/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;num=14278">
									<span class="thumb"><img
										src="https://image.r114.co.kr/images/r114/2014/jo_s201809006(1).jpg"
										alt=""></span> <strong class="tit">신마곡지구 송정서희스타힐스</strong>
									<p class="desc">서울시 강서구 방화동</p>
									<div class="info_wrap2">
										<span>총 480세대(예정) </span><span> 5개동</span>
									</div>
									<div class="info_wrap2">
										분양면적 &nbsp;<span>1800-3884</span>
									</div>
									<div class="info_wrap2">
										<span>분양 2018 </span><span> 세대 480(예정)</span>
									</div>
							</a></li>
						</ul>
					</div>
				</div>
				<!-- //핫이슈현장 -->
				<!-- 브랜드PR관 -->
				<div class="brand_pr fr">
					<h4 class="h4_type4">브랜드PR관</h4>
					<div class="aff_company">
						<a href="javascript:" class="logo_company aff7"
							onclick="goBrandPR('http://www.hillstate.co.kr/')">힐스테이트</a> <a
							href="javascript:" class="logo_company aff8"
							onclick="goBrandPR('http://www.dreamapt.co.kr/index.jsp')">꿈에그린</a>
						<a href="javascript:" class="logo_company aff9"
							onclick="goBrandPR('http://www.prugio.com/')">푸르지오</a> <a
							href="javascript:" class="logo_company aff10"
							onclick="goBrandPR('http://www.raemian.co.kr/')">래미안</a> <a
							href="javascript:" class="logo_company aff11"
							onclick="goBrandPR('http://www.khug.or.kr/')">주택도시보증공사</a> <a
							href="javascript:" class="logo_company aff12"
							onclick="goBrandPR('http://www.thesharp.co.kr/')">더샵</a> <a
							href="javascript:" class="logo_company aff13"
							onclick="goBrandPR('http://www.lh.or.kr/')">한국토지주택공사</a> <a
							href="javascript:" class="logo_company aff14"
							onclick="goBrandPR('http://www.hf.go.kr/')">한국주택금융공사</a> <a
							href="javascript:" class="logo_company aff15"
							onclick="goBrandPR('http://www.lottecastle.co.kr/')">롯데캐슬</a>
					</div>
				</div>
				<!-- //브랜드PR관 -->
			</div>
			<ul class="quick_b type2 mgt4">
				<li class="notification"><a href="javascript:"
					id="cmdAlarmSave"> <strong>분양알리미 신청하기</strong>
						<p>분양정보를 보다 편리하게 확인하세요!</p>
				</a></li>
				<li class="ss_guide"><a
					href="/?_c=lots&amp;_s=offerStrategy&amp;_m=lotsOfferGuide"> <strong>청약가이드
							보기</strong>
						<p>청약신청 순서 A에서 Z까지, 신청 전 꼭 확인하세요</p>
				</a></li>
			</ul>
		</div>
	</div>
	<!-- 바디 끝  -->

	<!-- 분양웹진 신청 레이업팝업 -->
	<div id="lp_layout_webzine"></div>

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
					<li><a href="javascript:;"
						onclick="window.open('http://info.r114.com/r114/',  target='_blank');">회사소개</a></li>
					<li><a
						href="/?_c=information&amp;_m=information&amp;_a=UsingTerms">이용약관</a></li>
					<li><a
						href="/?_c=information&amp;_m=information&amp;_a=UsingTermsLBS">위치기반서비스이용약관</a></li>
					<li><a
						href="/?_c=information&amp;_m=information&amp;_a=ContactUs">제휴문의</a></li>
					<li><a
						href="/?_c=information&amp;_m=information&amp;_a=PrivacyPolicy">개인정보처리방침</a></li>
					<li><a
						href="/?_c=information&amp;_m=information&amp;_a=CopyrightStatement"
						target="_blank">저작권규약</a></li>
					<li><a
						href="/?_c=information&amp;_m=information&amp;_a=LiabilityLimit">책임한계
							및 법적고지</a></li>
					<li><a href="javascript:" onclick="opeRejectCrolling();">이메일
							무단수집거부</a></li>
					<li><a href="javascript:" onclick="openEditPolicy();">콘텐츠
							편집 원칙</a></li>
					<li><a href="javascript:" onclick="openInquiry();">고객센터문의</a></li>
				</ul>
				<div class="sitemap">
					<a href="javascript:">sitemap</a>
					<div class="cont">
						<div class="header">
							<strong>SITE MAP</strong><em>부동산114사이트를 한 눈에 보실 수 있습니다.</em>
						</div>
						<div class="sub_memul">
							<h4 class="h4_type4">
								매물/시세<em class="small">부동산114의 다양한 매물을 확인하실 수 있습니다.</em>
							</h4>
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
								</ul></li>

							<li><a
								href="/?_c=service&amp;_s=directdeal&amp;_m=directdeallistPersonal">직거래</a>
								<ul>
									<li><a
										href="/?_c=service&amp;_s=directdeal&amp;_m=directdeallistPersonal">개인매물</a></li>
									<li><a
										href="/?_c=service&amp;_s=directdeal&amp;_m=directdeallistEnterprise">기업매물</a></li>
									<li><a
										href="/?_c=service&amp;_s=directdeal&amp;_m=directdeallistState">국유재산
											사용/매각</a></li>
								</ul></li>
							<li><a href="/?_c=lots">분양</a>
								<ul>
									<li><a href="/?_c=lots&amp;_s=info&amp;_m=infolist">분양정보</a></li>
									<li><a
										href="/?_c=lots&amp;_s=lotsSchedule&amp;_m=lotsSchedule">분양일정</a></li>
									<li><a href="/?_c=lots&amp;_m=lotsnews">분양뉴스</a></li>
									<li><a href="/?_c=lots&amp;_s=lotsScene&amp;_m=lotsScene">분양&amp;현장</a></li>
									<li><a href="/?_c=lots&amp;_m=ipjuinfo">입주지원센터</a></li>
									<li><a
										href="/?_c=lots&amp;_s=offerStrategy&amp;_m=lotsOfferGuide">청약전략</a></li>
									<li><a href="/?_c=lots&amp;_s=Jigu&amp;_m=JiguList">지역개발정보</a></li>
									<!--<li><a href="/?_c=lots&_m=VrCenterlist&_s=VrCenterlist">VR분양관</a></li>-->
								</ul></li>
							<li><a href="/?_c=research">리서치</a>
								<ul>
									<li><a href="/?_c=Research&amp;_m=ReportNews">리포트&amp;뉴스</a></li>
									<li><a href="/?_c=Research&amp;_m=LocalAnalysis">로컬분석</a></li>
									<li><a href="/?_c=Research&amp;_m=KnowHow">상식</a></li>
									<li><a href="/?_c=Research&amp;_m=Column">칼럼</a></li>
									<li><a href="/?_c=Research&amp;_m=ZoomIn">TV속 부동산114</a></li>
								</ul></li>

							<li><a href="/?_c=StartupSupport" target="_blank">창업지원</a>
								<ul>
									<li><a href="/?_c=StartupSupport&amp;_s=StoreInfo"
										target="_blank">상가, 상가건물정보</a></li>
									<li><a href="/?_c=StartupSupport&amp;_s=Franchise"
										target="_blank">프랜차이즈정보</a></li>
									<li><a href="/?_c=StartupSupport&amp;_s=MarketAnalysis"
										target="_blank">상권분석</a></li>
								</ul> <a href="?_c=service&amp;_m=counsel">커뮤니티</a>
								<ul>
									<li><a href="/?_c=service&amp;_m=counsel">부동산상담</a></li>
									<li><a href="/?_c=service&amp;_s=community&amp;tabGubun=1">우리동네,
											단지 이야기</a></li>
									<li><a
										href="/?_c=service&amp;_s=community&amp;pageNo=1&amp;tabGubun=2&amp;sortTag=0">공인중개사
											현장이야기</a></li>
									<li><a href="/?_c=solution&amp;_m=event">이벤트</a></li>
								</ul></li>

							<li><a href="/?_c=service&amp;_m=Auction">경매</a>
								<ul>
									<li><a href="/?_c=service&amp;_m=Auction&amp;tab=1">경매물건조회</a></li>
									<li><a href="/?_c=service&amp;_m=Auction&amp;tab=2">경매STUDY</a></li>
									<li><a href="/?_c=service&amp;_m=Auction&amp;tab=3">경매결과/통계</a></li>
									<li><a href="/?_c=service&amp;_m=Auction&amp;tab=4">경매커뮤니티</a></li>
									<li><a href="/?_c=service&amp;_m=Auction&amp;tab=5">FUN경매</a></li>
									<li><a href="/?_c=service&amp;_m=Auction&amp;tab=6">My페이지</a></li>
								</ul></li>

							<li><a href="/?_c=service&amp;_s=life&amp;_m=Interior">이사/인테리어</a>
								<ul>
									<li><a href="/?_c=service&amp;_s=life&amp;_m=Interior">인테리어견적</a></li>
									<li><a
										href="/?_c=service&amp;_s=life&amp;_m=move&amp;_a=estimate">이사견적</a></li>
									<li><a
										href="/?_c=service&amp;_s=life&amp;_m=move&amp;_a=cleaner">입주청소</a></li>
									<li><a href="/?_c=service&amp;_s=life&amp;_m=moveguide">이사가이드</a></li>
								</ul> <a href="/?_c=service&amp;_s=life&amp;_m=loan">대출</a>
								<ul>
									<li><a href="/?_c=service&amp;_s=life&amp;_m=loan">대출상품조회</a></li>
								</ul></li>



							<li><a href="/?_c=ForPartners">중개회원존</a>
								<ul>
									<li><a href="/?_c=ForPartners&amp;_m=AgentGuide">중개회원
											가입안내</a></li>
									<li><a
										href="/?_c=ForPartners&amp;_m=AgentGuide&amp;_a=RPlus">알플러스
											안내</a></li>
									<li><a href="/?_c=ForPartners&amp;_m=AgentOffice">중개사무소자리</a></li>
									<li><a href="/?_c=ForPartners&amp;_m=AgentWants">구인/구직</a></li>
									<li><a href="/?_c=ForPartners&amp;_m=AgentNotice">중개회원존
											공지사항</a></li>
								</ul></li>
							<li><a href="/?_c=mypage&amp;_m=mypage">마이페이지</a>
								<ul>
									<li><a href="/?_c=mypage&amp;_m=mytrace">나의활동</a></li>
									<li><a href="/?_c=mypage&amp;_m=myconcern">나의관심</a></li>
									<li><a href="/?_c=mypage&amp;_s=myasking&amp;_m=myasking">의뢰내역</a></li>
									<li><a
										href="/?_c=mypage&amp;_s=directdeal&amp;_m=mydirectdeal">직거래</a></li>
									<li><a href="/?_c=mypage&amp;_m=mycoupon">지식나눔쿠폰</a></li>
									<li><a href="/?_c=mypage&amp;_m=notification">알리미서비스</a></li>
									<li><a href="/?_c=mypage&amp;_m=myinquiry">나의문의</a></li>
									<li><a href="/?_c=mypage&amp;_m=mypage&amp;_a=modify">회원정보
											수정</a></li>
								</ul></li>
						</ul>
						<div class="bottom">
							<strong class="appdown_title">모바일로 만나는 부동산114 앱 다운받기</strong> <a
								href="/?_c=information&amp;_m=information&amp;_a=MobileIntroduce&amp;flag=r114"
								class="btn_appdown_114">부동산114 앱 다운받기</a> <a
								href="/?_c=information&amp;_m=information&amp;_a=MobileIntroduce&amp;flag=r114go"
								class="btn_appdown_bdsgo">부동산GO 앱 다운받기</a> <a
								href="/?_c=information&amp;_m=information&amp;_a=MobileIntroduce&amp;flag=bangcall"
								class="btn_appdown_bangcall">방콜 앱 다운받기</a>
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
						<span>부동산114주식회사</span><span>대표: 이성용</span><span>경기도 성남시
							분당구 판교역로241번길 20, 미래에셋벤처타워 10층 (삼평동)</span><span>사업자번호:
							211-86-53421</span><span>통신판매업: 제 2011-경기성남-1356호 <br>팩스:
							031-789-1127
						</span><span>인터넷뉴스서비스등록번호: 경기,자60006 (등록일자: 2010.01.17)</span><span>발행·편집인:
							이성용</span><span>기사배열 책임자: 김은진</span><span>청소년보호책임자: 이연희</span>
					</p>
					<p class="info2">
						<span class="copyright">Copyright © 부동산114. All rights
							reserved</span><span class="tel_set"><span class="tel">고객센터<em>031-789-1114</em></span><span
							class="tel">중개회원가입문의<em>031-707-0114</em></span></span>
					</p>
					<div class="f_site"></div>
				</div>
			</div>
		</div>
		<div class="info_wrap2">
			<div class="w_fix clearfix">
				<ul class="awards">
					<li>부동산 종합정보<br>1위 인증
					</li>
					<li>부동산 종합정보<br>포털부문 1위
					</li>
					<li>Verisign<br>인증사이트
					</li>
				</ul>
				<div class="social_set">
					<a href="http://post.naver.com/my.nhn?memberNo=478443"
						target="_blank" class="naver">네이버</a> <a
						href="https://www.facebook.com/realestate114" target="_blank"
						class="face">페이스북</a> <a href="http://blog.naver.com/r114korea"
						target="_blank" class="blog">네이버블로그</a> <a
						href="https://www.youtube.com/channel/UCXvGtSJUybn-j_grFsWJfuw"
						target="_blank" class="youtube">유튜브</a>
					<!--<a href="https://twitter.com/R114_kr" target="_blank" class="tw">트위터</a>-->
				</div>
			</div>
		</div>
	</div>
	<!-- 푸터  -->


	<!-- 이메일무단수집거부 레이업팝업 -->
	<div id="lp_layout_rejectCrolling" style="display: none">
		<!-- 팝업바디 -->
		<div class="lp_wrap type1" style="width: 680px">
			<div class="inner">
				<div class="lp_con agreement">
					<h4>이메일 무단수집거부</h4>
					<div class="cont">
						<span class="ico_comm_l email_d"></span>
						<div class="bx_guide1">
							<p class="fc_gray3">
								본 웹사이트에 게시된 이메일 주소가 전자우편 수집 프로그램이나 그 밖의 기술적 장치를 이용하여 무단으로 수집되는
								것을 거부하며, 이를 위반시 <strong class="txt_bold">정보통신망법에 의해
									형사처벌</strong>됨을 유념하시기 바랍니다.
							</p>
							<br>
							<div class="fc_gray3 fw4 rt">[게시일 2004년 1월 26일]</div>
						</div>
					</div>
				</div>
				<div class="lp_close">
					<a href="#none" onclick="closeLp('#lp_layout_rejectCrolling')"><span
						class="ico_comm_s close_lp">닫기</span></a>
				</div>
			</div>
		</div>
		<!-- //팝업바디 -->
	</div>
	<!-- //레이업팝업 -->

	<!-- 컨텐츠편집원칙 레이업팝업 -->
	<div id="lp_layout_editPolicy" style="display: none">
		<!-- 팝업바디 -->
		<div class="lp_wrap type1" style="width: 800px">
			<div class="inner">
				<div class="lp_con agreement">
					<h4>콘텐츠 편집 원칙</h4>
					<div class="cont">
						<div class="bx_guide1">
							<strong class="fc_gray3 fw4">부동산114는 콘텐츠 편집에 있어 다음의 원칙을
								공개하고 이를 준수하겠습니다. <br>콘텐츠제공의 사회적 책임을 높이고 편집과정의 투명성을 높여,
								이용자에게 유익한 정보를 제공하도록 힘쓰겠습니다.
							</strong>
						</div>
						<ul class="mgt4">
							<li>1. <strong class="fc_gray3">다양한 정보를 신속하게
									제공하겠습니다. </strong><br> 이용자가 필요로 하는 정보를 신속하게 전달하겠습니다. <br> 신뢰성
								있는 매체를 통해 다양하고 차별화된 정보를 함께 제공하겠습니다. <br> 이용자 제작 콘텐츠를 제공해
								이용자 참여의 장을 확대시키겠습니다.
							</li>
							<li>2. <strong class="fc_gray3">공익적이며 보편적인 콘텐츠제공을
									유지하겠습니다. </strong><br> 특정 계층, 집단, 지역, 종교 등에 편향된 기사는 배제하겠습니다. <br>
								상업적이거나 선정적인 내용의 기사는 지양하고 유익한 정보 전달에 힘쓰겠습니다. <br> 장애인, 비정규직,
								외국인노동자, 여성, 노인, 어린이 등 사회적 약자의 인권을 배려하고 존중하겠습니다.
							</li>
							<li>3. <strong class="fc_gray3">개인정보 보호에 힘쓰겠습니다. </strong><br>
								개인정보와 인격침해 및 명예훼손을 최소화 할수 있도록 편집하겠습니다. <br> 기사나 댓글을 통해
								개인정보가 유출되거나 상업적으로 이용되지 않도록 모니터 의무를 하겠습니다. <br> 콘텐츠서비스에 대한
								궁금점 및 개선사항 등의 이용자 의견을 수렴하고, 답변을 드리는 고객센터를 상시 <br> 운영하겠습니다.
							</li>
							<li>4. <strong class="fc_gray3">정치적 중립을 지키겠습니다. </strong><br>
								정치적으로 특정계층의 이해관계의 입장을 지양하고 균형잡힌 정보를 제공하겠습니다.
							</li>
						</ul>
					</div>
				</div>
				<div class="lp_close">
					<a href="#none" onclick="closeLp('#lp_layout_editPolicy')"><span
						class="ico_comm_s close_lp">닫기</span></a>
				</div>
			</div>
		</div>
		<!-- //팝업바디 -->
	</div>
	<!-- //레이업팝업 -->






	<script type="text/javascript">

	var calendarDate;
	var lotsScheduleData;
	var loadFirst = true;

	var SEL_LOTS_ADDR1 = "";
	var SEL_LOTS_ADDR2 = "";
	var SEL_LOTS_ESTATE = "";

	$(document).ready(function() {

		getLotsNewsList();

		getTrendsList();

		getLotsRecommendList();

		getLotsScene();

		getLotsHotissueList();

		calendarDate = todayToDateString().substr(0, 6) + "01";
		setLotsCalendar(todayToDateString());

		getFutureLotsScheduleDate( getLotsScheduleInfo );
		//getLotsScheduleInfo( todayToDateString() );

		$("#cmdPrevDate").on("click", function() {
			calendarDate = getYearMonth(calendarDate, "prev") +  "01";
			setLotsCalendar(calendarDate);
		});

		$("#cmdNextDate").on("click", function() {
			calendarDate = getYearMonth(calendarDate, "next") +  "01";
			setLotsCalendar(calendarDate);
		});

		// 분양알리미 신청하기
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

		// 분양정보 더보기
		$("#cmdInfoList").on("click", function() {
		
			goLotsInfoListPage();
			
		});
	});

	/* 이전달, 다음달 */
	function getYearMonth(dt, way) {

		var year = parseInt(dt.substr(0,4));
		var month = parseInt(dt.substr(4,2));
		var day = parseInt(dt.substr(6,2));

		if (way == "prev") {
			month = month - 1;
		}
		else {
			month = month + 1;
		}

		if (month < 1) {
			year--;
			month = 12;
		}
		else if (month > 12) {
			year++;
			month = 1;
		}

		return year.toString() + pad(month, 2);
	}

	function todayToDateString() {
		var today = new Date();
		var year = today.getFullYear();
		var month = today.getMonth()  +1;
		var day = today.getDate();

		return pad(year, 4) + pad(month, 2) + pad(day, 2)
	}

	/* 유형 선택 */
	function changeEstateType(kind) {

		$("#estateType").find("a").each(function(index) {
			$(this).removeClass("selected");
			if (index == (kind-1)) {
				$(this).addClass("selected");
			}
		});

		// 분양정보 조회
		getLotsByImageMap(kind, "", "");

	}

	/* 분양웹진 신청 레이어 */
	function openReceiveWebzine(container) {

		getUserInfoServer(function(result, data){
				if (result == false){
					if (confirm(ALERT_REQUEST_LOGIN)){
						fn_loginDiv();
						return;
					}
					else{
						return false;
					}
				}
				else
				{
					var formData = {container: container};

					$.ajax({
						url : "/?_c=lots&_s=webzine&_m=webzine",
						type: "POST",
						data : formData,
						success: function(data, textStatus, jqXHR){
							var res = data.split("<!--@#$ INFO AREA $#@-->");
							if (data.length > 0) { // 자료가 있을때.
								$(container).html(res[0]);
								openLp(container);				
							}
							else { // 자료가 없을때.
								// $('#lp_layout2').html("");
							}
						},
						error: function (jqXHR, textStatus, errorThrown){
					 		// 	alert("code:"+jqXHR.status+"\n"+"message:"+jqXHR.responseText+"\n"+"error:"+errorThrown);
						}
					});
				}
			});
	}

	/* 분양웹진 신청 등록 */
	function receiveWebzine() {

		$.ajax({
			url : "/?_c=lots&_s=webzine&_m=webzine&_a=ReceiveWebzine",
			type: "POST",
			//data : formData,
			success: function(data, textStatus, jqXHR){
				var res = data.split("<!--@#$ INFO AREA $#@-->");
				if (data.length > 0) { // 자료가 있을때.
					alert("정상적으로 신청되었습니다");
					closeLp("#lp_layout_webzine");
				}
				else { // 자료가 없을때.
					// $('#lp_layout2').html("");
				}
			},
			error: function (jqXHR, textStatus, errorThrown){
		 		// 	alert("code:"+jqXHR.status+"\n"+"message:"+jqXHR.responseText+"\n"+"error:"+errorThrown);
			}
		});

	}

	/* 분양정보 조회  */
	function getLotsByImageMap(estateType, addr1, addr2) {

		var kind, metro, county, clickMode;

		if (estateType == "") {
			clickMode = "map";
			$("#estateType").find("a").each(function(index) {
				if ($(this).hasClass("selected")) {
					kind = index+1;
				}
			});
		}
		else {
			kind = estateType;
			clickMode = "estate";
		}

		switch ( kind ) {
			case 1 : kind = "아파트"; break;
			case 2 : kind = "오피스텔"; break;
			case 3 : kind = "도시형생활주택"; break;
			case 4 : kind = "상가"; break;
			case 5 : kind = "아파트형공장"; break;
			default : kind= "";
		}

		if (addr1 == "") {
			 metro = $('#frameMap').contents().find('#addr1').val();
			 county = $('#frameMap').contents().find('#addr2').val();
		}
		else {
			metro = addr1;
			county = addr2;
		}
		
		SEL_LOTS_ADDR1 = metro;
		SEL_LOTS_ADDR2 = county;

		if (estateType == "") {
			$("#estateType").find("a").each(function(index) {
				if ($(this).hasClass("selected")) {
					SEL_LOTS_ESTATE = index+1;
				}
			});
		}
		else {
			SEL_LOTS_ESTATE = estateType;
		}	
		
		if (!loadFirst && clickMode == "map") {
			goLotsInfoListPage();
		}
		else {
			if (kind != "" && kind != "undefined" && metro != "" && metro != "undefined") 	{
				var formData = { "addr1": metro, "addr2": county, "estateType": kind };
	
				$.ajax({
					url : "/?_c=lots&_m=lotsDefault&_a=lotsInfoListByImageMap.ajax",
					type: "POST",
					data : formData,
					success: function(data, textStatus, jqXHR){
						if (jQuery.trim(data).length > 0) { // 자료가 있을때.
							$("#saleInfoList").html(data);
						}
						else { // 자료가 없을때.
							$("#saleInfoList").html("<li class='result_nodata'>분양정보가 없습니다.</li>");
						}
									
					},
					error: function (jqXHR, textStatus, errorThrown){
				 		$("#saleInfoList").html("<li class='result_nodata'>분양정보가 없습니다.</li>");
					}
				});
			}		
		}
		
		loadFirst = false;
		
	}

	/* 분양단지 상세 조회 */
	function goLotsInfoDetailPage(typeGubun, compelxCd, owner) {
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

	/* 분양 뉴스 */
	function getLotsNewsList() {

		$.ajax({
			url : "/?_c=lots&_m=lotsDefault&_a=lotsNewsList.ajax",
			type: "POST",
			//data : formData,
			success: function(data, textStatus, jqXHR){
				if (jQuery.trim(data).length > 0) { // 자료가 있을때.
					$("#lotsNewsList").html(data);
				}
				else { // 자료가 없을때.
					$("#lotsNewsList").html("<li class='result_nodata'>뉴스정보가 없습니다.</li>");
				}
			},
			error: function (jqXHR, textStatus, errorThrown){
		 		$("#lotsNewsList").html("<li class='result_nodata'>뉴스정보가 없습니다.</li>");
			}
		});

	}

	/* 업계동향 */
	function getTrendsList() {

		$.ajax({
			url : "/?_c=lots&_m=lotsDefault&_a=LotsTrendsList.ajax",
			type: "POST",
			//data : formData,
			success: function(data, textStatus, jqXHR){
				if (jQuery.trim(data).length > 0) { // 자료가 있을때.
					$("#list_trends").html(data);
				}
				else { // 자료가 없을때.
					$("#list_trends").html("<li class='result_nodata'>정보가 없습니다.</li>");
				}
			},
			error: function (jqXHR, textStatus, errorThrown){
		 		$("#list_trends").html("<li class='result_nodata'>정보가 없습니다.</li>");
			}
		});

	}

	/* 추천분양현장 */
	function getLotsRecommendList() {

		$.ajax({
			url : "/?_c=lots&_m=lotsDefault&_a=lotsRecommendList.ajax",
			type: "POST",
			//data : formData,
			success: function(data, textStatus, jqXHR){
				if (jQuery.trim(data).length > 0) { // 자료가 있을때.
					$("#lotsRecommendList").html(data);
				}
				else { // 자료가 없을때.
					$("#lotsRecommendList").html("<li class='result_nodata'>정보가 없습니다.</li>");
				}
			},
			error: function (jqXHR, textStatus, errorThrown){
		 		$("#lotsRecommendList").html("<li class='result_nodata'>정보가 없습니다.</li>");
			}
		});

	}

	/* 분양현장 */
	function getLotsScene() {

		$.ajax({
			url : "/?_c=lots&_m=lotsDefault&_a=lotsSceneList.ajax",
			type: "POST",
			//data : formData,
			success: function(data, textStatus, jqXHR){
				if (jQuery.trim(data).length > 0) { // 자료가 있을때.
					$("#lotsSceneList").html(data);
				}
				else { // 자료가 없을때.
					$("#lotsSceneList").html("<li class='result_nodata'>정보가 없습니다.</li>");
				}
			},
			error: function (jqXHR, textStatus, errorThrown){
		 		$("#lotsSceneList").html("<li class='result_nodata'>정보가 없습니다.</li>");
			}
		});

	}

	/* 분양일정 달력 기본 설정  */
	function setLotsCalendar(dt) {

		var mm, dd, week, weekofDay, dateView;

		week = new Array('일', '월', '화', '수', '목', '금', '토');

		var year = dt.substr(0,4);
		var month = dt.substr(4,2);
		var day = dt.substr(6,2);
		var date = new Date(year, month-1, day);

		mm = parseInt(dt.substr(4, 2));
		dd = parseInt(dt.substr(6, 2));
		weekofDay = week[date.getDay()];

//		dateView = "&lt;"  + mm + "월 " + dd + "일(" + weekofDay +") 분양일정"  + "&gt; ";
//		$("#lotsScheduleDate").html(dateView);

		$.when(
			getLotsScheduleCount(dt)
		).done(function() {
			makeCalendar(dt);
		});

	}

	/* 달력(월간) */
	function makeCalendar(dt) {

		var calendar;
		var year = dt.substr(0,4);
		var month = dt.substr(4,2);
		var day = dt.substr(6,2);
		var todate = todayToDateString();

		// 현재 년, 월의 1일의 요일
		var theDate = new Date(year, month-1, 1);
		var theDay = theDate.getDay();

		var last = [31,28,31,30,31,30,31,31,30,31,30,31];
		// 윤년
		if (year%4 == 0 && (year%100 !=0 || year%400 != 0)) {
		    last[1] = 29;
		}
		// 현재 월의 마지막 일이 며칠인지.
		var lastDate = last[month-1];


		// 현재 월의 달력에 필요한 행의 개수
		// theDay(빈 칸의 수), lastDate(월의 전체 일수)
		var row = Math.ceil((theDay+lastDate)/7);

		calendar  = "<tr>";
		calendar += "<th>일</th>";
		calendar += "<th>월</th>";
		calendar += "<th>화</th>";
		calendar += "<th>수</th>";
		calendar += "<th>목</th>";
		calendar += "<th>금</th>";
		calendar += "<th>토</th>";
		calendar += "</tr>";

		var dateNum = 1 - theDay;

		for(var i = 0; i < row; i++) {
			calendar += '			<tr>';
			for(var j = 0; j < 7; j++, dateNum++) {
				if( dateNum < 1 || dateNum > lastDate ) {
					calendar += '				<td> </td>';
					continue;
				}

				var isToday = false;

				if (parseInt(year) == parseInt(todate.substr(0,4)) && parseInt(month) == parseInt(todate.substr(4, 2)) && parseInt(dateNum) == parseInt(todate.substr(6, 2)) ) {
					// {"날짜":"20171018","오픈수":"0","공고수":"0","청약수":"0","발표수":"1","계약수":"0","건수":"1"}
					$.each (lotsScheduleData.rows, function(index, entry) {
						if ( (year + month + pad(dateNum,2)) == entry["날짜"]  &&  parseInt(entry["건수"]) > 0 ) {
							isToday = true;
						}
					});
					if ( isToday == true ) {
						calendar += '				<td><span class="today"><a href="javascript:getLotsScheduleInfo(\'' +  (year + month + pad(dateNum,2))  + '\')\"><span>' + dateNum + '</span></a></span></td>';
					}
					else {
						calendar += '				<td><span class="today">' + dateNum + '</span></td>';
					}
				}
				else {
					$.each (lotsScheduleData.rows, function(index, entry) {
						if ( (year + month + pad(dateNum,2)) == entry["날짜"]  &&  parseInt(entry["건수"]) > 0 ) {
							isToday = true;
						}
					});
					if (isToday) {
						if (j < 1) {
							calendar += '				<td><a href="javascript:getLotsScheduleInfo(\'' +  (year + month + pad(dateNum,2))  + '\')\"><span style="color:red">' + dateNum + '</span></a></td>';
						}
						else {
							calendar += '				<td><a href="javascript:getLotsScheduleInfo(\'' +  (year + month + pad(dateNum,2))  + '\')\"><span>' + dateNum + '</span></a></td>';
						}
					}
					else {
						 if (j < 1) {
							calendar += '				<td><span style="color:red">' + dateNum + '</span></td>';
						}
						else {
							calendar += '				<td><span>' + dateNum + '</span></td>';
						}
					}
				}
			}
			calendar += '			</tr>';
		}

		$(".tbl_calendar").find("thead").html(calendar);

		$("#todayYearMonth").html(year + ". " + month)

	}

	/*  분양일정이 있는 가장 가까운 시일  */
	function getFutureLotsScheduleDate( fnc ) {

		$.ajax({
			url : "/?_c=lots&_m=lotsDefault&_a=futureLotsScheduleDate.ajax",
			type: "POST",
			success: function(data, textStatus, jqXHR){
				if (jQuery.trim(data).length > 0) { // 자료가 있을때.
					fnc(data);
					//$("#lotsScheduleList").html(data);
				}
				else { // 자료가 없을때.
					$("#lotsScheduleList").html("<li class='result_nodata'>분양일정이 없습니다.</li>");
				}
			},
			error: function (jqXHR, textStatus, errorThrown){
		 		$("#lotsScheduleList").html("<li class='result_nodata'>분양일정이 없습니다.</li>");
			}
		});
	}

	/* 분양일정 날짜별 분양정보 */
	var getLotsScheduleInfo = function(dt) {

		var formData = {searchDate: dt};

		$.ajax({
			url : "/?_c=lots&_m=lotsDefault&_a=lotsScheduleList.ajax",
			type: "POST",
			data : formData,
			success: function(data, textStatus, jqXHR){
				if (jQuery.trim(data).length > 0) { // 자료가 있을때.
					$("#lotsScheduleList").html(data);
				}
				else { // 자료가 없을때.
					$("#lotsScheduleList").html("<li class='result_nodata'>분양일정이 없습니다.</li>");
				}
			},
			error: function (jqXHR, textStatus, errorThrown){
		 		$("#lotsScheduleList").html("<li class='result_nodata'>분양일정이 없습니다.</li>");
			}
		});

		var mm, dd, week, weekofDay, dateView;

		week = new Array('일', '월', '화', '수', '목', '금', '토');

		var year = dt.substr(0,4);
		var month = dt.substr(4,2);
		var day = dt.substr(6,2);
		var date = new Date(year, month-1, day);

		mm = parseInt(dt.substr(4, 2));
		dd = parseInt(dt.substr(6, 2));
		weekofDay = week[date.getDay()];

		dateView = "&lt;"  + mm + "월 " + dd + "일(" + weekofDay +") 분양일정"  + "&gt; ";
		$("#lotsScheduleDate").html(dateView);

	}

	/* 분양일정 월별 분양건수 */
	function getLotsScheduleCount(date) {

		var formData = {searchDate: date};

		return $.ajax({
			url : "/?_c=lots&_m=lotsDefault&_a=lotsScheduleCount.ajax",
			type: "POST",
			data : formData,
			dataType:"json",
			success: function(data, textStatus, jqXHR){
				var list = eval(data);
				if (jQuery.trim(list.result) == "OK") {
					lotsScheduleData = eval(data);
				}
				else { // 자료가 없을때.
					//$("#lotsScheduleList").html("<li class='result_nodata'>분양일정이 없습니다.</li>");
				}
			},
			error: function (jqXHR, textStatus, errorThrown){
		 		//$("#lotsScheduleList").html("<li class='result_nodata'>분양일정이 없습니다.</li>");
			}
		});

	}

	/* 핫이슈현장 */
	function getLotsHotissueList() {

		$.ajax({
			url : "/?_c=lots&_m=lotsDefault&_a=lotsHotIssueList.ajax",
			type: "POST",
			//data : formData,
			success: function(data, textStatus, jqXHR){
				if (jQuery.trim(data).length > 0) { // 자료가 있을때.
					$("#lotsHotIssueList").html(data);
				}
				else { // 자료가 없을때.
					$("#lotsHotIssueList").html("<li class='result_nodata'>정보가 없습니다.</li>");
				}
			},
			error: function (jqXHR, textStatus, errorThrown){
		 		$("#lotsHotIssueList").html("<li class='result_nodata'>정보가 없습니다.</li>");
			}
		});

	}

	/* 브랜드PR관  */
	function goBrandPR(url) {

		window.open(url, target="_blank");

	}
	
	/* 분양정보 페이지로 이동  */
	function goLotsInfoListPage() {
	
		$.QueryString._c = 'lots';
		$.QueryString._m = 'infolist';
		
		$.Hash.page = 1;
		$.Hash.metro = SEL_LOTS_ADDR1;
		$.Hash.county = SEL_LOTS_ADDR2;
		$.Hash.tab = SEL_LOTS_ESTATE;
	
		location.href = $.QueryStringSerialize() + $.HashSerialize();
	
	}	
	

</script>
	<iframe name="easyXDM_Kakao_default4665_provider"
		id="easyXDM_Kakao_default4665_provider"
		src="https://kapi.kakao.com/cors/?xdm_e=https%3A%2F%2Fwww.r114.com&amp;xdm_c=default4665&amp;xdm_p=1"
		frameborder="0" style="position: absolute; top: -2000px; left: 0px;"></iframe>
	<div id="fb-root" class=" fb_reset">
		<div
			style="position: absolute; top: -10000px; width: 0px; height: 0px;">
			<div>
				<iframe name="fb_xdm_frame_https" frameborder="0"
					allowtransparency="true" allowfullscreen="true" scrolling="no"
					allow="encrypted-media" id="fb_xdm_frame_https" aria-hidden="true"
					title="Facebook Cross Domain Communication Frame" tabindex="-1"
					src="https://staticxx.facebook.com/connect/xd_arbiter/r/d_vbiawPdxB.js?version=44#channel=f1c1634fce6373c&amp;origin=https%3A%2F%2Fwww.r114.com"
					style="border: none;"></iframe>
			</div>
			<div></div>
		</div>
	</div>
</body>
</html>