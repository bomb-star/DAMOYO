<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>부동산 114</title>
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/jquery-3.2.1.js'></script>

<link href="${pageContext.request.contextPath}/resources/css/layout.css"rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/reset.css"rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/jquery-ui.css"rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/template.css"rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/common.css"rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/jquery.boxslider.css"rel="stylesheet">
	
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/Ask/ask.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/Home/footer.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/Home/searchKeywordForm.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/Memul/default.filter.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/Memul/default.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/Memul/rightBanner.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/Memul/sise.common.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/Memul/statistics.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/Memul1/complexDetail.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/Memul1/educationChart.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/Memul1/educationInfo.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/Memul1/memul.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/MyPage/joinMain.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/MyPage/questionToAgent.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/Plugin/moment/moment-with-locales.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/accessLogging.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/appJS.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/common.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/common2.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/history.min.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/jquery.ba-hashchange.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/jquery.browser.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/jquery.bxslider.min.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/jquery.cookie.min.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/jquery.form.min.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/jquery.marquee.min.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/jquery.number.min.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/jquery.scrollintoview.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/mapPopup.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/muse7th.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/PageUtil.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/printThis.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/purl.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/site.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/typedarray.js'></script>
	
</head>

<body class="main">
	<div id="top_layout" class="no_2depth">
		<div class="top_wrap">
			<div class="w_fix">
				<a href="${pageContext.request.contextPath}/index" class="logo_r114">logo</a>
				<div class="search_wrap">
					<form>
						<input type="text" class="g_search"> <a class="btn_search">search</a>
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

	<div id="body_layout" class="main">

		<div class="main_cont">
			<div class="w_fix slide_type60" style="text-align: center">
				<div class="bx-wrapper" style="max-width: 100%;">
					<div class="bx-viewport"
						style="width: 100%; overflow: hidden; position: relative; height: 78px;">
						<ul
							style="width: 715%; position: relative; transition-duration: 0s; transform: translate3d(-980px, 0px, 0px);">
							<li
								style="float: left; list-style: none; position: relative; width: 980px;"
								class="bx-clone"><script language="JavaScript1.1"
									src="https://md.r114.co.kr/RealMedia/ads/adstream_jx.ads/www.r114.co.kr/MR@x46"></script><a
								href="https://md.r114.co.kr/RealMedia/ads/click_lx.ads/www.r114.co.kr/MR/161278424/x46/OasDefault/NMT_NT_20180530_7/980x78_i20190114.jpg/30316536633231613563393131656230"
								target="_blank"><img
									src="https://md.r114.co.kr/RealMedia/ads/Creatives/OasDefault/NMT_NT_20180530_7/980x78_i20190114.jpg"
									alt="" border="0"></a></li>

							<li
								style="float: left; list-style: none; position: relative; width: 980px;">
								<script language="JavaScript1.1"
									src="https://md.r114.co.kr/RealMedia/ads/adstream_jx.ads/www.r114.co.kr/MR@x41"></script><a
								href="https://md.r114.co.kr/RealMedia/ads/click_lx.ads/www.r114.co.kr/MR/45442118/x41/OasDefault/NMT_NT_201903181_11/980x78_j20190318.jpg/30316536633231613563393131656230"
								target="_blank"><img
									src="https://md.r114.co.kr/RealMedia/ads/Creatives/OasDefault/NMT_NT_201903181_11/980x78_j20190318.jpg"
									alt="" border="0"></a>
							</li>

							<li
								style="float: left; list-style: none; position: relative; width: 980px;">
								<script language="JavaScript1.1"
									src="https://md.r114.co.kr/RealMedia/ads/adstream_jx.ads/www.r114.co.kr/MR@x43"></script><a
								href="https://md.r114.co.kr/RealMedia/ads/click_lx.ads/www.r114.co.kr/MR/1458463967/x43/OasDefault/NMT_NT_20190304_3/980x78_d20190304.jpg/30316536633231613563393131656230"
								target="_blank"><img
									src="https://md.r114.co.kr/RealMedia/ads/Creatives/OasDefault/NMT_NT_20190304_3/980x78_d20190304.jpg"
									alt="" border="0"></a>
							</li>

							<li
								style="float: left; list-style: none; position: relative; width: 980px;">
								<script language="JavaScript1.1"
									src="https://md.r114.co.kr/RealMedia/ads/adstream_jx.ads/www.r114.co.kr/MR@x44"></script><a
								href="https://md.r114.co.kr/RealMedia/ads/click_lx.ads/www.r114.co.kr/MR/914414061/x44/OasDefault/NMT_NT_20190124_3/980x78_g20190315.jpg/30316536633231613563393131656230"
								target="_blank"><img
									src="https://md.r114.co.kr/RealMedia/ads/Creatives/OasDefault/NMT_NT_20190124_3/980x78_g20190315.jpg"
									alt="" border="0"></a>
							</li>

							<li
								style="float: left; list-style: none; position: relative; width: 980px;">
								<script language="JavaScript1.1"
									src="https://md.r114.co.kr/RealMedia/ads/adstream_jx.ads/www.r114.co.kr/MR@x45"></script><a
								href="https://md.r114.co.kr/RealMedia/ads/click_lx.ads/www.r114.co.kr/MR/1772010925/x45/OasDefault/NMT_NT_20190124_5/980x78_d20190314.jpg/30316536633231613563393131656230"
								target="_blank"><img
									src="https://md.r114.co.kr/RealMedia/ads/Creatives/OasDefault/NMT_NT_20190124_5/980x78_d20190314.jpg"
									alt="" border="0"></a>
							</li>

							<li
								style="float: left; list-style: none; position: relative; width: 980px;">
								<script language="JavaScript1.1"
									src="https://md.r114.co.kr/RealMedia/ads/adstream_jx.ads/www.r114.co.kr/MR@x46"></script><a
								href="https://md.r114.co.kr/RealMedia/ads/click_lx.ads/www.r114.co.kr/MR/161278424/x46/OasDefault/NMT_NT_20180530_7/980x78_i20190114.jpg/30316536633231613563393131656230"
								target="_blank"><img
									src="https://md.r114.co.kr/RealMedia/ads/Creatives/OasDefault/NMT_NT_20180530_7/980x78_i20190114.jpg"
									alt="" border="0"></a>
							</li>

							<li
								style="float: left; list-style: none; position: relative; width: 980px;"
								class="bx-clone"><script language="JavaScript1.1"
									src="https://md.r114.co.kr/RealMedia/ads/adstream_jx.ads/www.r114.co.kr/MR@x41"></script><a
								href="https://md.r114.co.kr/RealMedia/ads/click_lx.ads/www.r114.co.kr/MR/45442118/x41/OasDefault/NMT_NT_201903181_11/980x78_j20190318.jpg/30316536633231613563393131656230"
								target="_blank"><img
									src="https://md.r114.co.kr/RealMedia/ads/Creatives/OasDefault/NMT_NT_201903181_11/980x78_j20190318.jpg"
									alt="" border="0"></a></li>
						</ul>
					</div>
					<div class="bx-controls bx-has-pager bx-has-controls-direction">
						<div class="bx-pager bx-default-pager">
							<div class="bx-pager-item">
								<a href="#" data-slide-index="0" class="bx-pager-link active">1</a>
							</div>
							<div class="bx-pager-item">
								<a href="#" data-slide-index="1" class="bx-pager-link">2</a>
							</div>
							<div class="bx-pager-item">
								<a href="#" data-slide-index="2" class="bx-pager-link">3</a>
							</div>
							<div class="bx-pager-item">
								<a href="#" data-slide-index="3" class="bx-pager-link">4</a>
							</div>
							<div class="bx-pager-item">
								<a href="#" data-slide-index="4" class="bx-pager-link">5</a>
							</div>
						</div>
						<div class="bx-controls-direction">
							<a class="bx-prev" href="">Prev</a><a class="bx-next" href="">Next</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 메인 배너영역 끝-->

		<!-- 1807 메인상단영역 -->
		<div class="main_top_contents">
			<div class="top_contents_wrap">

				<!-- 181126 윙배너 왼쪽 수정 -->
				<div class="wing_ad_main_wrap">
					<a
						href="https://www.r114.com//?_c=information&amp;_m=noticeInfo&amp;_a=noticeInfoDetail&amp;bno=5&amp;gno=0&amp;num=772"
						target="_blank"><img
						src="https://image.r114.co.kr/W1/images/etc/reps/wing_banner.jpg"></a>
				</div>

				<!-- 181126 윙배너 오른쪽 추가 -->
				<!--
			<div class="wing_ad_main_wrap">
				<a href="https://goo.gl/forms/CHZWoEC12hO0IO1Y2" target="_blank"><img src="https://image.r114.co.kr/W1/images/etc/banner_wing20181123.png"></a>
			</div>
			-->

				<div class="top_con_left">
					<ul>
						<li class="memul_01">
							<div>
								<p>아파트</p>
								<span>#대단지 #교통편리 #학군</span>
							</div> <a href="javascript:;" title="아파트" id="cmdSearchM01">아파트
								매물보기</a>
						</li>
						<li class="memul_02">
							<div>
								<p>신축빌라</p>
								<span>#깨끗한 #트렌디한 #신혼집</span>
							</div> <a href="javascript:;" title="신축빌라" id="cmdSearch01">신축빌라
								매물보기</a>
						</li>
						<li class="memul_03">
							<div>
								<p>원룸</p>
								<span>#예쁜방 #풀옵션 #작은집</span>
							</div> <a href="javascript:;" title="원룸" id="cmdNSearchW01">원룸 매물보기</a>
						</li>
						<li class="memul_04">
							<div>
								<p>사무실</p>
								<span>#대형사무실 #중소형사무실</span>
							</div> <a href="javascript:;" title="사무실" id="cmdNSearchW02">사무실
								매물보기</a>
						</li>
						<li class="memul_05">
							<div>
								<p>상가</p>
								<span>#역세권 #창업 #점포임대</span>
							</div> <a href="javascript:;" title="상가" id="cmdNSearchW03">상가 매물보기</a>
						</li>
						<li class="memul_06">
							<div>
								<p>오피스텔</p>
								<span>#오피스텔</span>
							</div> <a href="javascript:;" title="오피스텔" id="cmdNSearchM04">오피스텔
								매물보기</a>
						</li>
						<!--
					<li class="memul_02">
						<div>
							<p>VR분양관</p>
							<span>#깨끗한 #트렌디한 #신혼집</span>
						</div>
						<a href="javascript:;" title="VR분양관" id="cmdSearchVR">VR분양관 매물보기</a>
					</li>
					-->
					</ul>
				</div>
				<div class="top_con_right">
					<h3>알아두면 편리한 서비스</h3>
					<ul>
						<li class="sevice_link1"><a
							href="/?_c=lots&amp;_s=lotsSchedule&amp;_m=lotsSchedule"
							title="분양일정"> <span></span>
								<p>분양일정</p>
						</a></li>
						<li class="sevice_link3"><a
							href="/?_c=service&amp;_m=counsel" title="부동산 상담"> <span></span>
								<p>부동산상담</p>
						</a></li>
						<li class="sevice_link2"><a
							href="/?_c=solution&amp;_s=calculator" title="부동산 계산기"> <span></span>
								<p>부동산계산기</p>
						</a></li>
						<li class="sevice_link10"><a href="/?_c=StartupSupport"
							title="창업지원서비스" target="_blank"> <span></span>
								<p>창업지원</p>
						</a></li>
						<li class="sevice_link7"><a
							href="/?_c=service&amp;_m=EarthQuakeProof&amp;_s=EarthQuakeProof"
							title="내진설계조회"> <span></span>
								<p>내진설계조회</p>
						</a></li>
						<li class="sevice_link5"><a
							href="/?_c=solution&amp;_m=solutiondefault&amp;_a=reps"
							title="빅데이터솔루션"> <span></span>
								<p>빅데이터솔루션</p>
						</a></li>
						<!--
					<li class="sevice_link9">
						<a href="/?_c=ask&_m=findagent&addrTitle1=서울특별시&searchUse=2&isSearch=y" title="상업전문부동산">
							<span></span>
							<p>상업전문부동산</p>
						</a>
					</li>
					-->
					</ul>

					<!-- 알리미서비스시작 -->
					<div class="alarm_main_wrap">
						<h3>
							<a href="/?_c=mypage&amp;_m=notification" title="분양알리미">알리미<br>서비스
							</a>
						</h3>
						<ul>
							<li><a
								href="javascript:fnLoginCheckPage('/?_c=mypage&amp;_m=bunyangNotification');"
								title="분양알리미">분양알리미</a></li>
							<li><a
								href="javascript:fnLoginCheckPage('/?_c=mypage&amp;_m=marketpricenotification');"
								title="시세알리미">시세알리미</a></li>
							<li><a
								href="javascript:fnLoginCheckPage('/?_c=mypage&amp;_m=actualpricenotificationlist');"
								title="실거래가알리미">실거래가알리미</a></li>
							<li><a
								href="javascript:fnLoginCheckPage('/?_c=mypage&amp;_m=registernotify');"
								title="등기변경알리미">등기변경알리미</a></li>
						</ul>
					</div>
					<!--// 알리미서비스끝 -->

				</div>
				<!--// 190128수정 -->
			</div>
		</div>
		<!-- //1807 메인상단영역 -->

		<div class="main_cont">
			<div class="w_fix">
				<div class="l">
					<div class="tab_wrap">
						<ul class="list_tab7 tab_ui" name="main_tab1" id="mainNewsTab">
							<li class="on"><a href="#">투데이포커스</a></li>
							<li><a href="#">분양정보</a></li>
							<li><a href="#">맞춤 리포트</a></li>
							<li><a href="#">부동산가이드</a></li>
						</ul>
						<a href="javascript:" class="more_type1 rb" id="cmdMoreNewsList">더보기
							<span class="ico_comm_s more1"> </span>
						</a>
					</div>
					<div class="tab_cont" name="main_tab1"
						style="width: 650px; height: 540px; overflow: hidden">
						<li class="on">
							<!--투데이포커스-->
							<div class="infobox_wrap today" id="listTodayFocus">
								<a
									href="/?_c=Research&amp;_m=Detail&amp;bno=200&amp;num=6933&amp;pageNm=reportnews"
									class="infobox_ex wide">
									<div class="thumb">
										<img
											src="https://image.r114.co.kr/FocusNews/2019/20190321170918.jpg"
											alt="" width="422px" height="169px">
									</div> <strong>대단지 VS 소단지… 관리비와 아파트값 차이는?</strong>
								</a> <a
									href="/?_c=Research&amp;_m=Detail&amp;bno=52&amp;num=4278&amp;pageNm=reportnews"
									class="infobox_tx"> <strong>[시황] 송파 "급매물" 거래, <br>서울
										매매 하락폭 줄어
								</strong>
									<p>서울 재건축 아파트값 하락폭이 커졌다. 투자심리 위축으로 거래가 끊기다시피 한 상황에서...</p>
								</a> <a
									href="/?_c=Research&amp;_m=Detail&amp;bno=200&amp;num=6932&amp;pageNm=reportnews"
									class="infobox_ex">
									<div class="thumb">
										<img
											src="https://image.r114.co.kr/FocusNews/2019/20190321170918(1).jpg"
											alt="" width="204px" height="169px">
									</div> <strong>억소리 나는 창업비용… <br>고자본 프랜차이즈 업종은?
								</strong>
								</a> <a
									href="/?_c=Research&amp;_m=Detail&amp;bno=200&amp;num=6931&amp;pageNm=reportnews"
									class="infobox_ex">
									<div class="thumb">
										<img
											src="https://image.r114.co.kr/FocusNews/2019/20190321170918(2).jpg"
											alt="" width="204px" height="169px">
									</div> <strong>빈집 130만 채 육박, 빈집쇼크 <br>막으려면?
								</strong>
								</a> <a
									href="https://www.r114.com/?_c=Research&amp;_m=Detail&amp;bno=200&amp;gno=7&amp;num=6927&amp;pageNo=1&amp;pageNm=reportnews"
									class="infobox_tx"> <strong>1주택 가구, 전세자금대출 가능할까?</strong>
									<p>격적인 봄 이사철에 진입했지만 서울 아파트 매매ㆍ전세가격 모두 동반 하락세가 이어졌다...</p>
								</a> <a
									href="/?_c=Research&amp;_m=Detail&amp;bno=200&amp;num=6928&amp;pageNm=reportnews"
									class="infobox_ex">
									<div class="thumb">
										<img
											src="https://image.r114.co.kr/FocusNews/2019/20190321170918(3).jpg"
											alt="" width="204px" height="169px">
									</div> <strong>강남 위의 강남, 고급 주거지로 <br>거듭나는 개포동
								</strong>
								</a> <a
									href="/?_c=Research&amp;_m=Detail&amp;bno=200&amp;num=6929&amp;pageNm=reportnews"
									class="infobox_ex">
									<div class="thumb">
										<img
											src="https://image.r114.co.kr/FocusNews/2019/20190321171633.jpg"
											alt="" width="204px" height="169px">
									</div> <strong>로또 청약? <br>분양가상한제의 두 얼굴
								</strong>
								</a> <a
									href="https://www.r114.com/?_c=Research&amp;_m=Detail&amp;bno=200&amp;gno=7&amp;num=6930&amp;pageNo=1&amp;pageNm=reportnews"
									class="infobox_tx"> <strong>[기획연재] 인테리어는<br>아이덴티티가
										중요하다
								</strong>
									<p>같은 공간이라 하더라도 마감재를 어떻게 구성하는지에 따라 느낌이 전혀 달라진다...</p>
								</a>
							</div>
						</li>
						<li>
							<!--분양정보-->
							<div id="listLotsNews">
								<div class="infobox_wrap" style="margin-bottom: 10px">
									<div class="infobox_mix_h">
										<a
											href="http://www.r114.com/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;num=14277"
											class="infobox_ex nogra">
											<div class="thumb">
												<img
													src="https://image.r114.co.kr/FocusNews/2018/20181226113253.jpg"
													alt="" width="204px" height="169px">
											</div>
										</a> <a
											href="http://www.r114.com/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;num=14277"
											class="infobox_tx"> <strong>연신내아껴둔한자리<br>"연신내트리플파크"
										</strong>
											<p>지하철3,6호선,GTX-A트리플역세권으로 강남까지 한걸음</p>
										</a>
									</div>
									<a
										href="http://www.r114.com/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;num=14257"
										class="infobox_tx"> <strong>인천1호선연장선<br>송도랜드마크푸르지오시티
									</strong>
										<p>
											송도국제도시비전 <br> 송도의미래가치를품은!
										</p>
									</a>
								</div>
								<div class="infobox_wrap"
									style="width: 433px; display: inline-block; margin-right: 8px">
									<a
										href="http://www.r114.com/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;num=14281"
										class="infobox_ex">
										<div class="thumb">
											<img
												src="https://image.r114.co.kr/FocusNews/2018/20181010182611.jpg"
												alt="" width="204px" height="169px">
										</div> <strong>"서희스타힐스 부평 센트럴"</strong>
									</a> <a
										href="http://www.r114.com/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;num=14281"
										class="infobox_tx"> <strong>완벽한 원스톱 라이프 실현!<br>"서희스타힐스
											부평 센트럴"
									</strong>
										<p>6천 세대 미니신도시급 뉴시티 프로젝트의 시작</p>
									</a> <a
										href="http://www.r114.com/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;num=14283"
										class="infobox_tx"> <strong>GS건설<br>"일산자이3차"
									</strong>
										<p>식사지구 GS건설 자이 브랜드 타운의 마지막 단지 "12월 분양 예정"</p>
									</a> <a
										href="http://www.r114.com/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;num=14258"
										class="infobox_ex">
										<div class="thumb">
											<img
												src="https://image.r114.co.kr/FocusNews/2018/20180129155823.jpg"
												alt="" width="204px" height="169px">
										</div> <strong>김포 풍무 꿈에그린 유로메트로<br></strong>
									</a>
								</div>
								<div class="infobox_mix_v">
									<a
										href="http://www.r114.com/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;num=14284"
										class="infobox_ex nogra">
										<div class="thumb">
											<img
												src="https://image.r114.co.kr/FocusNews/2018/20181029174420.jpg"
												alt="" width="204px" height="169px">
										</div>
									</a> <a
										href="http://www.r114.com/?_c=lots&amp;_m=lotsnews&amp;_a=newsdetail&amp;bno=70&amp;num=14284"
										class="infobox_tx"> <strong>송파트리플역세권<br>"송파가락지역주택아파트"
									</strong>
										<p>
											숲세권,학세권<br>프리미엄을선점하라!
										</p>
									</a>
								</div>
							</div>
						</li>
						<li>
							<!--맞춤 리포트-->
							<div id="listCustomReport">
								<ul class="list_thumb_type2 big" style="margin-top: -20px">

									<li><a
										href="javascript:javascript:fnResearchDetail(52, 1, 4278)"><span
											class="thumb"><img
												src="https://image.r114.co.kr/imgdata/apt/sh1903220.jpg"
												alt="" width="192px" height="120px"></span></a>
										<div>
											<a href="javascript:javascript:fnResearchDetail(52, 1, 4278)">
												<strong class="tit">송파 잠실 일대 "급급매물" 반짝 거래, 서울 아파트값
													하락폭 줄어</strong> <span class="desc"> 서울 아파트 매매가격 -0.03%, 전 주
													대비 낙폭 0.05%p 축소 봄 이사철 특수 실종, 전세가격 15주 연속 하락 본격적인 봄 이사철에
													진입했지만 서울 아파트 매매ㆍ전세가격 모두 동반 하락세가 이어졌다. 서울 매매가격은 18주 연속,
													전세가격은 15주째 내림세..</span>
											</a>
											<div>
												<span class="tag_comm type2">아파트</span><span
													class="tag_comm type2">재건축</span><span
													class="tag_comm type2">급매물</span><span
													class="tag_comm type2">송파</span><span
													class="tag_comm type2">전세</span><span
													class="tag_comm type2">특수</span><span
													class="tag_comm type2">공시가격</span>
											</div>
										</div></li>

									<li><a
										href="javascript:javascript:fnResearchDetail(200, 8, 6934)"><span
											class="thumb"><img
												src="https://image.r114.co.kr/FocusNews/2019/201903221323211.PNG"
												alt="" width="192px" height="120px"></span></a>
										<div>
											<a
												href="javascript:javascript:fnResearchDetail(200, 8, 6934)">
												<strong class="tit">3월 마지막 주 분양캘린더 - 대전아이파크시티 등 전국
													4,673가구 분양, 모델하우스 오픈 풍성</strong> <span class="desc">
													부동산114(www.r114.com)에 따르면 2019년 3월 마지막 주에는 전국에서 4,673가구가
													분양될 예정이다. 내주 분양은 전부 지방에서 이뤄진다. 대전 유성구 복용동 "대전아이파크시티1·2단지",
													대구 달성군 구지면 "대구국가산단대방노블랜드", 경북 경산시 중산동 "중산코오롱하늘채메트..</span>
											</a>
											<div>
												<span class="tag_comm type2">분양</span><span
													class="tag_comm type2">청약</span><span
													class="tag_comm type2">모델하우스</span><span
													class="tag_comm type2">대전</span><span
													class="tag_comm type2">북위례</span>
											</div>
										</div></li>

								</ul>
								<ul class="list_thumb_type2 small" style="margin-top: 20px">

									<li><a
										href="javascript:javascript:fnResearchDetail(0, W, 1534)"><span
											class="thumb"><img
												src="https://image.r114.co.kr/newsimages/r114report/2019/03/newsfile_20190321170256.jpg"
												alt="" width="90px" height="56px"></span></a>
										<div>
											<a href="javascript:javascript:fnResearchDetail(0, W, 1534)">
												<strong class="tit">분당신도시 `양지마을한양` 전망</strong> <span
												class="desc"> - 경기도 성남시 분당구 수내1동 24번지 일대에 위치한
													‘양지마을한양’은 1992년4월 입주한 분당신도시 아파트임. 지상5층~25층 21개동 규모, 전용면적
													18㎡~200㎡(11평~73평) 총 1,430가구로 구성됨 - 입지를 보면 분당선 수내역 도보5분 거리의
													역세권으로 정자역과 서현역 일대와 더..</span>
											</a>
										</div></li>

									<li><a
										href="javascript:javascript:fnResearchDetail(200, 7, 6933)"><span
											class="thumb"><img
												src="https://image.r114.co.kr/imgdata/apt/lim1903210.jpg"
												alt="" width="90px" height="56px"></span></a>
										<div>
											<a
												href="javascript:javascript:fnResearchDetail(200, 7, 6933)">
												<strong class="tit">대단지 VS 소단지… 관리비와 아파트값 차이는?</strong> <span
												class="desc"> 아파트 관리비, 지역별·세대 규모별 격차 뚜렷 아파트값은 대단지
													아파트가 소단지보다 3.3㎡당 530만원 비싸 아파트 관리비는 세대 규모가 클수록 저렴한 반면 단지 규모가
													크면 클수록 집값은 상대적으로 높았다. 세대 규모에 따라 관리비는 15% 이상, 아파트값은 30% 가까이
													차이..</span>
											</a>
										</div></li>

									<li><a
										href="javascript:javascript:fnResearchDetail(200, 7, 6932)"><span
											class="thumb"><img
												src="https://image.r114.co.kr/FocusNews/2019/201903210957011.png"
												alt="" width="90px" height="56px"></span></a>
										<div>
											<a
												href="javascript:javascript:fnResearchDetail(200, 7, 6932)">
												<strong class="tit">억소리 나는 창업비용이 필요한 고자본 프랜차이즈 업종은?</strong>
												<span class="desc"> 창업을 하기 위해서 필요한 준비물 중 가장 중요한 것이 바로
													자본금이다. 우선적으로 돈이 있어야 창업자체를 계획할 수 있고, 폭넓게 업종이나 점포 등을 선택할 수 있기
													때문이다. 나름 안정적인 창업으로 분류되어 많은 예비창업자들에게 인기가 높은 프랜차이즈 창업만 보더라도
													억소리나는 창업비용이 ..</span>
											</a>
										</div></li>

									<li><a
										href="javascript:javascript:fnResearchDetail(200, 7, 6931)"><span
											class="thumb"><img
												src="https://IMAGE.R114.CO.KR/imgdata/jpt/20190320_0.png"
												alt="" width="90px" height="56px"></span></a>
										<div>
											<a
												href="javascript:javascript:fnResearchDetail(200, 7, 6931)">
												<strong class="tit">빈집 130만 채 육박, 빈집쇼크 막으려면?</strong> <span
												class="desc"> 빈집 공포가 커지고 있다. 통계청에 따르면 2017년 현재 국내 빈집은
													총 126만4,707가구로 집계됐다. 빈집 비중은 전체 주택 수 1,712만2,573가구 대비 7.4%
													수준에 불과하지만 문제는 증가 속도다. 2017년 한해 동안 발생한 빈집은 6만5,401가구로 전년
													동기대비 76.0%..</span>
											</a>
										</div></li>

								</ul>
							</div>
						</li>
						<li>
							<!--부동산가이드-->
							<div id="listRealGuide">
								<div class="infobox_mix_v">
									<a
										href="http://www.r114.com/?_c=Research&amp;_m=Detail&amp;bno=200&amp;gno=8&amp;num=6934&amp;pageNo=1&amp;pageNm=reportnews"
										class="infobox_ex">
										<div class="thumb">
											<img
												src="https://image.r114.co.kr/FocusNews/2018/20180406182201.jpg"
												alt="" width="204px" height="169px">
										</div>
									</a> <a
										href="http://www.r114.com/?_c=Research&amp;_m=Detail&amp;bno=200&amp;gno=8&amp;num=6934&amp;pageNo=1&amp;pageNm=reportnews"
										class="infobox_tx"> <strong>대전아이파크시티 등 <br>전국
											4,673가구 분양
									</strong>
										<p>[분양캘린더] 3월 마지막 주에는 대전 유성구 "대전아이파크시티1·2단지", 대구 달성군
											"대구국가산단대방노블랜드"...</p>
									</a>
								</div>
								<div class="infobox_wrap"
									style="width: 433px; display: inline-block; margin-left: -1px">
									<a
										href="http://www.r114.com/?_c=Research&amp;_m=Detail&amp;bno=62&amp;gno=&amp;num=244&amp;pageNo=1&amp;pageNm=weeklytips"
										class="infobox_ex">
										<div class="thumb">
											<img
												src="https://image.r114.co.kr/FocusNews/2019/20190201132734.jpg"
												alt="" width="204px" height="169px">
										</div> <strong>입주자 사전방문 제도</strong>
									</a> <a
										href="http://www.r114.com/?_c=Research&amp;_m=Detail&amp;bno=62&amp;gno=&amp;num=243&amp;pageNo=1&amp;pageNm=weeklytips"
										class="infobox_ex">
										<div class="thumb">
											<img
												src="https://image.r114.co.kr/FocusNews/2019/20190201133139.jpg"
												alt="" width="204px" height="169px">
										</div> <strong>내 보증금을 안전하게 지키는 법</strong>
									</a> <a
										href="http://https://www.r114.com/?_c=service&amp;_s=community&amp;_m=communityview&amp;_a=boardview&amp;viewId=5667&amp;pageNo=1&amp;tabGubun=2&amp;sortTag=0"
										class="infobox_ex">
										<div class="thumb">
											<img
												src="https://image.r114.co.kr/FocusNews/2018/20181123134924.jpg"
												alt="" width="204px" height="169px">
										</div> <strong>[현장이야기] 송파 헬리오시티<br>현재 입주현황은?
									</strong>
									</a> <a
										href="http://www.r114.com/?_c=Research&amp;_m=Detail&amp;_a=Counsel&amp;bno=0&amp;num=1530&amp;pageNo=1"
										class="infobox_ex">
										<div class="thumb">
											<img
												src="https://image.r114.co.kr/FocusNews/2018/20180228163551.jpg"
												alt="" width="204px" height="169px">
										</div> <strong>[로컬분석] 용산 한강맨션 VS<br>신동아 가치분석
									</strong>
									</a>
								</div>
								<div class="infobox_wrap" style="margin-top: 0">
									<a
										href="http://www.r114.com/?_c=Research&amp;_m=Detail&amp;bno=200&amp;gno=7&amp;num=6829&amp;pageNo=3&amp;pageNm=reportnews"
										class="infobox_ex">
										<div class="thumb">
											<img
												src="https://image.r114.co.kr/FocusNews/2018/20180403181404.jpg"
												alt="" width="204px" height="169px">
										</div> <strong>주거비 부담 낮춰보자,<br>신혼부부 임차보증금 지원
									</strong>
									</a> <a
										href="http://www.r114.com/?_c=Research&amp;_m=Detail&amp;bno=200&amp;gno=7&amp;num=6825&amp;pageNo=4&amp;pageNm=reportnews"
										class="infobox_ex">
										<div class="thumb">
											<img
												src="https://image.r114.co.kr/FocusNews/2018/20180328174800.jpg"
												alt="" width="204px" height="169px">
										</div> <strong>성공 투자의 첫 걸음…<br>부동산 "임장"이란 무엇인가?
									</strong>
									</a> <a
										href="http://www.r114.com/?_c=Research&amp;_m=Detail&amp;bno=200&amp;gno=7&amp;num=6837&amp;pageNo=2&amp;pageNm=reportnews"
										class="infobox_ex">
										<div class="thumb">
											<img
												src="https://image.r114.co.kr/FocusNews/2018/20181128110109.jpg"
												alt="" width="204px" height="169px">
										</div> <strong>헷갈리는 청약 부양가족 기준, 나의 점수는?</strong>
									</a>
								</div>
							</div>
						</li>
					</div>
				</div>
				<div class="r">
					<!-- 광고 -->
					<div class="banner_ajax">
						<div class="main_add">

							<div class="main_add_img" id="ad_1" style="display: none;"
								onmouseover="javascript:end_rol();"
								onmouseout="javascript:ch_paging('1','on');">
								<a
									href="https://md.r114.co.kr/RealMedia/ads/click_lx.ads/www.r114.co.kr/MSI/2103751197/x72/OasDefault/MR_DH_3_190124/300x200_g20190315.jpg/30316536633231613563393131656230"
									target="_blank"><img
									src="https://md.r114.co.kr/RealMedia/ads/Creatives/OasDefault/MR_DH_3_190124/300x200_g20190315.jpg"
									alt="" border="0"></a>
							</div>

							<div class="main_add_img" id="ad_2" style=""
								onmouseover="javascript:end_rol();"
								onmouseout="javascript:ch_paging('2','on');">
								<a
									href="https://md.r114.co.kr/RealMedia/ads/click_lx.ads/www.r114.co.kr/MSI/1351526254/x71/OasDefault/MR_DH_3_190122/300x200_e20190320.jpg/30316536633231613563393131656230"
									target="_blank"><img
									src="https://md.r114.co.kr/RealMedia/ads/Creatives/OasDefault/MR_DH_3_190122/300x200_e20190320.jpg"
									alt="" border="0"></a>
							</div>

							<div class="main_add_img" id="ad_3" style="display: none;"
								onmouseover="javascript:end_rol();"
								onmouseout="javascript:ch_paging('3','on');">
								<a
									href="https://md.r114.co.kr/RealMedia/ads/click_lx.ads/www.r114.co.kr/MSI/483007150/x70/OasDefault/MR_DH_3_180910/300x200_s20190116.png/30316536633231613563393131656230"
									target="_blank"><img
									src="https://md.r114.co.kr/RealMedia/ads/Creatives/OasDefault/MR_DH_3_180910/300x200_s20190116.png"
									alt="" border="0"></a>
							</div>

							<div class="main_add_img" id="ad_4" style="display: none;"
								onmouseover="javascript:end_rol();"
								onmouseout="javascript:ch_paging('4','on');">
								<a
									href="https://md.r114.co.kr/RealMedia/ads/click_lx.ads/www.r114.co.kr/MSI/809608137/x69/OasDefault/MR_DH_3_190211/300x200_d20190314.jpg/30316536633231613563393131656230"
									target="_blank"><img
									src="https://md.r114.co.kr/RealMedia/ads/Creatives/OasDefault/MR_DH_3_190211/300x200_d20190314.jpg"
									alt="" border="0"></a>
							</div>

							<div class="add_number">
								<ul>

									<li class="n1"><a id="button_1" class=""
										onmouseover="javascript:ch_paging('1','off');"
										onmouseout="javascript:ch_paging('1','on');">1</a></li>

									<li class="n2"><a id="button_2" class="active"
										onmouseover="javascript:ch_paging('2','off');"
										onmouseout="javascript:ch_paging('2','on');">2</a></li>

									<li class="n3"><a id="button_3" class=""
										onmouseover="javascript:ch_paging('3','off');"
										onmouseout="javascript:ch_paging('3','on');">3</a></li>

									<li class="n4"><a id="button_4" class=""
										onmouseover="javascript:ch_paging('4','off');"
										onmouseout="javascript:ch_paging('4','on');">4</a></li>

								</ul>
							</div>
						</div>

						<div class="right_banner_wrap">
							<ul>

								<li
									onmouseover="chgRightFloatingBanner('on','https://image.r114.co.kr/images/r114/2014/300x200_g20190315.jpg');"
									onmouseout="chgRightFloatingBanner('off','https://image.r114.co.kr/images/r114/2014/300x200_g20190315.jpg');"
									class=""><a
									href="https://md.r114.co.kr/RealMedia/ads/click_lx.ads/www.r114.co.kr/TEXTBANNER/1675321318/x27/OasDefault/NEWER_banner06_190124/300x90_g20190315.gif/30316536633231613563393131656230"
									target="_blank"><img
										src="https://md.r114.co.kr/RealMedia/ads/Creatives/OasDefault/NEWER_banner06_190124/300x90_g20190315.gif"
										alt="" border="0"></a></li>

								<li
									onmouseover="chgRightFloatingBanner('on','https://image.r114.co.kr/images/r114/2014/300x200_h20190207.jpg');"
									onmouseout="chgRightFloatingBanner('off','https://image.r114.co.kr/images/r114/2014/300x200_h20190207.jpg');"
									class=""><a
									href="https://md.r114.co.kr/RealMedia/ads/click_lx.ads/www.r114.co.kr/TEXTBANNER/1135316246/x21/OasDefault/NEWER_banner06_180716/300x30_h20190207(3).jpg/30316536633231613563393131656230"
									target="_blank"><img
										src="https://md.r114.co.kr/RealMedia/ads/Creatives/OasDefault/NEWER_banner06_180716/300x30_h20190207(3).jpg"
										alt="" border="0"></a></li>

								<li
									onmouseover="chgRightFloatingBanner('on','https://image.r114.co.kr/images/r114/2014/300x200_r20180712(1).jpg');"
									onmouseout="chgRightFloatingBanner('off','https://image.r114.co.kr/images/r114/2014/300x200_r20180712(1).jpg');"
									class=""><a
									href="https://md.r114.co.kr/RealMedia/ads/click_lx.ads/www.r114.co.kr/TEXTBANNER/927480864/x26/OasDefault/NEWER_banner06_180712/300x30_r20180712.jpg/30316536633231613563393131656230"
									target="_blank"><img
										src="https://md.r114.co.kr/RealMedia/ads/Creatives/OasDefault/NEWER_banner06_180712/300x30_r20180712.jpg"
										alt="" border="0"></a></li>

								<li
									onmouseover="chgRightFloatingBanner('on','https://image.r114.co.kr/images/r114/2014/300x200_d20190314.jpg');"
									onmouseout="chgRightFloatingBanner('off','https://image.r114.co.kr/images/r114/2014/300x200_d20190314.jpg');"
									class=""><a
									href="https://md.r114.co.kr/RealMedia/ads/click_lx.ads/www.r114.co.kr/TEXTBANNER/1255772982/x22/OasDefault/NEWER_banner05_190211/300x30_d20190211.jpg/30316536633231613563393131656230"
									target="_blank"><img
										src="https://md.r114.co.kr/RealMedia/ads/Creatives/OasDefault/NEWER_banner05_190211/300x30_d20190211.jpg"
										alt="" border="0"></a></li>

								<li
									onmouseover="chgRightFloatingBanner('on','https://image.r114.co.kr/images/r114/2014/300x200_d20190304.jpg');"
									onmouseout="chgRightFloatingBanner('off','https://image.r114.co.kr/images/r114/2014/300x200_d20190304.jpg');"
									class=""><a
									href="https://md.r114.co.kr/RealMedia/ads/click_lx.ads/www.r114.co.kr/TEXTBANNER/1585511688/x25/OasDefault/NEWER_banner06_190304/300x30_d20190304.gif/30316536633231613563393131656230"
									target="_blank"><img
										src="https://md.r114.co.kr/RealMedia/ads/Creatives/OasDefault/NEWER_banner06_190304/300x30_d20190304.gif"
										alt="" border="0"></a></li>

								<li
									onmouseover="chgRightFloatingBanner('on','https://image.r114.co.kr/images/r114/2014/300x200_e20190320.jpg');"
									onmouseout="chgRightFloatingBanner('off','https://image.r114.co.kr/images/r114/2014/300x200_e20190320.jpg');"
									class=""><a
									href="https://md.r114.co.kr/RealMedia/ads/click_lx.ads/www.r114.co.kr/TEXTBANNER/391416934/x24/OasDefault/NEWER_banner05_180129/300x30_e20190320.jpg/30316536633231613563393131656230"
									target="_blank"><img
										src="https://md.r114.co.kr/RealMedia/ads/Creatives/OasDefault/NEWER_banner05_180129/300x30_e20190320.jpg"
										alt="" border="0"></a></li>

								<li
									onmouseover="chgRightFloatingBanner('on','https://image.r114.co.kr/images/r114/2014/300x200_i20190114.jpg');"
									onmouseout="chgRightFloatingBanner('off','https://image.r114.co.kr/images/r114/2014/300x200_i20190114.jpg');"
									class=""><a
									href="https://md.r114.co.kr/RealMedia/ads/click_lx.ads/www.r114.co.kr/TEXTBANNER/475182524/x23/OasDefault/NEWER_banner05_180524/300x30_i20190114.jpg/30316536633231613563393131656230"
									target="_blank"><img
										src="https://md.r114.co.kr/RealMedia/ads/Creatives/OasDefault/NEWER_banner05_180524/300x30_i20190114.jpg"
										alt="" border="0"></a></li>

							</ul>
						</div>
						<div class="right_banner_up" style="display: none;"
							id="obj_right_floating_banner"></div>
					</div>
					<!--// 광고 -->
				</div>
			</div>
		</div>
		<div class="main_cont gray">
			<div class="w_fix">
				<div class="l">
					<div class="referral_status_wrap privateArea"
						style="display: none;">
						<h4>내 의뢰현황</h4>
						<strong class="title" id="userNick"><em></em>님의<br>의뢰내역
							입니다.</strong>
						<div class="step">
							<div class="step1">
								<strong>의뢰중/선택대기</strong> <a href="javascript:" class="count"
									id="cmdMyAsking1">0</a>
							</div>
							<div class="step2">
								<strong>진행중</strong> <a href="javascript:" class="count"
									id="cmdMyAsking2">0</a>
							</div>
							<div class="step3">
								<strong>거래완료/거래중단</strong> <a href="javascript:" class="count"
									id="cmdMyAsking3">0</a>
							</div>
						</div>
						<em class="tip">의뢰취소는 의뢰내역 페이지에서 가능합니다.</em> <a href="javascript:"
							class="more" id="goMyAskingList">더보기</a>
					</div>
					<div class="dealinfo_wrap clearfix publicArea">
						<div class="infobox_a">
							<strong>의뢰현황</strong>
							<div class="info">
								<strong>총 의뢰수</strong>
								<p id="askTotalCount">2,575</p>
							</div>
						</div>
						<div class="infobox_b putting">
							<strong>내놓기</strong>
							<ul class="info">
								<li><strong>의뢰</strong><span id="askSellCount1">2,328</span></li>
								<li><strong>접수</strong><span id="askSellCount2">1,556</span></li>
							</ul>
							<a href="javascript:" class="btn_apply" id="cmdAskSell">신청하기</a>
						</div>
						<div class="infobox_b findit">
							<strong>구하기</strong>
							<ul class="info">
								<li><strong>의뢰</strong><span id="askBuyCount1">247</span></li>
								<li><strong>접수</strong><span id="askBuyCount2">148</span></li>
							</ul>
							<a href="javascript:" class="btn_apply" id="cmdAskBuy">신청하기</a>
						</div>
					</div>
				</div>
				<div class="r">
					<h4 class="h4_type4 line">
						고객후기<a href="javascript:" class="more_type1 rb"
							id="cmdListCustomerReview">더보기 <span class="ico_comm_s more1">
						</span></a>
					</h4>
					<ul class="list_info type2" id="listCustomerReview">
						<li><a href="javascript:;" onclick="openLp('#lp_layout_327')">다른
								루트를 통해 매매하게 되었습니다</a></li>
						<!-- 레이업팝업 -->
						<div id="lp_layout_327">
							<!-- 팝업바디 -->
							<div class="lp_wrap" style="width: 700px">
								<div class="inner">
									<div class="lp_con">
										<div class="list_review">
											<div class="in">
												<span class="info_wrap2"> <em><span><span
															class="ico_comm_s location5"></span>부산광역시 남구 감만동</span></em><span>
														아파트</span><span> 매매</span><span>56㎡</span>
												</span>
												<div class="info_wrap2">매매가 8,200 ~ 8,200 만원</div>
												<strong>다른 루트를 통해 매매하게 되었습니다</strong>
												<p>다른 루트를 통해 매매가 이루어지게 되었습니다 감사합니다 수고하세요</p>
												<span class="info_wrap2"> <span><span
														class="ico_comm_s writer">작성자</span>odododoc@naver.com</span> <span>2019.03.23</span>
												</span>
											</div>
											<div class="profile1">
												<span class="thumb"> <img
													src="https://image.r114.co.kr/brokersimages/2017/10/F03036080900014_photo02_np.png"
													border="0"></span> <em class="info"> <span class="shop"><i
														class="ico_class  r"> R</i>금탑공인</span> <span class="address"><i
														class="ico_comm_s home">주소</i><a href="javascript:;"
														onclick="fnMapLayerPop(this, 'popup','','','F03036080900014')"
														class="link_blue"> 부산광역시 남구 용호동 (LG메트로시티 주상가 101호)</a></span> <span
													class="tel"><i class="ico_comm_s tel">tel</i>051)611-0440</span>
													<a href="javascript:fnGoJunHome('F03036080900014')"
													class="btn_type1" title="새창">홈페이지</a> <a
													href="javascript:fnGoJunHomeMemul('F03036080900014')"
													class="btn_type1">매물보기</a>
												</em> <span class="like"><span class="ico_comm_s like2">공감</span>0</span>
											</div>
										</div>
									</div>
									<div class="lp_close">
										<a href="#none" onclick="closeLp('#lp_layout_327')">닫기</a>
									</div>
								</div>
							</div>
							<!-- //팝업바디 -->
						</div>
						<!-- //레이업팝업 -->


						<li><a href="javascript:;" onclick="openLp('#lp_layout_316')">조건에
								맞는 좋은 집을 찾았습니다.</a></li>
						<!-- 레이업팝업 -->
						<div id="lp_layout_316">
							<!-- 팝업바디 -->
							<div class="lp_wrap" style="width: 700px">
								<div class="inner">
									<div class="lp_con">
										<div class="list_review">
											<div class="in">
												<span class="info_wrap2"> <em><span><span
															class="ico_comm_s location5"></span>서울특별시 성북구 돈암동</span></em><span>
														아파트</span><span> 전세</span><span>66 ~ 132㎡</span>
												</span>
												<div class="info_wrap2">전세가 35,000 ~ 38,000 만원</div>
												<strong>조건에 맞는 좋은 집을 찾았습니다.</strong>
												<p>마른기침이에요 집을 구할 수 있었습니다 조건에 맞는 좋은지는 찾았습니다</p>
												<span class="info_wrap2"> <span><span
														class="ico_comm_s writer">작성자</span>scent2@hanmail.net</span> <span>2019.02.27</span>
												</span>
											</div>
											<div class="profile1">
												<span class="thumb"> <img
													src="https://image.r114.co.kr/brokersimages/2013/05/F01171360600032_photo02_np.jpg"
													border="0"></span> <em class="info"> <span class="shop"><i
														class="ico_class  c"> C</i>푸른공인</span> <span class="address"><i
														class="ico_comm_s home">주소</i><a href="javascript:;"
														onclick="fnMapLayerPop(this, 'popup','','','F01171360600032')"
														class="link_blue"> 서울특별시 성북구 돈암동 동부센트레빌아파트상가 102호</a></span> <span
													class="tel"><i class="ico_comm_s tel">tel</i>02)953-5500</span>
													<a href="javascript:fnGoJunHome('F01171360600032')"
													class="btn_type1" title="새창">홈페이지</a> <a
													href="javascript:fnGoJunHomeMemul('F01171360600032')"
													class="btn_type1">매물보기</a>
												</em> <span class="like"><span class="ico_comm_s like2">공감</span>0</span>
											</div>
										</div>
									</div>
									<div class="lp_close">
										<a href="#none" onclick="closeLp('#lp_layout_316')">닫기</a>
									</div>
								</div>
							</div>
							<!-- //팝업바디 -->
						</div>
						<!-- //레이업팝업 -->


						<li><a href="javascript:;" onclick="openLp('#lp_layout_315')">조건에
								맞는 좋은 집을 찾았습니다.</a></li>
						<!-- 레이업팝업 -->
						<div id="lp_layout_315">
							<!-- 팝업바디 -->
							<div class="lp_wrap" style="width: 700px">
								<div class="inner">
									<div class="lp_con">
										<div class="list_review">
											<div class="in">
												<span class="info_wrap2"> <em><span><span
															class="ico_comm_s location5"></span>서울특별시 성북구 돈암동</span></em><span>
														아파트</span><span> 전세</span><span>66 ~ 132㎡</span>
												</span>
												<div class="info_wrap2">전세가 35,000 ~ 38,000 만원</div>
												<strong>조건에 맞는 좋은 집을 찾았습니다.</strong>
												<p>마른기침이에요 집을 구할 수 있었습니다 조건에 맞는 좋은지는 찾았습니다</p>
												<span class="info_wrap2"> <span><span
														class="ico_comm_s writer">작성자</span>scent2@hanmail.net</span> <span>2019.02.27</span>
												</span>
											</div>
											<div class="profile1">
												<span class="thumb"> <img
													src="https://image.r114.co.kr/brokersimages/2013/05/F01171360600032_photo02_np.jpg"
													border="0"></span> <em class="info"> <span class="shop"><i
														class="ico_class  c"> C</i>푸른공인</span> <span class="address"><i
														class="ico_comm_s home">주소</i><a href="javascript:;"
														onclick="fnMapLayerPop(this, 'popup','','','F01171360600032')"
														class="link_blue"> 서울특별시 성북구 돈암동 동부센트레빌아파트상가 102호</a></span> <span
													class="tel"><i class="ico_comm_s tel">tel</i>02)953-5500</span>
													<a href="javascript:fnGoJunHome('F01171360600032')"
													class="btn_type1" title="새창">홈페이지</a> <a
													href="javascript:fnGoJunHomeMemul('F01171360600032')"
													class="btn_type1">매물보기</a>
												</em> <span class="like"><span class="ico_comm_s like2">공감</span>0</span>
											</div>
										</div>
									</div>
									<div class="lp_close">
										<a href="#none" onclick="closeLp('#lp_layout_315')">닫기</a>
									</div>
								</div>
							</div>
							<!-- //팝업바디 -->
						</div>
						<!-- //레이업팝업 -->


						<li><a href="javascript:;" onclick="openLp('#lp_layout_326')">빠른
								시간 내에 집을 구할 수 있었습니다.</a></li>
						<!-- 레이업팝업 -->
						<div id="lp_layout_326">
							<!-- 팝업바디 -->
							<div class="lp_wrap" style="width: 700px">
								<div class="inner">
									<div class="lp_con">
										<div class="list_review">
											<div class="in">
												<span class="info_wrap2"> <em><span><span
															class="ico_comm_s location5"></span>서울특별시 강남구 논현동</span></em><span>
														원룸</span><span> 월세</span><span>26/26㎡</span>
												</span>
												<div class="info_wrap2">보증금 326 만원 / 월세 60 ~ 60 만원</div>
												<strong>빠른 시간 내에 집을 구할 수 있었습니다.</strong>
												<p>감사 덕분에 잘해결 함 ㅋㅋㅋㅋㅋㅋㅋㄱㅂㅍㅋㄱㄴㄷㅈㅅ바ㅡㅎㄴㅅ툿ㅈㅇㄴㄱㄷㅈㅅㅂㄱㄹㄷㅊㅅ</p>
												<span class="info_wrap2"> <span><span
														class="ico_comm_s writer">작성자</span>thosgrol@naver.com</span> <span>2019.03.17</span>
												</span>
											</div>
											<div class="profile1">
												<span class="thumb"> <img
													src="https://image.r114.co.kr/brokersimages/2014/09/F20140630171456_photo03_non.jpg"
													border="0"></span> <em class="info"> <span class="shop"><i
														class="ico_class  r"> R</i>삼성MK공인</span> <span class="address"><i
														class="ico_comm_s home">주소</i><a href="javascript:;"
														onclick="fnMapLayerPop(this, 'popup','','','F20140630171456')"
														class="link_blue"> 서울특별시 강남구 역삼동 1층(역삼동)</a></span> <span
													class="tel"><i class="ico_comm_s tel">tel</i>02)539-8885</span>
													<a href="javascript:fnGoJunHome('F20140630171456')"
													class="btn_type1" title="새창">홈페이지</a> <a
													href="javascript:fnGoJunHomeMemul('F20140630171456')"
													class="btn_type1">매물보기</a>
												</em> <span class="like"><span class="ico_comm_s like2">공감</span>0</span>
											</div>
										</div>
									</div>
									<div class="lp_close">
										<a href="#none" onclick="closeLp('#lp_layout_326')">닫기</a>
									</div>
								</div>
							</div>
							<!-- //팝업바디 -->
						</div>
						<!-- //레이업팝업 -->


						<li><a href="javascript:;" onclick="openLp('#lp_layout_303')">조건에
								맞는 좋은 집을 찾았습니다.</a></li>
						<!-- 레이업팝업 -->
						<div id="lp_layout_303">
							<!-- 팝업바디 -->
							<div class="lp_wrap" style="width: 700px">
								<div class="inner">
									<div class="lp_con">
										<div class="list_review">
											<div class="in">
												<span class="info_wrap2"> <em><span><span
															class="ico_comm_s location5"></span>경기도 평택시 안중읍</span></em><span>
														아파트</span><span> 전세</span><span>66 ~ 98㎡</span>
												</span>
												<div class="info_wrap2">전세가 10,000 ~ 19,999 만원</div>
												<strong>조건에 맞는 좋은 집을 찾았습니다.</strong>
												<p>ㅋㅋㅌㅌㅌㅌㅌㅌㅌㅌㅌㅌㅌㅌㅌㅌㅌㅌㅌㅌㅇㅌㅇㅇㄹㄹㄹㄹㅎㅎ호ㅗㅛㅕㅓㅕㅑㅓㅗㅗㅕㅑㅑㅕㅕㅓㅓㅓㅓㅓ</p>
												<span class="info_wrap2"> <span><span
														class="ico_comm_s writer">작성자</span>gjsdmd@naver.com</span> <span>2019.01.28</span>
												</span>
											</div>
											<div class="profile1">
												<span class="thumb"> <img
													src="https://image.r114.co.kr/brokersimages/2018/04/F20180409122625_photo03_non.jpg"
													border="0"></span> <em class="info"> <span class="shop"><i
														class="ico_class  c"> C</i>토박이공인중개사</span> <span class="address"><i
														class="ico_comm_s home">주소</i><a href="javascript:;"
														onclick="fnMapLayerPop(this, 'popup','','','F20180409122625')"
														class="link_blue"> 경기도 평택시 안중읍 </a></span> <span class="tel"><i
														class="ico_comm_s tel">tel</i>031)686-6837</span> <a
													href="javascript:fnGoJunHome('F20180409122625')"
													class="btn_type1" title="새창">홈페이지</a> <a
													href="javascript:fnGoJunHomeMemul('F20180409122625')"
													class="btn_type1">매물보기</a>
												</em> <span class="like"><span class="ico_comm_s like2">공감</span>0</span>
											</div>
										</div>
									</div>
									<div class="lp_close">
										<a href="#none" onclick="closeLp('#lp_layout_303')">닫기</a>
									</div>
								</div>
							</div>
							<!-- //팝업바디 -->
						</div>
						<!-- //레이업팝업 -->

					</ul>
				</div>
			</div>
		</div>
		<div class="main_cont">
			<div class="w_fix">
				<div class="l">

					<!-- 180221 수정 -->
					<div class="tab_wrap tyep2">
						<ul class="list_tab7 tab_ui" name="story_tab" id="story_tab">
							<li class="on" id="tab_community_1"><a href="javascript:;">우리동네
									단지이야기</a></li>
							<li id="tab_community_2"><a href="javascript:;">공인중개사
									현장이야기</a></li>
						</ul>
						<a href="javascript:" class="more_type1 rb" id="cmdListCommunity">더보기
							<span class="ico_comm_s more1"> </span>
						</a>
					</div>

					<ul class="tab_cont" name="story_tab">
						<li class="on">
							<!-- 우리동네이야기 -->
							<div class="main_list_wrap">
								<ul class="list_thumb_type2 wrt_type  MainList"
									id="communityList">
									<li><a href="javascript:goCommunityDetailPage('1722')"><span
											class="thumb"><img src="" alt=""></span></a>
										<div>
											<a href="javascript:goCommunityDetailPage('1722')"> <strong
												class="tit"><span class="tag_comm type13">단지</span>부영3차</strong>
												<span class="fc_gray9"><span
													class="ico_comm_s location1">지역</span>강원도 속초시 조양동</span> <span
												class="desc">305동 402호 이외에 주인 임상길 김성현으로 되어있는 집은 절대
													계약하지마세요</span>
											</a>
											<div>
												<span class="info_wrap1"> <span class="fc_gray6">flyhigh808***</span>
													<span>2019.03.21</span> <span><span>조회</span>73</span> <span><span
														class="ico_comm_s like">공감</span>0</span>
												</span>
											</div>
										</div></li>


									<li><a href="javascript:goCommunityDetailPage('1721')"><span
											class="thumb"><img src="" alt=""></span></a>
										<div>
											<a href="javascript:goCommunityDetailPage('1721')"> <strong
												class="tit"><span class="tag_comm type13">단지</span>우방</strong>
												<span class="fc_gray9"><span
													class="ico_comm_s location1">지역</span>서울특별시 노원구 공릉동</span> <span
												class="desc">사람 살기 좋은 아파트 애들 키우기 좋은 아파트</span>
											</a>
											<div>
												<span class="info_wrap1"> <span class="fc_gray6">뚜레콘</span>
													<span>2019.03.19</span> <span><span>조회</span>34</span> <span><span
														class="ico_comm_s like">공감</span>0</span>
												</span>
											</div>
										</div></li>


									<li><a href="javascript:goCommunityDetailPage('1720')"><span
											class="thumb"><img src="" alt=""></span></a>
										<div>
											<a href="javascript:goCommunityDetailPage('1720')"> <strong
												class="tit"><span class="tag_comm type12">동네</span>신매동</strong>
												<span class="fc_gray9"><span
													class="ico_comm_s location1">지역</span>대구광역시 수성구 신매동</span> <span
												class="desc">역세권 상권이 편리함 90년대 아파트라 복도식</span>
											</a>
											<div>
												<span class="info_wrap1"> <span class="fc_gray6">rkddbsrn25***</span>
													<span>2019.03.19</span> <span><span>조회</span>18</span> <span><span
														class="ico_comm_s like">공감</span>0</span>
												</span>
											</div>
										</div></li>

								</ul>
							</div>
						</li>
						<li>
							<!-- 현장이야기 -->
							<div class="main_list_wrap">
								<ul class="list_thumb_type2 wrt_type rea_story MainList"
									id="boardList">
									<li><a href="javascript:;" onclick="goView('5677');"><span
											class="thumb"><img
												src="https://image.r114.co.kr/support/2019/03/result_2019_2_6_17_57_46_696_1.jpg"
												alt=""></span></a>
										<div>
											<a href="javascript:goBoardDetailPage('5677')"> <span
												class="fc_gray9"><span class="ico_comm_s location1">지역</span>서울특별시
													금천구</span> <strong class="tit fc_gray3">금천구 독산동 롯데캐슬골드파크
													타워960오피스텔 입주시작</strong>
											</a>
											<div>
												<span class="info_wrap1"> <span class="fc_gray6">광성공인중개사</span>
													<span>2019.03.23</span> <!-- <span><span class="ico_comm_s views">조회수</span> 1</span> -->
													<span><span>조회</span> 1</span> <span><span
														class="ico_comm_s like">추천</span>0</span>
												</span>
											</div>
										</div> <span class="rea_info"> <span class="address"><i
												class="ico_comm_s home">주소</i>서울특별시 금천구</span> <span class="tel"><i
												class="ico_comm_s tel">tel</i>02)808-8800</span> <a
											href="javascript:fnGoJunHome('F20100219155428')"><i
												class="ico_comm_s homepage">H</i>홈페이지</a>
									</span></li>

									<li><a href="javascript:;" onclick="goView('5676');"><span
											class="thumb"><img
												src="https://image.r114.co.kr/support/2019/03/result_2019_2_3_13_13_14_165_1.jpg"
												alt=""></span></a>
										<div>
											<a href="javascript:goBoardDetailPage('5676')"> <span
												class="fc_gray9"><span class="ico_comm_s location1">지역</span>서울특별시
													송파구</span> <strong class="tit fc_gray3">사면에 한강과
													성내천,올림픽공원,석촌호수를 두고있는 잠실파크리오아파트의 현재</strong>
											</a>
											<div>
												<span class="info_wrap1"> <span class="fc_gray6">뉴랜드공인</span>
													<span>2019.03.20</span> <!-- <span><span class="ico_comm_s views">조회수</span> 102</span> -->
													<span><span>조회</span> 102</span> <span><span
														class="ico_comm_s like">추천</span>0</span>
												</span>
											</div>
										</div> <span class="rea_info"> <span class="address"><i
												class="ico_comm_s home">주소</i>서울특별시 송파구</span> <span class="tel"><i
												class="ico_comm_s tel">tel</i>02)4000-894</span> <a
											href="javascript:fnGoJunHome('F20081001085444')"><i
												class="ico_comm_s homepage">H</i>홈페이지</a>
									</span></li>

									<li><a href="javascript:;" onclick="goView('5675');"><span
											class="thumb"><img
												src="https://image.r114.co.kr/support/2019/03/result_2019_2_3_12_46_0_896_1.jpg"
												alt=""></span></a>
										<div>
											<a href="javascript:goBoardDetailPage('5675')"> <span
												class="fc_gray9"><span class="ico_comm_s location1">지역</span>전라북도
													군산시</span> <strong class="tit fc_gray3">군산 살리기 앞장선 SK
													E&amp;S.."벤처육성해 `한국의 말뫼` 만들것"</strong>
											</a>
											<div>
												<span class="info_wrap1"> <span class="fc_gray6">군산럭키공인</span>
													<span>2019.03.20</span> <!-- <span><span class="ico_comm_s views">조회수</span> 61</span> -->
													<span><span>조회</span> 61</span> <span><span
														class="ico_comm_s like">추천</span>0</span>
												</span>
											</div>
										</div> <span class="rea_info"> <span class="address"><i
												class="ico_comm_s home">주소</i>전라북도 군산시</span> <span class="tel"><i
												class="ico_comm_s tel">tel</i>063)443-6300</span> <a
											href="javascript:fnGoJunHome('F20130430204146')"><i
												class="ico_comm_s homepage">H</i>홈페이지</a>
									</span></li>
								</ul>
							</div>
						</li>
					</ul>

					<!--// 180221 수정 -->

				</div>
				<div class="r">
					<h4 class="h4_type4 line">
						부동산상담<a href="javascript:" class="more_type1 rb"
							id="cmdListCounsel">더보기 <span class="ico_comm_s more1">
						</span></a>
					</h4>
					<ul class="list_qa" id="counselList">
						<li><a
							href="javascript:goCounselDetailPage('expert', '5433')"></a> <strong
							class="deco_q"><span>청약시 세대주 변경 관련 추가 문의 드립니다</span><em>kubs306***<span>2019.01.27</span></em></strong>
							<p class="deco_a">
								<span>추가질문에 대한 답변입니다.</span><em>전문가상담 – 주거용매물 (권순형)</em>
							</p></li>

						<li><a
							href="javascript:goCounselDetailPage('expert', '5430')"></a> <strong
							class="deco_q"><span>청약 시 세대주 변경 문의</span><em>kubs306***<span>2019.01.26</span></em></strong>
							<p class="deco_a">
								<span>부동산 상담에 대한 답변입니다.</span><em>전문가상담 – 주거용매물 (권순형)</em>
							</p></li>

						<li><a
							href="javascript:goCounselDetailPage('expert', '5405')"></a> <strong
							class="deco_q"><span>1가구2주택 임대사업자등록 vs 매도시 양도세</span><em>sjfkd22***<span>2018.12.15</span></em></strong>
							<p class="deco_a">
								<span>부동산 상담에 대한 답변입니다.</span><em>전문가상담 – 주거용매물 (권순형)</em>
							</p></li>
					</ul>
				</div>
			</div>

		</div>
	</div>

</body>
</html>