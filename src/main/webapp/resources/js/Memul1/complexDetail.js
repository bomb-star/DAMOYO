
	/* 지하철 리스트 */
	fnSubwayList = function (data, pageID)
	{
		$("#"+pageID+"").html(data);

		if (pageID == "divBus")
		{
			$("#"+pageID+" > ul > li").each(function (e)
			{
				var strBustype = $(this).find(".bustype").html() ; 
				if ( fnIsEmpty(strBustype) )
				{
					 $(this).find(".bustype").html("마을버스");
					 $(this).find(".bustype").addClass("m");
				}
				else
				{
					if (strBustype.substring(0,2) == "간선")
					{
						$(this).find(".bustype").addClass("n");
					}
					else if (strBustype.substring(0,2) == "광역")
					{
						$(this).find(".bustype").addClass("k");
					}
					else
					{
						$(this).find(".bustype").addClass("m");
					}
				}
			});
		}
	}

	function ajaxCall_ListPart2(formData, actionUrl, pageID, callback)
	{

		$("#"+ pageID +"").html("페이지 자료조회 중 입니다.");
		$.ajax
		({
			url : actionUrl, 
			type: "POST",
			data : formData,
			success: function(data, textStatus, jqXHR){
				var res = data; //.split("<!--@#$ INFO AREA $#@-->");

				callback(res, pageID);

			},
			error: function (jqXHR, textStatus, errorThrown){
				return "";
			}
		});
	}


	/* 지도 정보 */
	fnMapInfo = function (data, pageID)
	{

		var mapX = $("#mapCodeX").val() ;
		var mapY = $("#mapCodeY").val() ;
		
		$("#"+pageID+"").html("");
		
		if (data.length > 0)
		{
/*
			var mapX = data[0].지도좌표X;
			var mapY = data[0].지도좌표Y;

			if (mapY != "" && parseInt(mapY) > 120)
			{
				mapX = data[0].지도좌표Y;
				mapY = data[0].지도좌표X;
			}
*/
			if ( (!fnIsEmpty(mapX) && parseInt(mapX) > 0) && (!fnIsEmpty(mapY)  && parseInt(mapY) > 0) )
			{
				$("#"+pageID+"").css("display","block");
				$("#"+pageID+"").prev().css("display","block");

				_GIS_show_map('divMap', mapX,  mapY);
			}
		}
	}
