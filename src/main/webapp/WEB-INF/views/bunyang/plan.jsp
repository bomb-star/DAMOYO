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
						<input type="text" placeholder="알리미서비스 이벤트! 신청하GO, 커피받GO"
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
							value="알리미서비스 이벤트! 신청하GO, 커피받GO"> <input type="hidden"
							name="adSearchKeywordUrl" id="adSearchKeywordUrl"
							value="http://https://www.r114.com/?_c=service&amp;_m=event&amp;_a=eventviewalimi">
						<input type="hidden" name="adSearchKeywordOption"
							id="adSearchKeywordOption" value="0">
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
					<h3>분양일정</h3>
				</div>
				<div class="location">
					<ul>
						<li><a href="/">홈</a></li>
						<li><a href="/?_c=lots">분양</a></li>
						<li>분양일정</li>
					</ul>
				</div>
			</div>
			<!-- 타이틀 끝 -->
			<!-- 컨텐츠 시작 -->
			<div class="contents_wrap">
				<!-- 검색 및 옵션 -->
				<div class="srch_deal_wrap srch_sale_wrap2">
					<div class="option_item">
						<span class="option_tit">지역</span> <span class="inp_wrap btn_type"><button
								type="button" class="btn_srchbox">
								<span class="ico_comm_s search">검색</span>
							</button> <input type="text" class="inp_txt" placeholder="시,구,동 등을 입력하세요."
							style="width: 308px; margin-right: 0;" id="addrSearchWord"
							readonly="" onclick="search_CreateAddrHtml('body', this.value);">
							<button type="button" class="btn_del round_s" id="cmdDeleteAddr">삭제버튼</button>
						</span>
					</div>
					<div class="option_item multi_row">
						<span> <strong class="option_tit">달력</strong> <span
							id="conditionCalendar"> <a href="javascript:"
								class="txt_sel selected" id="calendarTypeM"
								onclick="changeCondition(this, 'M');">월단위</a>
							<!-- 활성화 class="selected" --> <a href="javascript:"
								class="txt_sel" id="calendarTypeW"
								onclick="changeCondition(this, 'W');">주단위</a>
						</span>
						</span> <span> <strong class="option_tit">분양일정</strong> <span
							class="sort_wrap3" id="conditionStatus"> <a
								href="javascript:" class="txt_sel selected" id="status0"
								onclick="changeCondition(this, '');">전체</a> <a
								href="javascript:" class="txt_sel" id="status1"
								onclick="changeCondition(this, '1');">오픈</a> <a
								href="javascript:" class="txt_sel" id="status2"
								onclick="changeCondition(this, '2');">공고</a> <a
								href="javascript:" class="txt_sel" id="status3"
								onclick="changeCondition(this, '3');">접수</a> <a
								href="javascript:" class="txt_sel" id="status4"
								onclick="changeCondition(this, '4');">발표</a> <a
								href="javascript:" class="txt_sel last" id="status5"
								onclick="changeCondition(this, '5');">계약</a>
						</span>
						</span>
					</div>

					<div class="option_item">
						<strong class="option_tit">분양종류</strong> <span class="sort_wrap3"
							id="conditionEstateType"> <a href="javascript:"
							class="txt_sel selected" id="estateType0"
							onclick="changeCondition(this, '0');">전체</a> <a
							href="javascript:" class="txt_sel" id="estateTypeA"
							onclick="changeCondition(this, 'B');">아파트</a> <a
							href="javascript:" class="txt_sel" id="estateTypeB"
							onclick="changeCondition(this, 'C');">오피스텔</a> <a
							href="javascript:" class="txt_sel" id="estateTypeC"
							onclick="changeCondition(this, 'D');">도시형생활주택</a>
						</span>
					</div>
				</div>
				<!-- //검색 및 옵션 -->

				<!-- 달력 -->
				<!-- 월단위 -->
				<div class="calendar_wrap" id="monthlyWrap">
					<!-- 기간 -->
					<div class="period_setting">
						<button type="button" class="btn_cal" id="calendarPrevMonth"
							onclick="changeMonthlyCalendar('prev');">
							<span class="ico_comm_s pv_cal">이전</span>
						</button>

						<span class="inp_slt" style="width: 80px; margin-right: 6px;">
							<select title="연도 선택" id="calendarYear" style="display: none;">
								<option value="2017">2017</option>
								<option value="2018">2018</option>
								<option value="2019" selected="">2019</option>
								<option value="2020">2020</option>
								<option value="2021">2021</option>
						</select><span tabindex="0" id="calendarYear-button" role="combobox"
							aria-expanded="false" aria-autocomplete="list"
							aria-owns="calendarYear-menu" aria-haspopup="true" title="연도 선택"
							class="ui-selectmenu-button ui-selectmenu-button-closed ui-corner-all ui-button ui-widget"><span
								class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span><span
								class="ui-selectmenu-text">2019</span></span>
						</span> 년 <span class="inp_slt" style="width: 80px; margin: 0 6px 0 9px;">
							<select title="월 선택" id="calendarMonth" style="display: none;">
								<option value="01">1</option>
								<option value="02">2</option>
								<option value="03">3</option>
								<option value="04" selected="">4</option>
								<option value="05">5</option>
								<option value="06">6</option>
								<option value="07">7</option>
								<option value="08">8</option>
								<option value="09">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
						</select><span tabindex="0" id="calendarMonth-button" role="combobox"
							aria-expanded="false" aria-autocomplete="list"
							aria-owns="calendarMonth-menu" aria-haspopup="true" title="월 선택"
							class="ui-selectmenu-button ui-selectmenu-button-closed ui-corner-all ui-button ui-widget"><span
								class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span><span
								class="ui-selectmenu-text">4</span></span>
						</span> 월

						<button type="button" class="btn_cal" id="calendarNextMonth"
							onclick="changeMonthlyCalendar('next');">
							<span class="ico_comm_s nx_cal">다음</span>
						</button>
					</div>
					<!-- //기간 -->
					<div class="calendar" id="calendarMonthDay">
						<span><a href="javascript:"
							onclick="getLotsScheduleInfo('N', '20190401'); drawScheduleCountByDay(this, 2); ">1</a></span><span><a
							href="javascript:"
							onclick="getLotsScheduleInfo('N', '20190402'); drawScheduleCountByDay(this, 2); ">2</a></span><span><a
							href="javascript:"
							onclick="getLotsScheduleInfo('N', '20190403'); drawScheduleCountByDay(this, 13); ">3</a></span><span><a
							href="javascript:"
							onclick="getLotsScheduleInfo('N', '20190404'); drawScheduleCountByDay(this, 20); ">4</a></span><span><a
							href="javascript:"
							onclick="getLotsScheduleInfo('N', '20190405'); drawScheduleCountByDay(this, 26); ">5</a></span><span>6</span><span>7</span><span><a
							href="javascript:"
							onclick="getLotsScheduleInfo('N', '20190408'); drawScheduleCountByDay(this, 13); ">8</a></span><span><a
							href="javascript:"
							onclick="getLotsScheduleInfo('N', '20190409'); drawScheduleCountByDay(this, 13); ">9</a></span><span
							class="today"><a href="javascript:"
							onclick="javascript:getLotsScheduleInfo('N', '20190410'); drawScheduleCountByDay(this, 27); ">10</a></span><span><a
							href="javascript:"
							onclick="getLotsScheduleInfo('N', '20190411'); drawScheduleCountByDay(this, 23); ">11</a></span><span><a
							href="javascript:"
							onclick="getLotsScheduleInfo('N', '20190412'); drawScheduleCountByDay(this, 13); ">12</a></span><span>13</span><span>14</span><span><a
							href="javascript:"
							onclick="getLotsScheduleInfo('N', '20190415'); drawScheduleCountByDay(this, 10); ">15</a></span><span><a
							href="javascript:"
							onclick="getLotsScheduleInfo('N', '20190416'); drawScheduleCountByDay(this, 4); ">16</a></span><span><a
							href="javascript:"
							onclick="getLotsScheduleInfo('N', '20190417'); drawScheduleCountByDay(this, 9); ">17</a></span><span><a
							href="javascript:"
							onclick="getLotsScheduleInfo('N', '20190418'); drawScheduleCountByDay(this, 2); ">18</a></span><span><a
							href="javascript:"
							onclick="getLotsScheduleInfo('N', '20190419'); drawScheduleCountByDay(this, 4); ">19</a></span><span>20</span><span>21</span><span><a
							href="javascript:"
							onclick="getLotsScheduleInfo('N', '20190422'); drawScheduleCountByDay(this, 10); ">22</a></span><span><a
							href="javascript:"
							onclick="getLotsScheduleInfo('N', '20190423'); drawScheduleCountByDay(this, 7); ">23</a></span><span><a
							href="javascript:"
							onclick="getLotsScheduleInfo('N', '20190424'); drawScheduleCountByDay(this, 3); ">24</a></span><span>25</span><span><a
							href="javascript:"
							onclick="getLotsScheduleInfo('N', '20190426'); drawScheduleCountByDay(this, 3); ">26</a></span><span>27</span><span>28</span><span><a
							href="javascript:"
							onclick="getLotsScheduleInfo('N', '20190429'); drawScheduleCountByDay(this, 6); ">29</a></span><span><a
							href="javascript:"
							onclick="getLotsScheduleInfo('N', '20190430'); drawScheduleCountByDay(this, 1); ">30</a></span>
					</div>
				</div>
				<!-- //월단위 -->
				<!-- 주단위 -->
				<div class="calendar_wrap" id="weeklyWrap" style="display: none;">
					<!-- 기간 -->
					<div class="period_setting">
						<button type="button" class="btn_cal" id="calendarPrevWeek"
							onclick="changeWeeklyCalendar('prev', true);">
							<span class="ico_comm_s pv_cal">이전</span>
						</button>

						<!--
					<span class="inp_slt" style="width:120px;margin-right:8px;">
						<select title="주 선택">
							<option value="">2017.07.03</option>
						</select>
					</span>
					~
					<span class="inp_slt" style="width:120px;margin-left:7px;">
						<select title="주 선택">
							<option value="">2017.07.09</option>
						</select>
					</span>
