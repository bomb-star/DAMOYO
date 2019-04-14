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
	<div id="body_layout">
		<div class="body_wrap">
			<!-- 타이틀 시작 -->
			<div class="title_wrap">
				<div class="title">
					<h3>입주지원센터</h3>
				</div>
				<div class="location">
					<ul>
						<li><a href="/">홈</a></li>
						<li><a href="/?_c=lots">분양</a></li>
						<li><a href="/?_c=lots&amp;_m=ipjuinfo">입주지원센터</a></li>
						<li>이달의 입주정보</li>
					</ul>
				</div>
			</div>
			<!-- 타이틀 끝 -->
			<!-- 컨텐츠 시작 -->
			<div class="contents_wrap">

				<ul class="list_tab type3">
					<li class="on"><a>이달의 입주정보<span class="skip">현재메뉴</span></a></li>
					<li><a href="/?_c=lots&amp;_m=ipjuinfo&amp;_a=ipjunews">입주가이드</a></li>
					<li><a href="/?_c=lots&amp;_m=ipjuinfo&amp;_a=ipjucheck">입주체크리스트</a></li>
				</ul>

				<form name="ipjuSearch" id="ipjuSearch" action="/" method="GET">
					<input type="hidden" name="_c" value="lots"> <input
						type="hidden" name="_m" value="ipjuinfo"> <input
						type="hidden" name="type_g" value=""> <input type="hidden"
						name="ArrType_g" value=""> <input type="hidden"
						name="orderby" value="입주시기"> <input type="hidden"
						name="ordersort" value="desc"> <input type="hidden"
						name="page" value="1"> <input type="hidden" name="addr1"
						value="서울특별시"> <input type="hidden" name="addr2" value="">
					<input type="hidden" name="addr3" value=""> <input
						type="hidden" name="minDate" value="201810"> <input
						type="hidden" name="maxDate" value="201910">

					<!-- 기간 -->
					<div class="srch_deal_wrap srch_period">
						<div class="period_setting">
							<button type="button" class="btn_cal" onclick="fn_go('-')">
								<span class="ico_comm_s pv_cal">이전</span>
							</button>

							<span class="inp_slt" style="width: 80px; margin-right: 6px;">
								<select title="연도 선택" name="year" id="ipjuYear"
								style="display: none;">
									<option value="2018">2018</option>
									<option value="2019" selected="">2019</option>
							</select><span tabindex="0" id="ipjuYear-button" role="combobox"
								aria-expanded="false" aria-autocomplete="list"
								aria-owns="ipjuYear-menu" aria-haspopup="true" title="연도 선택"
								class="ui-selectmenu-button ui-selectmenu-button-closed ui-corner-all ui-button ui-widget"><span
									class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span><span
									class="ui-selectmenu-text">2019</span></span>
							</span> 년 <span class="inp_slt"
								style="width: 80px; margin: 0 6px 0 9px;"> <select
								title="월 선택" name="month" id="ipjuMonth" style="display: none;">
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4" selected="">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
							</select><span tabindex="0" id="ipjuMonth-button" role="combobox"
								aria-expanded="false" aria-autocomplete="list"
								aria-owns="ipjuMonth-menu" aria-haspopup="true" title="월 선택"
								class="ui-selectmenu-button ui-selectmenu-button-closed ui-corner-all ui-button ui-widget"><span
									class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span><span
									class="ui-selectmenu-text">4</span></span>
							</span> 월
							<button type="button" class="btn_cal" onclick="fn_go('+')">
								<span class="ico_comm_s nx_cal">다음</span>
							</button>
						</div>
						<p>
							<span class="fc_blue">이달의 입주정보를 한달단위</span>로 넘겨보세요. <br>입주정보는
							현재시점으로 6개월간만 서비스하고 있습니다.
						</p>
					</div>
					<!-- //기간 -->

					<!-- 검색 및 옵션 -->
					<div class="srch_deal_wrap srch_sale_wrap2">
						<div class="option_item">
							<span class="option_tit">지역</span> <span
								class="inp_wrap btn_type">
								<button type="button" class="btn_srchbox">
									<span class="ico_comm_s search">검색</span>
								</button> <input type="text" class="inp_txt" name="addr1search"
								onclick="search_CreateAddrHtml('body', this.value);"
								placeholder="시,구,동 등을 입력하세요."
								style="width: 308px; margin-right: 0;" value="서울특별시">
							</span>
							<div id="moveAutoFillAddressDiv"
								style="display: none; position: absolute; height: 150px; width: 500px; border: 1px solid #003366; z-index: 1; background-color: #FFFFFF; overflow-y: auto;"></div>
						</div>

						<div class="option_item">
							<strong class="option_tit">종류</strong> <span class="sort_wrap3">
								<a href="javascript:;" onclick="fn_type('')"
								class="txt_sel selected">전체</a> <a href="javascript:;"
								onclick="fn_type('A')" class="txt_sel ">아파트</a> <a
								href="javascript:;" onclick="fn_type('C')" class="txt_sel ">오피스텔</a>
								<a href="javascript:;" onclick="fn_type('D')" class="txt_sel ">도시형생활주택</a>
							</span>
						</div>
					</div>
					<!-- //검색 및 옵션 -->
				</form>

				<!-- sort -->
				<div class="sort_wrap mgt3">
					<a href="javascript:;" onclick="fn_orderby('입주시기')"
						class="selected down">입주시기순</a> <a href="javascript:;"
						onclick="fn_orderby('총세대수')" class=" ">총세대수순</a>
					<div class="total_cnt">
						분양단지 총 <span id="ipjuListTotal">14</span>건
					</div>
				</div>
				<!-- //sort -->
				<!-- table -->
				<table class="tbl_type1 type11">
					<caption>분양단지 안내</caption>
					<colgroup>
						<col style="width: 13%;">
						<col style="width: 27%;">
						<col style="width: 14%;">
						<col style="width: 14%;">
						<col style="width: 18%;">
						<col style="width: 14%;">
					</colgroup>
					<thead>
						<tr>
							<th scope="col">종류</th>
							<th scope="col">단지명/소재지</th>
							<th scope="col">공급/전용(㎡)</th>
							<th scope="col">분양가(만원)</th>
							<th scope="col">가구수</th>
							<th scope="col">분양/입주시기</th>
						</tr>
					</thead>
					<tbody class="list_ipju">
						<tr>
							<td><span class="lf">도시형생활주택<br>민간분양
							</span></td>
							<td class="lf"><a href="javascript:"
								onclick="goDetail(&quot;D&quot;, &quot;Q20180126110019&quot;);"
								class="link_s"><span class="fc_blue">답십리파크팰리스</span><br>동대문구
									답십리동</a></td>
							<td><span class="lf">31A/24A<br>32B/25B<br>30C/23C<br>32D/25D<br>32E/25E<br></span></td>
							<td><span class="lf">미정<br>미정<br>미정<br>미정<br>미정<br></span></td>
							<td><span class="lf">4<br>4<br>4<br>4<br>4<br></span></td>
							<td>2018.01 분양<br>2019.04 입주
							</td>
						</tr>
						<tr class="even">
							<td colspan="4"></td>
							<td class="fc_gray6">총 가구수 <em class="fc_black">20 </em>가구
							</td>
							<td></td>
						</tr>
						<tr>
							<td><span class="lf">도시형생활주택<br>민간분양
							</span></td>
							<td class="lf"><a href="javascript:"
								onclick="goDetail(&quot;D&quot;, &quot;Q20170421152503&quot;);"
								class="link_s"><span class="fc_blue">보광타워</span><br>동대문구
									답십리동</a></td>
							<td><span class="lf">25A/14A<br>27B/16B<br>38D/22D<br>38E/22E<br>41C/24C<br>41F/24F<br></span></td>
							<td><span class="lf">13,190<br>13,795<br>21,225<br>21,190<br>22,205<br>22,305<br></span></td>
							<td><span class="lf">72<br>16<br>8<br>24<br>8<br>32<br></span></td>
							<td>2017.03 분양<br>2019.04 입주
							</td>
						</tr>
						<tr class="even">
							<td colspan="4"></td>
							<td class="fc_gray6">총 가구수 <em class="fc_black">160 </em>가구
							</td>
							<td></td>
						</tr>
						<tr>
							<td><span class="lf">도시형생활주택<br>민간분양
							</span></td>
							<td class="lf"><a href="javascript:"
								onclick="goDetail(&quot;D&quot;, &quot;Q20170414105932&quot;);"
								class="link_s"><span class="fc_blue">청계센트럴큐브</span><br>성동구
									상왕십리동</a></td>
							<td><span class="lf">33A/19A<br>33A1/19A1<br>33A2/19A2<br>42B/24B<br>40B1/23B1<br></span></td>
							<td><span class="lf">26,300<br>26,300<br>26,300<br>30,500<br>29,500<br></span></td>
							<td><span class="lf">15<br>15<br>15<br>15<br>15<br></span></td>
							<td>2017.04 분양<br>2019.04 입주
							</td>
						</tr>
						<tr class="even">
							<td colspan="4"></td>
							<td class="fc_gray6">총 가구수 <em class="fc_black">75 </em>가구
							</td>
							<td></td>
						</tr>
						<tr>
							<td><span class="lf">도시형생활주택<br>민간분양
							</span></td>
							<td class="lf"><a href="javascript:"
								onclick="goDetail(&quot;D&quot;, &quot;Q20180807103154&quot;);"
								class="link_s"><span class="fc_blue">항동하버라인(10단지)</span><br>구로구
									항동</a></td>
							<td><span class="lf">46A/29A<br>46AS/29AS<br>61A/39A<br>61AS/39AS<br></span></td>
							<td><span class="lf">미정<br>미정<br>미정<br>미정<br></span></td>
							<td><span class="lf">176<br>19<br>91<br>11<br></span></td>
							<td>2018.04 분양<br>2019.04 입주
							</td>
						</tr>
						<tr class="even">
							<td colspan="4"></td>
							<td class="fc_gray6">총 가구수 <em class="fc_black">297 </em>가구
							</td>
							<td></td>
						</tr>
						<tr>
							<td><span class="lf">도시형생활주택<br>민간분양
							</span></td>
							<td class="lf"><a href="javascript:"
								onclick="goDetail(&quot;D&quot;, &quot;Q20180807103431&quot;);"
								class="link_s"><span class="fc_blue">항동하버라인(11단지)</span><br>구로구
									항동</a></td>
							<td><span class="lf">47A/29A<br>47AS/29AS<br>62A/39A<br>62AS/39AS<br></span></td>
							<td><span class="lf">미정<br>미정<br>미정<br>미정<br></span></td>
							<td><span class="lf">158<br>24<br>90<br>4<br></span></td>
							<td>2018.04 분양<br>2019.04 입주
							</td>
						</tr>
						<tr class="even">
							<td colspan="4"></td>
							<td class="fc_gray6">총 가구수 <em class="fc_black">276 </em>가구
							</td>
							<td></td>
						</tr>
						<tr>
							<td><span class="lf">도시형생활주택<br>민간분양
							</span></td>
							<td class="lf"><a href="javascript:"
								onclick="goDetail(&quot;D&quot;, &quot;Q20180807102705&quot;);"
								class="link_s"><span class="fc_blue">항동하버라인(9단지)</span><br>구로구
									항동</a></td>
							<td><span class="lf">47A/29A<br>47AS/29AS<br>62A/39A<br>62AS/39AS<br></span></td>
							<td><span class="lf">미정<br>미정<br>미정<br>미정<br></span></td>
							<td><span class="lf">176<br>23<br>92<br>7<br></span></td>
							<td>2018.04 분양<br>2019.04 입주
							</td>
						</tr>
						<tr class="even">
							<td colspan="4"></td>
							<td class="fc_gray6">총 가구수 <em class="fc_black">298 </em>가구
							</td>
							<td></td>
						</tr>
						<tr>
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a href="javascript:"
								onclick="goDetail(&quot;A&quot;, &quot;A01211401200015&quot;);"
								class="link_s"><span class="fc_blue">용산롯데캐슬센터포레</span><br>용산구
									효창동</a></td>
							<td><span class="lf">56/38<br>58/40<br>73/50<br>81A/59A<br>82B/59B<br>82C/59C<br>113A/84A<br>112B/84B<br>117C/84C<br>151/110<br></span></td>
							<td><span class="lf">미정<br>미정<br>미정<br>57,630<br>57,630<br>55,370<br>78,970<br>79,920<br>78,340<br>87,500<br></span></td>
							<td><span class="lf">39<br>33<br>10<br>74<br>80<br>24<br>92<br>96<br>18<br>12<br></span></td>
							<td>2016.11 분양<br>2019.04 입주
							</td>
						</tr>
						<tr class="even">
							<td colspan="4"></td>
							<td class="fc_gray6">총 가구수 <em class="fc_black">478 </em>가구
							</td>
							<td></td>
						</tr>
						<tr>
							<td><span class="lf">오피스텔<br>민간분양
							</span></td>
							<td class="lf"><a href="javascript:"
								onclick="goDetail(&quot;C&quot;, &quot;G01020039080001&quot;);"
								class="link_s"><span class="fc_blue">강일테라우드</span><br>강동구
									강일동</a></td>
							<td><span class="lf">-/59A<br>-/59B<br></span></td>
							<td><span class="lf">미정<br>미정<br></span></td>
							<td><span class="lf">27<br>9<br></span></td>
							<td>2017.12 분양<br>2019.04 입주
							</td>
						</tr>
						<tr class="even">
							<td colspan="4"></td>
							<td class="fc_gray6">총 가구수 <em class="fc_black">36 </em>가구
							</td>
							<td></td>
						</tr>
						<tr>
							<td><span class="lf">오피스텔<br>민간분양
							</span></td>
							<td class="lf"><a href="javascript:"
								onclick="goDetail(&quot;C&quot;, &quot;G01060019810003&quot;);"
								class="link_s"><span class="fc_blue">군자아스하임</span><br>광진구
									중곡동</a></td>
							<td><span class="lf">-/16A<br>-/16B<br>-/27<br></span></td>
							<td><span class="lf">미정<br>미정<br>미정<br></span></td>
							<td><span class="lf">28<br>50<br>1<br></span></td>
							<td>2017.08 분양<br>2019.04 입주
							</td>
						</tr>
						<tr class="even">
							<td colspan="4"></td>
							<td class="fc_gray6">총 가구수 <em class="fc_black">79 </em>가구
							</td>
							<td></td>
						</tr>
						<tr>
							<td><span class="lf">오피스텔<br>민간분양
							</span></td>
							<td class="lf"><a href="javascript:"
								onclick="goDetail(&quot;C&quot;, &quot;G01110038680004&quot;);"
								class="link_s"><span class="fc_blue">답십리파크팰리스</span><br>동대문구
									답십리동</a></td>
							<td><span class="lf">46A/36A<br>46C/36C<br>47B/36B<br></span></td>
							<td><span class="lf">26,700<br>26,200<br>26,500<br></span></td>
							<td><span class="lf">20<br>10<br>20<br></span></td>
							<td>2018.01 분양<br>2019.04 입주
							</td>
						</tr>
						<tr class="even">
							<td colspan="4"></td>
							<td class="fc_gray6">총 가구수 <em class="fc_black">50 </em>가구
							</td>
							<td></td>
						</tr>
					</tbody>
				</table>
				<!-- //table -->
				<!-- paging -->
				<div class="paging">
					<strong><span class="skip">현재페이지</span>1</strong><a
						href="javascript:goPage(2, 1);">2</a>
				</div>
				<!-- //paging -->

				<!--분양 바디 하단 광고 -->
				<div>
					<iframe src="" scrolling="no" marginheight="0" marginwidth="0"
						frameborder="0" width="100%" height="90px"
						style="border: 0; margin: 0; padding-top: 0px"></iframe>
				</div>
				<!--//분양 바디 하단 광고 -->

			</div>
			<!-- 컨텐츠 끝 -->
			<!-- 라이트 시작 -->
			<div class="right_wrap" id="divLotsRight"></div>
			<!-- 라이트 끝 -->
		</div>
	</div>
	<!-- 바디 시작 -->


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






	<script type="text/javascript" src="/W1/js/Lots/Lots.js"></script>
	<script type="text/javascript" src="/W1/js/PageUtil.js"></script>
	<script type="text/javascript" src="/W1/js/search.js"></script>

	<script type="text/javascript">
