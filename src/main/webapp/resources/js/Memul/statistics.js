	// 통계 매매/전세 시세 지도
	function fn_SetMapStatistics(mapId, priceInfoContainer, legendId, statInfos,
			dataLevel, statCd, statDate, typeNm, styleNm, setFullView, vizText) {

		var geoData = null;

		setMapConfigStatistics("draggable", false);
		setMapConfigStatistics("disableDoubleClick", true);

		var map = makeMapStatistics(mapId); // 맵을 그림

		if (statInfos.length > 0) {

			if (dataLevel == "2") {
				var successCallback = function() {
					geoData = dong_geo_data;
					$(priceInfoContainer).show();
					drawDataWithLegendStatistics(map, legendId, statInfos, geoData,
								statCd, statDate, typeNm, styleNm, setFullView, vizText);
				}
				$.getScript('/gis/data/sKorea_dong_' + _MAP_CortarNo.substring(0, 2) + '.js').done(successCallback); // 동적으로 js 파일 호출 (읍면동이 시도별로 나뉘어 있음)
			} else if (dataLevel == "1") {
				geoData = gu_geo_data;
				$(priceInfoContainer).show();
				drawDataWithLegendStatistics(map, legendId, statInfos, geoData,
						statCd, statDate, typeNm, styleNm, setFullView, vizText);
			} else if (dataLevel == "0") {
				// geoData = do_geo_data;
				// $(priceInfoContainer).show();
				// drawDataWithLegendStatistics(map, legendId, statInfos, geoData,
				// statCd, statDate, typeNm, styleNm, setFullView, vizText);
			}

		}
	}
	
	// 통계 매매/전세 전환
	$(document).on(
		'click',
		'ul#dealing_way li',
		function() {

			var idx = $(this).index();
			
			if (idx == 0) { // 매매
				fn_loadStatisticsStat("sale");
			}
			else {
				fn_loadStatisticsStat("deposit");				
			}
			
			/*
			if (idx == 0) { // 매매
				$('.setMarketPrice #map_wrap_statistics_sale').css(
						'display', '');
				$('.setMarketPrice #map_wrap_statistics_deposit').css(
						'display', 'none');
			} else { // 전세
				$('.setMarketPrice #map_wrap_statistics_sale').css(
						'display', 'none');
				$('.setMarketPrice #map_wrap_statistics_deposit').css(
						'display', '');
			}
			*/
		});

