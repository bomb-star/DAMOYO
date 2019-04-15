	
	var beforeRightDealing03 = "";
	var beforeRightDealing05 = "";
	var beforeBottomDealing = "";

	/* 공통 우측 영역 : 매물 / 시도 */
	function loadRightBanner01(adType) {
		
		var newVilla = $('input:checkbox[id="typeNewVilla"]').is(":checked") ? "1" : "0";	

		var formData = {  adType: adType, addr1: _SEL_ADDR1, addr2: _SEL_ADDR2, addr3: _SEL_ADDR3, cotartNo: "", complexCd: _SEL_COMPLEXCD,  complexTypeName: _SEL_COMPLEXTYPE,	mmCode1: _SEL_MAP_TYPE1_CODE,	mmCode2: _SEL_MAP_TYPE2_CODE  };

		$.ajax
		({
			url : "/?_c=memul&_m=memulRight&_a=Right01",
			type: "POST",
			data: formData,
			success: function(data, textStatus, jqXHR){
				var list = data.split("<!--@#$ INFO AREA $#@-->");
				$("#divMemulRight01").html(list[0]);
				$("#divMemulRight04").html(list[1]);				
				//$("#divMemulRight01").html(data);
				
			},
			error: function (jqXHR, textStatus, errorThrown){
				return "";
			}
		});

	}

	/* 공통 우측 영역 : 매물 / 시군구 */
	function loadRightBanner02(adType) {
	
		var newVilla = $('input:checkbox[id="typeNewVilla"]').is(":checked") ? "1" : "0";

		var formData = {  adType: adType, addr1: _SEL_ADDR1, addr2: _SEL_ADDR2, addr3: _SEL_ADDR3, cotartNo: "", complexCd: _SEL_COMPLEXCD, complexTypeName: _SEL_COMPLEXTYPE, mmCode1: _SEL_MAP_TYPE1_CODE,	mmCode2: _SEL_MAP_TYPE2_CODE, newVilla: newVilla };

		$.ajax
		({
			url : "/?_c=memul&_m=memulRight&_a=Right02",
			type: "POST",
			data: formData,
			success: function(data, textStatus, jqXHR){
				var list = data.split("<!--@#$ INFO AREA $#@-->");
				$("#divMemulRight01").html(list[0]);
				$("#divMemulRight04").html(list[1]);	
				//$("#divMemulRight01").html(data);
			},
			error: function (jqXHR, textStatus, errorThrown){
				return "";
			}
		});
	
	}

	/* 공통 우측 영역 : 시세 / 단지 */
	function loadRightBanner03(adType) {

		var newVilla = $('input:checkbox[id="typeNewVilla"]').is(":checked") ? "1" : "0";
		
		var complexType = getCookie('fCode');

		var formData = {  adType: adType, addr1: _SEL_ADDR1, addr2: _SEL_ADDR2, addr3: _SEL_ADDR3, cotartNo: "", complexType: complexType,  complexCd: _SEL_COMPLEXCD,  complexTypeName: _SEL_COMPLEXTYPE,	mmCode1: _SEL_MAP_TYPE1_CODE,	mmCode2: _SEL_MAP_TYPE2_CODE  };

		$.ajax
		({
			url : "/?_c=memul&_m=memulRight&_a=Right03",
			type: "POST",
			data: formData,
			success: function(data, textStatus, jqXHR){
				var list = data.split("<!--@#$ INFO AREA $#@-->");
				$("#divMemulRight01").html(list[0]);
				$("#divMemulRight04").html(list[1]);	
				//$("#divMemulRight01").html(data);
			},
			error: function (jqXHR, textStatus, errorThrown){
				return "";
			}
		});

	}
	
	/* 우측 광고 영역  */
	function setBannerRight03(dealing) {
		
		var html;
		var newDealing;
		
		newDealing = dealing;
		
		if($.browser.msie && parseInt($.browser.version) <= parseInt(8)){
			html = "";
			$("#divMemulRight03").html (
					html				
			);
		}
		else {		
			html = "";
//20180227 무조건 호출되도록 변경
//			if (beforeRightDealing03 == "") {
//				beforeRightDealing03 = newDealing;
//			}
//			else {
//				if (beforeRightDealing03 == newDealing) {
//					//newDealing = "";
//				}
//				else {
//					beforeRightDealing03 = newDealing;
//				}
//			}

//			alert(newDealing);
			if (newDealing == "0") {
				html = "<div class='bx_gray' id='ad_side_right2'>" + 
						"<iframe src='/?_c=memul&_m=memulRight&_a=MemulSubAdvertise2&adType=total' scrolling='no' marginheight='0' marginwidth='0' frameborder='0' width='100%' height='218px'  style='margin:0;border:0;padding-top:5px'></iframe>" +
						"</div>";
			}
			else if (newDealing == "1") {
				html = "<div class='bx_gray' id='ad_side_right2'>" + 
						"<iframe src='/?_c=memul&_m=memulRight&_a=MemulSubAdvertise2&adType=sale' scrolling='no' marginheight='0' marginwidth='0' frameborder='0' width='100%' height='218px'  style='margin:0;border:0;padding-top:5px'></iframe>" +
						"</div>";
			}
			else if (newDealing == "2") {
				html = "<div class='bx_gray' id='ad_side_right2'>" + 
						"<iframe src='/?_c=memul&_m=memulRight&_a=MemulSubAdvertise2&adType=lease' scrolling='no' marginheight='0' marginwidth='0' frameborder='0' width='100%' height='218px'  style='margin:0;border:0;padding-top:5px'></iframe>" +
						"</div>";
			}
			else if (newDealing == "3") {
				html = "<div class='bx_gray' id='ad_side_right2'>" + 
						"<iframe src='/?_c=memul&_m=memulRight&_a=MemulSubAdvertise2&adType=rent' scrolling='no' marginheight='0' marginwidth='0' frameborder='0' width='100%' height='218px'  style='margin:0;border:0;padding-top:5px'></iframe>" +
						"</div>";
			}
			
			if (newDealing != "") {
				$("#divMemulRight02").html (
						"<div class='bn_iframe' id='ad_side_rigth1'>" + 
						"<iframe src='/?_c=memul&_m=memulRight&_a=MemulSubAdvertise' scrolling='no' marginheight='0' marginwidth='0' frameborder='0' width='100%' height='280px' style='display:block'></iframe>" + 
						"</div>"
				);
			} 
			
			if (html != "") {
				$("#divMemulRight03").html (
						html				
				);
			}
		}
	}
	
	/* 우측 광고 영역  */
	function setBannerRight05(dealing) {
		
		var html;
		var newDealing;
		
		newDealing = dealing;
		
		if($.browser.msie && parseInt($.browser.version) <= parseInt(8)){
			html = "";
			$("#divMemulRight05").html (
					html				
			);
		}
		else {		
			html = "";
			if (beforeRightDealing05 == "") {
				beforeRightDealing05 = newDealing;
			}
			else {
				if (beforeRightDealing05 == newDealing) {
					newDealing = "";
				}
				else {
					beforeRightDealing05 = newDealing;
				}
			}

			if (newDealing == "0") {
				html = "<div class='bn_vertical_thin' id='ad_side_right3'>" + 
						"<iframe src='/?_c=memul&_m=memulRight&_a=MemulSubAdvertise3&adType=total' scrolling='no' marginheight='0' marginwidth='0' frameborder='0' width='100%' height='600px'></iframe>" +
						"</div>";
			}
			else if (newDealing == "1") {
				html = "<div class='bn_vertical_thin' id='ad_side_right3'>" + 
						"<iframe src='/?_c=memul&_m=memulRight&_a=MemulSubAdvertise3&adType=sale' scrolling='no' marginheight='0' marginwidth='0' frameborder='0' width='100%' height='600px'></iframe>" +
						"</div>";
			}
			else if (newDealing == "2") {
				html =  "<div class='bn_vertical_thin' id='ad_side_right3'>" + 
						"<iframe src='/?_c=memul&_m=memulRight&_a=MemulSubAdvertise3&adType=lease' scrolling='no' marginheight='0' marginwidth='0' frameborder='0' width='100%' height='600px'></iframe>" +
						"</div>";
			}
			else if (newDealing == "3") {
				html =  "<div class='bn_vertical_thin' id='ad_side_right3'>" + 
						"<iframe src='/?_c=memul&_m=memulRight&_a=MemulSubAdvertise3&adType=rent' scrolling='no' marginheight='0' marginwidth='0' frameborder='0' width='100%' height='600px'></iframe>" +
						"</div>";
			}
			
			if (html != "") {
				$("#divMemulRight05").html (
						html				
				);
			}
		}
	}
	
	/* 하단 광고 영역 : 시세 / 단지 */
	function setBannerBottom(dealing) {
		
		var html;
		var newDealing;
		
		newDealing = dealing;
		
		if($.browser.msie && parseInt($.browser.version) <= parseInt(8)){
			html = "";
			$("#divMemulBottom").html (
					html				
			);
		}
		else {		
			html = "";
			if (beforeBottomDealing == "") {
				beforeBottomDealing = newDealing;
			}
			else {
				if (beforeBottomDealing == newDealing) {
					newDealing = "";
				}
				else {
					beforeBottomDealing = newDealing;
				}
			}

			if (newDealing == "0") {
				html = "<div class='bn_iframe'>" + 
						"<iframe src='/?_c=memul&_m=memulRight&_a=MemulBottomAdvertise&adType=total' scrolling='no' marginheight='0' marginwidth='0' frameborder='0' width='100%' height='280px' style='display:block'></iframe>" + 
						"</div>";
			}
			else if (newDealing == "1") {
				html = "<div class='bn_iframe'>" + 
						"<iframe src='/?_c=memul&_m=memulRight&_a=MemulBottomAdvertise&adType=sale' scrolling='no' marginheight='0' marginwidth='0' frameborder='0' width='100%' height='280px' style='display:block'></iframe>" + 
						"</div>";
			}
			else if (newDealing == "2") {
				html = "<div class='bn_iframe'>" + 
					"<iframe src='/?_c=memul&_m=memulRight&_a=MemulBottomAdvertise&adType=lease' scrolling='no' marginheight='0' marginwidth='0' frameborder='0' width='100%' height='280px' style='display:block'></iframe>" + 
					"</div>";
			}
			else if (newDealing == "3") {
				html = "<div class='bn_iframe'>" + 
					"<iframe src='/?_c=memul&_m=memulRight&_a=MemulBottomAdvertise&adType=rent' scrolling='no' marginheight='0' marginwidth='0' frameborder='0' width='100%' height='280px' style='display:block'></iframe>" + 
					"</div>";
			}
			
			if (html != "") {
				$("#divMemulBottom").html (
						html				
				);
			}
		}
	}

	/* 공인중개사현장이야기 목록 페이지로 이동 */
	function goCommunityBoard(metro, county, town) {

		window.location.href = "/?_c=service&_s=community&tabGubun=2&Metro="+metro+"&County="+county+"&Town="+town;

	}

	/* 공인중개사현장이야기 상세페이지로 이동  */
	function goCommunityBoardDetailPage(g){

		var formData = {"page": "1", "Metro": "", "County": "", "Town": "", "complexCd": "", "sortTag": "1", "sortTag2": "up", "tabGubun": "2", "searchGubun": "1", "searchText": "", "viewId": g};

		createHisFrm(formData, "/?_c=service&_s=community&_m=communityview&_a=boardview");

	}

	/* 부동산114 매물제공기준 팝업 */
	function openSupplyEstateGuide() {

		openLp('#lp_layout_supply_estate');
	}

	/* 부동산114 매물제공기준 인쇄 */
	function printSupplyEstateGuide() {

		$('.print_supply_estate_pop').printThis({
			importCSS: true,
			loadCSS: ""
		});

	}

	/* 부동산114 시세제공기준 팝업 */
	function openSupplyMarketPriceGuide() {

		openLp('#lp_layout_supply_price');
	}

	/* 부동산114 시세제공기준 인쇄 */
	function printSupplyMarketPriceGuide() {

		$('.print_supply_price_pop').printThis({
			importCSS: true,
			loadCSS: ""
		});

	}

	function openWindow(url) {

		window.open(url, target="_blank");

	}