-->

						<span id="calendarWeek">2019.04.08 ~ 2019.04.14</span>

						<button type="button" class="btn_cal" id="calendarNextMonth"
							onclick="changeWeeklyCalendar('next', true);">
							<span class="ico_comm_s nx_cal">다음</span>
						</button>
					</div>
					<!-- //기간 -->

					<div class="calendar">
						<ul id="calendarWeekDay">
							<li class="status1">오픈 : 2건</li>
							<li class="status2">공고 : 1건</li>
							<li class="status3">접수 : 10건</li>
							<li class="status4">계약 : 33건</li>
							<li class="status5">발표 : 1건</li>
						</ul>
					</div>
				</div>
				<!-- //주단위 -->
				<!-- //달력 -->

				<!-- sort -->
				<div class="sort_wrap mgt3" id="cmdSort">
					<a href="#none" class="selected up">날짜순</a> <a href="#none">입주시기순</a>
					<!--
				<div class="total_cnt">
					분양단지 총 <span>2,420</span>건
				</div>
				-->
				</div>
				<!-- //sort -->
				<!-- table -->
				<table class="tbl_type1 type11">
					<caption>분양단지 안내</caption>
					<colgroup>
						<col style="width: 8%;">
						<col style="width: 7%;">
						<col style="width: 14%;">
						<col style="width: 33%;">
						<col style="width: 13%;">
						<col style="width: 12%;">
						<!-- <col style="width:8%;"> 2017.11.07 삭제 -->
						<col style="width: 13%;">
					</colgroup>
					<thead>
						<tr>
							<th scope="col">날짜</th>
							<th scope="col">일정</th>
							<th scope="col">분양종류/형태</th>
							<th scope="col">단지명/소재지</th>
							<th scope="col">공급/전용(㎡)</th>
							<th scope="col">분양가(만원)</th>
							<th scope="col">분양/입주시기</th>
						</tr>
					</thead>
					<tbody id="lotsInfoList">
						<tr>
							<td>04.01<br>(월)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">오피스텔<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('C', 'G05060001580002')"
								class="link_s"><span class="fc_blue">인천가좌코오롱하늘채메트로</span><br>서구
									가좌동</a></td>
							<td><span class="lf"> 68Ad/30Ad ~ <br>133C1/63C1
							</span></td>
							<td><span class="lf"> 16,580~<br>31,992
							</span></td>
							<td>2019.04 분양<br>2021.07 입주
							</td>
						</tr>

						<tr>
							<td>04.01<br>(월)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">오피스텔<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('C', 'G04080040130001')"
								class="link_s"><span class="fc_blue">대구테크노폴리스줌시티</span><br>달성군
									현풍읍</a></td>
							<td><span class="lf"> 46A/20A ~ <br>67F/29F
							</span></td>
							<td><span class="lf"> 11,859~<br>17,141
							</span></td>
							<td>2019.04 분양<br>2021.11 입주
							</td>
						</tr>

						<tr>
							<td>04.02<br>(화)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">오피스텔<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('C', 'G16020018920013')"
								class="link_s"><span class="fc_blue">신제주연동트리플시티</span><br>제주시
									연동</a></td>
							<td><span class="lf"> 62A/27A ~ <br>190A2/84A2
							</span></td>
							<td><span class="lf"> 23,920~<br>99,142
							</span></td>
							<td>2019.03 분양<br>2021.11 입주
							</td>
						</tr>

						<tr>
							<td>04.02<br>(화)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A15100008340001')"
								class="link_s"><span class="fc_blue">광혜원지안스로가</span><br>진천군
									광혜원면</a></td>
							<td><span class="lf"> 84A/59A ~ <br>111/84
							</span></td>
							<td><span class="lf"> 17,779~<br>23,453
							</span></td>
							<td>2019.03 분양<br>2020.09 입주
							</td>
						</tr>

						<tr>
							<td>04.03<br>(수)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A01110026420010')"
								class="link_s"><span class="fc_blue">청량리역해링턴플레이스</span>
									(1순위)<br>동대문구 용두동</a></td>
							<td><span class="lf"> 83/59 ~ <br>207/150
							</span></td>
							<td><span class="lf"> 69,000~<br>138,500
							</span></td>
							<td>2019.04 분양<br>2023.01 입주
							</td>
						</tr>

						<tr>
							<td>04.03<br>(수)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A05060007900000')"
								class="link_s"><span class="fc_blue">인천검단대방노블랜드1차(AB4)</span>
									(1순위)<br>서구 당하동</a></td>
							<td><span class="lf"> 99A/75A ~ <br>133A/108A
							</span></td>
							<td><span class="lf"> 34,980~<br>49,300
							</span></td>
							<td>2019.04 분양<br>2022.03 입주
							</td>
						</tr>

						<tr>
							<td>04.03<br>(수)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A01220014330010')"
								class="link_s"><span class="fc_blue">은평서해그랑블</span> (1순위)<br>은평구
									구산동</a></td>
							<td><span class="lf"> 61/44 ~ <br>98/72
							</span></td>
							<td><span class="lf"> 26,240~<br>42,050
							</span></td>
							<td>2019.04 분양<br>2021.08 입주
							</td>
						</tr>

						<tr>
							<td>04.03<br>(수)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A01250027850001')"
								class="link_s"><span class="fc_blue">신내역금강펜테리움센트럴파크(C2)</span>
									(1순위)<br>중랑구 망우동</a></td>
							<td><span class="lf"> 103/79 ~ <br>109/84
							</span></td>
							<td><span class="lf"> 54,600~<br>56,300
							</span></td>
							<td>2019.04 분양<br>2021.08 입주
							</td>
						</tr>

						<tr>
							<td>04.03<br>(수)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02090400100002')"
								class="link_s"><span class="fc_blue">분당지웰푸르지오</span> (1순위)<br>성남시
									수내동</a></td>
							<td><span class="lf"> 111/84 ~ <br>156/119
							</span></td>
							<td><span class="lf"> 90,080~<br>137,100
							</span></td>
							<td>2019.04 분양<br>2022.03 입주
							</td>
						</tr>

						<tr>
							<td>04.03<br>(수)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A08010001420005')"
								class="link_s"><span class="fc_blue">문수로두산위브더제니스</span>
									(1순위)<br>남구 신정동</a></td>
							<td><span class="lf"> 116A/84A ~ <br>117B/84B
							</span></td>
							<td><span class="lf"> 48,294~<br>50,472
							</span></td>
							<td>2019.04 분양<br>2021.11 입주
							</td>
						</tr>

						<tr>
							<td>04.03<br>(수)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A01110038680003')"
								class="link_s"><span class="fc_blue">답십리엘림퍼스트</span> (1순위)<br>동대문구
									답십리동</a></td>
							<td><span class="lf"> 70A/52A ~ <br>71C/52C
							</span></td>
							<td><span class="lf"> 59,950~<br>61,100
							</span></td>
							<td>2019.04 분양<br>2021.03 입주
							</td>
						</tr>

						<tr>
							<td>04.03<br>(수)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A01040037510087')"
								class="link_s"><span class="fc_blue">화곡한울에이치밸리움A동</span><br>강서구
									화곡동</a></td>
							<td><span class="lf"> 23A/18A ~ <br>29A/22A
							</span></td>
							<td><span class="lf"> 25,000~<br>27,600
							</span></td>
							<td>2019.03 분양<br>2019.10 입주
							</td>
						</tr>

						<tr>
							<td>04.03<br>(수)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A12150012650000')"
								class="link_s"><span class="fc_blue">함평월야푸르밸리</span><br>함평군
									월야면</a></td>
							<td><span class="lf"> 80/59 ~ <br>101/75
							</span></td>
							<td><span class="lf"> 17,510~<br>22,460
							</span></td>
							<td>2019.03 분양<br>2020.05 입주
							</td>
						</tr>

						<tr>
							<td>04.03<br>(수)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A09020024130001')"
								class="link_s"><span class="fc_blue">이안동해센트럴</span><br>동해시
									천곡동</a></td>
							<td><span class="lf"> 78A/59A ~ <br>111/84
							</span></td>
							<td><span class="lf"> 18,408~<br>26,825
							</span></td>
							<td>2019.03 분양<br>2021.05 입주
							</td>
						</tr>

						<tr>
							<td>04.03<br>(수)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A04087118930000')"
								class="link_s"><span class="fc_blue">대구국가산단대방노블랜드(A2-1)</span><br>달성군
									구지면</a></td>
							<td><span class="lf"> 99B/76B ~ <br>110B/84B
							</span></td>
							<td><span class="lf"> 24,310~<br>28,800
							</span></td>
							<td>2019.03 분양<br>2021.07 입주
							</td>
						</tr>

						<tr>
							<td>04.03<br>(수)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A13060001420000')"
								class="link_s"><span class="fc_blue">정읍첨단A1-3(행복주택)</span><br>정읍시
									신정동</a></td>
							<td><span class="lf"> 25A/16A ~ <br>55A/36A
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.01 분양<br>2019.11 입주
							</td>
						</tr>

						<tr>
							<td>04.03<br>(수)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">오피스텔<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('C', 'G16020018920013')"
								class="link_s"><span class="fc_blue">신제주연동트리플시티</span><br>제주시
									연동</a></td>
							<td><span class="lf"> 62A/27A ~ <br>190A2/84A2
							</span></td>
							<td><span class="lf"> 23,920~<br>99,142
							</span></td>
							<td>2019.03 분양<br>2021.11 입주
							</td>
						</tr>

						<tr>
							<td>04.04<br>(목)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02180012380001')"
								class="link_s"><span class="fc_blue">힐스테이트북위례(A3-4a)</span>
									(1순위)<br>하남시 학암동</a></td>
							<td><span class="lf"> 116/92 ~ <br>130/102
							</span></td>
							<td><span class="lf"> 64,900~<br>72,670
							</span></td>
							<td>2019.04 분양<br>2021.05 입주
							</td>
						</tr>

						<tr>
							<td>04.04<br>(목)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A05070004130009')"
								class="link_s"><span class="fc_blue">호반써밋송도(M2)</span> (1순위)<br>연수구
									송도동</a></td>
							<td><span class="lf"> 116A/84A ~ <br>142B/101B
							</span></td>
							<td><span class="lf"> 48,460~<br>58,050
							</span></td>
							<td>2019.04 분양<br>2023.02 입주
							</td>
						</tr>

						<tr>
							<td>04.04<br>(목)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">오피스텔<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('C', 'G05070004130018')"
								class="link_s"><span class="fc_blue">호반써밋송도(M2)</span><br>연수구
									송도동</a></td>
							<td><span class="lf"> 151A/74A ~ <br>174B/84B
							</span></td>
							<td><span class="lf"> 25,580~<br>29,150
							</span></td>
							<td>2019.04 분양<br>2023.02 입주
							</td>
						</tr>

						<tr>
							<td>04.04<br>(목)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A01110026420010')"
								class="link_s"><span class="fc_blue">청량리역해링턴플레이스</span>
									(1순위)<br>동대문구 용두동</a></td>
							<td><span class="lf"> 83/59 ~ <br>207/150
							</span></td>
							<td><span class="lf"> 69,000~<br>138,500
							</span></td>
							<td>2019.04 분양<br>2023.01 입주
							</td>
						</tr>

						<tr>
							<td>04.04<br>(목)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A05060007900000')"
								class="link_s"><span class="fc_blue">인천검단대방노블랜드1차(AB4)</span>
									(2순위)<br>서구 당하동</a></td>
							<td><span class="lf"> 99A/75A ~ <br>133A/108A
							</span></td>
							<td><span class="lf"> 34,980~<br>49,300
							</span></td>
							<td>2019.04 분양<br>2022.03 입주
							</td>
						</tr>

						<tr>
							<td>04.04<br>(목)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A01220014330010')"
								class="link_s"><span class="fc_blue">은평서해그랑블</span> (1순위)<br>은평구
									구산동</a></td>
							<td><span class="lf"> 61/44 ~ <br>98/72
							</span></td>
							<td><span class="lf"> 26,240~<br>42,050
							</span></td>
							<td>2019.04 분양<br>2021.08 입주
							</td>
						</tr>

						<tr>
							<td>04.04<br>(목)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A03070026970006')"
								class="link_s"><span class="fc_blue">신만덕베스티움에코포레</span>
									(1순위)<br>북구 만덕동</a></td>
							<td><span class="lf"> 85/59 ~ <br>114/84
							</span></td>
							<td><span class="lf"> 26,600~<br>33,700
							</span></td>
							<td>2019.04 분양<br>2022.04 입주
							</td>
						</tr>

						<tr>
							<td>04.04<br>(목)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A01250027850001')"
								class="link_s"><span class="fc_blue">신내역금강펜테리움센트럴파크(C2)</span>
									(1순위)<br>중랑구 망우동</a></td>
							<td><span class="lf"> 103/79 ~ <br>109/84
							</span></td>
							<td><span class="lf"> 54,600~<br>56,300
							</span></td>
							<td>2019.04 분양<br>2021.08 입주
							</td>
						</tr>

						<tr>
							<td>04.04<br>(목)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02090400100002')"
								class="link_s"><span class="fc_blue">분당지웰푸르지오</span> (1순위)<br>성남시
									수내동</a></td>
							<td><span class="lf"> 111/84 ~ <br>156/119
							</span></td>
							<td><span class="lf"> 90,080~<br>137,100
							</span></td>
							<td>2019.04 분양<br>2022.03 입주
							</td>
						</tr>

						<tr>
							<td>04.04<br>(목)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A08010001420005')"
								class="link_s"><span class="fc_blue">문수로두산위브더제니스</span>
									(2순위)<br>남구 신정동</a></td>
							<td><span class="lf"> 116A/84A ~ <br>117B/84B
							</span></td>
							<td><span class="lf"> 48,294~<br>50,472
							</span></td>
							<td>2019.04 분양<br>2021.11 입주
							</td>
						</tr>

						<tr>
							<td>04.04<br>(목)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A01110038680003')"
								class="link_s"><span class="fc_blue">답십리엘림퍼스트</span> (1순위)<br>동대문구
									답십리동</a></td>
							<td><span class="lf"> 70A/52A ~ <br>71C/52C
							</span></td>
							<td><span class="lf"> 59,950~<br>61,100
							</span></td>
							<td>2019.04 분양<br>2021.03 입주
							</td>
						</tr>

						<tr>
							<td>04.04<br>(목)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A15023509950001')"
								class="link_s"><span class="fc_blue">청주산남2-1증축(행복주택)</span><br>청주시
									수곡동</a></td>
							<td><span class="lf"> 27/19 </span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.01 분양<br>2020.02 입주
							</td>
						</tr>

						<tr>
							<td>04.04<br>(목)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A11017122800006')"
								class="link_s"><span class="fc_blue">중산코오롱하늘채메트로폴리스</span><br>경산시
									중산동</a></td>
							<td><span class="lf"> 103B/84B ~ <br>137/113
							</span></td>
							<td><span class="lf"> 43,900~<br>57,900
							</span></td>
							<td>2019.03 분양<br>2021.04 입주
							</td>
						</tr>

						<tr>
							<td>04.04<br>(목)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">오피스텔<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('C', 'G05060001580002')"
								class="link_s"><span class="fc_blue">인천가좌코오롱하늘채메트로</span><br>서구
									가좌동</a></td>
							<td><span class="lf"> 68Ad/30Ad ~ <br>133C1/63C1
							</span></td>
							<td><span class="lf"> 16,580~<br>31,992
							</span></td>
							<td>2019.04 분양<br>2021.07 입주
							</td>
						</tr>

						<tr>
							<td>04.04<br>(목)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A04020027910005')"
								class="link_s"><span class="fc_blue">성당태왕아너스메트로</span><br>달서구
									성당동</a></td>
							<td><span class="lf"> 108B/84B </span></td>
							<td><span class="lf"> 48,450 </span></td>
							<td>2019.03 분양<br>2022.06 입주
							</td>
						</tr>

						<tr>
							<td>04.04<br>(목)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">오피스텔<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('C', 'G04020027910001')"
								class="link_s"><span class="fc_blue">성당태왕아너스메트로</span><br>달서구
									성당동</a></td>
							<td><span class="lf"> 121OB/50OB </span></td>
							<td><span class="lf"> 19,480~<br>19,980
							</span></td>
							<td>2019.03 분양<br>2022.06 입주
							</td>
						</tr>

						<tr>
							<td>04.04<br>(목)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A07040018190002')"
								class="link_s"><span class="fc_blue">대전아이파크시티2단지(A2)</span><br>유성구
									복용동</a></td>
							<td><span class="lf"> 111A/84A ~ <br>295P/234P
							</span></td>
							<td><span class="lf"> 49,800~<br>177,600
							</span></td>
							<td>2019.03 분양<br>2021.11 입주
							</td>
						</tr>

						<tr>
							<td>04.04<br>(목)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A07040018190000')"
								class="link_s"><span class="fc_blue">대전아이파크시티1단지(A1)</span><br>유성구
									복용동</a></td>
							<td><span class="lf"> 111A/84A ~ <br>133A/104A
							</span></td>
							<td><span class="lf"> 49,600~<br>60,100
							</span></td>
							<td>2019.03 분양<br>2021.11 입주
							</td>
						</tr>

						<tr>
							<td>04.04<br>(목)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">오피스텔<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('C', 'G04080040130001')"
								class="link_s"><span class="fc_blue">대구테크노폴리스줌시티</span><br>달성군
									현풍읍</a></td>
							<td><span class="lf"> 46A/20A ~ <br>67F/29F
							</span></td>
							<td><span class="lf"> 11,859~<br>17,141
							</span></td>
							<td>2019.04 분양<br>2021.11 입주
							</td>
						</tr>

						<tr>
							<td>04.04<br>(목)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A04050020240002')"
								class="link_s"><span class="fc_blue">대구비산(행복주택)</span><br>서구
									비산동</a></td>
							<td><span class="lf"> 27A/16A ~ <br>58A/36A
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.01 분양<br>2019.12 입주
							</td>
						</tr>

						<tr>
							<td>04.05<br>(금)
							</td>
							<td><span class="fc_blue">오픈</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02011426550000')"
								class="link_s"><span class="fc_blue">e편한세상일산어반스카이</span><br>고양시
									일산동</a></td>
							<td><span class="lf"> 96B/70B ~ <br>114/84
							</span></td>
							<td><span class="lf"> 47,437~<br>57,076
							</span></td>
							<td>2019.04 분양<br>2022.12 입주
							</td>
						</tr>

						<tr>
							<td>04.05<br>(금)
							</td>
							<td><span class="fc_blue">오픈</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">오피스텔<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('C', 'G02011426550001')"
								class="link_s"><span class="fc_blue">e편한세상일산어반스카이</span><br>고양시
									일산동</a></td>
							<td><span class="lf"> - / - </span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.04 분양<br>2022.09 입주
							</td>
						</tr>

						<tr>
							<td>04.05<br>(금)
							</td>
							<td><span class="fc_blue">오픈</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02040028480001')"
								class="link_s"><span class="fc_blue">한양수자인구리역</span><br>구리시
									수택동</a></td>
							<td><span class="lf"> 83A/59A ~ <br>113B/84B
							</span></td>
							<td><span class="lf"> 46,500~<br>59,900
							</span></td>
							<td>2019.04 분양<br>2021.07 입주
							</td>
						</tr>

						<tr>
							<td>04.05<br>(금)
							</td>
							<td><span class="fc_blue">오픈</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A01110026420002')"
								class="link_s"><span class="fc_blue">청량리역한양수자인192</span><br>동대문구
									용두동</a></td>
							<td><span class="lf"> 120F/84F ~ <br>231/162
							</span></td>
							<td><span class="lf"> 88,300~<br>206,900
							</span></td>
							<td>2019.04 분양<br>2023.05 입주
							</td>
						</tr>

						<tr>
							<td>04.05<br>(금)
							</td>
							<td><span class="fc_blue">오픈</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">오피스텔<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('C', 'G02040028480003')"
								class="link_s"><span class="fc_blue">유탑트윈팰리스</span><br>구리시
									수택동</a></td>
							<td><span class="lf"> 46/20 ~ <br>94/43
							</span></td>
							<td><span class="lf"> 14,050~<br>26,510
							</span></td>
							<td>2019.04 분양<br>2022.01 입주
							</td>
						</tr>

						<tr>
							<td>04.05<br>(금)
							</td>
							<td><span class="fc_blue">오픈</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">오피스텔<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('C', 'G04060032630003')"
								class="link_s"><span class="fc_blue">수성레이크푸르지오</span><br>수성구
									두산동</a></td>
							<td><span class="lf"> 194B/84B ~ <br>194A/84A
							</span></td>
							<td><span class="lf"> 44,100~<br>44,900
							</span></td>
							<td>2019.04 분양<br>2022.08 입주
							</td>
						</tr>

						<tr>
							<td>04.05<br>(금)
							</td>
							<td><span class="fc_blue">오픈</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A04060032630000')"
								class="link_s"><span class="fc_blue">수성레이크푸르지오</span><br>수성구
									두산동</a></td>
							<td><span class="lf"> 108B/84B ~ <br>196PH/152PH
							</span></td>
							<td><span class="lf"> 65,600~<br>118,500
							</span></td>
							<td>2019.04 분양<br>2022.08 입주
							</td>
						</tr>

						<tr>
							<td>04.05<br>(금)
							</td>
							<td><span class="fc_blue">오픈</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A13051222520000')"
								class="link_s"><span class="fc_blue">서완산골드클래스</span><br>전주시
									서완산동2가</a></td>
							<td><span class="lf"> 97/74 ~ <br>110/84
							</span></td>
							<td><span class="lf"> 24,540~<br>27,810
							</span></td>
							<td>2019.04 분양<br>2021.06 입주
							</td>
						</tr>

						<tr>
							<td>04.05<br>(금)
							</td>
							<td><span class="fc_blue">오픈</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">오피스텔<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('C', 'G01060037330009')"
								class="link_s"><span class="fc_blue">빌리브인테라스</span><br>광진구
									화양동</a></td>
							<td><span class="lf"> 38A/16A ~ <br>63D/27D
							</span></td>
							<td><span class="lf"> 28,670~<br>46,989
							</span></td>
							<td>2019.04 분양<br>2021.11 입주
							</td>
						</tr>

						<tr>
							<td>04.05<br>(금)
							</td>
							<td><span class="fc_blue">오픈</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02070036850002')"
								class="link_s"><span class="fc_blue">남양주더샵퍼스트시티(A1)</span><br>남양주시
									진접읍</a></td>
							<td><span class="lf"> 79A/59A ~ <br>111B/84B
							</span></td>
							<td><span class="lf"> 22,470~<br>30,560
							</span></td>
							<td>2019.04 분양<br>2021.11 입주
							</td>
						</tr>

						<tr>
							<td>04.05<br>(금)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02180012380001')"
								class="link_s"><span class="fc_blue">힐스테이트북위례(A3-4a)</span>
									(2순위)<br>하남시 학암동</a></td>
							<td><span class="lf"> 116/92 ~ <br>130/102
							</span></td>
							<td><span class="lf"> 64,900~<br>72,670
							</span></td>
							<td>2019.04 분양<br>2021.05 입주
							</td>
						</tr>

						<tr>
							<td>04.05<br>(금)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A05070004130009')"
								class="link_s"><span class="fc_blue">호반써밋송도(M2)</span> (2순위)<br>연수구
									송도동</a></td>
							<td><span class="lf"> 116A/84A ~ <br>142B/101B
							</span></td>
							<td><span class="lf"> 48,460~<br>58,050
							</span></td>
							<td>2019.04 분양<br>2023.02 입주
							</td>
						</tr>

						<tr>
							<td>04.05<br>(금)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A01110026420010')"
								class="link_s"><span class="fc_blue">청량리역해링턴플레이스</span>
									(2순위)<br>동대문구 용두동</a></td>
							<td><span class="lf"> 83/59 ~ <br>207/150
							</span></td>
							<td><span class="lf"> 69,000~<br>138,500
							</span></td>
							<td>2019.04 분양<br>2023.01 입주
							</td>
						</tr>

						<tr>
							<td>04.05<br>(금)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A01220014330010')"
								class="link_s"><span class="fc_blue">은평서해그랑블</span> (2순위)<br>은평구
									구산동</a></td>
							<td><span class="lf"> 61/44 ~ <br>98/72
							</span></td>
							<td><span class="lf"> 26,240~<br>42,050
							</span></td>
							<td>2019.04 분양<br>2021.08 입주
							</td>
						</tr>

						<tr>
							<td>04.05<br>(금)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A03070026970006')"
								class="link_s"><span class="fc_blue">신만덕베스티움에코포레</span>
									(2순위)<br>북구 만덕동</a></td>
							<td><span class="lf"> 85/59 ~ <br>114/84
							</span></td>
							<td><span class="lf"> 26,600~<br>33,700
							</span></td>
							<td>2019.04 분양<br>2022.04 입주
							</td>
						</tr>

						<tr>
							<td>04.05<br>(금)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A01250027850001')"
								class="link_s"><span class="fc_blue">신내역금강펜테리움센트럴파크(C2)</span>
									(2순위)<br>중랑구 망우동</a></td>
							<td><span class="lf"> 103/79 ~ <br>109/84
							</span></td>
							<td><span class="lf"> 54,600~<br>56,300
							</span></td>
							<td>2019.04 분양<br>2021.08 입주
							</td>
						</tr>

						<tr>
							<td>04.05<br>(금)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02090400100002')"
								class="link_s"><span class="fc_blue">분당지웰푸르지오</span> (2순위)<br>성남시
									수내동</a></td>
							<td><span class="lf"> 111/84 ~ <br>156/119
							</span></td>
							<td><span class="lf"> 90,080~<br>137,100
							</span></td>
							<td>2019.04 분양<br>2022.03 입주
							</td>
						</tr>

						<tr>
							<td>04.05<br>(금)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A01110038680003')"
								class="link_s"><span class="fc_blue">답십리엘림퍼스트</span> (2순위)<br>동대문구
									답십리동</a></td>
							<td><span class="lf"> 70A/52A ~ <br>71C/52C
							</span></td>
							<td><span class="lf"> 59,950~<br>61,100
							</span></td>
							<td>2019.04 분양<br>2021.03 입주
							</td>
						</tr>

						<tr>
							<td>04.05<br>(금)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A10020016170000')"
								class="link_s"><span class="fc_blue">김해삼계두곡한라비발디센텀시티</span>
									(1순위)<br>김해시 삼계동</a></td>
							<td><span class="lf"> 84/64 ~ <br>110/84
							</span></td>
							<td><span class="lf"> 33,033~<br>39,680
							</span></td>
							<td>2019.04 분양<br>2021.12 입주
							</td>
						</tr>

						<tr>
							<td>04.05<br>(금)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02150035890003')"
								class="link_s"><span class="fc_blue">의왕역경기행복주택(따복하우스)</span><br>의왕시
									삼동</a></td>
							<td><span class="lf"> 43/29 </span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2018.12 분양<br>2020.02 입주
							</td>
						</tr>

						<tr>
							<td>04.05<br>(금)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02620036650000')"
								class="link_s"><span class="fc_blue">오산가장경기행복주택(따복하우스)</span><br>오산시
									가장동</a></td>
							<td><span class="lf"> 34A/21A ~ <br>34B/21B
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2018.12 분양<br>2020.02 입주
							</td>
						</tr>

						<tr>
							<td>04.05<br>(금)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02740002680000')"
								class="link_s"><span class="fc_blue">양주고읍A13(행복주택)</span><br>양주시
									광사동</a></td>
							<td><span class="lf"> 25A/16A ~ <br>55A/36A
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.01 분양<br>2020.06 입주
							</td>
						</tr>

						<tr>
							<td>04.05<br>(금)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02070005280003')"
								class="link_s"><span class="fc_blue">다산역(A2)경기행복주택(따복하우스)2회</span><br>남양주시
									진건읍</a></td>
							<td><span class="lf"> 40/24 ~ <br>71/44
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2018.12 분양<br>2019.09 입주
							</td>
						</tr>

						<tr>
							<td>04.05<br>(금)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">오피스텔<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('C', 'G05060001580002')"
								class="link_s"><span class="fc_blue">인천가좌코오롱하늘채메트로</span><br>서구
									가좌동</a></td>
							<td><span class="lf"> 68Ad/30Ad ~ <br>133C1/63C1
							</span></td>
							<td><span class="lf"> 16,580~<br>31,992
							</span></td>
							<td>2019.04 분양<br>2021.07 입주
							</td>
						</tr>

						<tr>
							<td>04.05<br>(금)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">오피스텔<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('C', 'G04020027910001')"
								class="link_s"><span class="fc_blue">성당태왕아너스메트로</span><br>달서구
									성당동</a></td>
							<td><span class="lf"> 121OB/50OB </span></td>
							<td><span class="lf"> 19,480~<br>19,980
							</span></td>
							<td>2019.03 분양<br>2022.06 입주
							</td>
						</tr>

						<tr>
							<td>04.05<br>(금)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">오피스텔<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('C', 'G04080040130001')"
								class="link_s"><span class="fc_blue">대구테크노폴리스줌시티</span><br>달성군
									현풍읍</a></td>
							<td><span class="lf"> 46A/20A ~ <br>67F/29F
							</span></td>
							<td><span class="lf"> 11,859~<br>17,141
							</span></td>
							<td>2019.04 분양<br>2021.11 입주
							</td>
						</tr>

						<tr>
							<td>04.08<br>(월)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A01120015400011')"
								class="link_s"><span class="fc_blue">학수복합(행복주택)</span><br>동작구
									사당동</a></td>
							<td><span class="lf"> 33A/20A ~ <br>34/21
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.04 분양<br>2019.11 입주
							</td>
						</tr>

						<tr>
							<td>04.08<br>(월)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">오피스텔<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('C', 'G02170039330004')"
								class="link_s"><span class="fc_blue">파주운정지구디에이블</span><br>파주시
									와동동</a></td>
							<td><span class="lf"> 60B/23B ~ <br>69A/26A
							</span></td>
							<td><span class="lf"> 17,617~<br>18,730
							</span></td>
							<td>2019.04 분양<br>2020.11 입주
							</td>
						</tr>

						<tr>
							<td>04.08<br>(월)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A14150040000000')"
								class="link_s"><span class="fc_blue">충남도청이전도시RM6(영구임대)</span><br>예산군
									삽교읍</a></td>
							<td><span class="lf"> 38B/25B </span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.04 분양<br>2020.03 입주
							</td>
						</tr>

						<tr>
							<td>04.08<br>(월)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">오피스텔<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('C', 'G02040028480003')"
								class="link_s"><span class="fc_blue">유탑트윈팰리스</span><br>구리시
									수택동</a></td>
							<td><span class="lf"> 46/20 ~ <br>94/43
							</span></td>
							<td><span class="lf"> 14,050~<br>26,510
							</span></td>
							<td>2019.04 분양<br>2022.01 입주
							</td>
						</tr>

						<tr>
							<td>04.08<br>(월)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A01250008770003')"
								class="link_s"><span class="fc_blue">신내글로리움(행복주택)</span><br>중랑구
									신내동</a></td>
							<td><span class="lf"> 58B/36B ~ <br>71B/44B
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.04 분양<br>2019.11 입주
							</td>
						</tr>

						<tr>
							<td>04.08<br>(월)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">오피스텔<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('C', 'G01060037330009')"
								class="link_s"><span class="fc_blue">빌리브인테라스</span><br>광진구
									화양동</a></td>
							<td><span class="lf"> 38A/16A ~ <br>63D/27D
							</span></td>
							<td><span class="lf"> 28,670~<br>46,989
							</span></td>
							<td>2019.04 분양<br>2021.11 입주
							</td>
						</tr>

						<tr>
							<td>04.08<br>(월)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A10020016170000')"
								class="link_s"><span class="fc_blue">김해삼계두곡한라비발디센텀시티</span>
									(2순위)<br>김해시 삼계동</a></td>
							<td><span class="lf"> 84/64 ~ <br>110/84
							</span></td>
							<td><span class="lf"> 33,033~<br>39,680
							</span></td>
							<td>2019.04 분양<br>2021.12 입주
							</td>
						</tr>

						<tr>
							<td>04.08<br>(월)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A01020039080000')"
								class="link_s"><span class="fc_blue">강일2준주거1(행복주택)</span><br>강동구
									강일동</a></td>
							<td><span class="lf"> 44S/28S ~ <br>59/38
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.04 분양<br>2019.12 입주
							</td>
						</tr>

						<tr>
							<td>04.08<br>(월)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A01040037510085')"
								class="link_s"><span class="fc_blue">화곡한울에이치밸리움B동</span><br>강서구
									화곡동</a></td>
							<td><span class="lf"> 26B/20B ~ <br>29A/22A
							</span></td>
							<td><span class="lf"> 24,800~<br>27,500
							</span></td>
							<td>2019.03 분양<br>2019.10 입주
							</td>
						</tr>

						<tr>
							<td>04.08<br>(월)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A05060008720000')"
								class="link_s"><span class="fc_blue">인천불로대광로제비앙</span><br>서구
									불로동</a></td>
							<td><span class="lf"> 85A/61A ~ <br>112B/84B
							</span></td>
							<td><span class="lf"> 30,103~<br>37,715
							</span></td>
							<td>2019.03 분양<br>2022.02 입주
							</td>
						</tr>

						<tr>
							<td>04.08<br>(월)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A06010000400003')"
								class="link_s"><span class="fc_blue">광주첨단H3(행복주택)</span><br>광산구
									월계동</a></td>
							<td><span class="lf"> 23/16 ~ <br>52/36
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.01 분양<br>2020.02 입주
							</td>
						</tr>

						<tr>
							<td>04.08<br>(월)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A06010000400002')"
								class="link_s"><span class="fc_blue">광주첨단H2(행복주택)</span><br>광산구
									쌍암동</a></td>
							<td><span class="lf"> 27/16 ~ <br>60/36
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.01 분양<br>2020.02 입주
							</td>
						</tr>

						<tr>
							<td>04.08<br>(월)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A06010000400001')"
								class="link_s"><span class="fc_blue">광주첨단H1(창업지원주택)</span><br>광산구
									쌍암동</a></td>
							<td><span class="lf"> 36B/21B ~ <br>66/39
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.01 분양<br>2020.02 입주
							</td>
						</tr>

						<tr>
							<td>04.09<br>(화)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A14150040000001')"
								class="link_s"><span class="fc_blue">충남도청이전도시RM6(국민임대)</span><br>예산군
									삽교읍</a></td>
							<td><span class="lf"> 40C/26C ~ <br>69A/46A
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.04 분양<br>2020.03 입주
							</td>
						</tr>

						<tr>
							<td>04.09<br>(화)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A07040018190004')"
								class="link_s"><span class="fc_blue">대전아이파크시티2단지(민간임대)</span><br>유성구
									복용동</a></td>
							<td><span class="lf"> 111A/84A ~ <br>112B/84B
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.04 분양<br>2021.11 입주
							</td>
						</tr>

						<tr>
							<td>04.09<br>(화)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A07040018190003')"
								class="link_s"><span class="fc_blue">대전아이파크시티1단지(민간임대)</span><br>유성구
									복용동</a></td>
							<td><span class="lf"> 111A/84A ~ <br>111B/84B
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.04 분양<br>2021.11 입주
							</td>
						</tr>

						<tr>
							<td>04.09<br>(화)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A13070025880003')"
								class="link_s"><span class="fc_blue">고창석정파크빌3차</span> (1순위)<br>고창군
									고창읍</a></td>
							<td><span class="lf"> 114B/84B </span></td>
							<td><span class="lf"> 34,900 </span></td>
							<td>2019.04 분양<br>2019.12 입주
							</td>
						</tr>

						<tr>
							<td>04.09<br>(화)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A12050021740001')"
								class="link_s"><span class="fc_blue">여수관문(행복주택)</span><br>여수시
									관문동</a></td>
							<td><span class="lf"> 24/16 ~ <br>53/36
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.01 분양<br>2020.07 입주
							</td>
						</tr>

						<tr>
							<td>04.09<br>(화)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A12230020420001')"
								class="link_s"><span class="fc_blue">진도동외(영구임대)</span><br>진도군
									진도읍</a></td>
							<td><span class="lf"> 36A/24A ~ <br>36B/24B
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.01 분양<br>2020.01 입주
							</td>
						</tr>

						<tr>
							<td>04.09<br>(화)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02150035890003')"
								class="link_s"><span class="fc_blue">의왕역경기행복주택(따복하우스)</span><br>의왕시
									삼동</a></td>
							<td><span class="lf"> 43/29 </span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2018.12 분양<br>2020.02 입주
							</td>
						</tr>

						<tr>
							<td>04.09<br>(화)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A09050000420003')"
								class="link_s"><span class="fc_blue">원주더샵센트럴파크(4단지)</span><br>원주시
									무실동</a></td>
							<td><span class="lf"> 106A/84A ~ <br>127A/101A
							</span></td>
							<td><span class="lf"> 34,020~<br>46,290
							</span></td>
							<td>2019.03 분양<br>2022.06 입주
							</td>
						</tr>

						<tr>
							<td>04.09<br>(화)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A09050000420002')"
								class="link_s"><span class="fc_blue">원주더샵센트럴파크(3단지)</span><br>원주시
									명륜동</a></td>
							<td><span class="lf"> 81A/59A ~ <br>113B/84B
							</span></td>
							<td><span class="lf"> 24,530~<br>35,500
							</span></td>
							<td>2019.03 분양<br>2022.06 입주
							</td>
						</tr>

						<tr>
							<td>04.09<br>(화)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A09050000420001')"
								class="link_s"><span class="fc_blue">원주더샵센트럴파크(2단지)</span><br>원주시
									명륜동</a></td>
							<td><span class="lf"> 108A/84A ~ <br>130A/101A
							</span></td>
							<td><span class="lf"> 32,500~<br>44,380
							</span></td>
							<td>2019.03 분양<br>2022.01 입주
							</td>
						</tr>

						<tr>
							<td>04.09<br>(화)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A09050000420000')"
								class="link_s"><span class="fc_blue">원주더샵센트럴파크(1단지)</span><br>원주시
									무실동</a></td>
							<td><span class="lf"> 80A/59A ~ <br>112B/84B
							</span></td>
							<td><span class="lf"> 24,590~<br>36,500
							</span></td>
							<td>2019.03 분양<br>2021.11 입주
							</td>
						</tr>

						<tr>
							<td>04.09<br>(화)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02620036650000')"
								class="link_s"><span class="fc_blue">오산가장경기행복주택(따복하우스)</span><br>오산시
									가장동</a></td>
							<td><span class="lf"> 34A/21A ~ <br>34B/21B
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2018.12 분양<br>2020.02 입주
							</td>
						</tr>

						<tr>
							<td>04.09<br>(화)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02070005280003')"
								class="link_s"><span class="fc_blue">다산역(A2)경기행복주택(따복하우스)2회</span><br>남양주시
									진건읍</a></td>
							<td><span class="lf"> 40/24 ~ <br>71/44
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2018.12 분양<br>2019.09 입주
							</td>
						</tr>

						<tr>
							<td>04.10<br>(수)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02011426550000')"
								class="link_s"><span class="fc_blue">e편한세상일산어반스카이</span>
									(1순위)<br>고양시 일산동</a></td>
							<td><span class="lf"> 96B/70B ~ <br>114/84
							</span></td>
							<td><span class="lf"> 47,437~<br>57,076
							</span></td>
							<td>2019.04 분양<br>2022.12 입주
							</td>
						</tr>

						<tr>
							<td>04.10<br>(수)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02790039910010')"
								class="link_s"><span class="fc_blue">화성남양뉴타운A5(행복주택)</span><br>화성시
									남양읍</a></td>
							<td><span class="lf"> 25A/16A ~ <br>55A/36A
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.04 분양<br>2020.05 입주
							</td>
						</tr>

						<tr>
							<td>04.10<br>(수)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02180005760005')"
								class="link_s"><span class="fc_blue">하남감일A6(행복주택)</span><br>하남시
									감일동</a></td>
							<td><span class="lf"> 34B/21B ~ <br>57B/36B
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.04 분양<br>2020.06 입주
							</td>
						</tr>

						<tr>
							<td>04.10<br>(수)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02640039980000')"
								class="link_s"><span class="fc_blue">평택청북B12(행복주택)</span><br>평택시
									청북읍</a></td>
							<td><span class="lf"> 32/21 ~ <br>55/36
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.04 분양<br>2020.02 입주
							</td>
						</tr>

						<tr>
							<td>04.10<br>(수)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02640016300009')"
								class="link_s"><span class="fc_blue">평택고덕Ca2(행복주택)</span><br>평택시
									고덕면</a></td>
							<td><span class="lf"> 27A/16A ~ <br>60A/36A
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.04 분양<br>2020.02 입주
							</td>
						</tr>

						<tr>
							<td>04.10<br>(수)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02640016300010')"
								class="link_s"><span class="fc_blue">평택고덕Ca1(행복주택)</span><br>평택시
									고덕면</a></td>
							<td><span class="lf"> 27A/16A ~ <br>60A/36A
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.04 분양<br>2020.02 입주
							</td>
						</tr>

						<tr>
							<td>04.10<br>(수)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02170029800001')"
								class="link_s"><span class="fc_blue">파주법원(행복주택)</span><br>파주시
									법원읍</a></td>
							<td><span class="lf"> 24A/16A ~ <br>54A/36A
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.04 분양<br>2019.11 입주
							</td>
						</tr>

						<tr>
							<td>04.10<br>(수)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A15020317200001')"
								class="link_s"><span class="fc_blue">청주동남A5(행복주택)</span><br>청주시
									운동동</a></td>
							<td><span class="lf"> 27A/16A ~ <br>59A/36A
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.04 분양<br>2020.04 입주
							</td>
						</tr>

						<tr>
							<td>04.10<br>(수)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">오피스텔<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('C', 'G01110026420007')"
								class="link_s"><span class="fc_blue">청량리역해링턴플레이스</span><br>동대문구
									용두동</a></td>
							<td><span class="lf"> 71A2/29A2 ~ <br>127G/52G
							</span></td>
							<td><span class="lf"> 23,000~<br>40,900
							</span></td>
							<td>2019.04 분양<br>2023.01 입주
							</td>
						</tr>

						<tr>
							<td>04.10<br>(수)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A14062819150003')"
								class="link_s"><span class="fc_blue">천안두정A1(행복주택)</span><br>천안시
									두정동</a></td>
							<td><span class="lf"> 26B/16B ~ <br>43A/26A
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.04 분양<br>2019.10 입주
							</td>
						</tr>

						<tr>
							<td>04.10<br>(수)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A05030017280003')"
								class="link_s"><span class="fc_blue">인천서창2지구14BL(행복주택)</span><br>남동구
									서창동</a></td>
							<td><span class="lf"> 24A/16A ~ <br>55B1/36B1
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.04 분양<br>2020.02 입주
							</td>
						</tr>

						<tr>
							<td>04.10<br>(수)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A12190013890005')"
								class="link_s"><span class="fc_blue">영암용앙(행복주택)</span><br>영암군
									삼호읍</a></td>
							<td><span class="lf"> 32B/21B ~ <br>55/36
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.04 분양<br>2019.11 입주
							</td>
						</tr>

						<tr>
							<td>04.10<br>(수)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A14050002290007')"
								class="link_s"><span class="fc_blue">아산배방2A12(행복주택)</span><br>아산시
									배방읍</a></td>
							<td><span class="lf"> 26A/16A ~ <br>57A/36A
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.04 분양<br>2020.06 입주
							</td>
						</tr>

						<tr>
							<td>04.10<br>(수)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A04060032630000')"
								class="link_s"><span class="fc_blue">수성레이크푸르지오</span> (1순위)<br>수성구
									두산동</a></td>
							<td><span class="lf"> 108B/84B ~ <br>196PH/152PH
							</span></td>
							<td><span class="lf"> 65,600~<br>118,500
							</span></td>
							<td>2019.04 분양<br>2022.08 입주
							</td>
						</tr>

						<tr>
							<td>04.10<br>(수)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">오피스텔<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('C', 'G04060032630003')"
								class="link_s"><span class="fc_blue">수성레이크푸르지오</span><br>수성구
									두산동</a></td>
							<td><span class="lf"> 194B/84B ~ <br>194A/84A
							</span></td>
							<td><span class="lf"> 44,100~<br>44,900
							</span></td>
							<td>2019.04 분양<br>2022.08 입주
							</td>
						</tr>

						<tr>
							<td>04.10<br>(수)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A13051222520000')"
								class="link_s"><span class="fc_blue">서완산골드클래스</span> (1순위)<br>전주시
									서완산동2가</a></td>
							<td><span class="lf"> 97/74 ~ <br>110/84
							</span></td>
							<td><span class="lf"> 24,540~<br>27,810
							</span></td>
							<td>2019.04 분양<br>2021.06 입주
							</td>
						</tr>

						<tr>
							<td>04.10<br>(수)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A14020021490000')"
								class="link_s"><span class="fc_blue">논산골든타워</span> (1순위)<br>논산시
									취암동</a></td>
							<td><span class="lf"> 102/76 ~ <br>209/157
							</span></td>
							<td><span class="lf"> 24,303~<br>62,034
							</span></td>
							<td>2019.04 분양<br>2021.09 입주
							</td>
						</tr>

						<tr>
							<td>04.10<br>(수)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02070036850002')"
								class="link_s"><span class="fc_blue">남양주더샵퍼스트시티(A1)</span>
									(1순위)<br>남양주시 진접읍</a></td>
							<td><span class="lf"> 79A/59A ~ <br>111B/84B
							</span></td>
							<td><span class="lf"> 22,470~<br>30,560
							</span></td>
							<td>2019.04 분양<br>2021.11 입주
							</td>
						</tr>

						<tr>
							<td>04.10<br>(수)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A13070025880003')"
								class="link_s"><span class="fc_blue">고창석정파크빌3차</span> (2순위)<br>고창군
									고창읍</a></td>
							<td><span class="lf"> 114B/84B </span></td>
							<td><span class="lf"> 34,900 </span></td>
							<td>2019.04 분양<br>2019.12 입주
							</td>
						</tr>

						<tr>
							<td>04.10<br>(수)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02790027680006')"
								class="link_s"><span class="fc_blue">화성향남2A20(행복주택)</span><br>화성시
									향남읍</a></td>
							<td><span class="lf"> 25A/16A ~ <br>57A/36A
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.01 분양<br>2019.09 입주
							</td>
						</tr>

						<tr>
							<td>04.10<br>(수)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02790027680007')"
								class="link_s"><span class="fc_blue">화성발안A1(행복주택)</span><br>화성시
									향남읍</a></td>
							<td><span class="lf"> 30B/16B ~ <br>79A/44A
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.01 분양<br>2019.09 입주
							</td>
						</tr>

						<tr>
							<td>04.10<br>(수)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">오피스텔<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('C', 'G05070004130018')"
								class="link_s"><span class="fc_blue">호반써밋송도(M2)</span><br>연수구
									송도동</a></td>
							<td><span class="lf"> 151A/74A ~ <br>174B/84B
							</span></td>
							<td><span class="lf"> 25,580~<br>29,150
							</span></td>
							<td>2019.04 분양<br>2023.02 입주
							</td>
						</tr>

						<tr>
							<td>04.10<br>(수)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A05060007900000')"
								class="link_s"><span class="fc_blue">인천검단대방노블랜드1차(AB4)</span><br>서구
									당하동</a></td>
							<td><span class="lf"> 99A/75A ~ <br>133A/108A
							</span></td>
							<td><span class="lf"> 34,980~<br>49,300
							</span></td>
							<td>2019.04 분양<br>2022.03 입주
							</td>
						</tr>

						<tr>
							<td>04.10<br>(수)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A08010001420005')"
								class="link_s"><span class="fc_blue">문수로두산위브더제니스</span><br>남구
									신정동</a></td>
							<td><span class="lf"> 116A/84A ~ <br>117B/84B
							</span></td>
							<td><span class="lf"> 48,294~<br>50,472
							</span></td>
							<td>2019.04 분양<br>2021.11 입주
							</td>
						</tr>

						<tr>
							<td>04.10<br>(수)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A07040018190004')"
								class="link_s"><span class="fc_blue">대전아이파크시티2단지(민간임대)</span><br>유성구
									복용동</a></td>
							<td><span class="lf"> 111A/84A ~ <br>112B/84B
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.04 분양<br>2021.11 입주
							</td>
						</tr>

						<tr>
							<td>04.10<br>(수)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A07040018190003')"
								class="link_s"><span class="fc_blue">대전아이파크시티1단지(민간임대)</span><br>유성구
									복용동</a></td>
							<td><span class="lf"> 111A/84A ~ <br>111B/84B
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.04 분양<br>2021.11 입주
							</td>
						</tr>

						<tr>
							<td>04.10<br>(수)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02640016300008')"
								class="link_s"><span class="fc_blue">평택고덕신혼희망타운(공공분양)</span><br>평택시
									서정동</a></td>
							<td><span class="lf"> 67A/46A ~ <br>80A4/55A4
							</span></td>
							<td><span class="lf"> 19,884~<br>23,702
							</span></td>
							<td>2019.01 분양<br>2021.08 입주
							</td>
						</tr>

						<tr>
							<td>04.11<br>(목)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02011426550000')"
								class="link_s"><span class="fc_blue">e편한세상일산어반스카이</span>
									(2순위)<br>고양시 일산동</a></td>
							<td><span class="lf"> 96B/70B ~ <br>114/84
							</span></td>
							<td><span class="lf"> 47,437~<br>57,076
							</span></td>
							<td>2019.04 분양<br>2022.12 입주
							</td>
						</tr>

						<tr>
							<td>04.11<br>(목)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02040028480001')"
								class="link_s"><span class="fc_blue">한양수자인구리역</span> (1순위)<br>구리시
									수택동</a></td>
							<td><span class="lf"> 83A/59A ~ <br>113B/84B
							</span></td>
							<td><span class="lf"> 46,500~<br>59,900
							</span></td>
							<td>2019.04 분양<br>2021.07 입주
							</td>
						</tr>

						<tr>
							<td>04.11<br>(목)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A04060032630000')"
								class="link_s"><span class="fc_blue">수성레이크푸르지오</span> (1순위)<br>수성구
									두산동</a></td>
							<td><span class="lf"> 108B/84B ~ <br>196PH/152PH
							</span></td>
							<td><span class="lf"> 65,600~<br>118,500
							</span></td>
							<td>2019.04 분양<br>2022.08 입주
							</td>
						</tr>

						<tr>
							<td>04.11<br>(목)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A13051222520000')"
								class="link_s"><span class="fc_blue">서완산골드클래스</span> (2순위)<br>전주시
									서완산동2가</a></td>
							<td><span class="lf"> 97/74 ~ <br>110/84
							</span></td>
							<td><span class="lf"> 24,540~<br>27,810
							</span></td>
							<td>2019.04 분양<br>2021.06 입주
							</td>
						</tr>

						<tr>
							<td>04.11<br>(목)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A14020021490000')"
								class="link_s"><span class="fc_blue">논산골든타워</span> (2순위)<br>논산시
									취암동</a></td>
							<td><span class="lf"> 102/76 ~ <br>209/157
							</span></td>
							<td><span class="lf"> 24,303~<br>62,034
							</span></td>
							<td>2019.04 분양<br>2021.09 입주
							</td>
						</tr>

						<tr>
							<td>04.11<br>(목)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02070036850002')"
								class="link_s"><span class="fc_blue">남양주더샵퍼스트시티(A1)</span>
									(2순위)<br>남양주시 진접읍</a></td>
							<td><span class="lf"> 79A/59A ~ <br>111B/84B
							</span></td>
							<td><span class="lf"> 22,470~<br>30,560
							</span></td>
							<td>2019.04 분양<br>2021.11 입주
							</td>
						</tr>

						<tr>
							<td>04.11<br>(목)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A05070004130009')"
								class="link_s"><span class="fc_blue">호반써밋송도(M2)</span><br>연수구
									송도동</a></td>
							<td><span class="lf"> 116A/84A ~ <br>142B/101B
							</span></td>
							<td><span class="lf"> 48,460~<br>58,050
							</span></td>
							<td>2019.04 분양<br>2023.02 입주
							</td>
						</tr>

						<tr>
							<td>04.11<br>(목)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">오피스텔<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('C', 'G02170039330004')"
								class="link_s"><span class="fc_blue">파주운정지구디에이블</span><br>파주시
									와동동</a></td>
							<td><span class="lf"> 60B/23B ~ <br>69A/26A
							</span></td>
							<td><span class="lf"> 17,617~<br>18,730
							</span></td>
							<td>2019.04 분양<br>2020.11 입주
							</td>
						</tr>

						<tr>
							<td>04.11<br>(목)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">오피스텔<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('C', 'G01110026420007')"
								class="link_s"><span class="fc_blue">청량리역해링턴플레이스</span><br>동대문구
									용두동</a></td>
							<td><span class="lf"> 71A2/29A2 ~ <br>127G/52G
							</span></td>
							<td><span class="lf"> 23,000~<br>40,900
							</span></td>
							<td>2019.04 분양<br>2023.01 입주
							</td>
						</tr>

						<tr>
							<td>04.11<br>(목)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A01110026420010')"
								class="link_s"><span class="fc_blue">청량리역해링턴플레이스</span><br>동대문구
									용두동</a></td>
							<td><span class="lf"> 83/59 ~ <br>207/150
							</span></td>
							<td><span class="lf"> 69,000~<br>138,500
							</span></td>
							<td>2019.04 분양<br>2023.01 입주
							</td>
						</tr>

						<tr>
							<td>04.11<br>(목)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A10140006430001')"
								class="link_s"><span class="fc_blue">의령동동5(행복주택)</span><br>의령군
									의령읍</a></td>
							<td><span class="lf"> 27AB/16AB ~ <br>59A/36A
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.01 분양<br>2020.02 입주
							</td>
						</tr>

						<tr>
							<td>04.11<br>(목)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A01220014330010')"
								class="link_s"><span class="fc_blue">은평서해그랑블</span><br>은평구
									구산동</a></td>
							<td><span class="lf"> 61/44 ~ <br>98/72
							</span></td>
							<td><span class="lf"> 26,240~<br>42,050
							</span></td>
							<td>2019.04 분양<br>2021.08 입주
							</td>
						</tr>

						<tr>
							<td>04.11<br>(목)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">오피스텔<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('C', 'G02040028480003')"
								class="link_s"><span class="fc_blue">유탑트윈팰리스</span><br>구리시
									수택동</a></td>
							<td><span class="lf"> 46/20 ~ <br>94/43
							</span></td>
							<td><span class="lf"> 14,050~<br>26,510
							</span></td>
							<td>2019.04 분양<br>2022.01 입주
							</td>
						</tr>

						<tr>
							<td>04.11<br>(목)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A01250027850001')"
								class="link_s"><span class="fc_blue">신내역금강펜테리움센트럴파크(C2)</span><br>중랑구
									망우동</a></td>
							<td><span class="lf"> 103/79 ~ <br>109/84
							</span></td>
							<td><span class="lf"> 54,600~<br>56,300
							</span></td>
							<td>2019.04 분양<br>2021.08 입주
							</td>
						</tr>

						<tr>
							<td>04.11<br>(목)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">오피스텔<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('C', 'G01060037330009')"
								class="link_s"><span class="fc_blue">빌리브인테라스</span><br>광진구
									화양동</a></td>
							<td><span class="lf"> 38A/16A ~ <br>63D/27D
							</span></td>
							<td><span class="lf"> 28,670~<br>46,989
							</span></td>
							<td>2019.04 분양<br>2021.11 입주
							</td>
						</tr>

						<tr>
							<td>04.11<br>(목)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02090400100002')"
								class="link_s"><span class="fc_blue">분당지웰푸르지오</span><br>성남시
									수내동</a></td>
							<td><span class="lf"> 111/84 ~ <br>156/119
							</span></td>
							<td><span class="lf"> 90,080~<br>137,100
							</span></td>
							<td>2019.04 분양<br>2022.03 입주
							</td>
						</tr>

						<tr>
							<td>04.11<br>(목)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A07040018190001')"
								class="link_s"><span class="fc_blue">대전도안2A21(행복주택)</span><br>유성구
									원신흥동</a></td>
							<td><span class="lf"> 24A/16A ~ <br>54A/36A
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.01 분양<br>2019.11 입주
							</td>
						</tr>

						<tr>
							<td>04.11<br>(목)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A01110038680003')"
								class="link_s"><span class="fc_blue">답십리엘림퍼스트</span><br>동대문구
									답십리동</a></td>
							<td><span class="lf"> 70A/52A ~ <br>71C/52C
							</span></td>
							<td><span class="lf"> 59,950~<br>61,100
							</span></td>
							<td>2019.04 분양<br>2021.03 입주
							</td>
						</tr>

						<tr>
							<td>04.11<br>(목)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A11020038240000')"
								class="link_s"><span class="fc_blue">경주용강1단지증축(영구임대)</span><br>경주시
									용강동</a></td>
							<td><span class="lf"> 28B/19B ~ <br>37A/26A
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.01 분양<br>2019.12 입주
							</td>
						</tr>

						<tr>
							<td>04.11<br>(목)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">오피스텔<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('C', 'G05070004130018')"
								class="link_s"><span class="fc_blue">호반써밋송도(M2)</span><br>연수구
									송도동</a></td>
							<td><span class="lf"> 151A/74A ~ <br>174B/84B
							</span></td>
							<td><span class="lf"> 25,580~<br>29,150
							</span></td>
							<td>2019.04 분양<br>2023.02 입주
							</td>
						</tr>

						<tr>
							<td>04.11<br>(목)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">오피스텔<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('C', 'G01110026420007')"
								class="link_s"><span class="fc_blue">청량리역해링턴플레이스</span><br>동대문구
									용두동</a></td>
							<td><span class="lf"> 71A2/29A2 ~ <br>127G/52G
							</span></td>
							<td><span class="lf"> 23,000~<br>40,900
							</span></td>
							<td>2019.04 분양<br>2023.01 입주
							</td>
						</tr>

						<tr>
							<td>04.11<br>(목)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A07040018190004')"
								class="link_s"><span class="fc_blue">대전아이파크시티2단지(민간임대)</span><br>유성구
									복용동</a></td>
							<td><span class="lf"> 111A/84A ~ <br>112B/84B
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.04 분양<br>2021.11 입주
							</td>
						</tr>

						<tr>
							<td>04.11<br>(목)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A07040018190003')"
								class="link_s"><span class="fc_blue">대전아이파크시티1단지(민간임대)</span><br>유성구
									복용동</a></td>
							<td><span class="lf"> 111A/84A ~ <br>111B/84B
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.04 분양<br>2021.11 입주
							</td>
						</tr>

						<tr>
							<td>04.12<br>(금)
							</td>
							<td><span class="fc_blue">오픈</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02790022740001')"
								class="link_s"><span class="fc_blue">화성우방아이유쉘메가시티(2단지)</span><br>화성시
									기안동</a></td>
							<td><span class="lf"> - / - </span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.04 분양<br></td>
						</tr>

						<tr>
							<td>04.12<br>(금)
							</td>
							<td><span class="fc_blue">오픈</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02790022740000')"
								class="link_s"><span class="fc_blue">화성우방아이유쉘메가시티(1단지)</span><br>화성시
									기안동</a></td>
							<td><span class="lf"> - / - </span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.04 분양<br></td>
						</tr>

						<tr>
							<td>04.12<br>(금)
							</td>
							<td><span class="fc_blue">오픈</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A04030006490002')"
								class="link_s"><span class="fc_blue">방촌역세영리첼</span><br>동구
									방촌동</a></td>
							<td><span class="lf"> - / - </span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.04 분양<br></td>
						</tr>

						<tr>
							<td>04.12<br>(금)
							</td>
							<td><span class="fc_blue">오픈</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A04040022630001')"
								class="link_s"><span class="fc_blue">강북태왕아너스더퍼스트</span><br>북구
									읍내동</a></td>
							<td><span class="lf"> - / - </span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.04 분양<br></td>
						</tr>

						<tr>
							<td>04.12<br>(금)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02040028480001')"
								class="link_s"><span class="fc_blue">한양수자인구리역</span> (1순위)<br>구리시
									수택동</a></td>
							<td><span class="lf"> 83A/59A ~ <br>113B/84B
							</span></td>
							<td><span class="lf"> 46,500~<br>59,900
							</span></td>
							<td>2019.04 분양<br>2021.07 입주
							</td>
						</tr>

						<tr>
							<td>04.12<br>(금)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A04060032630000')"
								class="link_s"><span class="fc_blue">수성레이크푸르지오</span> (2순위)<br>수성구
									두산동</a></td>
							<td><span class="lf"> 108B/84B ~ <br>196PH/152PH
							</span></td>
							<td><span class="lf"> 65,600~<br>118,500
							</span></td>
							<td>2019.04 분양<br>2022.08 입주
							</td>
						</tr>

						<tr>
							<td>04.12<br>(금)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02180012380001')"
								class="link_s"><span class="fc_blue">힐스테이트북위례(A3-4a)</span><br>하남시
									학암동</a></td>
							<td><span class="lf"> 116/92 ~ <br>130/102
							</span></td>
							<td><span class="lf"> 64,900~<br>72,670
							</span></td>
							<td>2019.04 분양<br>2021.05 입주
							</td>
						</tr>

						<tr>
							<td>04.12<br>(금)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02160031200005')"
								class="link_s"><span class="fc_blue">의정부고산S2-1(행복주택)</span><br>의정부시
									고산동</a></td>
							<td><span class="lf"> 24A/16A ~ <br>53A/36A
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.01 분양<br>2020.06 입주
							</td>
						</tr>

						<tr>
							<td>04.12<br>(금)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A03070026970006')"
								class="link_s"><span class="fc_blue">신만덕베스티움에코포레</span><br>북구
									만덕동</a></td>
							<td><span class="lf"> 85/59 ~ <br>114/84
							</span></td>
							<td><span class="lf"> 26,600~<br>33,700
							</span></td>
							<td>2019.04 분양<br>2022.04 입주
							</td>
						</tr>

						<tr>
							<td>04.12<br>(금)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A10020016170000')"
								class="link_s"><span class="fc_blue">김해삼계두곡한라비발디센텀시티</span><br>김해시
									삼계동</a></td>
							<td><span class="lf"> 84/64 ~ <br>110/84
							</span></td>
							<td><span class="lf"> 33,033~<br>39,680
							</span></td>
							<td>2019.04 분양<br>2021.12 입주
							</td>
						</tr>

						<tr>
							<td>04.12<br>(금)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">오피스텔<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('C', 'G02170039330004')"
								class="link_s"><span class="fc_blue">파주운정지구디에이블</span><br>파주시
									와동동</a></td>
							<td><span class="lf"> 60B/23B ~ <br>69A/26A
							</span></td>
							<td><span class="lf"> 17,617~<br>18,730
							</span></td>
							<td>2019.04 분양<br>2020.11 입주
							</td>
						</tr>

						<tr>
							<td>04.12<br>(금)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">오피스텔<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('C', 'G02040028480003')"
								class="link_s"><span class="fc_blue">유탑트윈팰리스</span><br>구리시
									수택동</a></td>
							<td><span class="lf"> 46/20 ~ <br>94/43
							</span></td>
							<td><span class="lf"> 14,050~<br>26,510
							</span></td>
							<td>2019.04 분양<br>2022.01 입주
							</td>
						</tr>

						<tr>
							<td>04.12<br>(금)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">오피스텔<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('C', 'G01060037330009')"
								class="link_s"><span class="fc_blue">빌리브인테라스</span><br>광진구
									화양동</a></td>
							<td><span class="lf"> 38A/16A ~ <br>63D/27D
							</span></td>
							<td><span class="lf"> 28,670~<br>46,989
							</span></td>
							<td>2019.04 분양<br>2021.11 입주
							</td>
						</tr>

						<tr>
							<td>04.15<br>(월)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02040028480001')"
								class="link_s"><span class="fc_blue">한양수자인구리역</span> (2순위)<br>구리시
									수택동</a></td>
							<td><span class="lf"> 83A/59A ~ <br>113B/84B
							</span></td>
							<td><span class="lf"> 46,500~<br>59,900
							</span></td>
							<td>2019.04 분양<br>2021.07 입주
							</td>
						</tr>

						<tr>
							<td>04.15<br>(월)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A01110026420002')"
								class="link_s"><span class="fc_blue">청량리역한양수자인192</span>
									(1순위)<br>동대문구 용두동</a></td>
							<td><span class="lf"> 120F/84F ~ <br>231/162
							</span></td>
							<td><span class="lf"> 88,300~<br>206,900
							</span></td>
							<td>2019.04 분양<br>2023.05 입주
							</td>
						</tr>

						<tr>
							<td>04.15<br>(월)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A01040037510087')"
								class="link_s"><span class="fc_blue">화곡한울에이치밸리움A동</span><br>강서구
									화곡동</a></td>
							<td><span class="lf"> 23A/18A ~ <br>29A/22A
							</span></td>
							<td><span class="lf"> 25,000~<br>27,600
							</span></td>
							<td>2019.03 분양<br>2019.10 입주
							</td>
						</tr>

						<tr>
							<td>04.15<br>(월)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A12150012650000')"
								class="link_s"><span class="fc_blue">함평월야푸르밸리</span><br>함평군
									월야면</a></td>
							<td><span class="lf"> 80/59 ~ <br>101/75
							</span></td>
							<td><span class="lf"> 17,510~<br>22,460
							</span></td>
							<td>2019.03 분양<br>2020.05 입주
							</td>
						</tr>

						<tr>
							<td>04.15<br>(월)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A11017122800006')"
								class="link_s"><span class="fc_blue">중산코오롱하늘채메트로폴리스</span><br>경산시
									중산동</a></td>
							<td><span class="lf"> 103B/84B ~ <br>137/113
							</span></td>
							<td><span class="lf"> 43,900~<br>57,900
							</span></td>
							<td>2019.03 분양<br>2021.04 입주
							</td>
						</tr>

						<tr>
							<td>04.15<br>(월)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A09020024130001')"
								class="link_s"><span class="fc_blue">이안동해센트럴</span><br>동해시
									천곡동</a></td>
							<td><span class="lf"> 78A/59A ~ <br>111/84
							</span></td>
							<td><span class="lf"> 18,408~<br>26,825
							</span></td>
							<td>2019.03 분양<br>2021.05 입주
							</td>
						</tr>

						<tr>
							<td>04.15<br>(월)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A04020027910005')"
								class="link_s"><span class="fc_blue">성당태왕아너스메트로</span><br>달서구
									성당동</a></td>
							<td><span class="lf"> 108B/84B </span></td>
							<td><span class="lf"> 48,450 </span></td>
							<td>2019.03 분양<br>2022.06 입주
							</td>
						</tr>

						<tr>
							<td>04.15<br>(월)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A07040018190002')"
								class="link_s"><span class="fc_blue">대전아이파크시티2단지(A2)</span><br>유성구
									복용동</a></td>
							<td><span class="lf"> 111A/84A ~ <br>295P/234P
							</span></td>
							<td><span class="lf"> 49,800~<br>177,600
							</span></td>
							<td>2019.03 분양<br>2021.11 입주
							</td>
						</tr>

						<tr>
							<td>04.15<br>(월)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A07040018190000')"
								class="link_s"><span class="fc_blue">대전아이파크시티1단지(A1)</span><br>유성구
									복용동</a></td>
							<td><span class="lf"> 111A/84A ~ <br>133A/104A
							</span></td>
							<td><span class="lf"> 49,600~<br>60,100
							</span></td>
							<td>2019.03 분양<br>2021.11 입주
							</td>
						</tr>

						<tr>
							<td>04.15<br>(월)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A15100008340001')"
								class="link_s"><span class="fc_blue">광혜원지안스로가</span><br>진천군
									광혜원면</a></td>
							<td><span class="lf"> 84A/59A ~ <br>111/84
							</span></td>
							<td><span class="lf"> 17,779~<br>23,453
							</span></td>
							<td>2019.03 분양<br>2020.09 입주
							</td>
						</tr>

						<tr>
							<td>04.16<br>(화)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A01110026420002')"
								class="link_s"><span class="fc_blue">청량리역한양수자인192</span>
									(1순위)<br>동대문구 용두동</a></td>
							<td><span class="lf"> 120F/84F ~ <br>231/162
							</span></td>
							<td><span class="lf"> 88,300~<br>206,900
							</span></td>
							<td>2019.04 분양<br>2023.05 입주
							</td>
						</tr>

						<tr>
							<td>04.16<br>(화)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A13070025880003')"
								class="link_s"><span class="fc_blue">고창석정파크빌3차</span><br>고창군
									고창읍</a></td>
							<td><span class="lf"> 114B/84B </span></td>
							<td><span class="lf"> 34,900 </span></td>
							<td>2019.04 분양<br>2019.12 입주
							</td>
						</tr>

						<tr>
							<td>04.16<br>(화)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A15023509950001')"
								class="link_s"><span class="fc_blue">청주산남2-1증축(행복주택)</span><br>청주시
									수곡동</a></td>
							<td><span class="lf"> 27/19 </span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.01 분양<br>2020.02 입주
							</td>
						</tr>

						<tr>
							<td>04.16<br>(화)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A04087118930000')"
								class="link_s"><span class="fc_blue">대구국가산단대방노블랜드(A2-1)</span><br>달성군
									구지면</a></td>
							<td><span class="lf"> 99B/76B ~ <br>110B/84B
							</span></td>
							<td><span class="lf"> 24,310~<br>28,800
							</span></td>
							<td>2019.03 분양<br>2021.07 입주
							</td>
						</tr>

						<tr>
							<td>04.17<br>(수)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A01110026420002')"
								class="link_s"><span class="fc_blue">청량리역한양수자인192</span>
									(2순위)<br>동대문구 용두동</a></td>
							<td><span class="lf"> 120F/84F ~ <br>231/162
							</span></td>
							<td><span class="lf"> 88,300~<br>206,900
							</span></td>
							<td>2019.04 분양<br>2023.05 입주
							</td>
						</tr>

						<tr>
							<td>04.17<br>(수)
							</td>
							<td><span class="fc_skyblue">접수</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">오피스텔<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('C', 'G08010001420011')"
								class="link_s"><span class="fc_blue">문수로두산위브더제니스</span><br>남구
									신정동</a></td>
							<td><span class="lf"> - / - </span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.04 분양<br>2021.11 입주
							</td>
						</tr>

						<tr>
							<td>04.17<br>(수)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02011426550000')"
								class="link_s"><span class="fc_blue">e편한세상일산어반스카이</span><br>고양시
									일산동</a></td>
							<td><span class="lf"> 96B/70B ~ <br>114/84
							</span></td>
							<td><span class="lf"> 47,437~<br>57,076
							</span></td>
							<td>2019.04 분양<br>2022.12 입주
							</td>
						</tr>

						<tr>
							<td>04.17<br>(수)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">오피스텔<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('C', 'G04060032630003')"
								class="link_s"><span class="fc_blue">수성레이크푸르지오</span><br>수성구
									두산동</a></td>
							<td><span class="lf"> 194B/84B ~ <br>194A/84A
							</span></td>
							<td><span class="lf"> 44,100~<br>44,900
							</span></td>
							<td>2019.04 분양<br>2022.08 입주
							</td>
						</tr>

						<tr>
							<td>04.17<br>(수)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A13051222520000')"
								class="link_s"><span class="fc_blue">서완산골드클래스</span><br>전주시
									서완산동2가</a></td>
							<td><span class="lf"> 97/74 ~ <br>110/84
							</span></td>
							<td><span class="lf"> 24,540~<br>27,810
							</span></td>
							<td>2019.04 분양<br>2021.06 입주
							</td>
						</tr>

						<tr>
							<td>04.17<br>(수)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A14020021490000')"
								class="link_s"><span class="fc_blue">논산골든타워</span><br>논산시
									취암동</a></td>
							<td><span class="lf"> 102/76 ~ <br>209/157
							</span></td>
							<td><span class="lf"> 24,303~<br>62,034
							</span></td>
							<td>2019.04 분양<br>2021.09 입주
							</td>
						</tr>

						<tr>
							<td>04.17<br>(수)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02070036850002')"
								class="link_s"><span class="fc_blue">남양주더샵퍼스트시티(A1)</span><br>남양주시
									진접읍</a></td>
							<td><span class="lf"> 79A/59A ~ <br>111B/84B
							</span></td>
							<td><span class="lf"> 22,470~<br>30,560
							</span></td>
							<td>2019.04 분양<br>2021.11 입주
							</td>
						</tr>

						<tr>
							<td>04.17<br>(수)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02740002680000')"
								class="link_s"><span class="fc_blue">양주고읍A13(행복주택)</span><br>양주시
									광사동</a></td>
							<td><span class="lf"> 25A/16A ~ <br>55A/36A
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.01 분양<br>2020.06 입주
							</td>
						</tr>

						<tr>
							<td>04.17<br>(수)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A04050020240002')"
								class="link_s"><span class="fc_blue">대구비산(행복주택)</span><br>서구
									비산동</a></td>
							<td><span class="lf"> 27A/16A ~ <br>58A/36A
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.01 분양<br>2019.12 입주
							</td>
						</tr>

						<tr>
							<td>04.18<br>(목)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A04060032630000')"
								class="link_s"><span class="fc_blue">수성레이크푸르지오</span><br>수성구
									두산동</a></td>
							<td><span class="lf"> 108B/84B ~ <br>196PH/152PH
							</span></td>
							<td><span class="lf"> 65,600~<br>118,500
							</span></td>
							<td>2019.04 분양<br>2022.08 입주
							</td>
						</tr>

						<tr>
							<td>04.18<br>(목)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">오피스텔<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('C', 'G04060032630003')"
								class="link_s"><span class="fc_blue">수성레이크푸르지오</span><br>수성구
									두산동</a></td>
							<td><span class="lf"> 194B/84B ~ <br>194A/84A
							</span></td>
							<td><span class="lf"> 44,100~<br>44,900
							</span></td>
							<td>2019.04 분양<br>2022.08 입주
							</td>
						</tr>

						<tr>
							<td>04.19<br>(금)
							</td>
							<td><span class="fc_blue">오픈</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A01180021200001')"
								class="link_s"><span class="fc_blue">위례신도시리슈빌(A1-6)</span><br>송파구
									장지동</a></td>
							<td><span class="lf"> - / - </span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.04 분양<br></td>
						</tr>

						<tr>
							<td>04.19<br>(금)
							</td>
							<td><span class="fc_blue">오픈</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02070030300000')"
								class="link_s"><span class="fc_blue">성도르피스더스테이(민간임대)</span><br>남양주시
									오남읍</a></td>
							<td><span class="lf"> - / - </span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.04 분양<br></td>
						</tr>

						<tr>
							<td>04.19<br>(금)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02040028480001')"
								class="link_s"><span class="fc_blue">한양수자인구리역</span><br>구리시
									수택동</a></td>
							<td><span class="lf"> 83A/59A ~ <br>113B/84B
							</span></td>
							<td><span class="lf"> 46,500~<br>59,900
							</span></td>
							<td>2019.04 분양<br>2021.07 입주
							</td>
						</tr>

						<tr>
							<td>04.19<br>(금)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">오피스텔<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('C', 'G08010001420011')"
								class="link_s"><span class="fc_blue">문수로두산위브더제니스</span><br>남구
									신정동</a></td>
							<td><span class="lf"> - / - </span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.04 분양<br>2021.11 입주
							</td>
						</tr>

						<tr>
							<td>04.22<br>(월)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02790027680006')"
								class="link_s"><span class="fc_blue">화성향남2A20(행복주택)</span><br>화성시
									향남읍</a></td>
							<td><span class="lf"> 25A/16A ~ <br>57A/36A
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.01 분양<br>2019.09 입주
							</td>
						</tr>

						<tr>
							<td>04.22<br>(월)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02790027680007')"
								class="link_s"><span class="fc_blue">화성발안A1(행복주택)</span><br>화성시
									향남읍</a></td>
							<td><span class="lf"> 30B/16B ~ <br>79A/44A
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.01 분양<br>2019.09 입주
							</td>
						</tr>

						<tr>
							<td>04.22<br>(월)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A01110026420010')"
								class="link_s"><span class="fc_blue">청량리역해링턴플레이스</span><br>동대문구
									용두동</a></td>
							<td><span class="lf"> 83/59 ~ <br>207/150
							</span></td>
							<td><span class="lf"> 69,000~<br>138,500
							</span></td>
							<td>2019.04 분양<br>2023.01 입주
							</td>
						</tr>

						<tr>
							<td>04.22<br>(월)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A01220014330010')"
								class="link_s"><span class="fc_blue">은평서해그랑블</span><br>은평구
									구산동</a></td>
							<td><span class="lf"> 61/44 ~ <br>98/72
							</span></td>
							<td><span class="lf"> 26,240~<br>42,050
							</span></td>
							<td>2019.04 분양<br>2021.08 입주
							</td>
						</tr>

						<tr>
							<td>04.22<br>(월)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A12050021740001')"
								class="link_s"><span class="fc_blue">여수관문(행복주택)</span><br>여수시
									관문동</a></td>
							<td><span class="lf"> 24/16 ~ <br>53/36
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.01 분양<br>2020.07 입주
							</td>
						</tr>

						<tr>
							<td>04.22<br>(월)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02090400100002')"
								class="link_s"><span class="fc_blue">분당지웰푸르지오</span><br>성남시
									수내동</a></td>
							<td><span class="lf"> 111/84 ~ <br>156/119
							</span></td>
							<td><span class="lf"> 90,080~<br>137,100
							</span></td>
							<td>2019.04 분양<br>2022.03 입주
							</td>
						</tr>

						<tr>
							<td>04.22<br>(월)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A08010001420005')"
								class="link_s"><span class="fc_blue">문수로두산위브더제니스</span><br>남구
									신정동</a></td>
							<td><span class="lf"> 116A/84A ~ <br>117B/84B
							</span></td>
							<td><span class="lf"> 48,294~<br>50,472
							</span></td>
							<td>2019.04 분양<br>2021.11 입주
							</td>
						</tr>

						<tr>
							<td>04.22<br>(월)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">오피스텔<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('C', 'G08010001420011')"
								class="link_s"><span class="fc_blue">문수로두산위브더제니스</span><br>남구
									신정동</a></td>
							<td><span class="lf"> - / - </span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.04 분양<br>2021.11 입주
							</td>
						</tr>

						<tr>
							<td>04.22<br>(월)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A07040018190001')"
								class="link_s"><span class="fc_blue">대전도안2A21(행복주택)</span><br>유성구
									원신흥동</a></td>
							<td><span class="lf"> 24A/16A ~ <br>54A/36A
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.01 분양<br>2019.11 입주
							</td>
						</tr>

						<tr>
							<td>04.22<br>(월)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A01110038680003')"
								class="link_s"><span class="fc_blue">답십리엘림퍼스트</span><br>동대문구
									답십리동</a></td>
							<td><span class="lf"> 70A/52A ~ <br>71C/52C
							</span></td>
							<td><span class="lf"> 59,950~<br>61,100
							</span></td>
							<td>2019.04 분양<br>2021.03 입주
							</td>
						</tr>

						<tr>
							<td>04.23<br>(화)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A01110026420002')"
								class="link_s"><span class="fc_blue">청량리역한양수자인192</span><br>동대문구
									용두동</a></td>
							<td><span class="lf"> 120F/84F ~ <br>231/162
							</span></td>
							<td><span class="lf"> 88,300~<br>206,900
							</span></td>
							<td>2019.04 분양<br>2023.05 입주
							</td>
						</tr>

						<tr>
							<td>04.23<br>(화)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A05070004130009')"
								class="link_s"><span class="fc_blue">호반써밋송도(M2)</span><br>연수구
									송도동</a></td>
							<td><span class="lf"> 116A/84A ~ <br>142B/101B
							</span></td>
							<td><span class="lf"> 48,460~<br>58,050
							</span></td>
							<td>2019.04 분양<br>2023.02 입주
							</td>
						</tr>

						<tr>
							<td>04.23<br>(화)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A05060007900000')"
								class="link_s"><span class="fc_blue">인천검단대방노블랜드1차(AB4)</span><br>서구
									당하동</a></td>
							<td><span class="lf"> 99A/75A ~ <br>133A/108A
							</span></td>
							<td><span class="lf"> 34,980~<br>49,300
							</span></td>
							<td>2019.04 분양<br>2022.03 입주
							</td>
						</tr>

						<tr>
							<td>04.23<br>(화)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A03070026970006')"
								class="link_s"><span class="fc_blue">신만덕베스티움에코포레</span><br>북구
									만덕동</a></td>
							<td><span class="lf"> 85/59 ~ <br>114/84
							</span></td>
							<td><span class="lf"> 26,600~<br>33,700
							</span></td>
							<td>2019.04 분양<br>2022.04 입주
							</td>
						</tr>

						<tr>
							<td>04.23<br>(화)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A01250027850001')"
								class="link_s"><span class="fc_blue">신내역금강펜테리움센트럴파크(C2)</span><br>중랑구
									망우동</a></td>
							<td><span class="lf"> 103/79 ~ <br>109/84
							</span></td>
							<td><span class="lf"> 54,600~<br>56,300
							</span></td>
							<td>2019.04 분양<br>2021.08 입주
							</td>
						</tr>

						<tr>
							<td>04.23<br>(화)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A10020016170000')"
								class="link_s"><span class="fc_blue">김해삼계두곡한라비발디센텀시티</span><br>김해시
									삼계동</a></td>
							<td><span class="lf"> 84/64 ~ <br>110/84
							</span></td>
							<td><span class="lf"> 33,033~<br>39,680
							</span></td>
							<td>2019.04 분양<br>2021.12 입주
							</td>
						</tr>

						<tr>
							<td>04.23<br>(화)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A11020038240000')"
								class="link_s"><span class="fc_blue">경주용강1단지증축(영구임대)</span><br>경주시
									용강동</a></td>
							<td><span class="lf"> 28B/19B ~ <br>37A/26A
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.01 분양<br>2019.12 입주
							</td>
						</tr>

						<tr>
							<td>04.24<br>(수)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02180012380001')"
								class="link_s"><span class="fc_blue">힐스테이트북위례(A3-4a)</span><br>하남시
									학암동</a></td>
							<td><span class="lf"> 116/92 ~ <br>130/102
							</span></td>
							<td><span class="lf"> 64,900~<br>72,670
							</span></td>
							<td>2019.04 분양<br>2021.05 입주
							</td>
						</tr>

						<tr>
							<td>04.24<br>(수)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02160031200005')"
								class="link_s"><span class="fc_blue">의정부고산S2-1(행복주택)</span><br>의정부시
									고산동</a></td>
							<td><span class="lf"> 24A/16A ~ <br>53A/36A
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.01 분양<br>2020.06 입주
							</td>
						</tr>

						<tr>
							<td>04.24<br>(수)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A10140006430001')"
								class="link_s"><span class="fc_blue">의령동동5(행복주택)</span><br>의령군
									의령읍</a></td>
							<td><span class="lf"> 27AB/16AB ~ <br>59A/36A
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.01 분양<br>2020.02 입주
							</td>
						</tr>

						<tr>
							<td>04.26<br>(금)
							</td>
							<td><span class="fc_blue">오픈</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A13051015760000')"
								class="link_s"><span class="fc_blue">e편한세상우아주공1</span><br>전주시
									우아동3가</a></td>
							<td><span class="lf"> - / - </span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.04 분양<br></td>
						</tr>

						<tr>
							<td>04.26<br>(금)
							</td>
							<td><span class="fc_blue">오픈</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A13051001160004')"
								class="link_s"><span class="fc_blue">전주에코시티14BL</span><br>전주시
									송천동2가</a></td>
							<td><span class="lf"> - / - </span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.04 분양<br></td>
						</tr>

						<tr>
							<td>04.26<br>(금)
							</td>
							<td><span class="fc_orange">발표</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>공공임대
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02092534260004')"
								class="link_s"><span class="fc_blue">성남고등A1(국민임대)</span><br>성남시
									고등동</a></td>
							<td><span class="lf"> 39B/26B ~ <br>65A/44A
							</span></td>
							<td><span class="lf"> 미정 </span></td>
							<td>2019.01 분양<br>2019.08 입주
							</td>
						</tr>

						<tr>
							<td>04.29<br>(월)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02011426550000')"
								class="link_s"><span class="fc_blue">e편한세상일산어반스카이</span><br>고양시
									일산동</a></td>
							<td><span class="lf"> 96B/70B ~ <br>114/84
							</span></td>
							<td><span class="lf"> 47,437~<br>57,076
							</span></td>
							<td>2019.04 분양<br>2022.12 입주
							</td>
						</tr>

						<tr>
							<td>04.29<br>(월)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A04060032630000')"
								class="link_s"><span class="fc_blue">수성레이크푸르지오</span><br>수성구
									두산동</a></td>
							<td><span class="lf"> 108B/84B ~ <br>196PH/152PH
							</span></td>
							<td><span class="lf"> 65,600~<br>118,500
							</span></td>
							<td>2019.04 분양<br>2022.08 입주
							</td>
						</tr>

						<tr>
							<td>04.29<br>(월)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A13051222520000')"
								class="link_s"><span class="fc_blue">서완산골드클래스</span><br>전주시
									서완산동2가</a></td>
							<td><span class="lf"> 97/74 ~ <br>110/84
							</span></td>
							<td><span class="lf"> 24,540~<br>27,810
							</span></td>
							<td>2019.04 분양<br>2021.06 입주
							</td>
						</tr>

						<tr>
							<td>04.29<br>(월)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A14020021490000')"
								class="link_s"><span class="fc_blue">논산골든타워</span><br>논산시
									취암동</a></td>
							<td><span class="lf"> 102/76 ~ <br>209/157
							</span></td>
							<td><span class="lf"> 24,303~<br>62,034
							</span></td>
							<td>2019.04 분양<br>2021.09 입주
							</td>
						</tr>

						<tr>
							<td>04.29<br>(월)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02070036850002')"
								class="link_s"><span class="fc_blue">남양주더샵퍼스트시티(A1)</span><br>남양주시
									진접읍</a></td>
							<td><span class="lf"> 79A/59A ~ <br>111B/84B
							</span></td>
							<td><span class="lf"> 22,470~<br>30,560
							</span></td>
							<td>2019.04 분양<br>2021.11 입주
							</td>
						</tr>

						<tr>
							<td>04.29<br>(월)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A13070025880003')"
								class="link_s"><span class="fc_blue">고창석정파크빌3차</span><br>고창군
									고창읍</a></td>
							<td><span class="lf"> 114B/84B </span></td>
							<td><span class="lf"> 34,900 </span></td>
							<td>2019.04 분양<br>2019.12 입주
							</td>
						</tr>

						<tr>
							<td>04.30<br>(화)
							</td>
							<td><span class="fc_green">계약</span></td>
							<!--
			오픈 : <span class="fc_blue">오픈</span>
			접수 : <span class="fc_skyblue">접수</span>
			발표 : <span class="fc_orange">발표</span>
			계약 : <span class="fc_green">계약</span>
			-->
							<td><span class="lf">아파트<br>민간분양
							</span></td>
							<td class="lf"><a
								href="javascript:goLotsInfoDetailPage('B', 'A02040028480001')"
								class="link_s"><span class="fc_blue">한양수자인구리역</span><br>구리시
									수택동</a></td>
							<td><span class="lf"> 83A/59A ~ <br>113B/84B
							</span></td>
							<td><span class="lf"> 46,500~<br>59,900
							</span></td>
							<td>2019.04 분양<br>2021.07 입주
							</td>
						</tr>
					</tbody>
				</table>
				<!-- //table -->
				<!-- paging -->
				<!--
			<div class="paging">
			</div>
			-->
				<!-- //paging -->

				<!--분양 바디 하단 광고 -->
				<div>
					<iframe
						src=""
						scrolling="no" marginheight="0" marginwidth="0" frameborder="0"
						width="100%" height="90px"
						style="border: 0; margin: 0; padding-top: 0px"></iframe>
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
								<div class="bx-wrapper" style="max-width: 100%;">
									<div class="bx-viewport" aria-live="polite"
										style="width: 100%; overflow: hidden; position: relative; height: 173px;">
										<ul
											style="width: 5215%; position: relative; transition-duration: 0s; transform: translate3d(-190px, 0px, 0px);">
											<li
												style="float: left; list-style: none; position: relative; width: 190px;"
												class="bx-clone" aria-hidden="true"><a
												href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=2&amp;sort2=down&amp;page=1&amp;num=14286"
												class="thumb_wrap"> <span class="thumb gra"><img
														src="https://image.r114.co.kr/images/r114/2014/jo_h20190325.png"
														alt=""></span> <span class="desc"><b>현대건설 힐스테이트
															리뉴얼로No.1 브랜드 위상 강화</b> </span> <span class="info_wrap2"> <span>부동산114</span>
														<span>2019.03.25</span>
												</span>
											</a></li>

											<li
												style="float: left; list-style: none; position: relative; width: 190px;"
												aria-hidden="false"><a
												href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=2&amp;sort2=down&amp;page=1&amp;num=14290"
												class="thumb_wrap"> <span class="thumb gra"><img
														src="https://image.r114.co.kr/images/r114/2014/jo_g20190405.png"
														alt=""></span> <span class="desc">트리플역세권으로 강남까지 더
														빠르게! "금정역동양라파크"</span> <span class="info_wrap2"> <span>부동산114</span>
														<span>2019.04.05</span>
												</span>
											</a></li>

											<li aria-hidden="true"
												style="float: left; list-style: none; position: relative; width: 190px;">
												<a
												href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=2&amp;sort2=down&amp;page=1&amp;num=14289"
												class="thumb_wrap"> <span class="thumb gra"><img
														src="https://image.r114.co.kr/images/r114/2014/jo_g20190404.jpg"
														alt=""></span> <span class="desc">GS건설, "성남고등자이" 5월
														분양</span> <span class="info_wrap2"> <span></span> <span>2019.04.04</span>
												</span>
											</a>
											</li>

											<li aria-hidden="true"
												style="float: left; list-style: none; position: relative; width: 190px;">
												<a
												href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=2&amp;sort2=down&amp;page=1&amp;num=14288"
												class="thumb_wrap"> <span class="thumb gra"><img
														src="https://image.r114.co.kr/images/r114/2014/jo_g20190402.jpg"
														alt=""></span> <span class="desc">송파대우이안(이스트원),다세권
														확보한 ‘똘똘한 한 채’</span> <span class="info_wrap2"> <span>부동산114</span>
														<span>2019.04.02</span>
												</span>
											</a>
											</li>

											<li aria-hidden="true"
												style="float: left; list-style: none; position: relative; width: 190px;">
												<a
												href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=2&amp;sort2=down&amp;page=1&amp;num=14287"
												class="thumb_wrap"> <span class="thumb gra"><img
														src="https://image.r114.co.kr/images/r114/2014/jo_g20190326.jpg"
														alt=""></span> <span class="desc">GS건설 방배그랑자이 4월
														분양예정</span> <span class="info_wrap2"> <span>부동산114</span>
														<span>2019.03.26</span>
												</span>
											</a>
											</li>

											<li
												style="float: left; list-style: none; position: relative; width: 190px;"
												aria-hidden="true"><a
												href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=2&amp;sort2=down&amp;page=1&amp;num=14286"
												class="thumb_wrap"> <span class="thumb gra"><img
														src="https://image.r114.co.kr/images/r114/2014/jo_h20190325.png"
														alt=""></span> <span class="desc"><b>현대건설 힐스테이트
															리뉴얼로No.1 브랜드 위상 강화</b> </span> <span class="info_wrap2"> <span>부동산114</span>
														<span>2019.03.25</span>
												</span>
											</a></li>

											<li
												style="float: left; list-style: none; position: relative; width: 190px;"
												class="bx-clone" aria-hidden="true"><a
												href="/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=2&amp;sort2=down&amp;page=1&amp;num=14290"
												class="thumb_wrap"> <span class="thumb gra"><img
														src="https://image.r114.co.kr/images/r114/2014/jo_g20190405.png"
														alt=""></span> <span class="desc">트리플역세권으로 강남까지 더
														빠르게! "금정역동양라파크"</span> <span class="info_wrap2"> <span>부동산114</span>
														<span>2019.04.05</span>
												</span>
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
											<div class="bx-pager-item">
												<a href="" data-slide-index="2" class="bx-pager-link">3</a>
											</div>
											<div class="bx-pager-item">
												<a href="" data-slide-index="3" class="bx-pager-link">4</a>
											</div>
											<div class="bx-pager-item">
												<a href="" data-slide-index="4" class="bx-pager-link">5</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<a href="/?_c=lots&amp;_m=lotsnews" class="more_type1"
								title="분양뉴스">더보기 <span class="ico_comm_s more1"></span></a>
						</div>
						<!-- //분양뉴스 -->
					</div>
					<div class="bx_gray banner">
						<!-- 분양알리미 -->
						<a href="javascript:" class="bn_a" id="cmdAlarmSave"> <strong>분양알리미
								신청하기</strong>
							<p>
								분양정보를 보다 <br>편리하게 확인하세요!
							</p> <span class="ico_comm_l sale_noti"></span>
						</a>
						<!-- //분양알리미 -->
					</div>
					<div class="bx_gray">
						<!-- 추천 분양현장 -->
						<div class="inner news">
							<h4 class="h4_type2">추천 분양현장</h4>
							<div class="slide_type6">
								<div class="bx-wrapper" style="max-width: 100%;">
									<div class="bx-viewport" aria-live="polite"
										style="width: 100%; overflow: hidden; position: relative; height: 204px;">
										<ul
											style="width: 3215%; position: relative; transition-duration: 0s; transform: translate3d(-190px, 0px, 0px);">
											<li
												style="float: left; list-style: none; position: relative; width: 190px;"
												class="bx-clone" aria-hidden="true"><a
												href="http://www.r114.com/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;num=14278"
												class="thumb_wrap"> <span class="thumb gra"><img
														src="https://image.r114.co.kr/MainGnb/2018/20180906090729.jpg"
														alt=""></span> <strong class="tit">"신마곡지구
														송정서희스타힐스"</strong> <span class="desc">전세대 소형아파트 위주로 공급할 예정</span>
											</a></li>

											<li
												style="float: left; list-style: none; position: relative; width: 190px;"
												aria-hidden="false"><a
												href="http://www.r114.com/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=&amp;search_keyword=전체&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=1&amp;sort2=down&amp;page=1&amp;num=14290"
												class="thumb_wrap"> <span class="thumb gra"><img
														src="https://image.r114.co.kr/MainGnb/2019/20190405090621.png"
														alt=""></span> <strong class="tit">“금정역동양라파크”</strong> <span
													class="desc">트리플역세권으로 강남까지 더 빠르게!</span>
											</a></li>

											<li aria-hidden="true"
												style="float: left; list-style: none; position: relative; width: 190px;">
												<a
												href="http://www.r114.com/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=&amp;search_keyword=&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=1&amp;sort2=down&amp;page=1&amp;num=14288"
												class="thumb_wrap"> <span class="thumb gra"><img
														src="https://image.r114.co.kr/MainGnb/2019/20190402101449.jpg"
														alt=""></span> <strong class="tit">"송파대우이안(이스트원)"</strong>
													<span class="desc">다세권 확보한 똘똘한 한 채</span>
											</a>
											</li>

											<li
												style="float: left; list-style: none; position: relative; width: 190px;"
												aria-hidden="true"><a
												href="http://www.r114.com/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;num=14278"
												class="thumb_wrap"> <span class="thumb gra"><img
														src="https://image.r114.co.kr/MainGnb/2018/20180906090729.jpg"
														alt=""></span> <strong class="tit">"신마곡지구
														송정서희스타힐스"</strong> <span class="desc">전세대 소형아파트 위주로 공급할 예정</span>
											</a></li>

											<li
												style="float: left; list-style: none; position: relative; width: 190px;"
												class="bx-clone" aria-hidden="true"><a
												href="http://www.r114.com/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;kind=&amp;search_keyword=전체&amp;search_writer=&amp;search_addr1=&amp;search_addr2=&amp;search_addr3=&amp;sort=1&amp;sort2=down&amp;page=1&amp;num=14290"
												class="thumb_wrap"> <span class="thumb gra"><img
														src="https://image.r114.co.kr/MainGnb/2019/20190405090621.png"
														alt=""></span> <strong class="tit">“금정역동양라파크”</strong> <span
													class="desc">트리플역세권으로 강남까지 더 빠르게!</span>
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
											<div class="bx-pager-item">
												<a href="" data-slide-index="2" class="bx-pager-link">3</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<a href="/?_c=lots&amp;_m=lotsnews" class="more_type1"
								title="분양뉴스">더보기 <span class="ico_comm_s more1"></span></a>
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
								<div class="bx-wrapper" style="max-width: 100%;">
									<div class="bx-viewport" aria-live="polite"
										style="width: 100%; overflow: hidden; position: relative; height: 204px;">
										<ul
											style="width: 3215%; position: relative; transition-duration: 0s; transform: translate3d(-190px, 0px, 0px);">
											<li
												style="float: left; list-style: none; position: relative; width: 190px;"
												class="bx-clone" aria-hidden="true"><a
												href="/?_c=lots&amp;_s=lotsScene&amp;_m=lotsScene&amp;_a=moviedetail&amp;bno=200&amp;gno=4&amp;num=6691"
												class="thumb_wrap"> <span class="thumb gra"><img
														src="https://image.r114.co.kr/FocusNews/2018/201805232306111.jpg"
														alt=""></span> <strong class="tit">"안양 센트럴 헤센2차"
														분양현장</strong> <span class="desc"> 안양시의 개발 축이 동안구에서 "만안구"로
														옮겨가면서 분양시장에서 흥행의 바람이 불어오고 있죠. 공공기관 이전 자리와 공장부지에 새로운
														행정업무복합타운과 첨단지식산업센터 조성계획으로 투자 관심이 높아졌습니다. 이곳에 복합단지가 분양을 준비
														중인데요. 현장을 찾아가 보았습니다. </span>
											</a></li>

											<li
												style="float: left; list-style: none; position: relative; width: 190px;"
												aria-hidden="false"><a
												href="/?_c=lots&amp;_s=lotsScene&amp;_m=lotsScene&amp;_a=moviedetail&amp;bno=200&amp;gno=4&amp;num=6828"
												class="thumb_wrap"> <span class="thumb gra"><img
														src="https://image.r114.co.kr/FocusNews/2018/201811061447541.png"
														alt=""></span> <strong class="tit">수원 화서역에 들어서는
														"화서역 파크 푸르지오" 오피스텔</strong> <span class="desc"> 주거대체형 오피스텔로
														불리는 "화서역 파크 푸르지오" 분양현장에 나왔습니다. "화서역 파크 푸르지오" 오피스텔이 갖는 차별화된
														경쟁력은 과연 무엇일까요? 지금부터 함께 알아보시죠. </span>
											</a></li>

											<li aria-hidden="true"
												style="float: left; list-style: none; position: relative; width: 190px;">
												<a
												href="/?_c=lots&amp;_s=lotsScene&amp;_m=lotsScene&amp;_a=moviedetail&amp;bno=200&amp;gno=4&amp;num=6731"
												class="thumb_wrap"> <span class="thumb gra"><img
														src="https://deveimage.r114.co.kr/FocusNews/2018/20180705113327.jpg"
														alt=""></span> <strong class="tit">강북의 뉴타운 장위7구역
														"꿈의숲 아이파크"</strong> <span class="desc"> 서울 도심에 선보이는 대규모
														주거타운인 장위뉴타운 7구역 꿈의숲 아이파크 분양현장에 나왔습니다. 6가지 프리미엄을 갖췄다는데, 한 번
														알아보러 갈까요? </span>
											</a>
											</li>

											<li
												style="float: left; list-style: none; position: relative; width: 190px;"
												aria-hidden="true"><a
												href="/?_c=lots&amp;_s=lotsScene&amp;_m=lotsScene&amp;_a=moviedetail&amp;bno=200&amp;gno=4&amp;num=6691"
												class="thumb_wrap"> <span class="thumb gra"><img
														src="https://image.r114.co.kr/FocusNews/2018/201805232306111.jpg"
														alt=""></span> <strong class="tit">"안양 센트럴 헤센2차"
														분양현장</strong> <span class="desc"> 안양시의 개발 축이 동안구에서 "만안구"로
														옮겨가면서 분양시장에서 흥행의 바람이 불어오고 있죠. 공공기관 이전 자리와 공장부지에 새로운
														행정업무복합타운과 첨단지식산업센터 조성계획으로 투자 관심이 높아졌습니다. 이곳에 복합단지가 분양을 준비
														중인데요. 현장을 찾아가 보았습니다. </span>
											</a></li>

											<li
												style="float: left; list-style: none; position: relative; width: 190px;"
												class="bx-clone" aria-hidden="true"><a
												href="/?_c=lots&amp;_s=lotsScene&amp;_m=lotsScene&amp;_a=moviedetail&amp;bno=200&amp;gno=4&amp;num=6828"
												class="thumb_wrap"> <span class="thumb gra"><img
														src="https://image.r114.co.kr/FocusNews/2018/201811061447541.png"
														alt=""></span> <strong class="tit">수원 화서역에 들어서는
														"화서역 파크 푸르지오" 오피스텔</strong> <span class="desc"> 주거대체형 오피스텔로
														불리는 "화서역 파크 푸르지오" 분양현장에 나왔습니다. "화서역 파크 푸르지오" 오피스텔이 갖는 차별화된
														경쟁력은 과연 무엇일까요? 지금부터 함께 알아보시죠. </span>
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
											<div class="bx-pager-item">
												<a href="" data-slide-index="2" class="bx-pager-link">3</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<a href="/?_c=lots&amp;_s=lotsScene&amp;_m=lotsScene"
								class="more_type1" title="분양뉴스">더보기 <span
								class="ico_comm_s more1"></span></a>
						</div>
						<!-- //분양N현장 -->
					</div>

					<!-- 청약 -->
					<div class="bx_gray banner">
						<a href="/?_c=lots&amp;_s=offerStrategy&amp;_m=lotsOfferGuide"
							class="bn_a"> <strong>청약가이드보기</strong>
							<p>
								청약신청 순서<br>A에서 Z 까지. 신청 전 <br>꼭 확인하세요
							</p> <span class="ico_comm_l ss_guide"></span>
						</a>
					</div>

					<div class="bx_gray banner">
						<a href="/?_c=Lots&amp;_s=offerStrategy&amp;_m=lotsOfferFAQ"
							class="bn_a"> <strong>청약도우미</strong>
							<p>
								청약관련 궁금증을 <br>모두 해소시켜 드립니다
							</p> <span class="ico_comm_l ss_helper"></span>
						</a>
					</div>
					<!-- //청약 -->

					<div class="bx_white">
						<!-- 금주의 분양정보 -->
						<div class="inner qa_some type2">
							<h4 class="h4_type2">금주의 분양정보</h4>
							<!-- 기간설정 -->
							<div class="set_date">
								<button type="button" id="calendarPrevWeekRight"
									onclick="changeWeeklyCalendarRight('prev', true);">
									<span class="ico_comm_s pv_arrow5">지난주</span>
								</button>
								<span id="calendarWeekRight">04.08 ~ 04.14</span>
								<button type="button" id="calendarNextMonthRight"
									onclick="changeWeeklyCalendarRight('next', true);">
									<span class="ico_comm_s nx_arrow5">다음주</span>
								</button>
							</div>
							<!-- //기간설정 -->
							<table class="tbl_type1 type13">
								<caption>금주의 분양 단지</caption>
								<colgroup>
									<col style="width: 22%;">
									<col style="width: 21%;">
									<col>
								</colgroup>
								<!--
						<tbody id="lotsInfoListRight">
						</tbody>
						-->
							</table>
							<div style="height: 160px; overflow: auto">
								<table class="tbl_type1 type13">
									<colgroup>
										<col style="width: 22%;">
										<col style="width: 21%;">
										<col>
									</colgroup>
									<tbody id="lotsInfoListRight">
										<tr>
											<th scope="row">04.08</th>
											<th scope="row">계약</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A01040037510085', 'schedule')">서울특별시
													강서구 화곡동 화곡한울에이치밸리움B동</a></td>
										</tr>

										<tr>
											<th scope="row">04.08</th>
											<th scope="row">접수</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A01120015400011', 'schedule')">서울특별시
													동작구 사당동 학수복합(행복주택)</a></td>
										</tr>

										<tr>
											<th scope="row">04.08</th>
											<th scope="row">접수</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('C', 'G02170039330004', 'schedule')">경기도
													파주시 와동동 파주운정지구디에이블</a></td>
										</tr>

										<tr>
											<th scope="row">04.08</th>
											<th scope="row">접수</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A14150040000000', 'schedule')">충청남도
													예산군 삽교읍 충남도청이전도시RM6(영구임대)</a></td>
										</tr>

										<tr>
											<th scope="row">04.08</th>
											<th scope="row">계약</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A05060008720000', 'schedule')">인천광역시
													서구 불로동 인천불로대광로제비앙</a></td>
										</tr>

										<tr>
											<th scope="row">04.08</th>
											<th scope="row">접수</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('C', 'G02040028480003', 'schedule')">경기도
													구리시 수택동 유탑트윈팰리스</a></td>
										</tr>

										<tr>
											<th scope="row">04.08</th>
											<th scope="row">접수</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A01250008770003', 'schedule')">서울특별시
													중랑구 신내동 신내글로리움(행복주택)</a></td>
										</tr>

										<tr>
											<th scope="row">04.08</th>
											<th scope="row">접수</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('C', 'G01060037330009', 'schedule')">서울특별시
													광진구 화양동 빌리브인테라스</a></td>
										</tr>

										<tr>
											<th scope="row">04.08</th>
											<th scope="row">접수</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A10020016170000', 'schedule')">경상남도
													김해시 삼계동 김해삼계두곡한라비발디센텀시티</a></td>
										</tr>

										<tr>
											<th scope="row">04.08</th>
											<th scope="row">계약</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A06010000400003', 'schedule')">광주광역시
													광산구 월계동 광주첨단H3(행복주택)</a></td>
										</tr>

										<tr>
											<th scope="row">04.08</th>
											<th scope="row">계약</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A06010000400002', 'schedule')">광주광역시
													광산구 쌍암동 광주첨단H2(행복주택)</a></td>
										</tr>

										<tr>
											<th scope="row">04.08</th>
											<th scope="row">계약</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A06010000400001', 'schedule')">광주광역시
													광산구 쌍암동 광주첨단H1(창업지원주택)</a></td>
										</tr>

										<tr>
											<th scope="row">04.08</th>
											<th scope="row">접수</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A01020039080000', 'schedule')">서울특별시
													강동구 강일동 강일2준주거1(행복주택)</a></td>
										</tr>

										<tr>
											<th scope="row">04.09</th>
											<th scope="row">접수</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A14150040000001', 'schedule')">충청남도
													예산군 삽교읍 충남도청이전도시RM6(국민임대)</a></td>
										</tr>

										<tr>
											<th scope="row">04.09</th>
											<th scope="row">계약</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A12230020420001', 'schedule')">전라남도
													진도군 진도읍 진도동외(영구임대)</a></td>
										</tr>

										<tr>
											<th scope="row">04.09</th>
											<th scope="row">계약</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A02150035890003', 'schedule')">경기도
													의왕시 삼동 의왕역경기행복주택(따복하우스)</a></td>
										</tr>

										<tr>
											<th scope="row">04.09</th>
											<th scope="row">계약</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A09050000420003', 'schedule')">강원도
													원주시 무실동 원주더샵센트럴파크(4단지)</a></td>
										</tr>

										<tr>
											<th scope="row">04.09</th>
											<th scope="row">계약</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A09050000420002', 'schedule')">강원도
													원주시 명륜동 원주더샵센트럴파크(3단지)</a></td>
										</tr>

										<tr>
											<th scope="row">04.09</th>
											<th scope="row">계약</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A09050000420001', 'schedule')">강원도
													원주시 명륜동 원주더샵센트럴파크(2단지)</a></td>
										</tr>

										<tr>
											<th scope="row">04.09</th>
											<th scope="row">계약</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A09050000420000', 'schedule')">강원도
													원주시 무실동 원주더샵센트럴파크(1단지)</a></td>
										</tr>

										<tr>
											<th scope="row">04.09</th>
											<th scope="row">계약</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A02620036650000', 'schedule')">경기도
													오산시 가장동 오산가장경기행복주택(따복하우스)</a></td>
										</tr>

										<tr>
											<th scope="row">04.09</th>
											<th scope="row">발표</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A12050021740001', 'schedule')">전라남도
													여수시 관문동 여수관문(행복주택)</a></td>
										</tr>

										<tr>
											<th scope="row">04.09</th>
											<th scope="row">접수</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A07040018190004', 'schedule')">대전광역시
													유성구 복용동 대전아이파크시티2단지(민간임대)</a></td>
										</tr>

										<tr>
											<th scope="row">04.09</th>
											<th scope="row">접수</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A07040018190003', 'schedule')">대전광역시
													유성구 복용동 대전아이파크시티1단지(민간임대)</a></td>
										</tr>

										<tr>
											<th scope="row">04.09</th>
											<th scope="row">계약</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A02070005280003', 'schedule')">경기도
													남양주시 진건읍 다산역(A2)경기행복주택(따복하우스)2회</a></td>
										</tr>

										<tr>
											<th scope="row">04.09</th>
											<th scope="row">접수</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A13070025880003', 'schedule')">전라북도
													고창군 고창읍 고창석정파크빌3차</a></td>
										</tr>

										<tr>
											<th scope="row">04.10</th>
											<th scope="row">접수</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('C', 'G01110026420007', 'schedule')">서울특별시
													동대문구 용두동 청량리역해링턴플레이스</a></td>
										</tr>

										<tr>
											<th scope="row">04.10</th>
											<th scope="row">접수</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('C', 'G04060032630003', 'schedule')">대구광역시
													수성구 두산동 수성레이크푸르지오</a></td>
										</tr>

										<tr>
											<th scope="row">04.10</th>
											<th scope="row">접수</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A02011426550000', 'schedule')">경기도
													고양시 일산동 e편한세상일산어반스카이</a></td>
										</tr>

										<tr>
											<th scope="row">04.10</th>
											<th scope="row">발표</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A02790027680006', 'schedule')">경기도
													화성시 향남읍 화성향남2A20(행복주택)</a></td>
										</tr>

										<tr>
											<th scope="row">04.10</th>
											<th scope="row">발표</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A02790027680007', 'schedule')">경기도
													화성시 향남읍 화성발안A1(행복주택)</a></td>
										</tr>

										<tr>
											<th scope="row">04.10</th>
											<th scope="row">접수</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A02790039910010', 'schedule')">경기도
													화성시 남양읍 화성남양뉴타운A5(행복주택)</a></td>
										</tr>

										<tr>
											<th scope="row">04.10</th>
											<th scope="row">발표</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('C', 'G05070004130018', 'schedule')">인천광역시
													연수구 송도동 호반써밋송도(M2)</a></td>
										</tr>

										<tr>
											<th scope="row">04.10</th>
											<th scope="row">접수</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A02180005760005', 'schedule')">경기도
													하남시 감일동 하남감일A6(행복주택)</a></td>
										</tr>

										<tr>
											<th scope="row">04.10</th>
											<th scope="row">접수</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A02640039980000', 'schedule')">경기도
													평택시 청북읍 평택청북B12(행복주택)</a></td>
										</tr>

										<tr>
											<th scope="row">04.10</th>
											<th scope="row">접수</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A02640016300009', 'schedule')">경기도
													평택시 고덕면 평택고덕Ca2(행복주택)</a></td>
										</tr>

										<tr>
											<th scope="row">04.10</th>
											<th scope="row">접수</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A02640016300010', 'schedule')">경기도
													평택시 고덕면 평택고덕Ca1(행복주택)</a></td>
										</tr>

										<tr>
											<th scope="row">04.10</th>
											<th scope="row">계약</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A02640016300008', 'schedule')">경기도
													평택시 서정동 평택고덕신혼희망타운(공공분양)</a></td>
										</tr>

										<tr>
											<th scope="row">04.10</th>
											<th scope="row">접수</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A02170029800001', 'schedule')">경기도
													파주시 법원읍 파주법원(행복주택)</a></td>
										</tr>

										<tr>
											<th scope="row">04.10</th>
											<th scope="row">접수</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A15020317200001', 'schedule')">충청북도
													청주시 운동동 청주동남A5(행복주택)</a></td>
										</tr>

										<tr>
											<th scope="row">04.10</th>
											<th scope="row">접수</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A14062819150003', 'schedule')">충청남도
													천안시 두정동 천안두정A1(행복주택)</a></td>
										</tr>

										<tr>
											<th scope="row">04.10</th>
											<th scope="row">접수</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A05030017280003', 'schedule')">인천광역시
													남동구 서창동 인천서창2지구14BL(행복주택)</a></td>
										</tr>

										<tr>
											<th scope="row">04.10</th>
											<th scope="row">발표</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A05060007900000', 'schedule')">인천광역시
													서구 당하동 인천검단대방노블랜드1차(AB4)</a></td>
										</tr>

										<tr>
											<th scope="row">04.10</th>
											<th scope="row">접수</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A12190013890005', 'schedule')">전라남도
													영암군 삼호읍 영암용앙(행복주택)</a></td>
										</tr>

										<tr>
											<th scope="row">04.10</th>
											<th scope="row">접수</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A14050002290007', 'schedule')">충청남도
													아산시 배방읍 아산배방2A12(행복주택)</a></td>
										</tr>

										<tr>
											<th scope="row">04.10</th>
											<th scope="row">접수</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A04060032630000', 'schedule')">대구광역시
													수성구 두산동 수성레이크푸르지오</a></td>
										</tr>

										<tr>
											<th scope="row">04.10</th>
											<th scope="row">접수</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A13051222520000', 'schedule')">전라북도
													전주시 서완산동2가 서완산골드클래스</a></td>
										</tr>

										<tr>
											<th scope="row">04.10</th>
											<th scope="row">발표</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A08010001420005', 'schedule')">울산광역시
													남구 신정동 문수로두산위브더제니스</a></td>
										</tr>

										<tr>
											<th scope="row">04.10</th>
											<th scope="row">발표</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A07040018190004', 'schedule')">대전광역시
													유성구 복용동 대전아이파크시티2단지(민간임대)</a></td>
										</tr>

										<tr>
											<th scope="row">04.10</th>
											<th scope="row">발표</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A07040018190003', 'schedule')">대전광역시
													유성구 복용동 대전아이파크시티1단지(민간임대)</a></td>
										</tr>

										<tr>
											<th scope="row">04.10</th>
											<th scope="row">접수</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A14020021490000', 'schedule')">충청남도
													논산시 취암동 논산골든타워</a></td>
										</tr>

										<tr>
											<th scope="row">04.10</th>
											<th scope="row">접수</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A02070036850002', 'schedule')">경기도
													남양주시 진접읍 남양주더샵퍼스트시티(A1)</a></td>
										</tr>

										<tr>
											<th scope="row">04.10</th>
											<th scope="row">접수</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A13070025880003', 'schedule')">전라북도
													고창군 고창읍 고창석정파크빌3차</a></td>
										</tr>

										<tr>
											<th scope="row">04.11</th>
											<th scope="row">발표</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('C', 'G01110026420007', 'schedule')">서울특별시
													동대문구 용두동 청량리역해링턴플레이스</a></td>
										</tr>

										<tr>
											<th scope="row">04.11</th>
											<th scope="row">계약</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('C', 'G01110026420007', 'schedule')">서울특별시
													동대문구 용두동 청량리역해링턴플레이스</a></td>
										</tr>

										<tr>
											<th scope="row">04.11</th>
											<th scope="row">접수</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A02011426550000', 'schedule')">경기도
													고양시 일산동 e편한세상일산어반스카이</a></td>
										</tr>

										<tr>
											<th scope="row">04.11</th>
											<th scope="row">발표</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A05070004130009', 'schedule')">인천광역시
													연수구 송도동 호반써밋송도(M2)</a></td>
										</tr>

										<tr>
											<th scope="row">04.11</th>
											<th scope="row">계약</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('C', 'G05070004130018', 'schedule')">인천광역시
													연수구 송도동 호반써밋송도(M2)</a></td>
										</tr>

										<tr>
											<th scope="row">04.11</th>
											<th scope="row">접수</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A02040028480001', 'schedule')">경기도
													구리시 수택동 한양수자인구리역</a></td>
										</tr>

										<tr>
											<th scope="row">04.11</th>
											<th scope="row">발표</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('C', 'G02170039330004', 'schedule')">경기도
													파주시 와동동 파주운정지구디에이블</a></td>
										</tr>

										<tr>
											<th scope="row">04.11</th>
											<th scope="row">발표</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A01110026420010', 'schedule')">서울특별시
													동대문구 용두동 청량리역해링턴플레이스</a></td>
										</tr>

										<tr>
											<th scope="row">04.11</th>
											<th scope="row">발표</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A10140006430001', 'schedule')">경상남도
													의령군 의령읍 의령동동5(행복주택)</a></td>
										</tr>

										<tr>
											<th scope="row">04.11</th>
											<th scope="row">발표</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A01220014330010', 'schedule')">서울특별시
													은평구 구산동 은평서해그랑블</a></td>
										</tr>

										<tr>
											<th scope="row">04.11</th>
											<th scope="row">발표</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('C', 'G02040028480003', 'schedule')">경기도
													구리시 수택동 유탑트윈팰리스</a></td>
										</tr>

										<tr>
											<th scope="row">04.11</th>
											<th scope="row">발표</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A01250027850001', 'schedule')">서울특별시
													중랑구 망우동 신내역금강펜테리움센트럴파크(C2)</a></td>
										</tr>

										<tr>
											<th scope="row">04.11</th>
											<th scope="row">접수</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A04060032630000', 'schedule')">대구광역시
													수성구 두산동 수성레이크푸르지오</a></td>
										</tr>

										<tr>
											<th scope="row">04.11</th>
											<th scope="row">접수</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A13051222520000', 'schedule')">전라북도
													전주시 서완산동2가 서완산골드클래스</a></td>
										</tr>

										<tr>
											<th scope="row">04.11</th>
											<th scope="row">발표</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('C', 'G01060037330009', 'schedule')">서울특별시
													광진구 화양동 빌리브인테라스</a></td>
										</tr>

										<tr>
											<th scope="row">04.11</th>
											<th scope="row">발표</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A02090400100002', 'schedule')">경기도
													성남시 수내동 분당지웰푸르지오</a></td>
										</tr>

										<tr>
											<th scope="row">04.11</th>
											<th scope="row">계약</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A07040018190004', 'schedule')">대전광역시
													유성구 복용동 대전아이파크시티2단지(민간임대)</a></td>
										</tr>

										<tr>
											<th scope="row">04.11</th>
											<th scope="row">계약</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A07040018190003', 'schedule')">대전광역시
													유성구 복용동 대전아이파크시티1단지(민간임대)</a></td>
										</tr>

										<tr>
											<th scope="row">04.11</th>
											<th scope="row">발표</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A07040018190001', 'schedule')">대전광역시
													유성구 원신흥동 대전도안2A21(행복주택)</a></td>
										</tr>

										<tr>
											<th scope="row">04.11</th>
											<th scope="row">발표</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A01110038680003', 'schedule')">서울특별시
													동대문구 답십리동 답십리엘림퍼스트</a></td>
										</tr>

										<tr>
											<th scope="row">04.11</th>
											<th scope="row">접수</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A14020021490000', 'schedule')">충청남도
													논산시 취암동 논산골든타워</a></td>
										</tr>

										<tr>
											<th scope="row">04.11</th>
											<th scope="row">접수</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A02070036850002', 'schedule')">경기도
													남양주시 진접읍 남양주더샵퍼스트시티(A1)</a></td>
										</tr>

										<tr>
											<th scope="row">04.11</th>
											<th scope="row">발표</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A11020038240000', 'schedule')">경상북도
													경주시 용강동 경주용강1단지증축(영구임대)</a></td>
										</tr>

										<tr>
											<th scope="row">04.12</th>
											<th scope="row">오픈</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A02790022740001', 'schedule')">경기도
													화성시 기안동 화성우방아이유쉘메가시티(2단지)</a></td>
										</tr>

										<tr>
											<th scope="row">04.12</th>
											<th scope="row">오픈</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A02790022740000', 'schedule')">경기도
													화성시 기안동 화성우방아이유쉘메가시티(1단지)</a></td>
										</tr>

										<tr>
											<th scope="row">04.12</th>
											<th scope="row">오픈</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A04030006490002', 'schedule')">대구광역시
													동구 방촌동 방촌역세영리첼</a></td>
										</tr>

										<tr>
											<th scope="row">04.12</th>
											<th scope="row">오픈</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A04040022630001', 'schedule')">대구광역시
													북구 읍내동 강북태왕아너스더퍼스트</a></td>
										</tr>

										<tr>
											<th scope="row">04.12</th>
											<th scope="row">발표</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A02180012380001', 'schedule')">경기도
													하남시 학암동 힐스테이트북위례(A3-4a)</a></td>
										</tr>

										<tr>
											<th scope="row">04.12</th>
											<th scope="row">접수</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A02040028480001', 'schedule')">경기도
													구리시 수택동 한양수자인구리역</a></td>
										</tr>

										<tr>
											<th scope="row">04.12</th>
											<th scope="row">계약</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('C', 'G02170039330004', 'schedule')">경기도
													파주시 와동동 파주운정지구디에이블</a></td>
										</tr>

										<tr>
											<th scope="row">04.12</th>
											<th scope="row">발표</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A02160031200005', 'schedule')">경기도
													의정부시 고산동 의정부고산S2-1(행복주택)</a></td>
										</tr>

										<tr>
											<th scope="row">04.12</th>
											<th scope="row">계약</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('C', 'G02040028480003', 'schedule')">경기도
													구리시 수택동 유탑트윈팰리스</a></td>
										</tr>

										<tr>
											<th scope="row">04.12</th>
											<th scope="row">발표</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A03070026970006', 'schedule')">부산광역시
													북구 만덕동 신만덕베스티움에코포레</a></td>
										</tr>

										<tr>
											<th scope="row">04.12</th>
											<th scope="row">접수</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A04060032630000', 'schedule')">대구광역시
													수성구 두산동 수성레이크푸르지오</a></td>
										</tr>

										<tr>
											<th scope="row">04.12</th>
											<th scope="row">계약</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('C', 'G01060037330009', 'schedule')">서울특별시
													광진구 화양동 빌리브인테라스</a></td>
										</tr>

										<tr>
											<th scope="row">04.12</th>
											<th scope="row">발표</th>
											<td><a
												href="javascript:goLotsInfoDetailPageRight('B', 'A10020016170000', 'schedule')">경상남도
													김해시 삼계동 김해삼계두곡한라비발디센텀시티</a></td>
										</tr>
									</tbody>
								</table>
							</div>
							<a href="?_c=lots&amp;_s=lotsSchedule&amp;_m=lotsSchedule"
								class="more_type1">더보기 <span class="ico_comm_s more1"></span></a>
						</div>
						<!-- //금주의 분양정보 -->
					</div>

					<!-- Google 광고 -->
					<div class="ad_wrap"></div>
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

					$(document)
							.ready(
									function() {
										$("#cmdAlarmSave")
												.on(
														"click",
														function() {
															var url = "/?_c=mypage&_s=MarketPriceNotification&_m=marketPriceNotificationSell";
															if (fn_isLogin() == "") {
																alert(ALERT_REQUEST_LOGIN);
																fn_loginDiv(url);
															} else {
																window.location.href = url;
															}
														});

										sortTypeRight = "날짜";
										sortOrderbyRight = "DESC";

										calendarModeRight = "W";

										calendarWeekDateRight = getFirstDayOfThisWeekRight(todayToDateStringRight());

										//		setInitCalendarRight();

										changeWeeklyCalendarRight("", false);

									});

					function getFirstDayOfThisWeekRight(dt) {
						var year = parseInt(dt.substr(0, 4));
						var month = parseInt(dt.substr(4, 2));
						var day = parseInt(dt.substr(6, 2));
						var date = new Date(year, month - 1, day)
						var week = date.getDay();

						if (week == 0) {
							date.setDate(date.getDate() - 6);
						} else {
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
							calendarWeekDateRight = getMonthDayRight(
									calendarWeekDateRight, way);
						}

						var firstdate = calendarWeekDateRight.substr(4, 2)
								+ "." + calendarWeekDateRight.substr(6, 2);
						var lastdate = "";

						var year = parseInt(calendarWeekDateRight.substr(0, 4));
						var month = parseInt(calendarWeekDateRight.substr(4, 2));
						var day = parseInt(calendarWeekDateRight.substr(6, 2));
						var date = new Date(year, month - 1, day)

						date.setDate(date.getDate() + 6);

						var sYear = date.getFullYear();
						var sMonth = pad(date.getMonth() + 1, 2);
						var sDate = pad(date.getDate(), 2);

						lastdate = sMonth + "." + sDate;

						$("#calendarWeekRight").html(
								firstdate + " ~ " + lastdate);

						calendarModeRight = "W";

						getLotsScheduleInfoRight(calendarModeRight,
								calendarWeekDateRight);

					}

					/* 이전, 다음 주 구하기 */
					function getMonthDayRight(dt, way) {

						var year = parseInt(dt.substr(0, 4));
						var month = parseInt(dt.substr(4, 2));
						var day = parseInt(dt.substr(6, 2));
						var date = new Date(year, month - 1, day)

						if (way == "prev") {
							date.setDate(date.getDate() - 7);
						} else {
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
						var month = today.getMonth() + 1;
						var day = today.getDate();

						return pad(year, 4) + pad(month, 2) + pad(day, 2)
					}

					/* 분양일정 조회 */
					function getLotsScheduleInfoRight(searchDateType,
							searchDate) {

						var address = "";
						;
						var estateType, searchStatus;
						var sorting, sortOrder;

						searchStatus = "";
						estateType = "";

						var formData = {
							estateType : estateType,
							searchDateType : searchDateType,
							searchDate : searchDate,
							searchStatus : searchStatus,
							sorting : sortTypeRight,
							sortOrder : sortOrderbyRight,
							metro : "",
							county : "",
							town : ""
						};

						return $
								.ajax({
									url : "/?_c=lots&_m=lotsDefault&_a=LotsScheduleListBanner.ajax",
									type : "POST",
									data : formData,
									success : function(data, textStatus, jqXHR) {
										if (jQuery.trim(data).length > 0) {
											$("#lotsInfoListRight").html(data);
										} else { // 자료가 없을때.
											$("#lotsInfoListRight")
													.html(
															"<tr><td colspan='3' class='result_nodata'>분양일정이 없습니다.</td></tr>");
										}
									},
									error : function(jqXHR, textStatus,
											errorThrown) {
										//$("#lotsScheduleList").html("<li class='result_nodata'>분양일정이 없습니다.</li>");
										$("#lotsInfoListRight")
												.html(
														"<tr><td colspan='3' class='result_nodata'>분양일정이 없습니다.</td></tr>");
									}
								});

					}

					/* 분양단지 상세 조회 */
					function goLotsInfoDetailPageRight(typeGubun, compelxCd,
							owner) {
						/**********************************************************************
						 Modified by Mornlux(2017-12-05)
						 상세페이지에서 자신을 호출한 페이지로 되돌아 갈 수 있도록 수정
						 **********************************************************************/
						// 복귀할 URL
						$.QueryString._c = 'lots';
						if (owner == 'schedule') {
							//일정
							$.QueryString._s = 'lotsSchedule';
							$.QueryString._m = 'lotsSchedule';
						} else {
							//정보
							$.QueryString._s = 'info';
							$.QueryString._m = 'infolist';
						}
						$.QueryString.rtu = $.QueryStringSerialize()
								+ $.HashSerialize();

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
	<script type="text/javascript" src="/W1/js/Lots/Lots.js"></script>
	<script type="text/javascript" src="/W1/js/placeholders.jquery.min.js"></script>
	<script type="text/javascript">
		var calendarMonthDate;
		var calendarWeekDate;
		var calendarMode;
		var lotsScheduleData;
		var sortType, sortOrderby;
		var isFirstLoad = false;

		var _SEL_METRO = "{도시(기본)}";
		var _SEL_COUNTY = "{구시군(기본)}";
		var _SEL_TOWN = "{읍면동(기본)}";
		var _LOADACT = ""; // "1100000000|1|서울특별시";
		var _CALLBACKFUNC = "selectAreaValue";
		var _CALLBACKFUNCALL = "selectAreaValue";
		var _CALLBACKFUNCSEARCH = "selectSearchValue";
		var _SEARCHTYPE = 0; //	시구동 레벨로 조회 결과 받음
		var _SEARCHTXTMSG = "시,구,동 등을 입력하세요.";
		var _NECESSARYADDRLEVEL = 3; // 시도, 구시군, 읍면동 모두 출력

		$(document).ready(function() {

			sortType = '날짜';
			sortOrderby = "ASC";
			calendarMode = "M";

			$('#calendarYear').on('selectmenuchange', function() {
				var year = $(this).val();
				var month = $("select#calendarMonth option:selected").val();
				var day = "01";
				calendarMode = "M";
				calendarMonthDate = year + month + day;
				getLotsList();
			});

			$('#calendarMonth').on('selectmenuchange', function() {
				var year = $("select#calendarYear option:selected").val();
				var month = $(this).val();
				var day = "01";
				calendarMode = "M";
				calendarMonthDate = year + month + day;
				getLotsList();
			});

			/* 주소입력취소(삭제) 버튼 */
			$("#cmdDeleteAddr").on("click", function() {
				$("#addrSearchWord").val("");
				getLotsList();
			});

			$("#monthlyWrap").css("display", "");
			$("#weeklyWrap").css("display", "none");

			calendarMonthDate = todayToDateString().substr(0, 6) + "01";

			calendarWeekDate = getFirstDayOfThisWeek(todayToDateString());

			setInitCalendar();

			changeMonthlyCalendar("");

			changeWeeklyCalendar("", false);

			//search_CreateAddrHtml("body");

		});

		function getFirstDayOfThisWeek(dt) {
			var year = parseInt(dt.substr(0, 4));
			var month = parseInt(dt.substr(4, 2));
			var day = parseInt(dt.substr(6, 2));
			var date = new Date(year, month - 1, day)
			var week = date.getDay();

			if (week == 0) {
				date.setDate(date.getDate() - 6);
			} else {
				date.setDate(date.getDate() - (week - 1));
			}

			var sYear = date.getFullYear();
			var sMonth = pad(date.getMonth() + 1, 2);
			var sDate = pad(date.getDate(), 2);

			return sYear + sMonth + sDate;

		}

		/* 조회 조건 변경 */
		function changeCondition(obj, value) {
			$(obj).parent().find("a").each(function(index) {
				$(this).removeClass("selected");
			});

			$(obj).addClass("selected");

			$("#conditionCalendar").find("a").each(function(index) {
				if ($(this).hasClass("selected")) {
					if ($(this).hasClass("selected")) {
						var input = $(this);
						if (input[0].id == "calendarTypeM") {
							$("#monthlyWrap").css("display", "");
							$("#weeklyWrap").css("display", "none");
							calendarMode = "M";
						} else {
							$("#monthlyWrap").css("display", "none");
							$("#weeklyWrap").css("display", "");
							calendarMode = "W";
						}
					}
				}
			});

			getLotsList();
		}

		function setInitCalendar() {

			var year = calendarMonthDate.substr(0, 4);
			var month = calendarMonthDate.substr(4, 2);
			var day = calendarMonthDate.substr(6, 2);

			/*
				//$('#calendarYear').find("option").remove();
				//for(var count = year-5; count < year + 5; count++){
				//	var option = $("<option value='" + count + "'>" + count + "</option>");
				//	$('#calendarYear').append(option);
			    //}
			    //$("#calendarYear > option[value='" + calendarMonthDate.substr(0, 4) + "']").prop("selected", true);
			    //$('#calendarYear').selectmenu("destroy").selectmenu({style:'dropdown'});

			    $('#calendarMonth').find("option").remove();
			    for(var count = 1; count <= 12; count++){
					var option = $("<option value='" + pad(count, 2, "0") + "'>" + count + "</option>");
			        $('#calendarMonth').append(option);
			    }
			    $("#calendarMonth > option[value='" + calendarMonthDate.substr(4, 2) + "']").prop("selected", true);
			    $('#calendarMonth').selectmenu("destroy").selectmenu({style:'dropdown'});
			 */

		}

		/*  월 이전/다음 변경 */
		function changeMonthlyCalendar(way) {

			if (way != "") {
				calendarMonthDate = getYearMonth("", way) + "01";
			} else {
				var year = $("select#calendarYear option:selected").val();
				var month = $("select#calendarMonth option:selected").val();
				var day = "01";
				calendarMonthDate = getYearMonth(year + month + day, way)
						+ "01";
			}

			var year = parseInt(calendarMonthDate.substr(0, 4));
			var month = parseInt(calendarMonthDate.substr(4, 2));

			$(
					"#calendarYear > option[value='"
							+ calendarMonthDate.substr(0, 4) + "']").prop(
					"selected", true);
			$('#calendarYear').selectmenu("destroy").selectmenu({
				style : 'dropdown'
			});

			$(
					"#calendarMonth > option[value='"
							+ calendarMonthDate.substr(4, 2) + "']").prop(
					"selected", true);
			$('#calendarMonth').selectmenu("destroy").selectmenu({
				style : 'dropdown'
			});

			calendarMode = "M";

			getLotsList();

		}

		/* 주 이전/다음 변경 */
		function changeWeeklyCalendar(way, isLoad) {

			if (way != "") {
				calendarWeekDate = getMonthDay(calendarWeekDate, way);
			}

			var firstdate = calendarWeekDate.substr(0, 4) + "."
					+ calendarWeekDate.substr(4, 2) + "."
					+ calendarWeekDate.substr(6, 2);
			var lastdate = "";

			var year = parseInt(calendarWeekDate.substr(0, 4));
			var month = parseInt(calendarWeekDate.substr(4, 2));
			var day = parseInt(calendarWeekDate.substr(6, 2));
			var date = new Date(year, month - 1, day)

			date.setDate(date.getDate() + 6);

			var sYear = date.getFullYear();
			var sMonth = pad(date.getMonth() + 1, 2);
			var sDate = pad(date.getDate(), 2);

			lastdate = sYear + "." + sMonth + "." + sDate;

			$("#calendarWeek").html(firstdate + " ~ " + lastdate);

			if (isLoad) {
				calendarMode = "W";
				getLotsList();
			}

		}

		/* 월 달력 */
		function makeCalendarMonth(dt) {

			var year = dt.substr(0, 4);
			var month = dt.substr(4, 2);
			var day = dt.substr(6, 2);
			var today = todayToDateString();
			var theDay;
			var isToday = false;
			var isTheDay = false;
			var calendar = "";
			var searchStatus;

			$("#conditionStatus").find("a").each(function(index) {
				if ($(this).hasClass("selected")) {
					searchStatus = index;
				}
			});

			var last = [ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 ];
			// 윤년
			if (year % 4 == 0 && (year % 100 != 0 || year % 400 != 0)) {
				last[1] = 29;
			}
			// 현재 월의 마지막 일이 며칠인지.
			var lastDate = last[month - 1];

			for (var i = 1; i <= parseInt(lastDate); i++) {
				//calendar = calendar + "<span>" + i.toString() + "</span>";
				isTheDay = false;
				theDay = year + pad(month, 2) + pad(i, 2);
				// {"날짜":"20171018","오픈수":"0","공고수":"0","청약수":"0","발표수":"1","계약수":"0","건수":"1"}
				$
						.each(
								lotsScheduleData.rows,
								function(index, entry) {
									if (theDay == entry["날짜"]) {
										isTheDay = true;
										if (searchStatus == 0
												&& parseInt(entry["건수"]) > 0) {
											if (today == theDay) {
												calendar = calendar
														+ '<span class="today"><a href="javascript:" onClick="javascript:getLotsScheduleInfo(\'N'
														+ '\', \''
														+ theDay
														+ '\'); drawScheduleCountByDay(this, '
														+ parseInt(entry["건수"])
														+ '); \">'
														+ i.toString()
														+ '</a></span>';
											} else {
												calendar = calendar
														+ '<span><a href="javascript:" onClick="getLotsScheduleInfo(\'N'
														+ '\', \''
														+ theDay
														+ '\'); drawScheduleCountByDay(this, '
														+ parseInt(entry["건수"])
														+ '); \">'
														+ i.toString()
														+ '</a></span>';
											}
										} else if (searchStatus == 1
												&& parseInt(entry["오픈수"]) > 0) {
											if (today == theDay) {
												calendar = calendar
														+ '<span class="today"><a href="javascript:" onClick="javascript:getLotsScheduleInfo(\'N'
														+ '\', \''
														+ theDay
														+ '\'); drawScheduleCountByDay(this, '
														+ parseInt(entry["오픈수"])
														+ '); \">'
														+ i.toString()
														+ '</a></span>';
											} else {
												calendar = calendar
														+ '<span><a href="javascript:" onClick="javascript:getLotsScheduleInfo(\'N'
														+ '\', \''
														+ theDay
														+ '\'); drawScheduleCountByDay(this, '
														+ parseInt(entry["오픈수"])
														+ '); \">'
														+ i.toString()
														+ '</a></span>';
											}
										} else if (searchStatus == 2
												&& parseInt(entry["공고수"]) > 0) {
											if (today == theDay) {
												calendar = calendar
														+ '<span class="today"><a href="javascript:" onClick="javascript:getLotsScheduleInfo(\'N'
														+ '\', \''
														+ theDay
														+ '\'); drawScheduleCountByDay(this, '
														+ parseInt(entry["공고수"])
														+ '); \">'
														+ i.toString()
														+ '</a></span>';
											} else {
												calendar = calendar
														+ '<span><a href="javascript:" onClick="javascript:getLotsScheduleInfo(\'N'
														+ '\', \''
														+ theDay
														+ '\'); drawScheduleCountByDay(this, '
														+ parseInt(entry["공고수"])
														+ '); \">'
														+ i.toString()
														+ '</a></span>';
											}
										} else if (searchStatus == 3
												&& parseInt(entry["청약수"]) > 0) {
											if (today == theDay) {
												calendar = calendar
														+ '<span class="today"><a href="javascript:" onClick="javascript:getLotsScheduleInfo(\'N'
														+ '\', \''
														+ theDay
														+ '\'); drawScheduleCountByDay(this, '
														+ parseInt(entry["청약수"])
														+ '); \">'
														+ i.toString()
														+ '</a></span>';
											} else {
												calendar = calendar
														+ '<span><a href="javascript:" onClick="javascript:getLotsScheduleInfo(\'N'
														+ '\', \''
														+ theDay
														+ '\'); drawScheduleCountByDay(this, '
														+ parseInt(entry["청약수"])
														+ '); \">'
														+ i.toString()
														+ '</a></span>';
											}
										} else if (searchStatus == 4
												&& parseInt(entry["발표수"]) > 0) {
											if (today == theDay) {
												calendar = calendar
														+ '<span class="today"><a href="javascript:" onClick="javascript:getLotsScheduleInfo(\'N'
														+ '\', \''
														+ theDay
														+ '\'); drawScheduleCountByDay(this, '
														+ parseInt(entry["발표수"])
														+ '); \">'
														+ i.toString()
														+ '</a></span>';
											} else {
												calendar = calendar
														+ '<span><a href="javascript:" onClick="javascript:getLotsScheduleInfo(\'N'
														+ '\', \''
														+ theDay
														+ '\'); drawScheduleCountByDay(this, '
														+ parseInt(entry["발표수"])
														+ '); \">'
														+ i.toString()
														+ '</a></span>';
											}
										} else if (searchStatus == 5
												&& parseInt(entry["계약수"]) > 0) {
											if (today == theDay) {
												calendar = calendar
														+ '<span class="today"><a href="javascript:" onClick="javascript:getLotsScheduleInfo(\'N'
														+ '\', \''
														+ theDay
														+ '\'); drawScheduleCountByDay(this, '
														+ parseInt(entry["계약수"])
														+ '); \">'
														+ i.toString()
														+ '</a></span>';
											} else {
												calendar = calendar
														+ '<span><a href="javascript:" onClick="javascript:getLotsScheduleInfo(\'N'
														+ '\', \''
														+ theDay
														+ '\'); drawScheduleCountByDay(this, '
														+ parseInt(entry["계약수"])
														+ '); \">'
														+ i.toString()
														+ '</a></span>';
											}
										} else {
											if (today == theDay) {
												calendar = calendar
														+ "<span class='today'>"
														+ i.toString()
														+ "</span>";
											} else {
												calendar = calendar + "<span>"
														+ i.toString()
														+ "</span>";
											}
										}
									}
								});

				if (!isTheDay) {
					if (today == theDay) {
						calendar = calendar + "<span class='today'>"
								+ i.toString() + "</span>";
					} else {
						calendar = calendar + "<span>" + i.toString()
								+ "</span>";
					}
				}
			}

			$("#calendarMonthDay").html(calendar);

		}

		/* 주 달력 */
		function makeCalendarWeek(dt) {

			var year = dt.substr(0, 4);
			var month = dt.substr(4, 2);
			var day = dt.substr(6, 2);
			var theDay;
			var isToday = false;
			var isTheDay = false;
			var calendar;
			var searchStatus;

			var status1Count = 0, status2Count = 0, status3Count = 0, status4Count = 0, status5Count = 0;

			$("#conditionStatus").find("a").each(function(index) {
				if ($(this).hasClass("selected")) {
					searchStatus = index;
				}
			});

			$.each(lotsScheduleData.rows, function(index, entry) {
				status1Count = status1Count + parseInt(entry["오픈수"])
				status2Count = status2Count + parseInt(entry["공고수"]);
				status3Count = status3Count + parseInt(entry["청약수"]);
				status4Count = status4Count + parseInt(entry["발표수"]);
				status5Count = status5Count + parseInt(entry["계약수"]);
			});

			if (searchStatus == 1) {
				calendar = calendar + "<li class='status1'>오픈 : "
						+ status1Count + "건</li>";
			} else if (searchStatus == 2) {
				calendar = calendar + "<li class='status2'>공고 : "
						+ status2Count + "건</li>";
			} else if (searchStatus == 3) {
				calendar = calendar + "<li class='status3'>청약 : "
						+ status3Count + "건</li>";
			} else if (searchStatus == 4) {
				calendar = calendar + "<li class='status4'>발표 : "
						+ status4Count + "건</li>";
			} else if (searchStatus == 5) {
				calendar = calendar + "<li class='status5'>계약 : "
						+ status5Count + "건</li>";
			} else {
				calendar = calendar + "<li class='status1'>오픈 : "
						+ status1Count + "건</li>";
				calendar = calendar + "<li class='status2'>공고 : "
						+ status2Count + "건</li>";
				calendar = calendar + "<li class='status3'>청약 : "
						+ status3Count + "건</li>";
				calendar = calendar + "<li class='status4'>발표 : "
						+ status4Count + "건</li>";
				calendar = calendar + "<li class='status5'>계약 : "
						+ status5Count + "건</li>";
			}

			$("#calendarWeekDay").html(calendar);

		}

		/* 이전, 다음 달 구하기  */
		function getYearMonth(dt, way) {

			if (dt != "") {
				var year = parseInt(dt.substr(0, 4));
				var month = parseInt(dt.substr(4, 2));
				var day = parseInt(dt.substr(6, 2));
			} else {
				var year = parseInt($("select#calendarYear option:selected")
						.val());
				var month = parseInt($("select#calendarMonth option:selected")
						.val());
				var day = parseInt("01");
			}

			if (way == "prev") {
				month = month - 1;
			} else if (way == "next") {
				month = month + 1;
			}

			if (month < 1) {
				year--;
				month = 12;
			} else if (month > 12) {
				year++;
				month = 1;
			}

			return year.toString() + pad(month, 2);
		}

		/* 이전, 다음 주 구하기 */
		function getMonthDay(dt, way) {

			var year = parseInt(dt.substr(0, 4));
			var month = parseInt(dt.substr(4, 2));
			var day = parseInt(dt.substr(6, 2));
			var date = new Date(year, month - 1, day)

			if (way == "prev") {
				date.setDate(date.getDate() - 7);
			} else {
				date.setDate(date.getDate() + 7);
			}

			var sYear = date.getFullYear();
			var sMonth = pad(date.getMonth() + 1, 2);
			var sDate = pad(date.getDate(), 2);

			return sYear + sMonth + sDate;

		}

		function todayToDateString() {
			var today = new Date();
			var year = today.getFullYear();
			var month = today.getMonth() + 1;
			var day = today.getDate();

			return pad(year, 4) + pad(month, 2) + pad(day, 2)
		}

		/* 분양정보 조회 */
		var getLotsList = function() {
			$("#lotsInfoList")
					.html(
							'<tr><td colspan="8"><div class="loding_wrap on" style="line-height:350px"><img src="https://image.r114.co.kr/W1/images/sub/loding.gif" alt="로딩중"></div></td></tr>');

			if (calendarMode == "M") {
				$.when(getLotsScheduleCount(calendarMonthDate),
						getLotsScheduleInfo("M", calendarMonthDate)).done(
						function() {
							makeCalendarMonth(calendarMonthDate);
						});
			} else {
				$.when(getLotsScheduleCount(calendarWeekDate),
						getLotsScheduleInfo("W", calendarWeekDate)).done(
						function() {
							makeCalendarWeek(calendarWeekDate)
						});
			}

		}

		/* 분양일정 분양건수 */
		function getLotsScheduleCount(date) {

			var addr1, addr2, addr3, addrText, arrAddr;
			var searchDateType, searchDate, estateType, searchStatus;

			addrText = jQuery.trim($("#addrSearchWord").val());
			arrAddr = addrText.split(" ");
			addr1 = arrAddr[0];
			addr2 = arrAddr[1];
			addr3 = arrAddr[2];

			$("#conditionCalendar").find("a").each(function(index) {
				if ($(this).hasClass("selected")) {
					if (index == 0) {
						searchDateType = "M";
						searchDate = calendarMonthDate;
					} else {
						searchDateType = "W";
						searchDate = calendarWeekDate;
					}
				}
			});

			$("#conditionStatus").find("a").each(function(index) {
				if ($(this).hasClass("selected")) {
					searchStatus = index.toString();
				}
			});

			$("#conditionEstateType").find("a").each(function(index) {
				if ($(this).hasClass("selected")) {
					if (index == 0) {
						estateType = "";
					} else if (index == 1) {
						estateType = "B";
					} else if (index == 2) {
						estateType = "C";
					} else if (index == 3) {
						estateType = "D";
					} else {
						estateType = "";
					}
				}
			});

			var formData = {
				estateType : estateType,
				searchDateType : searchDateType,
				searchDate : searchDate,
				searchStatus : searchStatus,
				metro : addr1,
				county : addr2,
				town : addr3
			};

			return $.ajax({
				url : "/?_c=lots&_m=lotsSchedule&_a=lotsScheduleCount.ajax",
				type : "POST",
				data : formData,
				dataType : "json",
				success : function(data, textStatus, jqXHR) {
					var list = eval(data);
					if (jQuery.trim(list.result) == "OK") {
						lotsScheduleData = eval(data);
					} else { // 자료가 없을때.
						//$("#lotsScheduleList").html("<li class='result_nodata'>분양일정이 없습니다.</li>");
						lotsScheduleData = "";
					}
				},
				error : function(jqXHR, textStatus, errorThrown) {
					//$("#lotsScheduleList").html("<li class='result_nodata'>분양일정이 없습니다.</li>");
				}
			});

		}

		/* 분양일정 조회 */
		function getLotsScheduleInfo(searchDateType, searchDate) {

			var address = $("#searchAddr").val();
			var estateType, searchStatus;
			var sorting, sortOrder;
			var addr1, addr2, addr3, addrText, arrAddr;
			// var searchDateType, searchDate, estateType, searchStatus;

			addrText = jQuery.trim($("#addrSearchWord").val());
			arrAddr = addrText.split(" ");
			addr1 = arrAddr[0];
			addr2 = arrAddr[1];
			addr3 = arrAddr[2];

			$("#conditionStatus").find("a").each(function(index) {
				if ($(this).hasClass("selected")) {
					searchStatus = index.toString();
				}
			});

			if (searchStatus == "0") {
				searchStatus = "";
			}

			$("#conditionEstateType").find("a").each(function(index) {
				if ($(this).hasClass("selected")) {
					if (index == 0) {
						estateType = "";
					} else if (index == 1) {
						estateType = "B";
					} else if (index == 2) {
						estateType = "C";
					} else if (index == 3) {
						estateType = "D";
					} else {
						estateType = "";
					}
				}
			});

			var formData = {
				estateType : estateType,
				searchDateType : searchDateType,
				searchDate : searchDate,
				searchStatus : searchStatus,
				sorting : sortType,
				sortOrder : sortOrderby,
				metro : addr1,
				county : addr2,
				town : addr3
			};
			//console.log(formData);

			$('#lotsInfoList')
					.html(
							"<tr><td colspan='8'><div class='loding_wrap on'><img src='https://image.r114.co.kr/W1/images/sub/loding.gif' alt='로딩중'></div></td></tr>");

			return $
					.ajax({
						url : "/?_c=lots&_m=lotsSchedule&_a=lotsScheduleList.ajax",
						type : "POST",
						data : formData,
						success : function(data, textStatus, jqXHR) {
							if (jQuery.trim(data).length > 0) {
								$("#lotsInfoList").html(data);
							} else { // 자료가 없을때.
								$("#lotsInfoList")
										.html(
												"<tr><td colspan='8' class='result_nodata'>분양일정이 없습니다.</td></tr>");
							}
						},
						error : function(jqXHR, textStatus, errorThrown) {
							//$("#lotsScheduleList").html("<li class='result_nodata'>분양일정이 없습니다.</li>");
						}
					});

		}

		/* 월달력에서 클릭한 날짜에 분양일정 숫자 출력 */
		function drawScheduleCountByDay(obj, count) {

			$(obj).parent().parent().find("span").each(function(index) {
				$(this).removeClass("today");
				$(this).find("em").remove();
			});

			$(obj).parent().addClass("today");
			var html = $(obj).parent().html();
			html = html + "<em>" + count + "건</em>";
			$(obj).parent().html(html);
		}

		/* 분양단지 상세 조회 */
		function goLotsInfoDetailPage(typeGubun, compelxCd) {
			/**********************************************************************
			 Modified by Mornlux(2017-12-05)
			 상세페이지에서 분양일정 리스트로 가도록 수정
			 **********************************************************************/
			$.QueryString._s = 'lotsSchedule';
			$.QueryString._m = 'lotsSchedule';
			$.QueryString.rtu = $.QueryStringSerialize() + $.HashSerialize();

			// 상세 URL
			$.QueryString._c = 'lots';
			$.QueryString._m = 'lotsinfodetail';
			$.QueryString.type_g = typeGubun;
			$.QueryString.aptcode = compelxCd;

			window.location.href = $.QueryStringSerialize();

			//window.location.href = "/?_c=lots&_m=lotsinfodetail&type_g="+ typeGubun +"&aptcode=" + compelxCd;	}
		}

		/* 주소검색 결과  */
		function selectAreaValue(coartNo, addrLevel, addrAll, addrMapX,
				addrMapY, addr1, addr2, addr3, addrCode, mapX, mapY) {
			var area = addr1 + " " + addr2 + " " + addr3
			$("#addrSearchWord").val(jQuery.trim(area));
			closeLp('type3');

			getLotsList();
		}

		function selectSearchValue(addr1, addr2, addr3, coordx, coordy,
				gubuncode, gubuncode1, gubuncode2, identifycode, searchkeyword) {
			//_SEL_METRO = addr1;
			//_SEL_COUNTY = addr2;
			//_SEL_TOWN = addr3;

			closeLp('type3');

			$("#addrSearchWord").val(addr1 + " " + addr2 + " " + addr3);
			//search_autoFillSearchReset();

			getLotsList();
		}

		$('#cmdSort').children('a').click(function() {
			var thisObj = $('#cmdSort').children('a');
			var idx = thisObj.index(this);
			var order = sortList(thisObj, idx, {
				'key' : sortType,
				'dir' : sortOrderby
			});

			sortType = order.key;
			sortOrderby = order.dir;

			getLotsList();
		});

		function sortList(jQueryObj, selectedIndex, objSort) {
			// jQueryObj
			//		정렬 표시의 대상이 되는 element의 jQuery 객체
			// selectedIndex
			//		선택된 항목의 index (var idx = thisObj.index(this);)
			// objSort
			// 		'key'와 'dir'에 각각 정렬키 및 정렬방향을 지정하는 전역변수를 대입
			// 수정 영역 --------------------------------------------------------------
			var orderKeys = [ '날짜', '입주시기' ]; // 변수가 가지고 있을 정렬 키 배열
			var orderDirs = [ 'ASC', 'DESC' ]; // 변수가 가지고 있을 정렬 방향 배열
			var dirClasses = [ 'up', 'down' ]; // 클래스명(orderDirs와 같은 순서로 되어야 함)
			var defaultDirs = [ 'ASC', 'DESC' ]; // orderKeys 순에 따른 각 키의 기본값 배열
			var selected = 'selected'; // 선택 클래스명
			var up = 'up'; // up 클래스명
			var down = 'down'; // down 클래스명
			var oneWay = {}; // 일방향 정렬 키 : 방향 오브젝트 {'최신순' : 'down'}
			//---------------------------------------------------------------------
			var oldKey = objSort.key; // maybe '날짜순', '입주시기순', ...
			var oldDir = objSort.dir; // maybe 'ASC' or 'DESC'
			var newKey = orderKeys[selectedIndex]; // maybe '날짜순', '입주시기순', ...
			var newDir; // maybe 'ASC' or 'DESC'

			jQueryObj
					.each(function(idx) {
						if (idx == selectedIndex) {
							if (newKey in oneWay) {
								newDir = defaultDirs[idx];
								$(this).addClass(selected);
							} else {
								if (newKey == oldKey) {
									newDir = orderDirs[(orderDirs
											.indexOf(oldDir) + 1) % 2];
									$(this).removeClass(
											dirClasses[orderDirs
													.indexOf(oldDir)])
											.addClass(
													dirClasses[orderDirs
															.indexOf(newDir)]);
								} else {
									newDir = defaultDirs[idx];
									$(this).addClass(selected);
									$(this).addClass(
											dirClasses[orderDirs
													.indexOf(newDir)]);
								}
							}
						} else {
							$(this).removeClass(selected).removeClass(up)
									.removeClass(down);
						}
					});
			objSort.key = newKey;
			objSort.dir = newDir;
			return objSort;
		}
	</script>
	<div class="ui-selectmenu-menu ui-front">
		<ul aria-hidden="true" aria-labelledby="calendarYear-button"
			id="calendarYear-menu" role="listbox" tabindex="0"
			class="ui-menu ui-corner-bottom ui-widget ui-widget-content"></ul>
	</div>
	<div class="ui-selectmenu-menu ui-front">
		<ul aria-hidden="true" aria-labelledby="calendarMonth-button"
			id="calendarMonth-menu" role="listbox" tabindex="0"
			class="ui-menu ui-corner-bottom ui-widget ui-widget-content"></ul>
	</div>
	<iframe name="easyXDM_Kakao_default6302_provider"
		id="easyXDM_Kakao_default6302_provider"
		src="https://kapi.kakao.com/cors/?xdm_e=https%3A%2F%2Fwww.r114.com&amp;xdm_c=default6302&amp;xdm_p=1"
		frameborder="0" style="position: absolute; top: -2000px; left: 0px;"></iframe>
	<div id="fb-root" class=" fb_reset">
		<div
			style="position: absolute; top: -10000px; width: 0px; height: 0px;">
			<div>
				<iframe name="fb_xdm_frame_https" frameborder="0"
					allowtransparency="true" allowfullscreen="true" scrolling="no"
					allow="encrypted-media" id="fb_xdm_frame_https" aria-hidden="true"
					title="Facebook Cross Domain Communication Frame" tabindex="-1"
					src="https://staticxx.facebook.com/connect/xd_arbiter/r/d_vbiawPdxB.js?version=44#channel=f418e13aa244b8&amp;origin=https%3A%2F%2Fwww.r114.com"
					style="border: none;"></iframe>
			</div>
			<div></div>
		</div>
	</div>
</body>
</html>