var util1 = new PageUtil();
var __loadingString = "<div class=\"loding_wrap on\"><img src=\"https://image.r114.co.kr/W1/images/sub/loding.gif\" alt=\"로딩중\"></div>";

var page = isEmpty(getParameterByName("page")) ? "1" : decodeURI(getParameterByName("page")) ;
var type_g = isEmpty(getParameterByName("type_g")) ? "" : decodeURI(getParameterByName("type_g")) ;
var ArrType_g = isEmpty(getParameterByName("ArrType_g")) ? "" : decodeURI(getParameterByName("ArrType_g")) ;
var orderby = isEmpty(getParameterByName("orderby")) ? "입주시기" : decodeURI(getParameterByName("orderby")) ;
var ordersort = isEmpty(getParameterByName("ordersort")) ? "desc" : decodeURI(getParameterByName("ordersort")) ;
var addr1 = isEmpty(getParameterByName("addr1")) ? "" : decodeURI(getParameterByName("addr1")) ;
var addr2 = isEmpty(getParameterByName("addr2")) ? "" : decodeURI(getParameterByName("addr2")) ;
var addr3 = isEmpty(getParameterByName("addr3")) ? "" : decodeURI(getParameterByName("addr3")) ;
var year = isEmpty(getParameterByName("year")) ? "" : decodeURI(getParameterByName("year")) ;
var month = isEmpty(getParameterByName("month")) ? "" : decodeURI(getParameterByName("month")) ;

