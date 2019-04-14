<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>부동산 114</title>
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

				<li class="on"><span> <a
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

				<li class=""><span> <a
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
								<li class=""><a
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
						<li class=""><a
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
					<h3>직거래</h3>
				</div>
				<div class="location">
					<ul>
						<li><a href="/">홈</a></li>
						<li><a
							href="/?_c=service&amp;_s=directdeal&amp;_m=directdeallistPersonal">직거래</a></li>
						<li><a href="#">개인매물</a></li>
					</ul>
				</div>
			</div>
			<!-- 타이틀 끝 -->
			<!-- 컨텐츠 시작 -->
			<div class="contents_wrap">
				<!-- 이용안내 -->
				<!--
		!!! 이미지 서버 직접 지정
		-->
				<div class="info_smr bm"
					style="background-image: url(https://image.r114.co.kr/W1/images/sub/bg_info_dd.jpg)">
					<div class="inner">
						<strong>대한민국 부동산 포털 1위! <br>실제 거래 고객이 최다!
						</strong>
						<p>
							자타공인 부동산 사이트 1위, <br>30~50대 실제거래를 희망하는 고객이 가장 많은 사이트입니다.
						</p>
						<div class="mgt2">
							<a href="javascript:" class="btn_type1" id="cmdRegist">상품등록안내</a>
							<a href="javascript:" class="btn_type1" id="cmdGuide">이용안내</a>
						</div>
					</div>
				</div>
				<!-- //이용안내 -->
				<!-- tab
		<ul class="list_tab type3">
			<li class="on"><a href="javascript:" id="listPersonal">개인매물<span class="skip">현재메뉴</span></a></li>
			<li><a href="javascript:" id="listEnterprise">기업매물</a></li>
			<li><a href="javascript:" id="listState">국유재산 사용/매각</a></li>
		</ul>
		 //tab -->
				<!-- 검색 -->
				<div class="srch_deal_wrap">
					<div class="inner">
						<span class="inp_slt" style="width: 170px"> <select
							title="매물종류 선택" id="estateTypeFilter" style="display: none;">

								<option value="">매물전체</option>
								<option value="아파트">아파트</option>
								<option value="오피스텔">오피스텔</option>
								<option value="분양권">분양권</option>
								<option value="주택">주택</option>
								<option value="상가주택">상가주택</option>
								<option value="원룸">원룸</option>
								<option value="연립빌라다세대">빌라</option>
								<option value="상가">상가</option>
								<option value="사무실">사무실</option>
								<option value="빌딩">빌딩/건물</option>
								<option value="공장^창고">공장/창고</option>
								<option value="토지">토지</option>
								<option value="숙박콘도펜션">숙박콘도펜션</option>
								<option value="기타">기타</option>
						</select><span tabindex="0" id="estateTypeFilter-button" role="combobox"
							aria-expanded="false" aria-autocomplete="list"
							aria-owns="estateTypeFilter-menu" aria-haspopup="true"
							title="매물종류 선택"
							class="ui-selectmenu-button ui-selectmenu-button-closed ui-corner-all ui-button ui-widget"><span
								class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span><span
								class="ui-selectmenu-text">매물전체</span></span>
						</span> <span class="inp_slt" style="width: 170px; margin-right: 24px">
							<select title="거래종류 선택" id="dealingWayFilter"
							style="display: none;">

								<option value="">거래전체</option>
								<option value="매매">매매</option>
								<option value="전세">전세</option>
								<option value="월세">월세</option>
								<option value="임대">임대</option>
						</select><span tabindex="0" id="dealingWayFilter-button" role="combobox"
							aria-expanded="false" aria-autocomplete="list"
							aria-owns="dealingWayFilter-menu" aria-haspopup="true"
							title="거래종류 선택"
							class="ui-selectmenu-button ui-selectmenu-button-closed ui-corner-all ui-button ui-widget"><span
								class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span><span
								class="ui-selectmenu-text">거래전체</span></span>
						</span> <span class="inp_wrap btn_type"><button type="button"
								class="btn_srchbox">
								<span class="ico_comm_s search">검색</span>
							</button> <input type="text" class="inp_txt" placeholder="시,구,동 등을 입력하세요."
							style="width: 308px; margin-right: 0;" name="addrSearchWord"
							id="addrSearchWord" readonly=""
							onclick="search_CreateAddrHtml('body');">
							<button type="button" class="btn_del round_s" id="cmdDeleteAddr">삭제버튼</button>
						</span>

						<!-- 매매, 전세, 임대 선택시 -->
						<div id="priceFilterType1">
							<span class="inp_slt" style="width: 170px;"> <select
								title="가격 선택" id="priceFilterItem1" style="display: none;">

									<option value="전체^">가격전체</option>
									<option value="0^10000">1억이하</option>
									<option value="10000^30000">1억~3억</option>
									<option value="30000^60000">3억~6억</option>
									<option value="60000^90000">6억~9억</option>
									<option value="90000^">9억이상</option>
									<option value="직접입력^">직접입력</option>
							</select><span tabindex="0" id="priceFilterItem1-button" role="combobox"
								aria-expanded="false" aria-autocomplete="list"
								aria-owns="priceFilterItem1-menu" aria-haspopup="true"
								title="가격 선택"
								class="ui-selectmenu-button ui-selectmenu-button-closed ui-corner-all ui-button ui-widget"><span
									class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span><span
									class="ui-selectmenu-text">가격전체</span></span>
							</span> <input type="text" class="inp_txt" title="가격 최소값 입력"
								style="width: 168px;" numberonly="true" id="priceFilter1Min"
								data-min-max="Y" data-price="Y" maxlength="10" disabled=""><span
								class="txt">~</span> <input type="text" class="inp_txt"
								title="가격 최대값 입력" style="width: 168px; margin-left: 3px;"
								numberonly="true" id="priceFilter1Max" data-min-max="Y"
								data-price="Y" maxlength="10" disabled=""><span
								class="txt">만원</span>
							<button type="button" class="btn_ico_type1">
								<span class="ico_comm_l initial" id="cmdInitial1">초기화</span>
							</button>
							<a href="javascript:" class="btn_type9" id="cmdSearch1">검색</a>
						</div>
						<!-- 매매, 전세, 임대 선택시 -->

						<!-- 월세 선택시 -->
						<div id="priceFilterType2" style="display: none;">
							<span class="inp_slt" style="width: 135px;"> <select
								title="보증금 월세 선택" id="priceFilterBW" style="display: none;">
									<option value="보증금">보증금</option>
									<option value="월세">월세</option>
							</select><span tabindex="0" id="priceFilterBW-button" role="combobox"
								aria-expanded="false" aria-autocomplete="list"
								aria-owns="priceFilterBW-menu" aria-haspopup="true"
								title="보증금 월세 선택"
								class="ui-selectmenu-button ui-selectmenu-button-closed ui-corner-all ui-button ui-widget"><span
									class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span><span
									class="ui-selectmenu-text">보증금</span></span>
							</span> <span class="inp_slt" style="width: 170px;"> <select
								title="가격 선택" id="priceFilterItem2" style="display: none;">
									<option value="">가격 전체</option>
							</select><span tabindex="0" id="priceFilterItem2-button" role="combobox"
								aria-expanded="false" aria-autocomplete="list"
								aria-owns="priceFilterItem2-menu" aria-haspopup="true"
								title="가격 선택"
								class="ui-selectmenu-button ui-selectmenu-button-closed ui-corner-all ui-button ui-widget"><span
									class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span><span
									class="ui-selectmenu-text">가격 전체</span></span>
							</span> <input type="text" class="inp_txt" title="가격 최소값 입력"
								style="width: 98px;" numberonly="true" id="priceFilter2Min"
								data-min-max="Y" data-price="Y" maxlength="10" disabled=""><span
								class="txt">~</span> <input type="text" class="inp_txt"
								title="가격 최대값 입력" style="width: 98px;" numberonly="true"
								id="priceFilter2Max" data-min-max="Y" data-price="Y"
								maxlength="10" disabled=""><span class="txt">만원</span>
							<button type="button" class="btn_ico_type1">
								<span class="ico_comm_l initial" id="cmdInitial2">초기화</span>
							</button>
							<a href="javascript:" class="btn_type9" id="cmdSearch2">검색</a>
						</div>
						<!-- //월세 선택시 -->
					</div>
					<div class="option_wrap">
						<div>
							<div class="option_item">
								<strong class="option_tit">면적</strong> <span class="inp_slt"
									style="width: 120px;"> <select title="면적 선택"
									name="searchSize" id="searchSize" style="display: none;">

										<option value="전체^">전체</option>
										<option value="0^66">0~66㎡</option>
										<option value="66^99">66㎡~99㎡</option>
										<option value="99^132">99㎡~132㎡</option>
										<option value="132^165">132㎡~165㎡</option>
										<option value="165^198">165㎡~198㎡</option>
										<option value="198^330">198㎡~330㎡</option>
										<option value="330^991">330㎡~991㎡</option>
										<option value="직접입력^">직접입력</option>
								</select><span tabindex="0" id="searchSize-button" role="combobox"
									aria-expanded="false" aria-autocomplete="list"
									aria-owns="searchSize-menu" aria-haspopup="true" title="면적 선택"
									class="ui-selectmenu-button ui-selectmenu-button-closed ui-corner-all ui-button ui-widget"><span
										class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span><span
										class="ui-selectmenu-text">전체</span></span>
								</span> <input type="text" class="inp_txt small" title="최소 면적 입력"
									name="sl" id="sl" maxlength="20" numberonly="true"><span
									class="txt">~</span> <input type="text" class="inp_txt small"
									title="최대 면적 입력" name="sh" id="sh" maxlength="20"
									numberonly="true"> <span class="txt">㎡</span>
							</div>
							<div class="option_item multi_row clsOptionView">
								<div>
									<strong class="option_tit">방수/욕실수</strong> <span
										class="inp_slt"> <select title="방수 선택" name="bang"
										id="bang" style="display: none;">
											<!--	<option value="">방수</option> -->
											<option value="">전체</option>
											<option value="1">1개</option>
											<option value="2">2개</option>
											<option value="3">3개</option>
											<option value="4">4개</option>
											<option value="5">5개</option>
											<option value="6">6개</option>
											<option value="7">7개이상</option>
									</select><span tabindex="0" id="bang-button" role="combobox"
										aria-expanded="false" aria-autocomplete="list"
										aria-owns="bang-menu" aria-haspopup="true" title="방수 선택"
										class="ui-selectmenu-button ui-selectmenu-button-closed ui-corner-all ui-button ui-widget"><span
											class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span><span
											class="ui-selectmenu-text">전체</span></span>
									</span> <span class="inp_slt"> <select title="욕실수 선택"
										name="bath" id="bath" style="display: none;">

											<option value="">전체</option>
											<option value="1">1개</option>
											<option value="2">2개</option>
											<option value="3">3개</option>
											<option value="4">4개</option>
											<option value="5">5개이상</option>
									</select><span tabindex="0" id="bath-button" role="combobox"
										aria-expanded="false" aria-autocomplete="list"
										aria-owns="bath-menu" aria-haspopup="true" title="욕실수 선택"
										class="ui-selectmenu-button ui-selectmenu-button-closed ui-corner-all ui-button ui-widget"><span
											class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span><span
											class="ui-selectmenu-text">전체</span></span>
									</span>
								</div>
								<div class="transport">
									<strong class="option_tit">교통정보</strong> <span class="inp_slt">
										<select title="호선 선택" name="subl" id="subl"
										style="display: none;">

											<option value="">호선</option>
											<option value="1">1호선</option>

											<option value="2">2호선</option>

											<option value="3">3호선</option>

											<option value="4">4호선</option>

											<option value="5">5호선</option>

											<option value="6">6호선</option>

											<option value="7">7호선</option>

											<option value="8">8호선</option>

											<option value="9">9호선</option>

											<option value="25">경강선</option>

											<option value="17">경의중앙선</option>

											<option value="18">경춘선</option>

											<option value="19">공항철도</option>

											<option value="23">광주1호선</option>

											<option value="30">김해경전철</option>

											<option value="10">대구1호선</option>

											<option value="11">대구2호선</option>

											<option value="31">대구3호선</option>

											<option value="21">대전1호선</option>

											<option value="34">동해선</option>

											<option value="12">부산1호선</option>

											<option value="13">부산2호선</option>

											<option value="14">부산3호선</option>

											<option value="29">부산4호선</option>

											<option value="15">분당선</option>

											<option value="36">서해선</option>

											<option value="26">수인선</option>

											<option value="24">신분당선</option>

											<option value="27">에버라인</option>

											<option value="35">우이신설경전철</option>

											<option value="28">의정부경전철</option>

											<option value="20">인천1호선</option>

											<option value="32">인천2호선</option>

											<option value="33">자기부상</option>

											<option value="16">중앙선</option>
									</select><span tabindex="0" id="subl-button" role="combobox"
										aria-expanded="false" aria-autocomplete="list"
										aria-owns="subl-menu" aria-haspopup="true" title="호선 선택"
										class="ui-selectmenu-button ui-selectmenu-button-closed ui-corner-all ui-button ui-widget"><span
											class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span><span
											class="ui-selectmenu-text">호선</span></span>
									</span> <span class="inp_slt"> <select title="역명 선택"
										name="subn" id="subn" style="display: none;">
											<option value="">역명</option>
									</select><span tabindex="0" id="subn-button" role="combobox"
										aria-expanded="false" aria-autocomplete="list"
										aria-owns="subn-menu" aria-haspopup="true" title="역명 선택"
										class="ui-selectmenu-button ui-selectmenu-button-closed ui-corner-all ui-button ui-widget"><span
											class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span><span
											class="ui-selectmenu-text">역명</span></span>
									</span> <span class="inp_slt"> <select title="이동수단 선택"
										name="subm" id="subm" style="display: none;">

											<option value="">이동수단</option>
											<option value="1">도보</option>

											<option value="2">버스</option>
									</select><span tabindex="0" id="subm-button" role="combobox"
										aria-expanded="false" aria-autocomplete="list"
										aria-owns="subm-menu" aria-haspopup="true" title="이동수단 선택"
										class="ui-selectmenu-button ui-selectmenu-button-closed ui-corner-all ui-button ui-widget"><span
											class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span><span
											class="ui-selectmenu-text">이동수단</span></span>
									</span> <span class="inp_slt"> <select title="소요시간 선택"
										name="subt" id="subt" style="display: none;">

											<option value="">소요시간</option>
											<option value="1">1분</option>
											<option value="2">2분</option>
											<option value="3">3분</option>
											<option value="4">4분</option>
											<option value="5">5분</option>
											<option value="6">6분</option>
											<option value="7">7분</option>
											<option value="8">8분</option>
											<option value="9">9분</option>
											<option value="10">10분이상</option>
									</select><span tabindex="0" id="subt-button" role="combobox"
										aria-expanded="false" aria-autocomplete="list"
										aria-owns="subt-menu" aria-haspopup="true" title="소요시간 선택"
										class="ui-selectmenu-button ui-selectmenu-button-closed ui-corner-all ui-button ui-widget"><span
											class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span><span
											class="ui-selectmenu-text">소요시간</span></span>
									</span>
								</div>
							</div>
						</div>
						<button class="btn_detail_option">
							상세옵션 <span class="ico_comm_s"></span>
						</button>
						<!-- 활성화class="on" -->
					</div>
				</div>
				<!-- //검색 -->

				<div id="list_firstLoad">
					<!-- 그랜드매물 -->
					<h4 class="h4_type4">
						그랜드매물<a href="javascript:" class="btn_type1 rb"
							onclick="goSellPage(56);">등록하기</a>
					</h4>
					<ul class="list_thumb_type5">

						<li class=" left">
							<!-- loop | 테두리 : type1, bg : type2, 테두리+bg : type3 --> <a
							href="javascript:" onclick="goDetailPage('77288')">
								<div class="thumb">
									<img
										src="https://image.r114.co.kr/directimages/2019/02/AA52B2F1C90C41CC847244FF4DAC1E92.jpg"
										alt=""> <span class="tag_comm " style="display: none"></span>
								</div> <span class="s_type"> <span class="tag_comm2 type1">매매</span>
									전원농가주택<br> 35,000 만원
							</span> <strong class="tit">경주시 내남면 700㎡</strong>
								<p class="desc">대지700㎡/건평99.41㎡(데크와창고제외)방3,화장실2/의
									전통골기와퓨전한옥으로 남산이 한눈에 보이고 옆으로는 강이 흐르는 탁트인 조망을 자랑합니다. /남향인데다 나무를
									조금만 때도 쩔쩔 끓는 구들방이 있어서 난방비걱정이 없으며, 데크가 네군데나 있음 /집주인이 손수 가꾼 개성있는
									정원에는 철마다 아름다운 꽃들이 만발합니다. /창고를 개조한 까페분위기 공간도 있음 /CCTV 설치되어있음
									/독채펜션으로 사용하면 고소득 얻을수있음(성수기 한달 천만원 이상) /방문 전에 꼭 연락바라며 가격조정 가능

									/사기꾼은 경험상 단번에 알아내는 재주가 있으니 시간낭비하지않도록!!</p>
						</a>
						</li>

						<li class="type3 ">
							<!-- loop | 테두리 : type1, bg : type2, 테두리+bg : type3 --> <a
							href="javascript:" onclick="goDetailPage('77749')">
								<div class="thumb">
									<img
										src="https://image.r114.co.kr/directimages/2019/03/546CEB8E5A2A4619AB578577DD76FE32.JPEG"
										alt=""> <span class="tag_comm type4" style="">급매물</span>
								</div> <span class="s_type"> <span class="tag_comm2 type1">매매</span>
									오피스텔<br> 10,690 만원
							</span> <strong class="tit">속초시 교동 55㎡</strong>
								<p class="desc">블루핀 오피스텔: 전용면적 32.83m2, 213호 - 10,690만원 블루핀
									도시형 생활주택: 전용면적 15.07m2, 1204호, 1302호 - 9,590만원 많은 문의 바랍니다.</p>
						</a>
						</li>

						<li class="type3 ">
							<!-- loop | 테두리 : type1, bg : type2, 테두리+bg : type3 --> <a
							href="javascript:" onclick="goDetailPage('77738')">
								<div class="thumb">
									<img
										src="https://image.r114.co.kr/directimages/2019/03/E190FAC965B34BC9AD4CBA1E6A9945D7.JPG"
										alt=""> <span class="tag_comm type4" style="">급매물</span>
								</div> <span class="s_type"> <span class="tag_comm2 type1">매매</span>
									창고<br> 350,000 만원
							</span> <strong class="tit">평택시 신대동 2,952㎡</strong>
								<p class="desc"></p>
						</a>
						</li>

						<li class="type1 left">
							<!-- loop | 테두리 : type1, bg : type2, 테두리+bg : type3 --> <a
							href="javascript:" onclick="goDetailPage('77735')">
								<div class="thumb">
									<img
										src="https://image.r114.co.kr/directimages/2019/03/CEF1C5FDDB324EAD9E4156E4FEC6446D.jpg"
										alt=""> <span class="tag_comm " style="display: none"></span>
								</div> <span class="s_type"> <span class="tag_comm2 type1">매매</span>
									상가<br> 65,000 만원
							</span> <strong class="tit">성남시 수내동 94㎡</strong>
								<p class="desc">-매매양도시 수익률 5%이상 보장 / 면적:실평수 30평대 -분당 최고 입지
									수내역 역세권, 오피스 및 주상복합 밀집지역 핵심 로데오 상권에서 가시성 뛰어난 위치입니다. -특히 롯데백화점을
									중심으로 행정시설, 금융시설, 오피스, 학원가, 쇼핑, 문화 등의 다양한 시설이 밀집되어 있어 직장인은 물론
									학생, 가족 단위의 수요층이 평일이나 주말 구분 없이 끊이지 않는 상권으로 주변시세 수익률 5%이상 형성되어
									안정적이며 -롯데 백화점 도보 3분거리로 유동성이 풍부한 입지 / 이 지역 수내역세권에 접한 백현지구에 현대중공업
									R&amp;D센터 유치 등 정자역의 네이버본사, SK 하이닉스, 두산분당센터와 함께 대기업 업무중심지로 부상하고
									있어 풍부한 배후수요와 함께 고수익 보장 /투자가치가 매우 높은 매물입니다.</p>
						</a>
						</li>


						<li class="wrt "><a href="javascript:"
							onclick="goSellPage(56);"> <span class="ico_comm_l r_wrt1"></span>
								<span class="fc_blue2">그랜드 </span>매물 등록하시고 <br>빠른 거래하세요~ <span
								class="ico_comm_l plus"></span>
						</a></li>

						<li class="wrt "><a href="javascript:"
							onclick="goSellPage(56);"> <span class="ico_comm_l r_wrt1"></span>
								<span class="fc_blue2">그랜드 </span>매물 등록하시고 <br>빠른 거래하세요~ <span
								class="ico_comm_l plus"></span>
						</a></li>

					</ul>
					<!-- //그랜드매물 -->
					<!-- 스페셜매물 -->
					<h4 class="h4_type4">
						스페셜매물<a href="javascript:" class="btn_type1 rb"
							onclick="goSellPage(58);">등록하기</a>
					</h4>
					<ul class="list_thumb_type5 type2">

						<li class="type3">
							<!-- loop | 테두리 : type1, bg : type2, 테두리+bg : type3 --> <a
							href="javascript:" onclick="goDetailPage('77789')">
								<div class="thumb">
									<img
										src="https://image.r114.co.kr/directimages/2019/04/E3AE5F83866D45AF9E894D7FBD593FCE.jpg"
										alt=""> <span class="tag_comm type9" style="">가격저렴</span>
								</div> <span class="s_type"> <span class="tag_comm2 type1">매매</span>
									단독다가구<br> 130,000 만원
							</span> <strong class="tit">성북구 성북동 281㎡</strong>
								<p class="desc">1964년 성북동 개발시 축조된 튼튼한 언덕위의 집. 정원에는 오래된 정원수
									3그루가 있고 개나리, 진달래, 철쭉, 장미, 향나무가 만발, 부모님이 연로하시어 할수없이 매각, 모두 수리되어
									방수, 보일러, 도배, 마루, 난방 문제없음. 원매자에 따라서 외부칠이나 내부구조 변경가능. 오래된 자개장과 침대
									등 모두 인수가능. 2층만 세를 줄 수도 있고 새로 다세대주택을 건설하여 분양할 수도 있음. 계단이 있어서
									조용하며 주차장은 골목입구 유료주차장 사용하여야 함.</p>
						</a>
						</li>

						<li class="type3">
							<!-- loop | 테두리 : type1, bg : type2, 테두리+bg : type3 --> <a
							href="javascript:" onclick="goDetailPage('77717')">
								<div class="thumb">
									<img
										src="https://image.r114.co.kr/images/r114/2005/common/img_mmex154_land.gif"
										alt=""> <span class="tag_comm type4" style="">급매물</span>
								</div> <span class="s_type"> <span class="tag_comm2 type1">매매</span>
									토지<br> 32,000 만원
							</span> <strong class="tit">홍천군 서면 1,928㎡</strong>
								<p class="desc">남춘천 IC에서 5분 홍천강 300미터 대명비발디 7분거리 팔봉산 1봉뒤
									대명비발디 가는길목 동 남향 전용허가 받아 토목공사 완료 된 부지로 즉시 건축물 시공가능 편션부지로 최고상권
									최고위치 또는 전원주택부지로 A급 본 부지는 양 옆 뒤 편이 팔봉산 줄기 야산이 감싸고 있씀 (문의
									010-3036-8331)</p>
						</a>
						</li>

						<li class="type1">
							<!-- loop | 테두리 : type1, bg : type2, 테두리+bg : type3 --> <a
							href="javascript:" onclick="goDetailPage('77776')">
								<div class="thumb">
									<img
										src="https://image.r114.co.kr/directimages/2019/03/027F0465D58043028884B36F48FE8EB5.jpg"
										alt=""> <span class="tag_comm type8" style="">올수리</span>
								</div> <span class="s_type"> <span class="tag_comm2 type1">매매</span>
									연립빌라다세대<br> 12,000 만원
							</span> <strong class="tit">안산시 와동 99㎡</strong>
								<p class="desc">-깨끗하게 올 수리된 집. -각방 신형 개별에어컨 설치(3개소), 화장실
									비데설치. -넓은 발코니가 2개소. -남동향 햇볕이 잘 드는 집. -옥상 및 옥상창고 단독 사용 가능</p>
						</a>
						</li>

						<li class="">
							<!-- loop | 테두리 : type1, bg : type2, 테두리+bg : type3 --> <a
							href="javascript:" onclick="goDetailPage('77765')">
								<div class="thumb">
									<img
										src="https://image.r114.co.kr/directimages/2019/03/306A449436724DAEA6650200D0087389.jpg"
										alt=""> <span class="tag_comm type4" style="">급매물</span>
								</div> <span class="s_type"> <span class="tag_comm2 type1">매매</span>
									토지<br> 47,500 만원
							</span> <strong class="tit">연천군 청산면 3,232㎡</strong>
								<p class="desc">1.대지입니다. 2.개발행위허가 및 건축허가 취득했습니다. 3.한탄강 보이며,
									가장 위에 있어 전망 좋습니다. 4.모든 건축행위 할 수 있습니다. 5.전체 3,232㎡, 3필지로 나눠놨습니다.
									6.현재 바로 붙은 옆 토지 펜션운영중이며 잘됩니다. 인근 군부대 이전으로 면회객 많이 찾고 있습니다.
									7.전원주택으로 지을 시 위에 넓게 2동, 아래 기본5개 좋습니다. 펜션으로 지을 시 땅이 넓어 구색 맞춰 지을
									수 있습니다. 8.문산-전곡간 고속도로 개통되어 자유로에서 30분 거리입니다. 이것저것 충분히 검토하시고
									전화주세요.</p>
						</a>
						</li>

						<li class="type1">
							<!-- loop | 테두리 : type1, bg : type2, 테두리+bg : type3 --> <a
							href="javascript:" onclick="goDetailPage('77746')">
								<div class="thumb">
									<img
										src="https://image.r114.co.kr/directimages/2019/03/3594CA6E9D2C487799FECB93279A4710.jpg"
										alt=""> <span class="tag_comm type4" style="">급매물</span>
								</div> <span class="s_type"> <span class="tag_comm2 type1">매매</span>
									빌라<br> 21,000 만원
							</span> <strong class="tit">서대문구 홍은동 71㎡</strong>
								<p class="desc">깨끗하고 조용함. 3호선 홍제역 마을버스 10분거리 위치 교통편리 보온이
									잘된집, 한겨울 난방비 7만원 미만, 공동관리비 4만원으로 관리비 저렴</p>
						</a>
						</li>

						<li class="type3">
							<!-- loop | 테두리 : type1, bg : type2, 테두리+bg : type3 --> <a
							href="javascript:" onclick="goDetailPage('77745')">
								<div class="thumb">
									<img
										src="https://image.r114.co.kr/directimages/2019/03/1DDAF4DE344548BFB5DA75E06E332838.jpg"
										alt=""> <span class="tag_comm type4" style="">급매물</span>
								</div> <span class="s_type"> <span class="tag_comm2 type1">매매</span>
									상가<br> 120,000 만원
							</span> <strong class="tit">성남시 정자동 671㎡</strong>
								<p class="desc">- 분당 정자동 까페거리 위치 - 해당 상권에서 보기 힘든 대형 평수 - 같은
									오픈형 지하 광장에는 10여개의 음식점 및 까페가 있음 - 횟집, 일식집, 오락시설 (당구장, PC방,
									스크린골프) 및 브런치 까페 입점 유리 - 주변 시세보다 저렴한 매물 - 공실 직전 보증금 1억 2천만, 월세
									700만으로 운영되었음</p>
						</a>
						</li>

						<li class="type3">
							<!-- loop | 테두리 : type1, bg : type2, 테두리+bg : type3 --> <a
							href="javascript:" onclick="goDetailPage('77729')">
								<div class="thumb">
									<img
										src="https://image.r114.co.kr/directimages/2017/06/9C06B839C1DD8EE.png"
										alt=""> <span class="tag_comm type9" style="">가격저렴</span>
								</div> <span class="s_type"> <span class="tag_comm2 type1">매매</span>
									토지<br> 114,000 만원
							</span> <strong class="tit">평택시 현덕면 3,956㎡</strong>
								<p class="desc">(현덕면 도대리1건) ●자연녹지지역 (평당 95만원 급매) -향후 도시개발의
									대상이 되는 후보지로 유력한 지역 평택시 현덕면사무소에서5분거리인접(2.3km)소재 (안중읍 성해리 1건 농림지역
									경작중인 답 1.736평방미터 /526평 1억5천만원에 별도 급매합니다 현덕면-삼성반도체평택캠퍼스에서 20분대에
									위치해 주변투자수요가 급부상하며 향후개발전망 밝음 안중읍과 아산호수 인접구역으로 차이나타운 개발설도 겹쳐 호재기대
									급매물로 투자가치 상승 (참고) ●수도권남부 신성장동력으로 개발열기고조 고덕국제신도시 조성중 -미군기지 평택이전과
									인근에 삼성전자반도체 단지 조성중 ●주한미군등85.000인구유입되어 연관주택수요 창출되고 관련업계종사 인구포함시
									이동인구 20만명 전망 ●작년12월 평택-수서간 고속철도(src)개통되고 이 철도가 동탄GTX까지 연결되어
									평택에서 서울까지는 물론 수도권전역을 3~40분대에 진입할 수 있게됨 -최근 5년간평택지역 집값상승율이
									24.91%로전국1</p>
						</a>
						</li>

						<li class="type1">
							<!-- loop | 테두리 : type1, bg : type2, 테두리+bg : type3 --> <a
							href="javascript:" onclick="goDetailPage('77595')">
								<div class="thumb">
									<img
										src="https://image.r114.co.kr/directimages/2019/01/3FE01EA10C774727B5B3EAFC9D3AF952.jpg"
										alt=""> <span class="tag_comm " style="display: none"></span>
								</div> <span class="s_type"> <span class="tag_comm2 type1">매매</span>
									기타<br> 198,000 만원
							</span> <strong class="tit">제주시 한경면 1,984㎡</strong>
								<p class="desc">제주도 해안도로 레스토랑(총 1984㎡(600평)) 매매, 가장 노을이 멋지게
									지는 해안도로, JTBC "효리네 민박"으로 뜨겁게 떠올라 관광객이 정말 많이 찾는 "신창풍차해안도로" 한 가운데
									있는 해안도로에 접한 토지와 레스토랑을 매매합니다. 전체 3필지(600평)입니다. -신창리 1353-1(대지) :
									813㎡(250평) -신창리 1353-1(건물) : 총 59평 .1층:47평(카페(35평, 홀면적 30평) 와
									살림집(12평)) .2층:47평(옥상(35평), 손님용 게스트하우스 (12평)), 추가2층 증축가능 -신창리
									1353-2(임야) : 473㎡(140평) -신창리 1353-3(전) : 698㎡(210평) *.현재 허가받은
									레스토랑 운영중(*.임대중이며 임대료가 계속 상승중) *.주위에 많은 펜션과 카페들이 생기고 있어 계속 땅값이
									오를 전망임 *.거래시 가격 협의 가능합니다</p>
						</a>
						</li>

						<li class="">
							<!-- loop | 테두리 : type1, bg : type2, 테두리+bg : type3 --> <a
							href="javascript:" onclick="goDetailPage('77432')">
								<div class="thumb">
									<img
										src="https://image.r114.co.kr/directimages/2018/11/14DD7EAAD24D417FBDBD46D280612A00.jpg"
										alt=""> <span class="tag_comm type9" style="">가격저렴</span>
								</div> <span class="s_type"> <span class="tag_comm2 type1">매매</span>
									숙박콘도펜션<br> 32,000 만원
							</span> <strong class="tit">완도군 청산면 1,098㎡</strong>
								<p class="desc">청산도에서 View 가 가장 좋은 한옥집입니다</p>
						</a>
						</li>

						<li class="type3">
							<!-- loop | 테두리 : type1, bg : type2, 테두리+bg : type3 --> <a
							href="javascript:" onclick="goDetailPage('76869')">
								<div class="thumb">
									<img
										src="https://image.r114.co.kr/directimages/2010/06/result_2010_5_0_23_34_46_684_1.jpg"
										alt=""> <span class="tag_comm type9" style="">가격저렴</span>
								</div> <span class="s_type"> <span class="tag_comm2 type1">매매</span>
									토지<br> 10,000 만원
							</span> <strong class="tit">천안시 안서동 325㎡</strong>
								<p class="desc">* 현재는 지목이 임야로 되어있지만, 산지전용허가,
									개발행위변경허가(토질변경허가) 및 건축허가를 득한 상태(건축허가번호 : 2007-건축과-신축허가-450)이므로,
									집을 지으면 "대지"로 전환됩니다. * 집을 지으려고 7년 전에 1억 2천만원에 구입했으나 사정이 여의치 않아
									오히려 구입한 가격보다 2천만원 낮은 가격에 매물로 내놓게 되었습니다. * 제가 구입할 당시(5년 전) 주변
									주택들의 토지가격은 평당 200~300만원쯤이라고 했습니다. * 융자금은 승계가 되지 않습니다</p>
						</a>
						</li>

						<li class="">
							<!-- loop | 테두리 : type1, bg : type2, 테두리+bg : type3 --> <a
							href="javascript:" onclick="goDetailPage('77093')">
								<div class="thumb">
									<img
										src="https://image.r114.co.kr/directimages/2018/03/5BDFE2E916764C9998BD401F60EA541F.jpg"
										alt=""> <span class="tag_comm " style="display: none"></span>
								</div> <span class="s_type"> <span class="tag_comm2 type1">매매</span>
									전원농가주택<br> 33,000 만원
							</span> <strong class="tit">평창군 방림면 96㎡</strong>
								<p class="desc">* 노출콘크리트조의 모던하고 심플한 전원주택으로 배산임수를 갖춘
									토지1,603m2[485평]에 건평96m2[29평] 내부 천정은 원목으로 마감했고 벽면 일부는 황토벽돌로 시공하여
									건강에 좋은 자연친화적으로 건축하였으며, 주택 뒤로는 병풍같은 산이 감싸고 앞에는 남병산[1,150m]과 평창강이
									흐르며 우측으로는 울창하고 멋진 소나무숲과 좌측 멀리는 가리왕산을 전망으로 평온하고 아름다운 자연환경입니다.*
									동남향에 장방형 건물로 채광을 많이 받는 이상적인 건물에 정성껏 가꾼 주택입니다. 난방은 심야전기,주방은
									전기쿡탑, 한샘가구로 갖추었습니다. * 내부구조: 방3/ 욕실2/ 거실2/ 하나는 주방옆의 티룸으로 사용 *
									부속건물 : 보일러실겸 창고, 물탱크창고, 비가림 하우스, 과실수 20여 그루, 연못 등. . * 강릉선
									ktx평창역사에서 차로 15분 거리 위치함.</p>
						</a>
						</li>

						<li class="">
							<!-- loop | 테두리 : type1, bg : type2, 테두리+bg : type3 --> <a
							href="javascript:" onclick="goDetailPage('77039')">
								<div class="thumb">
									<img
										src="https://image.r114.co.kr/directimages/2019/03/EBFA7D7934A748A78AE9A194BFF9EA28.JPG"
										alt=""> <span class="tag_comm " style="display: none"></span>
								</div> <span class="s_type"> <span class="tag_comm2 type2">월세</span>
									사무실<br> 보 3,000 만원 / 180 만원
							</span> <strong class="tit">동대문구 회기동 96㎡</strong>
								<p class="desc">저희 코레일유통은 입주자분들의 편의성과 쾌적한 사무환경을 조성하기 위해서 최선의
									노력을 다하겠습니다~ 보증금 및 월세 협의가 가능하니 많은 문의 부탁드립니다~ 회기역에서 5분거리에 위치하여
									접근성이 용이하며, 대학가 상권 중심지에 위치하여 있습니다. 입주자 전용 주차장을 보유하고 있으며 뒷편에
									아파트단지가 있습니다.</p>
						</a>
						</li>


					</ul>
					<!-- //스페셜매물 -->
					<!-- 플러스매물 -->
					<h4 class="h4_type4">
						플러스매물<a href="javascript:" class="btn_type1 rb"
							onclick="goSellPage(60);">등록하기</a>
					</h4>
					<ul class="list_box_type1">

						<li class="type2">
							<!-- loop | 테두리 : type1, bg : type2, 테두리+bg : type3 --> <a
							href="javascript:" onclick="goDetailPage('77778')"> <span
								class="s_type"> <span class="tag_comm2 type1">매매</span>
									토지
							</span> <span class="s_type">280,000 만원</span> <strong class="tit">경산시
									압량면 926㎡</strong>
								<p class="desc">전면 50M 삼면도로 8차선 대로접 영남대역 대구지하철2호선 15분거리 맞은편
									대단지아파트 형성</p>
						</a>
						</li>

						<li class="type3">
							<!-- loop | 테두리 : type1, bg : type2, 테두리+bg : type3 --> <a
							href="javascript:" onclick="goDetailPage('77767')"> <span
								class="s_type"> <span class="tag_comm2 type2">월세</span>
									연립빌라다세대
							</span> <span class="s_type">보 3,000 만원 / 55 만원</span> <strong
								class="tit">당진시 석문면 106㎡</strong>
								<p class="desc">- 당진 석문면 삼봉리 최신 시설 신축 빌라 3,4층 으로 매매,전세,월세
									가능(협의) - 주인 개인 소유로 3,4층 입주 가능 - 당진 삼봉리 초등학교,중학교 앞 최적의 중심가에
									위치,주변 편의시설 이용가능(은행,하나로마트,식당,가게등) - 바다 전망(최적의 바다view, 조용,편안함,쾌적한
									환경) - 황토벽,편백나무 친환경 소재 인테리어 사용(아토피,피부,공기,건강에최적) - 최상의 편리시설 빌트인
									빌라 (식시세척기,가스렌지,장롱,화장대설치) - 즉시 입주 가능 - 빌라 3,4층 집에서 보이는 바다 전망
									view - 펜션같은 바다 뷰와 최상의 깨끗하고 친환경적 신축 빌라 - 입주시 주인과 가격 협의 조정가능 - 넓은
									주차장(25대가능) -향후 2020년 전철 역 입주예정(석문산업단지 연결) (송악역-석문역-등) (근처 전철역
									설치 계획)</p>
						</a>
						</li>

						<li class="type3">
							<!-- loop | 테두리 : type1, bg : type2, 테두리+bg : type3 --> <a
							href="javascript:" onclick="goDetailPage('77742')"> <span
								class="s_type"> <span class="tag_comm2 type1">매매</span>
									상가
							</span> <span class="s_type">17,000 만원</span> <strong class="tit">동래구
									온천동 76㎡</strong>
								<p class="desc">210세대 아파트 내 상가 (현) (1) 입주업종 (미장원) 약13평 /
									일천만원(월27만원) 계약 15년12월05일 (2) 입주업종(보일러사무실) 약10평 / 오백만원 (월25만원)
									계약 15년 12월01일</p>
						</a>
						</li>

						<li class="">
							<!-- loop | 테두리 : type1, bg : type2, 테두리+bg : type3 --> <a
							href="javascript:" onclick="goDetailPage('77726')"> <span
								class="s_type"> <span class="tag_comm2 type1">매매</span>
									토지
							</span> <span class="s_type">89,000 만원</span> <strong class="tit">가평군
									상면 6,158㎡</strong>
								<p class="desc">청평역 차량 15분, 현리 차량 5분, 가평수목원 접, 하천 접, 전원주택 접,
									수영장 포함 최신 이태리식 리조트 200m 거리(금년 5월 open), 토목공사 완료, 전기 시설, 청정
									지하수(수질검사 100%합격, 대공) *전원주택지 최고 위치, 펜션, 캠핑장 최고 적지</p>
						</a>
						</li>

						<li class="type1">
							<!-- loop | 테두리 : type1, bg : type2, 테두리+bg : type3 --> <a
							href="javascript:" onclick="goDetailPage('77659')"> <span
								class="s_type"> <span class="tag_comm2 type3">임대</span>
									공장
							</span> <span class="s_type">보 3,000 만원 / 280 만원</span> <strong
								class="tit">밀양시 단장면 858㎡</strong>
								<p class="desc">밀양IC 에서 10분거리에 위치, 총 3개동(사무실동,가동,나동)
									1.사무실동(165㎡):사무실,사장실,주방,화장실 2.가동(363㎡):작업장,에어샤워기,저온저장고
									3.나동(330㎡): 공실 ※ 가동 소재 저온저장고는 전 세입자 편의상 철거한 상태임.필요시 재설치 가능</p>
						</a>
						</li>

						<li class="type1">
							<!-- loop | 테두리 : type1, bg : type2, 테두리+bg : type3 --> <a
							href="javascript:" onclick="goDetailPage('77617')"> <span
								class="s_type"> <span class="tag_comm2 type1">매매</span>
									토지
							</span> <span class="s_type">90,000 만원</span> <strong class="tit">광산구
									송산동 11,115㎡</strong>
								<p class="desc">광주 빛그린산단 근처, 광주시 송정역방면으로 3.5Km 떨어진 임야를
									매매합니다. 총 3,368평이며, 6m도로에 접하고 있습니다. 현대자동차와 광주시가 합작한 완성차 공장과
									금호타이어 공장이 빛그린산단에 들어서기에 앞으로 발전 가능성이 높은 땅입니다. 개인 사정으로 급매로 매각합니다.</p>
						</a>
						</li>

						<li class="type2">
							<!-- loop | 테두리 : type1, bg : type2, 테두리+bg : type3 --> <a
							href="javascript:" onclick="goDetailPage('77596')"> <span
								class="s_type"> <span class="tag_comm2 type1">매매</span>
									토지
							</span> <span class="s_type">9,500 만원</span> <strong class="tit">태안군
									남면 246㎡</strong>
								<p class="desc">몽산포해수욕장 바로 입구 공영주차장옆 토지를 매매합니다. 차도 접한 땅이며
									지목은 임야입니다. 카페나 휴게음식점,매점등을 하시기에 좋은 땅입니다. 태안 관광개발과 솔빛대교 개통으로
									투자가치가 있습니다.</p>
						</a>
						</li>

						<li class="">
							<!-- loop | 테두리 : type1, bg : type2, 테두리+bg : type3 --> <a
							href="javascript:" onclick="goDetailPage('77533')"> <span
								class="s_type"> <span class="tag_comm2 type2">월세</span>
									사무실
							</span> <span class="s_type">보 10 만원 / 50 만원</span> <strong class="tit">동대문구
									장안동 99㎡</strong>
								<p class="desc">308호 - 보증금 10, 월 50만원.(부가세별도) 핸드폰:
									010-4240-9441. 집전화: 02-2214-3666</p>
						</a>
						</li>


					</ul>
					<!-- //플러스매물 -->
					<!-- 베이직매물 -->
					<h4 class="h4_type4">
						베이직매물<a href="javascript:" class="btn_type1 rb"
							onclick="goSellPage(62);">등록하기</a>
					</h4>
					<ul class="list_basic" id="list_basic">
						<li class="">
							<!-- loop | 테두리 : type1, bg : type2, 테두리+bg : type3 --> <a
							href="javascript:" onclick="goDetailPage('77838', '1')"> <span
								class="tit"><span class="tag_comm2 type1">매매</span><br>전원농가주택</span>
								<span class="s_type">120,000 만원</span>
								<div class="info">
									<span class="loc">홍천군 서석면 250㎡ </span>
									<p class="desc">토지면적 약 4300 제곱미터(1300py) 대지 약
										1000제곱미터(300py) 건축면적 약 100제곱미터(30py) 총 3층 중, 지증 30py로 큰 방 1,
										주차장 (2대 주차 가능) 1층 30py로 방3, 거실, 주방, 화장실2 2층 15py로 방2, 거실, 화장실
										물은 지하100미터 이상에서 끌어올리는 암반수(강원 보건환경연구원 46가지 수질검사 최상급) 심야보일러 및 온수
										보일러 설치 차분한 동북향 배산임수지형으로 홍천강 상류가 동네 앞을 굽이 흘러가고 뒤는 노송으로 가득찬 국유림이
										있으며 지대가 높아 볕이 잘 드는 곳입니다. 20년간 공들여 가꾼 조경은 철쭉, 영산홍, 잣나무, 단풍,
										구상나무 왕벚나무 등이 가득합니다. 대형 잔디밭, 소형잔디밭+테라스 및 산책로가 어우러집니다. 주변은 고급
										펜션들과 유기농 블루베리 농장으로 둘러쌓여 있어 오염시설이 전혀 없고 여울길 등 산책로가 잘 조성되어 있습니다.
										서울-양양 고속도로 내촌 IC에서 약 9km, 12분 거리</p>
								</div>
						</a>
						</li>

						<li class="">
							<!-- loop | 테두리 : type1, bg : type2, 테두리+bg : type3 --> <a
							href="javascript:" onclick="goDetailPage('77795', '1')"> <span
								class="tit"><span class="tag_comm2 type2">월세</span><br>상가</span>
								<span class="s_type">보 2,000 만원 / 250 만원</span>
								<div class="info">
									<span class="loc">송파구 가락동 99㎡ </span>
									<p class="desc">국민고기냉면연구소 영업중</p>
								</div>
						</a>
						</li>

						<li class="">
							<!-- loop | 테두리 : type1, bg : type2, 테두리+bg : type3 --> <a
							href="javascript:" onclick="goDetailPage('77796', '1')"> <span
								class="tit"><span class="tag_comm2 type2">월세</span><br>상가</span>
								<span class="s_type">보 4,000 만원 / 200 만원</span>
								<div class="info">
									<span class="loc">부산진구 부전동 115㎡ </span>
									<p class="desc">부산 부산진구 서면 롯데호텔 인근 1층 상가건물입니다. 1개월전 오픈한
										일식,스시집입니다. 현재 성업중이며 성수기로 접어드는 시기이므로 매출이 꾸준히 늘고 있습니다 이 건물에
										10년이상 거주한 사유로 주변시세에 비해 월세등이 많이 저렴한 편입니다. 갑자기 개인 사정이 생겨 매매를 내놓게
										되었습니다. 일식집이나 스시 ,이자카야,카페 등 기존시설로 사용가능합니다. 권리금이라기보단 시설비 정도 받을까
										합니다. 금액은 협의가능합니다. 사거리 모서리 건물이며, 1층이며, 천고가 높아 건물이 실평수보다 크게
										느껴집니다 직거래매물이며, 관심있으신분들의 전화 부탁드립니다,</p>
								</div>
						</a>
						</li>

						<li class="">
							<!-- loop | 테두리 : type1, bg : type2, 테두리+bg : type3 --> <a
							href="javascript:" onclick="goDetailPage('77794', '1')"> <span
								class="tit"><span class="tag_comm2 type3">임대</span><br>공장</span>
								<span class="s_type">보 800 만원 / 65 만원</span>
								<div class="info">
									<span class="loc">남양주시 진접읍 19㎡ </span>
									<p class="desc">5톤트럭이 지나다닐 수 있습니다. 주변 시세보다 엄청 매우 저렴합니다.
										확장으로 좀 더 큰 곳으로 가려고 내놓는 부분입니다. 앞 마당이 있어 사용 가능하며, 총 3동중 가장 앞쪽에
										있어 단독 느낌으로 사용 가능합니다. 실 평수는 60평이며 복층 공사를 하여 복층까지 합치면 90평 사용
										가능합니다. 쇼룸 느낌으로 사용했던 부분으로 복층은 통 유리로 되어 있어 아래를 내려다 볼 수 있으며, 1층은
										파벽돌을 붙이고 천장은 블랙으로 칠하는 등 예쁘게 꾸며놓았습니다. 화장실은 공장 내부에 있어 단독으로 이용
										가능합니다.</p>
								</div>
						</a>
						</li>

						<li class="type1">
							<!-- loop | 테두리 : type1, bg : type2, 테두리+bg : type3 --> <a
							href="javascript:" onclick="goDetailPage('77781', '1')"> <span
								class="tit"><span class="tag_comm2 type1">매매</span><br>토지</span>
								<span class="s_type">4,500 만원</span>
								<div class="info">
									<span class="loc">예천군 효자면 34,512㎡ </span>
									<p class="desc">계곡끼고 산수가 수료함. 시골주택동네 맞은편에 과수원들이 둘러싸여있음</p>
								</div>
						</a>
						</li>

						<li class="">
							<!-- loop | 테두리 : type1, bg : type2, 테두리+bg : type3 --> <a
							href="javascript:" onclick="goDetailPage('77782', '1')"> <span
								class="tit"><span class="tag_comm2 type1">매매</span><br>기타</span>
								<span class="s_type">11,000 만원</span>
								<div class="info">
									<span class="loc">정선군 여량면 52,089㎡ </span>
									<p class="desc">산 36번지이고 현재 주택이 있으며 그 집 뒷담부터 제 땅입니다. 남쪽방향
										52089m2 (평당7000원) 빚이 있어서 사정상 급매합니다.</p>
								</div>
						</a>
						</li>

						<li class="">
							<!-- loop | 테두리 : type1, bg : type2, 테두리+bg : type3 --> <a
							href="javascript:" onclick="goDetailPage('77780', '1')"> <span
								class="tit"><span class="tag_comm2 type1">매매</span><br>빌딩</span>
								<span class="s_type">240,000 만원</span>
								<div class="info">
									<span class="loc">마포구 망원동 142㎡ </span>
									<p class="desc">● 위치 : 서울시 마포구 망원2동 474-10 (방울내로 11길 4) ●
										매매가격 : 24억 ● 토지면적 : 142.1m² ● 건물면적 : 56.88 ~ 74.16 m² ● 용도 :
										근린생활시설 ● 건물 : 지하 1층~지상 4층, 별도 주차장(주차공간 4대) ● 매물특징 : - ★초역세권으로
										마포구청역 5번출구에서 200m정도(도보 3분)에 위치한 건물 - 합정역까지 지하철 2정거장 - ★망리단길 약
										700m(도보 10분) - ★망원시장 약 500m, 상암홈플러스 및 메세나폴리스 약 1km 생활편리 최상 -
										★한강인접으로 망원한강공권까지 약 1km - 망원한강공원은 잔디밭과 산책로 등 휴식공간이 잘 조성되어 있으며
										유동인구 多 - 하늘공원, 망원유수지 체육공원, 평화의공원 인접 - 최근 마포한강아이파크(약 1km) 385세대
										입주로 상권 긍정적 및 투자가치 부상 - YG 신사옥 ‘19년 7월 예정 - 홍대, 연대, 서강대 서울 서부권
										유명학교가 반경 약 3km</p>
								</div>
						</a>
						</li>

						<li class="">
							<!-- loop | 테두리 : type1, bg : type2, 테두리+bg : type3 --> <a
							href="javascript:" onclick="goDetailPage('102258', '2')"> <span
								class="tit"><span class="tag_comm2 type1">매매</span><br>토지</span>
								<span class="s_type">160,000 ~ 170,000 만원</span>
								<div class="info">
									<span class="loc">양천구 목동 211㎡ </span>
									<p class="desc"></p>
								</div>
						</a>
						</li>

						<li class="">
							<!-- loop | 테두리 : type1, bg : type2, 테두리+bg : type3 --> <a
							href="javascript:" onclick="goDetailPage('77770', '1')"> <span
								class="tit"><span class="tag_comm2 type1">매매</span><br>빌라</span>
								<span class="s_type">53,000 만원</span>
								<div class="info">
									<span class="loc">종로구 부암동 100㎡ </span>
									<p class="desc">4층 빌라의 4층. 남향(면적 144.36/100.18) 밝고 전망 좋은 집.
										20평 정도의 야외 베란다가 4면으로 둘러 있음. 부암동 최고의 전망. 깨끗해서 수리 불필요. 옥상 독점 사용.
										옥상에 온실이 있어 활용 가능함. 옥상으로 올라가는 계단과 공간은 수납 공간으로 활용 가능.</p>
								</div>
						</a>
						</li>

						<li class="type1">
							<!-- loop | 테두리 : type1, bg : type2, 테두리+bg : type3 --> <a
							href="javascript:" onclick="goDetailPage('77762', '1')"> <span
								class="tit"><span class="tag_comm2 type2">월세</span><br>상가</span>
								<span class="s_type">보 5,000 만원 / 170 만원</span>
								<div class="info">
									<span class="loc">수원시 연무동 162㎡ </span>
									<p class="desc">인테리어 사무실로 이용했던 건물로 현재 공실이고, 1층(30평)은 자재창고,
										2층(30평)은 사무실로 사용하면 좋습니다. 전용면적 60평 사용할수 있습니다. 비슷한 업종으로 활용하셔도
										됩니다. 상가앞에 공영주차장이 있어 주차가 편하고, 상가에도 주차1대 할수 있습니다. 주차장위에는 공원으로
										조성이 되어 있어서 공원뷰가 아주 멋집니다. 수원화성 성곽뷰도 아주 이쁩니다. 임대기간은
										2년입니다.(2019년.4월~2021년.3월)</p>
								</div>
						</a>
						</li>

					</ul>
					<!-- //베이직매물 -->
					<!-- paging -->
					<div class="paging" id="pagingBasic">
						<strong><span class="skip">현재페이지</span>1</strong><a
							href="javascript:goPage(2, 1);">2</a><a
							href="javascript:goPage(3, 1);">3</a>
					</div>
					<!-- //paging -->

					<!-- 2017.10.20 추가 : 미래에셋 온라인보험 배너 추가 -->
					<div class="btn_wrap mgt4">
						<a
							href="https://online.miraeasset.com/html/event/ad_201508/index.html?tab=3&amp;_OC_=375"
							target="_blank"> <img
							src="https://image.r114.co.kr/W1/images/sub/img_ad_miraeasset.png"
							alt="미래에셋 온라인보험 자네 보험료는 가계수입의 몇 % 인가 (미래에셋생명) 생명보험협의회심의필 제 2015-1690호(2015.07.21)">
						</a>
					</div>
					<!-- //2017.10.20 추가 -->
				</div>

				<!-- 검색 결과 -->
				<div id="list_searchLoad" style="display: none;">
					<h4 class="h4_type4">
						<span id="searchAddressView"></span> 직거래 물건 <span class="fc_red"
							id="searchCount">0 건</span>
					</h4>
					<ul class="list_basic type2" id="list_search">
					</ul>
					<!-- paging -->
					<div class="paging" id="pagingSearch"></div>
					<!-- //paging -->
				</div>
				<!-- //검색 결과 -->
			</div>
			<!-- 컨텐츠 끝 -->
			<!-- 라이트 시작 -->
			<div class="right_wrap" id="divServiceRight">
				<!-- 라이드 시작 -->
				<div class="right_wrap">
					<!-- 부동산 GO -->
					<a href="/?_c=service&amp;_m=realGo"><img
						src="https://image.r114.co.kr/W1/images/sub/banner_rgo.png"
						alt="부동산GO 내 손안의 모든 부동산"></a>
					<!-- //부동산 GO -->
					<div class="bx_gray">
						<!-- 우리동네, 단지 이야기 BEST -->
						<div class="inner weekly">
							<h4 class="h4_type2">우리동네 이야기 BEST</h4>
							<ol class="list_num_type1" id="listCommunityBest">

								<li><a href="javascript:goCommunityDetailPage(1694);">화곡,
										마곡을 통틀어 토종 부촌인 화곡푸르지오</a></li>

								<li><a href="javascript:goCommunityDetailPage(1693);">보라매파크시티
										지역주택조합 은 주변에 보라매공원,롯데아파트,시립보라매병원이 있어서 좋아요</a></li>

								<li><a href="javascript:goCommunityDetailPage(1688);">서현역이랑
										5분거리이고 입지 진짜 좋아요</a></li>

								<li><a href="javascript:goCommunityDetailPage(1689);">아파트는
										좀 오래 되었지만, 주변역(분당선)이 가깝고, 편의시설(이마트 등)이 인접</a></li>

								<li><a href="javascript:goCommunityDetailPage(1692);">창현2지구에
										마석 에듀파크가 들어선다고 합니다.</a></li>

							</ol>
							<a href="/?_c=service&amp;_s=community" class="more_type1">더보기
								<span class="ico_comm_s more1"></span>
							</a>
						</div>
						<!-- //우리동네, 단지 이야기 BEST -->
					</div>
					<div class="bx_gray">
						<!-- 부동산상담 BEST -->
						<div class="inner weekly">
							<h4 class="h4_type2">부동산상담 BEST</h4>
							<ol class="list_num_type1" id="listCounselBest">

								<li><a
									href="javascript:goCounselDetailPage('expert', 5433);">청약시
										세대주 변경 관련 추가 문의 드립니다</a></li>

								<li><a
									href="javascript:goCounselDetailPage('expert', 5430);">청약 시
										세대주 변경 문의</a></li>

								<li><a
									href="javascript:goCounselDetailPage('expert', 5439);">신청채권자
										매수신고서 제출에 관해 문의드립니다.</a></li>

								<li><a
									href="javascript:goCounselDetailPage('expert', 5451);">대항력없는
										세입자의 미배당보증금</a></li>

								<li><a
									href="javascript:goCounselDetailPage('expert', 5459);"> 1세대
										1주택 비과세 관련</a></li>

							</ol>
							<a href="/?_c=service&amp;_m=counsel" class="more_type1">더보기
								<span class="ico_comm_s more1"></span>
							</a>
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

								<li><a href="javascript:goDirectDealDetailPage(77288);"><em
										class="fc_blue">[전원농가주택] </em>경상북도 경주시 내남면</a></li>

								<li><a href="javascript:goDirectDealDetailPage(77749);"><em
										class="fc_blue">[오피스텔] </em>강원도 속초시 교동</a></li>

								<li><a href="javascript:goDirectDealDetailPage(77738);"><em
										class="fc_blue">[창고] </em>경기도 평택시 신대동</a></li>

								<li><a href="javascript:goDirectDealDetailPage(77735);"><em
										class="fc_blue">[상가] </em>경기도 성남시 수내동</a></li>

							</ul>
							<a
								href="/?_c=service&amp;_s=directdeal&amp;_m=directdeallistPersonal"
								class="more_type1">더보기<span class="ico_comm_s more1"></span></a>
						</div>
						<!-- //직거래 팝니다 -->
					</div>
					<div class="bx_gray">
						<!-- 부동산114dml 솔루션 -->
						<div class="slide_type6 type2">
							<div class="bx-wrapper" style="max-width: 100%;">
								<div class="bx-viewport" aria-live="polite"
									style="width: 100%; overflow: hidden; position: relative; height: 120px;">
									<ul
										style="width: 2215%; position: relative; transition-duration: 0s; transform: translate3d(-228px, 0px, 0px);">
										<li
											style="float: left; list-style: none; position: relative; width: 228px;"
											class="bx-clone" aria-hidden="true"><a
											href="/?_c=solution&amp;_m=solutiondefault&amp;_a=katlas">
												<span class="thumb"><img
													src="https://image.r114.co.kr/W1/images/sub/banner_sol_katlas.jpg"
													alt="지역기반 데이터 융합 분석 서비스 K-atlas"></span>
										</a></li>
										<li
											style="float: left; list-style: none; position: relative; width: 228px;"
											aria-hidden="false"><a
											href="/?_c=solution&amp;_m=solutiondefault&amp;_a=reps">
												<span class="thumb"><img
													src="https://image.r114.co.kr/W1/images/sub/banner_sol_reps.jpg"
													alt="부동산 통계분석 솔루션 REPS"></span>
										</a></li>
										<li
											style="float: left; list-style: none; position: relative; width: 228px;"
											aria-hidden="true"><a
											href="/?_c=solution&amp;_m=solutiondefault&amp;_a=katlas">
												<span class="thumb"><img
													src="https://image.r114.co.kr/W1/images/sub/banner_sol_katlas.jpg"
													alt="지역기반 데이터 융합 분석 서비스 K-atlas"></span>
										</a></li>
										<li
											style="float: left; list-style: none; position: relative; width: 228px;"
											class="bx-clone" aria-hidden="true"><a
											href="/?_c=solution&amp;_m=solutiondefault&amp;_a=reps">
												<span class="thumb"><img
													src="https://image.r114.co.kr/W1/images/sub/banner_sol_reps.jpg"
													alt="부동산 통계분석 솔루션 REPS"></span>
										</a></li>
									</ul>
								</div>
								<div class="bx-controls bx-has-pager">
									<div class="bx-pager bx-default-pager">
										<div class="bx-pager-item">
											<a href="" data-slide-index="0" class="bx-pager-link active">1</a>
										</div>
										<div class="bx-pager-item">
											<a href="" data-slide-index="1" class="bx-pager-link">2</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- //부동산114dml 솔루션 -->
					</div>
					<div class="bx_gray">
						<!-- 부동산거래 단계별 가이드 -->
						<div class="inner news_r">
							<h4 class="h4_type2">부동산거래 단계별가이드</h4>
							<!--2017-09-26 해당요소를 단계별 가이드로 수정-->
							<div class="tab_a tab_ui" style="margin: 5px 0 10px 0">
								<a href="javascript:;" class="on">매매</a> <a href="javascript:;">전월세</a>
								<a href="javascript:;">분양</a>
							</div>
							<ul class="tab_cont">
								<li class="on">
									<!--매매-->
									<ul class="report_step_vertical">
										<li><a
											href="/?_c=Research&amp;_m=ReportNews&amp;_a=StepGuide&amp;deal=매매&amp;dealNum=1"><em
												class="emnum">01.</em>사전준비</a></li>
										<li><a
											href="/?_c=Research&amp;_m=ReportNews&amp;_a=StepGuide&amp;deal=매매&amp;dealNum=2"><em
												class="emnum">02.</em>정보수집</a></li>
										<li><a
											href="/?_c=Research&amp;_m=ReportNews&amp;_a=StepGuide&amp;deal=매매&amp;dealNum=3"><em
												class="emnum">03.</em>계약단계</a></li>
										<li><a
											href="/?_c=Research&amp;_m=ReportNews&amp;_a=StepGuide&amp;deal=매매&amp;dealNum=4"><em
												class="emnum">04.</em>등기/이사</a></li>
										<li><a
											href="/?_c=Research&amp;_m=ReportNews&amp;_a=StepGuide&amp;deal=매매&amp;dealNum=5"><em
												class="emnum">05.</em>거주</a></li>
										<li class="step_tip"><a
											href="/?_c=Research&amp;_m=ReportNews&amp;_a=StepGuide&amp;deal=매매&amp;dealNum=6">매도팁</a></li>
									</ul>
								</li>
								<li>
									<!--전월세-->
									<ul class="report_step_vertical">
										<li><a
											href="/?_c=Research&amp;_m=ReportNews&amp;_a=StepGuide&amp;deal=전월세&amp;dealNum=7"><em
												class="emnum">01.</em>사전준비</a></li>
										<li><a
											href="/?_c=Research&amp;_m=ReportNews&amp;_a=StepGuide&amp;deal=전월세&amp;dealNum=8"><em
												class="emnum">02.</em>정보수집</a></li>
										<li><a
											href="/?_c=Research&amp;_m=ReportNews&amp;_a=StepGuide&amp;deal=전월세&amp;dealNum=9"><em
												class="emnum">03.</em>계약단계</a></li>
										<li><a
											href="/?_c=Research&amp;_m=ReportNews&amp;_a=StepGuide&amp;deal=전월세&amp;dealNum=10"><em
												class="emnum">04.</em>이사/확정일자</a></li>
										<li><a
											href="/?_c=Research&amp;_m=ReportNews&amp;_a=StepGuide&amp;deal=전월세&amp;dealNum=11"><em
												class="emnum">05.</em>거주/재계약/퇴거</a></li>
										<li class="step_tip"><a
											href="/?_c=Research&amp;_m=ReportNews&amp;_a=StepGuide&amp;deal=전월세&amp;dealNum=13">임대팁</a></li>
									</ul>

								</li>
								<li>
									<!--분양권-->
									<ul class="report_step_vertical">
										<li><a
											href="/?_c=Research&amp;_m=ReportNews&amp;_a=StepGuide&amp;deal=분양&amp;dealNum=14"><em
												class="emnum">01.</em>청약통장 가입</a></li>
										<li><a
											href="/?_c=Research&amp;_m=ReportNews&amp;_a=StepGuide&amp;deal=분양&amp;dealNum=15"><em
												class="emnum">02.</em>분양정보 확인</a></li>
										<li><a
											href="/?_c=Research&amp;_m=ReportNews&amp;_a=StepGuide&amp;deal=분양&amp;dealNum=16"><em
												class="emnum">03.</em>청약신청</a></li>
										<li><a
											href="/?_c=Research&amp;_m=ReportNews&amp;_a=StepGuide&amp;deal=분양&amp;dealNum=17"><em
												class="emnum">04.</em>입주단계</a></li>
										<li><a
											href="/?_c=Research&amp;_m=ReportNews&amp;_a=StepGuide&amp;deal=분양&amp;dealNum=18"><em
												class="emnum">05.</em>입주 후</a></li>
										<li class="step_tip"><a
											href="/?_c=Research&amp;_m=ReportNews&amp;_a=StepGuide&amp;deal=분양&amp;dealNum=19">분양권
												거래</a></li>
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

						$(".report_step_vertical").each(function() {
							$(this).children().last().addClass("step_tip");
							$(this).children().last().find(".emnum").remove();
						});

					});

					function goCommunityDetailPage(g) {

						var formData = {
							"page" : 1,
							"Metro" : "",
							"County" : "",
							"Town" : "",
							"complexCd" : "",
							"sortTag" : "",
							"sortTag2" : "",
							"tabGubun" : "1",
							"searchGubun" : "",
							"searchText" : "",
							"viewId" : g
						};
						createHisFrm(formData,
								"/?_c=service&_s=community&_m=communityview&_a=townview");

					}

					function goCounselDetailPage(tabGubun, g) {

						//var formData = {"page": 1, "Metro": "", "County": "", "Town": "", "complexCd": "", "sortTag": "", "sortTag2": "", "tabGubun": "2", "searchGubun": "", "searchText": "", "viewId": g};
						window.location.href = "/?_c=service&_s=counsel&_m=counselview&consultgubun="
								+ tabGubun + "&idx=" + g;

					}

					function goDirectDealDetailPage(g) {

						window.location.href = "/?_c=service&_s=directdeal&_m=directdealdetailPersonal&seq="
								+ g;

					}
				</script>
			</div>
			<!-- 라이트 끝 -->
		</div>
	</div>
	<!-- 바디  -->

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






	<script type="text/javascript" src="/W1/js/search.js"></script>
	<script type="text/javascript" src="/W1/js/Service/Service.js"></script>
	<script type="text/javascript" src="/W1/js/Service/DirectDealList.js"></script>
	<script type="text/javascript" src="/W1/js/PageUtil.js"></script>
	<script type="text/javascript">
		var util1 = new PageUtil(); // 베이직매물용
		var util2 = new PageUtil(); // 검색매물용

		var _SEL_METRO = "{도시(기본)}";
		var _SEL_COUNTY = "{구시군(기본)}";
		var _SEL_TOWN = "{읍면동(기본)}";
		var _LOADACT = "1100000000|1|서울특별시";
		var _CALLBACKFUNC = "selectAreaValue";
		var _CALLBACKFUNCALL = "selectAreaValue";
		var _CALLBACKFUNCSEARCH = "selectSearchValue";
		var _SEARCHTYPE = 0; //	시구동 레벨로 조회 결과 받음
		var _NECESSARYADDRLEVEL = 3; // 시도, 구시군, 읍면동 모두 출력
		var _SEARCHTXTMSG = "시, 구, 동 등을 입력하세요."

		$('input[type=text], textarea').placeholder();

		$(document)
				.ready(
						function() {
							/* 김동현(2017-12-02)
							search_CreateAddrHtml("body");
							 */

							// 매물유형 선택	(변경)
							$('#estateTypeFilter')
									.on(
											'selectmenuchange',
											function() {

												setDealingWayList("1");
												setPriceFilter();

												if ($("#estateTypeFilter")
														.val() == "토지"
														|| $(
																"#estateTypeFilter")
																.val() == "기타") {
													$(".clsOptionView").hide();
												} else {
													$(".clsOptionView").show();
												}

											});

							// 거래형태 선택	(변경)
							$('#dealingWayFilter').on('selectmenuchange',
									function() {

										setPriceFilter();
										setPriceFilterBW();

									});

							// 가격 선택 (전체, 매매)
							$('#priceFilterItem1').on('selectmenuchange',
									function() {

										setPriceRangeFilter1();

									});

							// 가격 선택 (월세, 임대)
							$('#priceFilterItem2').on('selectmenuchange',
									function() {

										setPriceRangeFilter2();

									});

							// 가격 선택 (월세, 임대)
							$('#priceFilterBW').on('selectmenuchange',
									function() {

										setPriceFilterBW();

									});

							// 다른 매물 목록 보기
							$("#listEnterprise")
									.on(
											'click',
											function() {

												window.location.href = "/?_c=service&_s=directdeal&_m=directdeallistEnterprise";

											});
							$("#listState")
									.on(
											'click',
											function() {

												window.location.href = "/?_c=service&_s=directdeal&_m=directdeallistState";

											});

							// 검색 클릭
							$("#cmdSearch1").on("click", function(e) {

								$.Hash['page'] = 1;
								search();

							});
							$("#cmdSearch2").on("click", function(e) {

								$.Hash['page'] = 1;
								search();

							});

							// 초기화 클릭
							$('.btn_ico_type1').click(function() {
								initializeSearch();
							});

							// 이용안내 클릭
							$("#cmdGuide").on("click", function(e) {
								goGuidePage();
							});

							// 상품등록안내
							$("#cmdRegist").on("click", function(e) {
								goRegistPage();
							});

							// 주소삭제 클릭
							$("#cmdDeleteAddr").on("click", function(e) {

								$("#addrSearchWord").val("");

							});

							// 숫자만 입력
							$("input:text[numberOnly]")
									.on(
											"change keyup input",
											function(e) {
												if (!isEmpty($(this).data(
														"price"))
														&& $(this)
																.data("price")
																.toString() == "Y") {
													$(this)
															.val(
																	numberWithCommas($(
																			this)
																			.val()
																			.replace(
																					/[^0-9.]/gi,
																					"")));
												} else {
													$(this)
															.val(
																	$(this)
																			.val()
																			.replace(
																					/[^0-9.]/gi,
																					""));
												}
											});

							$("#list_searchLoad").css("display", "none");

							// 가격 선택은 기본 타입1로.
							$("#priceFilterType2").css("display", "none");

							// 매물유형 리스트 조회
							getEstateTypeList("1");
							// 매물유형별 거래형태 리스트 조회
							setDefaultDealingwayFilter("1");
							// 가격형태 설정
							setPriceFilter();
							// 가격범위 조건 기본 설정
							setDefaultPriceRangeFilter();

							setFilterOptions();

							util1.totalCnt = parseInt(21);
							util1.curPage = parseInt(1);
							util1.pageRows = parseInt(10);
							util1.disPagepCnt = parseInt(10);
							util1.setTotalPage();
							drawPageNumber(1);

							util1.curPage = $.Hash['page'] || 1;
							util1.setNum = 1;
							util1.callFunction = getDirectDealListBasic;

							util2.curPage = $.Hash['page'] || 1;
							util2.setNum = 2;
							util2.callFunction = getDirectDealSearch;
						})

		/**************************************************************************
		해시 변경 이벤트 처리
		 **************************************************************************/
		$(function() {
			$(window).hashchange(function() {

				if ($.QueryString['listMode'] == 'search') {
					//delete $.QueryString['listMode'];
					setView();
					getDirectDealSearch();
				} else {
					getDirectDealListBasic();
				}
			});
			$(window).hashchange();
		});

		/* 검색 조건 초기화  */
		function initializeSearch() {

			// 가격 선택은 기본 타입1로.
			$("#priceFilterType2").css("display", "none");

			// 매물유형 리스트 조회
			getEstateTypeList("1");
			// 매물유형별 거래형태 리스트 조회
			setDefaultDealingwayFilter("1");
			// 가격형태 설정
			setPriceFilter();
			// 가격범위 조건 기본 설정
			setDefaultPriceRangeFilter();
			setFilterOptions();
			setSearchSizeOpt();
			setSearchSize();
			resetOptionsDetail();
			$("#addrSearchWord").val("");
		}

		function search() {

			$.QueryString['listMode'] = 'search';

			// 시도/구시군/읍면동
			var arrAddr = jQuery.trim($("#addrSearchWord").TextVal())
					.split(" ");
			$.QueryString['addr1'] = isEmpty(arrAddr[0]) ? "" : arrAddr[0];
			$.QueryString['addr2'] = isEmpty(arrAddr[1]) ? "" : arrAddr[1];
			$.QueryString['addr3'] = isEmpty(arrAddr[2]) ? "" : arrAddr[2];

			$.QueryString['propertyType'] = $(
					'#estateTypeFilter option:selected').val()
					|| '전체'; //모바일 호환
			$.QueryString['dealingWay'] = $('#dealingWayFilter option:selected')
					.val();

			var dealingWay = $('#dealingWayFilter option:selected').val();

			switch (dealingWay) {
			case '매매':
				$.QueryString['price'] = $('#priceFilterItem1 option:selected')
						.val();
				$.QueryString['priceMin'] = $('#priceFilter1Min').val();
				$.QueryString['priceMax'] = $('#priceFilter1Max').val();
				break;
			case '전세':
				$.QueryString['price'] = $('#priceFilterItem1 option:selected')
						.val();
				$.QueryString['jDepositMin'] = $('#priceFilter1Min').val();
				$.QueryString['jDepositMax'] = $('#priceFilter1Max').val();
				break;
			case '월세':
			case '임대':
				$.QueryString['price'] = $('#priceFilterItem2 option:selected')
						.val();
				$.QueryString['depositRent'] = $(
						'#priceFilterBW option:selected').val();
				if ($.QueryString['depositRent'] == "보증금") {
					$.QueryString['lDepositMin'] = $('#priceFilter2Min').val();
					$.QueryString['lDepositMax'] = $('#priceFilter2Max').val();
				} else if ($.QueryString['depositRent'] == "월세") {
					$.QueryString['rentMin'] = $('#priceFilter2Min').val();
					$.QueryString['rentMax'] = $('#priceFilter2Max').val();
				}
				break;
			default:
				$.QueryString['price'] = $('#priceFilterItem1 option:selected')
						.val();
				$.QueryString['depositRent'] = "";
				$.QueryString['priceMin'] = $('#priceFilter1Min').val();
				$.QueryString['priceMax'] = $('#priceFilter1Max').val();
			}

			$.QueryString['size'] = $('#searchSize option:selected').val()
					|| '';
			$.QueryString['sizeMin'] = $('#sl').val() || '';
			$.QueryString['sizeMax'] = $('#sh').val() || '';

			$.QueryString['room'] = $('#bang option:selected').val() || '';
			$.QueryString['bath'] = $('#bath option:selected').val() || '';

			$.QueryString['subwayLine'] = $('#subl option:selected').val()
					|| '';
			$.QueryString['stationName'] = $('#subn option:selected').val()
					|| '';
			$.QueryString['means'] = $('#subm option:selected').val() || '';
			$.QueryString['timeDistance'] = $('#subt option:selected').val()
					|| '';

			$.each($.QueryString, function(key, value) {
				if (value == null || value.match(/^ *$/)
						|| value.indexOf('전체') != -1) {
					delete $.QueryString[key];
				}
			});

			location.href = $.QueryStringSerialize() + $.HashSerialize();
		}

		function setView() {
			//지역
			$("#addrSearchWord").val(
					$.QueryStringGet('addr1', '') + ' '
							+ $.QueryStringGet('addr2', '') + ' '
							+ $.QueryStringGet('addr3', ''));

			//매물종류
			$(
					"#estateTypeFilter option[value='"
							+ $.QueryStringGet('propertyType', '') + "']")
					.attr("selected", true);
			$(
					"#estateTypeFilter option[value='"
							+ $.QueryStringGet('propertyType', '') + "']")
					.prop("selected", true);
			$("#estateTypeFilter").selectmenu('refresh');

			//거래유형
			$(
					"#dealingWayFilter option[value='"
							+ $.QueryStringGet('dealingWay', '') + "']").attr(
					"selected", true);
			$(
					"#dealingWayFilter option[value='"
							+ $.QueryStringGet('dealingWay', '') + "']").prop(
					"selected", true);
			$("#dealingWayFilter").selectmenu('refresh');
			$('#dealingWayFilter').trigger('selectmenuchange');

			//가격
			switch ($.QueryString['dealingWay']) {
			case '전세':
				$(
						"#priceFilterItem1 option[value='"
								+ $.QueryStringGet('price', '') + "']").attr(
						"selected", true);
				$(
						"#priceFilterItem1 option[value='"
								+ $.QueryStringGet('price', '') + "']").prop(
						"selected", true);
				$("#priceFilterItem1").selectmenu('refresh');

				$('#priceFilter1Min').val($.QueryString['jDepositMin']);
				$('#priceFilter1Max').val($.QueryString['jDepositMax']);
			case '월세':
			case '임대':
				$(
						"#priceFilterBW option[value='"
								+ $.QueryStringGet('depositRent', '') + "']")
						.attr("selected", true);
				$(
						"#priceFilterBW option[value='"
								+ $.QueryStringGet('depositRent', '') + "']")
						.prop("selected", true);
				$("#priceFilterBW").selectmenu('refresh');
				$('#priceFilterBW').trigger('selectmenuchange');

				$(
						"#priceFilterItem2 option[value='"
								+ $.QueryStringGet('price', '') + "']").attr(
						"selected", true);
				$(
						"#priceFilterItem2 option[value='"
								+ $.QueryStringGet('price', '') + "']").prop(
						"selected", true);
				$("#priceFilterItem2").selectmenu('refresh');

				if ($.QueryString['depositRent'] == '보증금') {
					$('#priceFilter2Min').val($.QueryString['lDepositMin']);
					$('#priceFilter2Max').val($.QueryString['lDepositMax']);
				} else { //월세
					$('#priceFilter2Min').val($.QueryString['rentMin']);
					$('#priceFilter2Max').val($.QueryString['rentMax']);
				}
			default:
				$(
						"#priceFilterItem1 option[value='"
								+ $.QueryStringGet('price', '') + "']").attr(
						"selected", true);
				$(
						"#priceFilterItem1 option[value='"
								+ $.QueryStringGet('price', '') + "']").prop(
						"selected", true);
				$("#priceFilterItem1").selectmenu('refresh');

				$('#priceFilter1Min').val($.QueryString['priceMin']);
				$('#priceFilter1Max').val($.QueryString['priceMax']);
			}

			//면적
			$(
					"#searchSize option[value='" + $.QueryStringGet('size', '')
							+ "']").attr("selected", true);
			$(
					"#searchSize option[value='" + $.QueryStringGet('size', '')
							+ "']").prop("selected", true);
			$("#searchSize").selectmenu('refresh');

			$('#sl').val($.QueryString['sizeMin']);
			$('#sh').val($.QueryString['sizeMax']);

			//방수
			$("#bang option[value='" + $.QueryStringGet('room', '') + "']")
					.attr("selected", true);
			$("#bang option[value='" + $.QueryStringGet('room', '') + "']")
					.prop("selected", true);
			$("#bang").selectmenu('refresh');

			//욕실수
			$("#bath option[value='" + $.QueryStringGet('bath', '') + "']")
					.attr("selected", true);
			$("#bath option[value='" + $.QueryStringGet('bath', '') + "']")
					.prop("selected", true);
			$("#bath").selectmenu('refresh');

			//교통정보
			setTimeout(function() {
				$.when(
						//호선
						$(
								"#subl option[value='"
										+ $.QueryStringGet('subwayLine', '')
										+ "']").attr("selected", true),
						$(
								"#subl option[value='"
										+ $.QueryStringGet('subwayLine', '')
										+ "']").prop("selected", true),
						$("#subl").selectmenu('refresh'),
						setSubwayline("#subn", "1", $('#subl option:selected')
								.val(), "0")).done(
						function() {
							//역명
							$(
									"#subn option[value='"
											+ $.QueryStringGet('stationName',
													'') + "']").attr(
									"selected", true);
							$(
									"#subn option[value='"
											+ $.QueryStringGet('stationName',
													'') + "']").prop(
									"selected", true);
							$("#subn").selectmenu('refresh');
						});

				//이동방법
				$.when(setTransportationMeans("#subm")).done(
						function() {
							$(
									"#subm option[value='"
											+ $.QueryStringGet('means', '')
											+ "']").attr("selected", true);
							$(
									"#subm option[value='"
											+ $.QueryStringGet('means', '')
											+ "']").prop("selected", true);
							$("#subm").selectmenu('refresh');
						});
			}, 10);

			//소요시간
			$(
					"#subt option[value='"
							+ $.QueryStringGet('timeDistance', '') + "']")
					.attr("selected", true);
			$(
					"#subt option[value='"
							+ $.QueryStringGet('timeDistance', '') + "']")
					.prop("selected", true);
			$("#subt").selectmenu('refresh');

			//상세옵션 on
			if ($.QueryString['sizeMin'] || $.QueryString['room']
					|| $.QueryString['bath'] || $.QueryString['subwayLine']
					|| $.QueryString['stationName'] || $.QueryString['means']
					|| $.QueryString['timeDistance']) {

				$(".option_wrap").addClass("on");
				$(".btn_detail_option").addClass("on");
			} else {
				$(".option_wrap").removeClass("on");
				$(".btn_detail_option").removeClass("on");
			}
		}

		/* 매물 조회 (검색) */
		var getDirectDealSearch = function() {

			// 검색을 실행하면 기본 리스트는 제거한다
			$("#list_firstLoad").css("display", "none");
			$("#list_firstLoad").remove();
			$("#list_searchLoad").css("display", "");

			// 검색 결과 타이틀
			var title = $("#addrSearchWord").TextVal() + " "
					+ $('#estateTypeFilter option:selected').text() + " "
					+ $('#dealingWayFilter option:selected').val();
			$("#searchAddressView").html(jQuery.trim(title));

			var formData = {
				page : util2.curPage,
				estateType : ($.QueryString['propertyType'] || '')
						+ ($.QueryString['dealingWay'] || ''),
				addr1 : $.QueryString['addr1'] || '',
				addr2 : $.QueryString['addr2'] || '',
				addr3 : $.QueryString['addr3'] || '',
				sizeLow : $.QueryString['sizeMin'] || '',
				sizeHigh : $.QueryString['sizeMax'] || '',
				dealType : $.QueryString['dealingWay'] || '',
				mPriceLow : $.QueryString['priceMin'] || '',
				mPriceHigh : $.QueryString['priceMax'] || '',
				jPriceLow : $.QueryString['jDepositMin'] || '',
				jPriceHigh : $.QueryString['jDepositMax'] || '',
				bPriceLow : $.QueryString['lDepositMin'] || '',
				bPriceHigh : $.QueryString['DepositMax'] || '',
				wPriceLow : $.QueryString['rentMin'] || '',
				wPriceHigh : $.QueryString['rentMax'] || '',
				bang : $.QueryString['room'] || '',
				bath : $.QueryString['bath'] || '',
				subL : $.QueryString['subwayLine'] || '',
				subN : $.QueryString['stationName'] || '',
				subM : $.QueryString['means'] || '',
				subT : $.QueryString['timeDistance'] || ''
			}

			//$(".option_wrap").removeClass("on");
			//$(".btn_detail_option").removeClass("on");

			$
					.ajax({
						url : "/?_c=service&_s=directdeal&_m=directDealListPersonal&_a=DirectDealListPersonalSearch.ajax",
						type : "POST",
						data : formData,
						success : function(data, textStatus, jqXHR) {
							var res = data.split("<!--@#$ INFO AREA $#@-->");
							if (data.length > 0) { // 자료가 있을때.
								if (parseInt(res[1]) > 0) {
									$("#list_search").html(res[0]);
								} else {
									$("#list_search")
											.html(
													"<li class='result_nodata'>검색 결과가 없습니다.</li>");
								}

								util2.totalCnt = parseInt(res[1]); // {검색/총글수};
								util2.curPage = parseInt(res[2]); // {검색/현재페이지};
								util2.pageRows = parseInt(res[3]); // {검색/출력글수};
								util2.disPagepCnt = parseInt(res[4]); // {검색/출력페이지수}
								util2.setTotalPage();

								$("#searchCount").html(parseInt(res[5]) + " 건");

								drawPageNumber(2);
							} else { // 자료가 없을때.
								$("#list_search")
										.html(
												"<li class='result_nodata'>검색 결과가 없습니다.</li>");
								util2.totalCnt = 0;
								drawPageNumber(2);
							}
						},
						error : function(jqXHR, textStatus, errorThrown) {
						}
					});
		}

		/* 매물 조회 (베이직매물) */
		var getDirectDealListBasic = function() {

			var productType, estateType, addr1, addr2, addr3, sizeLow, sizeHigh, dealType, mPriceLow, mPriceHigh, jPriceLow, jPriceHigh, bPriceLow, bPriceHigh, wPriceLow, wPriceHigh, bang, bath, direction, door, heatt, heatf, subL, subN, subM, subT, lifeequipment, etcequipment, sfKind, sfKeyword;
			productType = "베이직";

			var formData = {
				page : util1.curPage,
				productType : productType,
				estateType : estateType,
				addr1 : addr1,
				addr2 : addr2,
				addr3 : addr3,
				sizeLow : sizeLow,
				sizeHigh : sizeHigh,
				dealType : dealType,
				mPriceLow : mPriceLow,
				mPriceHigh : mPriceHigh,
				jPriceLow : jPriceLow,
				jPriceHigh : jPriceHigh,
				bPriceLow : bPriceLow,
				bPriceHigh : bPriceHigh,
				wPriceLow : wPriceLow,
				wPriceHigh : wPriceHigh,
				bang : bang,
				bath : bath,
				direction : direction,
				door : door,
				heatt : heatt,
				heatf : heatf,
				subL : subL,
				subN : subN,
				subM : subM,
				subT : subT,
				lifeequipment : lifeequipment,
				etcequipment : etcequipment,
				sfKind : sfKind,
				sfKeyword : sfKeyword
			}

			$
					.ajax({
						url : "/?_c=service&_s=directdeal&_m=directDealListPersonal&_a=DirectDealListPersonalBasic.ajax",
						type : "POST",
						data : formData,
						success : function(data, textStatus, jqXHR) {
							var res = data.split("<!--@#$ INFO AREA $#@-->");
							if (data.length > 0) { // 자료가 있을때.
								$("#list_basic").html(res[0]);

								util1.totalCnt = parseInt(res[1]);
								util1.curPage = parseInt(res[2]);
								util1.pageRows = parseInt(res[3]);
								util1.disPagepCnt = parseInt(res[4]);
								util1.setTotalPage();

								drawPageNumber(1);
							} else { // 자료가 없을때.
								$("#list_basic").html("");
								util2.totalCnt = 0;
								drawPageNumber(1);
							}
						},
						error : function(jqXHR, textStatus, errorThrown) {
							// 	alert("code:"+jqXHR.status+"\n"+"message:"+jqXHR.responseText+"\n"+"error:"+errorThrown);
						}
					});

		}

		/* 상세페이지로 이동 */
		function goDetailPage(seq, type) {

			$.QueryString['_c'] = 'service';
			$.QueryString['_s'] = 'directDeal';
			$.QueryString['_m'] = 'directDealDetailPersonal';
			$.QueryString['seq'] = seq;

			if (type) {
				$.QueryString['type'] = type;
				//var link = "/?_c=service&_s=directdeal&_m=directdealdetailPersonal&seq=" + seq + "&type=" + type;
			} else {
				$.QueryString['type'] = 1;
				//var link = "/?_c=service&_s=directdeal&_m=directdealdetailPersonal&seq=" + seq + "&type=1";
			}

			location.href = $.QueryStringSerialize() + $.HashSerialize();
			//fnWinUrl(link, "_blank", "", "","","");
		}

		/* 등록 페이지로 이동 */
		function goSellPage(goodsCode) {

			/*
			alert('점검 중입니다. \n불편을 끼쳐드려 죄송합니다.');
			return false;
			 */

			var url = "/?_c=service&_s=directdeal&_m=directdealsellpersonal&goodsCode="
					+ goodsCode + "";
			getUserInfoServer(function(result, data) {
				if (result == false) {
					if (confirm("로그인이 필요합니다.")) {
						fn_loginDiv(url);
						return;
					} else {
						return false;
					}
				} else {
					window.location.href = url;
				}
			});
		}

		/* 주소검색 결과  */
		function selectAreaValue(coartNo, addrLevel, addrAll, addrMapX,
				addrMapY, addr1, addr2, addr3, addrCode, mapX, mapY) {
			var area = addr1 + " " + addr2 + " " + addr3;
			$("#addrSearchWord").val(area);
			closeLp('type3');
		}

		function selectSearchValue(addr1, addr2, addr3, coordx, coordy,
				gubuncode, gubuncode1, gubuncode2, identifycode, searchkeyword) {
			_SEL_METRO = addr1;
			_SEL_COUNTY = addr2;
			_SEL_TOWN = addr3;

			closeLp('type3');

			$("#addrSearchWord").val(addr1 + " " + addr2 + " " + addr3);
			search_autoFillSearchReset();
		}

		// 페이지유틸 객체 리턴한다.
		function setUtilObj(setNum) {
			if (setNum == 1) {
				return util1;
			} else if (setNum == 2) {
				return util2;
			}
		}

		// 페이징 영역을 화면에 출력한다.
		function drawPageNumber(setNum) {
			var setUtil = setUtilObj(setNum)

			if (setUtil.setNum == 1) {
				$("#pagingBasic").html(setUtil.Drow());
			} else if (setUtil.setNum == 2) {
				$("#pagingSearch").html(setUtil.Drow());
			}
		}

		// 해당 페이지의 데이터를 출력한다.
		function goPage(pageNo, setNum) {
			var setUtil = setUtilObj(setNum)

			$.Hash['page'] = setUtil.curPage = pageNo;
			//setUtil.callFunction();
			location.href = $.HashSerialize();
		}

		function next_page(setNum) {
			var setUtil = setUtilObj(setNum)

			setUtil.curPage = setUtil.getNextPage();
			setUtil.callFunction();
		}

		function next(setNum) {
			var setUtil = setUtilObj(setNum)

			setUtil.curPage = setUtil.getNext();
			setUtil.callFunction();
		}

		function prev_page(setNum) {
			var setUtil = setUtilObj(setNum)

			setUtil.curPage = setUtil.getPrevPage();
			setUtil.callFunction();
		}

		function prev(setNum) {
			var setUtil = setUtilObj(setNum)

			setUtil.curPage = setUtil.getPrev();
			setUtil.callFunction();
		}
	</script>
	<div class="ui-selectmenu-menu ui-front">
		<ul aria-hidden="true" aria-labelledby="priceFilterBW-button"
			id="priceFilterBW-menu" role="listbox" tabindex="0"
			class="ui-menu ui-corner-bottom ui-widget ui-widget-content"></ul>
	</div>
	<div class="ui-selectmenu-menu ui-front">
		<ul aria-hidden="true" aria-labelledby="priceFilterItem2-button"
			id="priceFilterItem2-menu" role="listbox" tabindex="0"
			class="ui-menu ui-corner-bottom ui-widget ui-widget-content"></ul>
	</div>
	<div class="ui-selectmenu-menu ui-front">
		<ul aria-hidden="true" aria-labelledby="subn-button" id="subn-menu"
			role="listbox" tabindex="0"
			class="ui-menu ui-corner-bottom ui-widget ui-widget-content"></ul>
	</div>
	<div class="ui-selectmenu-menu ui-front">
		<ul aria-hidden="true" aria-labelledby="estateTypeFilter-button"
			id="estateTypeFilter-menu" role="listbox" tabindex="0"
			class="ui-menu ui-corner-bottom ui-widget ui-widget-content"></ul>
	</div>
	<div class="ui-selectmenu-menu ui-front">
		<ul aria-hidden="true" aria-labelledby="dealingWayFilter-button"
			id="dealingWayFilter-menu" role="listbox" tabindex="0"
			class="ui-menu ui-corner-bottom ui-widget ui-widget-content"></ul>
	</div>
	<div class="ui-selectmenu-menu ui-front">
		<ul aria-hidden="true" aria-labelledby="priceFilterItem1-button"
			id="priceFilterItem1-menu" role="listbox" tabindex="0"
			class="ui-menu ui-corner-bottom ui-widget ui-widget-content"></ul>
	</div>
	<div class="ui-selectmenu-menu ui-front">
		<ul aria-hidden="true" aria-labelledby="searchSize-button"
			id="searchSize-menu" role="listbox" tabindex="0"
			class="ui-menu ui-corner-bottom ui-widget ui-widget-content"></ul>
	</div>
	<div class="ui-selectmenu-menu ui-front">
		<ul aria-hidden="true" aria-labelledby="bang-button" id="bang-menu"
			role="listbox" tabindex="0"
			class="ui-menu ui-corner-bottom ui-widget ui-widget-content"></ul>
	</div>
	<div class="ui-selectmenu-menu ui-front">
		<ul aria-hidden="true" aria-labelledby="bath-button" id="bath-menu"
			role="listbox" tabindex="0"
			class="ui-menu ui-corner-bottom ui-widget ui-widget-content"></ul>
	</div>
	<div class="ui-selectmenu-menu ui-front">
		<ul aria-hidden="true" aria-labelledby="subt-button" id="subt-menu"
			role="listbox" tabindex="0"
			class="ui-menu ui-corner-bottom ui-widget ui-widget-content"></ul>
	</div>
	<iframe name="easyXDM_Kakao_default1156_provider"
		id="easyXDM_Kakao_default1156_provider"
		src="https://kapi.kakao.com/cors/?xdm_e=https%3A%2F%2Fwww.r114.com&amp;xdm_c=default1156&amp;xdm_p=1"
		frameborder="0" style="position: absolute; top: -2000px; left: 0px;"></iframe>
	<div class="ui-selectmenu-menu ui-front">
		<ul aria-hidden="true" aria-labelledby="subl-button" id="subl-menu"
			role="listbox" tabindex="0"
			class="ui-menu ui-corner-bottom ui-widget ui-widget-content"></ul>
	</div>
	<div class="ui-selectmenu-menu ui-front">
		<ul aria-hidden="true" aria-labelledby="subm-button" id="subm-menu"
			role="listbox" tabindex="0"
			class="ui-menu ui-corner-bottom ui-widget ui-widget-content"></ul>
	</div>
	<div id="fb-root" class=" fb_reset">
		<div
			style="position: absolute; top: -10000px; width: 0px; height: 0px;">
			<div>
				<iframe name="fb_xdm_frame_https" frameborder="0"
					allowtransparency="true" allowfullscreen="true" scrolling="no"
					allow="encrypted-media" id="fb_xdm_frame_https" aria-hidden="true"
					title="Facebook Cross Domain Communication Frame" tabindex="-1"
					src="https://staticxx.facebook.com/connect/xd_arbiter/r/d_vbiawPdxB.js?version=44#channel=f9df0ef83a2d7&amp;origin=https%3A%2F%2Fwww.r114.com"
					style="border: none;"></iframe>
			</div>
			<div></div>
		</div>
	</div>
</body>
</html>