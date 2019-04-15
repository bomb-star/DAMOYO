/* 교육 정보 상세  => 2017.10.26 구글차트 적용으로 변경 ( 각 view 파일에서 처리 ) */
function openEducationInfoDetail(container, eduType, eduCode) {

	var formData = {eduCode: eduCode, eduType: eduType, container: container};

	$.ajax({
		url : "/?_c=memul&_m=educationinfodetail&_a=educationinfodetail",
		type: "POST",
		data : formData,
		success: function(data, textStatus, jqXHR){

			if (data) { // 자료가 있을때.
				$(container).html(data);
				openDetailLayer(container);
			}
			else { // 자료가 없을때.
				alert("상세정보가 없습니다.");
			}
		},
		error: function (jqXHR, textStatus, errorThrown){
	 	 	alert("code:"+jqXHR.status+"\n"+"message:"+jqXHR.responseText+"\n"+"error:"+errorThrown);
		}
	});
}

function openDetailLayer(id) {

    $(id).css("display","inline-block");
    openLp();

}

function closeDetailLayer(id) {

    $(id).removeAttr("style");
	closeLp();
}