var _CALLBACKFUNCALL	= "fnAreaSearchAll";		// 선택 전체
var _CALLBACKFUNC		= "fnAreaSearch";			// 선택 하위
var _CALLBACKFUNCSEARCH = "fnAreaSearchIn";			// 입력

$(document).ready(function() {
	util1.setNum = 1;
	util1.curPage = page;
	util1.callFunction = fn_setIpjuList;
	fn_setIpjuList();
	//search_CreateAddrHtml("body");

	$('#ipjuMonth').on('selectmenuchange', function() {
		var val = $("select#ipjuMonth option:selected").attr('value');
		fn_go("sel")
	});
});

function fnAreaSearch( code, level, name, posX, posY, Addr1, Addr2, Addr3){
	/*fn_selectSearchValue('', Addr1, Addr2, Addr3, '');
	document.ipjuSearch.page = "1";
	document.ipjuSearch.submit();
	*/
	if ( !fnDateCheck() )
	{
		return;
	}
	else
	{
		window.location.href = "/?_c=lots&_m=ipjuinfo&type_g="+type_g+"&ArrType_g="+ArrType_g+"&orderby="+orderby+"&ordersort="+ordersort+"&page=1&addr1="+Addr1+"&addr2="+Addr2+"&addr3="+Addr3+"&year="+year+"&month="+month;
	}

}

