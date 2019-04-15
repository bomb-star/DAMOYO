/*
 *  매물 비교하기
 */
	$(document).ready(function(){
		$('#cmdMemulCompare').on('click', function(){ compareWithAct() });
	});

	function compareWithBtn(){
		
		if ($(".Best").hasClass("chkmode")){
			compareWithDelAll();
		}
		else {
			$(".special").addClass("chkmode");
			$(".Best").addClass("chkmode");
			$(".memulCompare").css("display", "");
			$("#cmdCompareOpen").text("닫기");	
		}
		
		var i, noDataStr, cLi;
		noDataStr = "";
		noDataStr += "<div class=\"no_data\">비교하실 매물을 선택해주세요</div>";

		cLi = 3 - $(".memulCompare ul li").length;

		if ($(".memulCompare ul li").length < 3){
			for(i = 0; i < cLi; i++){
				$(".memulCompare ul").append( "<li>"+ noDataStr +"</li>" );
			}
		}
	}

	function compareWithAdd(obj){

		var i, objData, objID, dataStr, compareWithCnt;
		objData = $(obj).val().split("|");
		objID = $(obj).attr("id").split("_");
		console.log(obj);
		if($(obj).is(':checked')){
			compareWithCnt = 0;

			$(".memulCompare ul li").each(function() {
				if($(this).children("div").hasClass("cont")){
					compareWithCnt++;
				}
			});

			if (compareWithCnt >= 3) {
				
				$(obj).prop('checked', false);
				$(obj).attr('checked', false);
				
				alert("3개까지 비교 가능 합니다.");
				event.preventDefault();
				return;
			}

			dataStr = "";
			dataStr += "<div class=\"cont\" data-info=\""+ objData[0] +"\" data-category=\"" + objID[0]  + "\">"
			dataStr += "	<em class=\"sel_num\">선택0"+ (compareWithCnt + 1) +"</em>"
			dataStr += "	<strong class=\"tit_a\">"+ objData[1] +"</strong>"
			dataStr += "	<span class=\"tag_comm2 " + (objData[2] == '매매' ? 'm' : objData[2] == '전세' ? 'j' : 'w') + "\">"+ objData[2] +"</span>"+ objData[3] +"만원"
			dataStr += "	<a class=\"btn_del\" href=\"javascript:;\" onclick=\"compareWithDel(this);\">삭제버튼</a>"
			dataStr += "</div>"

			$(".memulCompare ul li").eq(compareWithCnt).html(dataStr);
		}
		else{
			i = 0;
			$(".memulCompare ul li").each(function() {
				if($(this).children("div").hasClass("cont")){
					if($(this).children("div .cont").data("info") == objData[0]){
						return false;
					}
					i++;
				}
			});

			$(".memulCompare ul li").eq(i).remove();
			compareWithDelAfter();
		}
	}

	function compareWithDel(obj){
		var data = $(obj).parent().data("info");

		if($("#best_c1_" + data).length  > 0 && $("#best_c1_" + data).is(':checked')){
			$("#best_c1_" + data).trigger('click');
		}
		else{
			$(obj).parent().parent().remove();
			compareWithDelAfter();
		}
	}

	function compareWithDelAll(){
		$("#cmdCompareOpen").text("비교하기");
		
		$(".memulCompare ul li").each(function() {
			$(this).remove();
		});

		compareWithDelAfter();
		
		if($(".special").hasClass("chkmode")){
			$(".special").removeClass("chkmode");
			$(".memulCompare").css("display", "none");
		}

		if($(".Best").hasClass("chkmode")){
			$(".Best").removeClass("chkmode");
			$(".memulCompare").css("display", "none");
		}	
		
		$(".Best").find("li").each(function(index) {
			$(this).find("input:checkbox").prop("checked", false);
			$(this).find("input:checkbox").attr("checked", false);
		});
		
		$(".special").find("li").each(function(index) {
			$(this).find("input:checkbox").prop("checked", false);
			$(this).find("input:checkbox").attr("checked", false);
		});
	}

	function compareWithDelAfter(){
		var i, noDataStr;
		noDataStr = "";
		noDataStr += "<div class=\"no_data\">비교하실 매물을 선택해주세요</div>";

		$(".memulCompare ul").append( "<li>"+ noDataStr +"</li>" );

		i = 1;
		$(".memulCompare ul li").each(function() {
			if($(this).children("div").hasClass("cont")){
				$(this).children("div").children(".sel_num").html("선택0" + i);
				i++;
			}
		});
	}

	function compareWithAct(){
		var mmCodeArray = "";

		$(".memulCompare ul li").each(function() {
			if($(this).children("div").hasClass("cont")){
				//console.log($(this).children("div .cont").data("info"));
				if(mmCodeArray == ""){
					mmCodeArray = $(this).children("div .cont").data("info");
				}
				else{
					mmCodeArray += "^" + $(this).children("div .cont").data("info");
				}
			}
		});

		var formData = {"mmCodeArray": mmCodeArray};

		$.ajax({
			url : "?_c=memul&_p=ajax&_m=default.memulcompare",
			type: "POST",
			data : formData,
			success: function(data, textStatus, jqXHR){
				$(".memulCompareInfo").html(data);
				openLp('#lp_layout_memulCompare');
			},
			error: function (jqXHR, textStatus, errorThrown){

			}
		});
	}

	// 매물비교 레이업팝업 인쇄
	function printMemulCompare(){
		$('.lp_layout_memulComparePrint').printThis({
			importCSS: true,
			loadCSS: ""
		});
	}
	
	 /*
	  * 매물비교 체크 확인.
	  *  매물리스트의 페이지 변경 후 비교를 위해 체크해 두었던 매물에 체크 상태가 남아 있어야 한다. 
	  */
	function checkCompareMemul() {
	
		if ($(".Best").hasClass("chkmode")) {
			
			$(".memulCompare").find("ul").find("li").each( function(index) {
				if ($(this).find("div.cont").data("info")) {
					var id = $(this).find("div.cont").data("info").toString();
					var category = $(this).find("div.cont").data("category").toString();
					
					if (category == "best") {
						$(".Best").find("li").find("input[type=checkbox][id=best_c1_" + id + "]").prop("checked", true);
					}
					if (category == "special") {
						$(".special").find("li").find("input[type=checkbox][id=special_c1_" + id + "]").prop("checked", true);
					}
				}				
			});		
		}
	
	}	 

	/*
	*매물메인배너 여부:20180608
	*/

		function getMemulMainBanner() {
		
		var newVilla = $('input:checkbox[id="typeNewVilla"]').is(":checked") ? "1" : "0";

		var formData = {addr1: _SEL_ADDR1, addr2: _SEL_ADDR2, addr3: _SEL_ADDR3, complexCd: _SEL_COMPLEXCD, mmCode1: _SEL_MAP_TYPE1_CODE,	mmCode2: _SEL_MAP_TYPE2_CODE, newVilla: newVilla };
		
		$.ajax
		({
			url : "/?_c=memul&_m=MemulDefault&_a=MemulMainAgentAd",
			type: "POST",
			data: formData,
			success: function(data, textStatus, jqXHR){	
				//alert(data);
				$("#MemulMainBanner").html(data);		
				if ($("#MktMemulAd").css("display") == "block")
				{					
					ch_memuladpaging(1,'off');
					document.getElementById('ifrmMktAd').src="/?_c=memul&_m=MemulDefault&_a=MemulMktAd"
				} else {					
					document.getElementById('ifrmMktAd').src=""
					ch_memuladpaging(1,'off');
					ch_memuladpaging(1,'on');
				}
				
			},
			error: function (jqXHR, textStatus, errorThrown){
				return "";
			}
		});
		
	}


