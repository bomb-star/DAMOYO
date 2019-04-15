/* 중개사무소 문의 등록 화면 출력
 *  container : 레이어 팝업 컨테이너
 *  agent : 공인중개업소명
 *  type  : 1:문의, 2:전화번호
 * */
function openQuestionToAgent(container, title, agentCode, agentOffice, mulcode, rtnParam, type) {
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
			var reTitle = title.replace(/\^/g,'|');
			var formData = {container: container, title:reTitle, agentcode: agentCode, agentoffice: agentOffice, mulcode: mulcode, rtnParam: rtnParam, type: type};

			$.ajax({
				url : "/?_c=mypage&_m=questiontoagent&_a=show",
				type: "POST",
				data : formData,
				success: function(data, textStatus, jqXHR){
					var res = data.split("<!--@#$ INFO AREA $#@-->");
					if (data.length > 0) { // 자료가 있을때.
						//$('#lp_layout2').html(res[0]);
						$(container).html(res[0]);
						//openLp("type2");
						openLp(container);
					}
					else { // 자료가 없을때.
						// $('#lp_layout2').html("");
					}
				},
				error: function (jqXHR, textStatus, errorThrown){
					alert("code:"+jqXHR.status+"\n"+"message:"+jqXHR.responseText+"\n"+"error:"+errorThrown);
				}
			});
		}
	});
}


/* 중개사무소 문의 등록
 *  container : 레이어 팝업 컨테이너
 *  title     : 제목
 *  contents  : 내용
 *  mulcode   : 매물코드
 *  agentcode : 공인중개업소코드
 *  type  : 1:문의, 2:전화번호
 * */
function insertQuestionToAgent(container) {

	var title, contents, mulcode, agentcode, rtnParam

	contents = $("#qnaContents").val();
	title = $("input[name=questionToAgentTitle]").val();
	mulcode = $("input[name=questionToAgentMulcode]").val();
	agentcode = $("input[name=questionToAgentCode]").val();
	rtnParam = $("input[name=questionToAgentRtnParam]").val();

	var confirmTxt = "1:1 문의를 등록하시겠습니까?";
	var errorTxt = "";

	if (isEmpty(contents)) {
		alert("입력하신 내용이 없습니다");
		$("#qnaContents").focus();
		return;
	}

	if(confirm(confirmTxt) != true) {
		return;
	}

	var formData = {title: title, contents: contents, mulcode: mulcode, agentcode: agentcode, rtnParam: rtnParam};

	$.ajax({
		url : "/?_c=mypage&_m=questiontoagent&_a=insert",
		type: "POST",
		data : formData,
		dataType:"json",
		success: function(data, textStatus, jqXHR){
			var list = eval(data);
			if (list.result.trim() == "OK") {
				$.each (list.rows, function(index, entry) {
					if (entry.결과 == 0) {
						result = true;
					}
					else if (entry.결과 == -1) {
						result = false;
						errorTxt = ALERT_REQUEST_LOGIN;
					}
					else if (entry.결과 == 1) {
						result = false;
						errorTxt = "등록 중 오류가 발생했습니다.";
					}
				});
			}
			if (result) {
				alert("등록되었습니다.");
				closeLp(container);
			}
			else {
				alert("등록 중 오류가 발생했습니다.");
			}
		},
		error: function (jqXHR, textStatus, errorThrown){
	 	 	alert("code:"+jqXHR.status+"\n"+"message:"+jqXHR.responseText+"\n"+"error:"+errorThrown);
		}
	});

}

/* 문의 취소 */
function cancelQuestionToAgent(container) {

	var confirmTxt = "1:1 문의를 취소하시겠습니까?";

	if(confirm(confirmTxt) == true) {
		$('.filter_wrap').css('visibility','visible');
		closeLp(container);
		return;
	}
}


/* 중개사무소 1:1 매물 문의 등록 (팝업)
 *  container : 레이어 팝업 컨테이너
 *  agentCode : 공인중개업소코드
 *  agentOffice : 공인중개업소명
 *  mulcode : 물건코드
 *  type  : 1:문의, 2:전화번호
 * */

function openQuestionMemul(container, title, agentCode, agentOffice, mulcode, rtnParam, type) {

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
			var reTitle = title.replace(/\^/g,'|')
			var formData = {container: container, title:reTitle, agentcode: agentCode, agentoffice: agentOffice, mulcode: mulcode, rtnParam: rtnParam, type: type};

			$.ajax({
				url : "/?_c=mypage&_m=questiontoagent&_a=ShowMemulQna",
				type: "POST",
				data : formData,
				success: function(data, textStatus, jqXHR){
					var res = data.split("<!--@#$ INFO AREA $#@-->");
					if (data.length > 0) { // 자료가 있을때.
						//$('#lp_layout2').html(res[0]);
						$(container).html(res[0]);
						//openLp("type2");
						openLp(container);
					}
					else { // 자료가 없을때.
						// $('#lp_layout2').html("");
					}
				},
				error: function (jqXHR, textStatus, errorThrown){
					alert("code:"+jqXHR.status+"\n"+"message:"+jqXHR.responseText+"\n"+"error:"+errorThrown);
				}
			});
		}
	});
}

function insertQuestionMemul(type, container)
{
	
	var title, contents, mulcode, agentcode, rtnParam, reTitle;

	contents = $("#qnaContents").val();
	title = $("input[name=questionToAgentTitle]").val();
	mulcode = $("input[name=questionToAgentMulcode]").val();
	agentcode = $("input[name=questionToAgentCode]").val();
	rtnParam = $("input[name=questionToAgentRtnParam]").val();
	
	reTitle = title.replace(/\^/g,'|');

	if (type == "memo")
	{
		getUserInfoServer(function(result, data){
			if (result == false){
				if (confirm("로그인이 필요합니다.")){
					fn_loginDiv();
					return;
				}
				else{
					return false;
				}
			}
			else{
				if (isEmpty(contents)) {
					alert("입력하신 내용이 없습니다");
					$("#qnaContents").focus();
					return;
				}

				if (parseInt(contents.length) > parseInt(500))
				{
					alert("문의 내용을 500자 이내로 입력해주세요.");
					//fnChecklength(txtContent, 500);
					return;
				}

				var formData = {bbsNo : "0", txtTitle : reTitle, txtContent : contents, mulCode : mulcode, agencyCode : agentcode, rtnParam : rtnParam };
				actionUrl =  "/?_c=memul&_m=HouseQna&_a=HouseQnaIns.ajax";

				if (confirm("1:1 문의를 등록하시겠습니까?"))
				{
					$.ajax
					({
						url : actionUrl,
						type: "POST",
						data : formData,
						success: function(data, textStatus, jqXHR){
							alert("등록되었습니다.");
							closeLp(container);
						},
						error: function (jqXHR, textStatus, errorThrown){
							return "";
						}
					});
				}
			}
		});

	}
}