function fnAreaSearchAll(pCartNo, pLevel, all, upPosX, upPosY, Addr1, Addr2, Addr3, tmpval, code, posX, posY){
	/*fn_selectSearchValue('', Addr1, Addr2, Addr3, '');
	document.ipjuSearch.page = "1";
	document.ipjuSearch.submit();*/
	if ( !fnDateCheck() )
	{
		return;
	}
	else
	{
		window.location.href = "/?_c=lots&_m=ipjuinfo&type_g="+type_g+"&ArrType_g="+ArrType_g+"&orderby="+orderby+"&ordersort="+ordersort+"&page=1&addr1="+Addr1+"&addr2="+Addr2+"&addr3="+Addr3+"&year="+year+"&month="+month;
	}
}

function fnAreaSearchIn(Addr1, Addr2, Addr3, coordx, coordy, gubuncode, gubuncode1, gubuncode2, identifycode, searchkeyword){
	/*fn_selectSearchValue('', Addr1, Addr2, Addr3, '');
	document.ipjuSearch.page = "1";
	document.ipjuSearch.submit();*/
	if ( !fnDateCheck() )
	{
		return;
	}
	else
	{
		window.location.href = "/?_c=lots&_m=ipjuinfo&type_g="+type_g+"&ArrType_g="+ArrType_g+"&orderby="+orderby+"&ordersort="+ordersort+"&page=1&addr1="+Addr1+"&addr2="+Addr2+"&addr3="+Addr3+"&year="+year+"&month="+month;
	}
}

function fn_selectSearchValue(identifycode, addr1, addr2, addr3, gubuncode){
	$("#ipjuSearch [name=addr1]").val(addr1);
	$("#ipjuSearch [name=addr2]").val(addr2);
	$("#ipjuSearch [name=addr3]").val(addr3);
	$("#ipjuSearch [name=addr1search]").val(addr1 +' '+ addr2 +' '+ addr3 );
	fn_autoFillSearchReset();
	fn_setIpjuList();
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
		if ( returnData.rows[addri].addr1 ){
			addrAutoList.append('<div onclick=fn_selectSearchValue("'+ returnData.rows[addri].identifycode+'", "'+ returnData.rows[addri].addr1+'", "'+ returnData.rows[addri].addr2+'", "'+ returnData.rows[addri].addr3+'", "'+ returnData.rows[addri].gubuncode+'"); style="cursor:pointer">&nbsp;'+ returnData.rows[addri].addr1+'&nbsp;'+ returnData.rows[addri].addr2+'&nbsp;'+ returnData.rows[addri].addr3+'&nbsp;</div>')
		}
	}
	addrAutoList.css("display","");
}

function fn_setIpjuList(){
	$("#ipjuSearch [name=page]").val(util1.curPage);
	$(".list_ipju").html("<div style='line-height:500px;text-align:center;width:750px;' >"+__loadingString+"</div>");

	$.ajax({
		type:"POST",
		data:$("#ipjuSearch").serialize(),
		url:"/?_c=lots&_m=ipjuinfo&_a=ipjuajax",
		dataType:"html",
		success:function(data){
			var res = data.split("<!--@#$ INFO AREA $#@-->");
			util1.totalCnt = parseInt(res[1]); // {총글수};
			util1.curPage  = parseInt(res[2]); // {현재페이지};
			util1.pageRows = parseInt(res[3]); // {출력글수};
			util1.disPagepCnt = parseInt(res[4]); // {출력페이지수}
			util1.setTotalPage();
			$("#ipjuListTotal").html(res[1])

			$(".list_ipju").html(res[0])
			fn_DrowPageNumber(1, ".paging")	;
			//console.log(res[0]);
		},
		error:function(reparam){
			//console.log(reparam);
			//console.log("error");
		}
	});
}


function fn_go(mode){
	var goYear = document.ipjuSearch.year.value;
	var goMonth = document.ipjuSearch.month.value;

	minDateVal = document.ipjuSearch.minDate.value;
	maxDateVal = document.ipjuSearch.maxDate.value;

	if ( mode == "+"){
		goMonth = parseInt(goMonth) + 1;
		if  ( parseInt(goMonth) > 12){
			document.ipjuSearch.year.value = parseInt(goYear) + 1 ;
			document.ipjuSearch.month.value = 1;
		}else {
			document.ipjuSearch.month.value = goMonth;
		}
	}else if ( mode == "-"){
		goMonth = parseInt(goMonth) - 1;
		if  ( parseInt(goMonth) < 1){
			document.ipjuSearch.year.value = parseInt(goYear) - 1 ;
			document.ipjuSearch.month.value = 12;
		}else {
			document.ipjuSearch.month.value = goMonth;
		}
	}

	var goYear = document.ipjuSearch.year.value;
	var goMonth = document.ipjuSearch.month.value;

	goMonthStr = (parseInt(goMonth)< 10)? "0"+goMonth : goMonth ;
	goYearMonth = goYear + goMonthStr;

	$("#ipjuYear").val(goYear);
	$("#ipjuYear").selectmenu("destroy").selectmenu({style:'dropdown'});
	$("#ipjuYear").selectmenu("refresh");

	$("#ipjuMonth").val(goMonth);
	$("#ipjuMonth").selectmenu("destroy").selectmenu({style:'dropdown'});
	$("#ipjuMonth").selectmenu("refresh");

	if  ( (goYearMonth < minDateVal) && ( mode == "-") )  {
		alert("조회기간이 아닙니다.");
		return  false;
	}
	else if  ( (goYearMonth > maxDateVal) && ( mode == "+") )  {
		alert("조회기간이 아닙니다.");
		return  false;
	}
	else
	{

		if  ( ( mode == "sel") )  {
			if ( ( goYearMonth > maxDateVal ) || ( goYearMonth < minDateVal) ) {
				alert("조회기간이 아닙니다.");
				return  false;
			}
		}
		else if  ( ( mode == "-") || ( mode == "+"))  {
			if ( ( goYearMonth > maxDateVal ) || ( goYearMonth < minDateVal) ) {
				alert("조회기간이 아닙니다.");
				return  false;
			}
		}

		util1.curPage = 1;

		window.location.href = "/?_c=lots&_m=ipjuinfo&type_g="+type_g+"&ArrType_g="+ArrType_g+"&orderby="+orderby+"&ordersort="+ordersort+"&page=1&addr1="+addr1+"&addr2="+addr2+"&addr3="+addr3+"&year="+goYear+"&month="+goMonth;

	}
}

/* 입주날짜 체크 */
function fnDateCheck()
{
	var goYear = document.ipjuSearch.year.value;
	var goMonth = document.ipjuSearch.month.value;

	goMonthStr = (parseInt(goMonth)< 10)? "0"+goMonth : goMonth ;
	goYearMonth = goYear + goMonthStr;

	var minDateVal = document.ipjuSearch.minDate.value;
	var maxDateVal = document.ipjuSearch.maxDate.value;


	if  ( (goYearMonth < minDateVal)  )  {
		alert("조회기간이 아닙니다.");
		return  false;
	}
	else if  ( (goYearMonth > maxDateVal) )  {
		alert("조회기간이 아닙니다.");
		return  false;
	}
	else if  ( ( goYearMonth > maxDateVal ) || ( goYearMonth < minDateVal) ) {
		alert("조회기간이 아닙니다.");
		return  false;
	}
	else
	{
		return true;
	}
}

function fn_type(type){
	if ( !fnDateCheck() )
	{
		return;
	}
	else
	{
		var goYear = document.ipjuSearch.year.value;
		var goMonth = document.ipjuSearch.month.value;

		window.location.href = "/?_c=lots&_m=ipjuinfo&type_g="+type+"&ArrType_g="+ArrType_g+"&orderby="+orderby+"&ordersort="+ordersort+"&page=1&addr1="+addr1+"&addr2="+addr2+"&addr3="+addr3+"&year="+goYear+"&month="+goMonth;

	}
}


function fn_orderby(vals) {
	if ( !fnDateCheck() )
	{
		return;
	}
	else
	{
		if ( document.ipjuSearch.orderby.value != vals ){
			document.ipjuSearch.ordersort.value = "desc";
		}else if ( document.ipjuSearch.ordersort.value == "desc"){
			document.ipjuSearch.ordersort.value = "asc";
		}else {
			document.ipjuSearch.ordersort.value = "desc";
		}
		document.ipjuSearch.orderby.value = vals;

		window.location.href = "/?_c=lots&_m=ipjuinfo&type_g="+type_g+"&ArrType_g="+ArrType_g+"&orderby="+vals+"&ordersort="+document.ipjuSearch.ordersort.value+"&page=1&addr1="+addr1+"&addr2="+addr2+"&addr3="+addr3+"&year="+year+"&month="+month;
	}
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

function goDetail(estateType, aptCode) {
	// 자신의 URL 저장
	$.QueryString.rtu = $.QueryStringSerialize() + $.HashSerialize();
	// 상세 URL
	$.QueryString._c = 'lots';
	$.QueryString._m = 'lotsinfodetail';
	$.QueryString.detail = 'ipju';
	$.QueryString.type_g = estateType;
	$.QueryString.aptcode = aptCode;

	window.location.href = $.QueryStringSerialize();
}
</script>
	<div class="ui-selectmenu-menu ui-front">
		<ul aria-hidden="true" aria-labelledby="ipjuYear-button"
			id="ipjuYear-menu" role="listbox" tabindex="0"
			class="ui-menu ui-corner-bottom ui-widget ui-widget-content"></ul>
	</div>
	<div class="ui-selectmenu-menu ui-front">
		<ul aria-hidden="true" aria-labelledby="ipjuMonth-button"
			id="ipjuMonth-menu" role="listbox" tabindex="0"
			class="ui-menu ui-corner-bottom ui-widget ui-widget-content"></ul>
	</div>
	<iframe name="easyXDM_Kakao_default8529_provider"
		id="easyXDM_Kakao_default8529_provider"
		src="https://kapi.kakao.com/cors/?xdm_e=https%3A%2F%2Fwww.r114.com&amp;xdm_c=default8529&amp;xdm_p=1"
		frameborder="0" style="position: absolute; top: -2000px; left: 0px;"></iframe>
	<div id="fb-root" class=" fb_reset">
		<div
			style="position: absolute; top: -10000px; width: 0px; height: 0px;">
			<div>
				<iframe name="fb_xdm_frame_https" frameborder="0"
					allowtransparency="true" allowfullscreen="true" scrolling="no"
					allow="encrypted-media" id="fb_xdm_frame_https" aria-hidden="true"
					title="Facebook Cross Domain Communication Frame" tabindex="-1"
					src="https://staticxx.facebook.com/connect/xd_arbiter/r/d_vbiawPdxB.js?version=44#channel=f4e3793d558b14&amp;origin=https%3A%2F%2Fwww.r114.com"
					style="border: none;"></iframe>
			</div>
			<div></div>
		</div>
	</div>
</body>
</html>