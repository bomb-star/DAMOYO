/*
tmp_global_user_agent_arr	= split(GlobalUserAgent,"$$")
if ubound(tmp_global_user_agent_arr) > 0 then
	GlobalUserAgentDefault	= tmp_global_user_agent_arr(0)
	GlobalAppVersion		= tmp_global_user_agent_arr(1)	' 실제 앱버전
	GlobalAppPlatform		= tmp_global_user_agent_arr(2)  ' ios:0. android:1
	GlobalAppDeviceID		= tmp_global_user_agent_arr(3)
	GlobalAppDeviceToken	= tmp_global_user_agent_arr(4)
	GlobalAppUserID			= tmp_global_user_agent_arr(5)	'
	GlobalAppUserHP			= tmp_global_user_agent_arr(6)	'전화번호
*/

function callAppFunc(_platform, _funcName, _funcArgs, _successCallback, _errorCallback) {

    var url = "jb2app://?";

    var _obj = {};
    var _objStr = "";

    _obj.funcName = _funcName;

    if (_funcArgs) {
        _obj.args = _funcArgs;
    }

    if (_successCallback && _successCallback != '') {
        _obj.successCallback = _successCallback;
    }

    if (_errorCallback && _errorCallback != '') {
        _obj.errorCallback = _errorCallback;
    }

    _objStr = JSON.stringify(_obj)

    switch (_platform) {
        case "0":
            //alert(url + _objStr);
            top.location.href = url + _objStr;
            break;

        case "1":
            //alert("jb2app(" + _objStr + ")");
            window.jb.jb2app(_objStr);
            break;
        default:
            //alert("web2app(" + _objStr + ")");
            web2app(_objStr);
            break;
    }
}

function web2app(_obj) {
    var _objJson = JSON.parse(_obj);

    switch (_objJson.funcName) {
        case "callNewWebsite":
            window.open(_objJson.args[0]);
            break;
        case "callLoginStatus":
            if (_objJson.args[0] == 'logon') {
                onLoginStatusListner('{"result":["logon","' + _objJson.args[1] + '","' + _objJson.args[2] + '"]}');
            } else if (_objJson.args[0] == 'logout') {
                onLoginStatusListner('{"result":["logout"]}');
            }

            break;
        default:
            alert('Web에서는 지원하지 않는 기능입니다.');
            break;
    }

}

function onCopyTextListner(_result) {
    var _result_json = JSON.parse(_result);
    var _msg;

    for (i = 0; i < _result_json.result.length; i++) {
        switch (i) {
            case 0:
                _msg = _result_json.result[i];
                break;
        }
    }

    if (_msg) {
        alert("복사하였습니다.");
    }
}

function onGpsListner(_result) {
    var _result_json = JSON.parse(_result);
    var _category, _lng, _lat;

    for (i = 0; i < _result_json.result.length; i++) {
        switch (i) {
            case 0:
                _category = _result_json.result[i];
                break;
            case 1:
                _lng = _result_json.result[i];
                break;
            case 2:
                _lat = _result_json.result[i];
                break;
        }
    }

    if (_category) {
        switch (_category) {
            case "common":
                alert("Category:" + _category + "\nLng:" + _lng + "\nLat" + _lat);
                break;
        }
    }
}



function onGpsErrorListner() {
    alert("현위치를 찾을 수 없습니다.");
}

function onGoMarketErrorListner() {
    alert("최신 앱을 다운로드하는데 문제가 있습니다. 직접 스토어에서 다운로드하여 주세요.");
}

function onGoAppErrorListner() {
    alert("최신 앱을 다운로드하는데 문제가 있습니다. 직접 스토어에서 다운로드하여 주세요.");
}

function onError() {
    alert("해당 기능은 최신버전에서만 사용할 수 있습니다.");
}

function goRefresh() {
    location.reload();
}

function goApp(_platform, _app) {
    callAppFunc(_platform, 'callGoApp', [_app], '', 'onGoAppErrorListner');
}

function goAppDownload(_platform, _app) {
    callAppFunc(_platform, 'callGoMarket', [_app], '', 'onGoMarketErrorListner');
}

function goNewWebsite(_url) {
    callAppFunc(GlobalAppPlatform, 'callNewWebsite', [_url], '', 'onError');
}

function goPhoneTel(_tel) {
    callAppFunc(GlobalAppPlatform, 'callPhoneTel', [_tel], '', 'onError');
}

function goSNS(_sns, _text, _link) {
    callAppFunc(GlobalAppPlatform, 'callSNS', [_sns, _text, _link], '', 'onError');
}

function goPhoneSms(_args) {
    callAppFunc(GlobalAppPlatform, 'callPhoneSMS', _args, '', 'onError');
}

function goSetMode(_mode) {
    switch (_mode) {
        case 'poc':
            alert('\"POC\"모드로 전환합니다.');
            break;
        case 'deve':
            alert('\"DEVE\"모드로 전환합니다.');
            break;
        case 'service':
            alert('\"SERVICE\"모드로 전환합니다.');
            break;
    }
    callAppFunc(GlobalAppPlatform, 'callSetMode', [_mode], '', '');
}


function onLoginStatusListner(_result) {
    var _result_json = JSON.parse(_result);
    var _type, _usrid, _url;

    for (i = 0; i < _result_json.result.length; i++) {
        switch (i) {
            case 0:
                _type = _result_json.result[i];
                break;
            case 1:
                _usrid = _result_json.result[i];
                break;
            case 2:
                _url = _result_json.result[i];
                break;
        }
    }
    if (_type == 'logon') {
        //alert('성공적으로 로그인되었습니다.');
        top.location.href = _url;
    } else {
        //alert('성공적으로 로그아웃되었습니다.');
        top.location.href = "/user/user_logout.asp";
    }
}

function goLogon(_id, _url) {
    callAppFunc(GlobalAppPlatform, 'callLoginStatus', ['logon', _id, _url], 'onLoginStatusListner', 'onError');
}

function goLogout() {
    callAppFunc(GlobalAppPlatform, 'callLoginStatus', ['logout'], 'onLoginStatusListner', 'onError');
}


//<!-- 코어소프트 제공 앱 인터페이스 API  시작 -->

var android = false;
var iphone = false;
var mobile = false;
var GlobalAppPlatform = 9;
//alert(GlobalAppPlatform);
if (GlobalAppPlatform == "9") { // PC 또는 모바일 브라우저로 접속
    mobile = false;
    android = false;
    iphone = false;
} else { // 앱으로 접속
    mobile = true;
    // 유저에이전트를 불러와서 OS를 구분합니다.
    if (GlobalAppPlatform == "1") { // 안드로이드
        android = true;
        iphone = false;
    } else if (GlobalAppPlatform == "0") { // ios
        android = false;
        iphone = true;
    } else {
        android = false;
        iphone = false;
    }
}


// 부동산고 실행 단추
function BudongSanGoAction() {
    if (android)
        window.GoogleApp.GoBudongSanAR("BudongsanGoButton");
    else if (iphone)
        document.location = "Action:GoBudongSan";
}
//내손안의 Real 부동산
function OnRealBudongsan() {
    if (android)
        window.GoogleApp.GoBudongSanAR("BudongsanGoButton");
    else if (iphone)
        document.location = "Action:GoBudongSan";
}
//메뉴의 더보기->부동산GO
function BudongsanGoMenu() {
    if (android)
        window.GoogleApp.GoBudongSanAR("BudongsanGoButton");
    else if (iphone)
        document.location = "Action:GoBudongSan";
}
//페이지 로그인 후 즉시 호출
function AfterLogin_OLD() {
    if (android)
        window.GoogleApp.LoginSuccess();
    else if (iphone)
        document.location = "Action:LoginSuccess";
}

//페이지 로그인 후 즉시 호출
function AfterLogin(userid,userToken)
{
    if (android){
        window.GoogleApp.LoginSuccess(userid,userToken);
        
    }else if (iphone){
		//alert("호출중");
        document.location = "Action:LoginSuccess:" + userid + ":" + userToken;
    }    
}


//하이브리드 앱에 위치정보를 요청. callback:GetPosition(Latitude, Longitude)
var cortarInfoId = "";
var addrId = "";

function RequestPosition(txtAddrId, txtCortarInfoId) {
    if (android) {
        //alert("android 위치정보 요청1...");
        try {
            addrId = txtAddrId;
            cortarInfoId = txtCortarInfoId;
            window.GoogleApp.RequestPosition();
        } catch (e) {
            alert(e);
        }
    } else if (iphone) {
        addrId = txtAddrId;
        cortarInfoId = txtCortarInfoId;
        document.location = "Action:RequestPosition";
    }
}
var app_Latitude = 0;
var app_Longitude = 0;

// 김선호 2017.06.02
// 앱이 내려주는 GPS를 계속 대기하여 멈춰있는 현상 수정. (코아소프트)
function GetPosition(Latitude, Longitude) //하이브리드 앱에서 위치정보를 보내면 받는 함수호출
{
	if (Latitude == 0 && Longitude == 0) { // 좌표 실패
	
		//이부분 주석
		// setTimer(function(e) {
		//   RequestPosition(txtAddrId, txtCortarInfoId);
		// 위치반환 비정상시 html5의  navigator.geolocation 호출추가
		
		mobile = false; // 공통을 잠깐 돌리기 위해
		//fn_comm_get_here(txtAddrId, txtCortarInfoId); // 브라우저 좌표 검색
		fn_comm_get_here(addrId, cortarInfoId); // 코아소프트 수정 브라우저 좌표 검색
		mobile = true;
		  
	} else if (Latitude != 0 && Longitude != 0) { // 정상 호출
		GetPositionAddr(Latitude, Longitude); // 주소 검색
	} else { // 좌표 실패
		mobile = false; // 공통을 잠깐 돌리기 위해
		//fn_comm_get_here(txtAddrId, txtCortarInfoId); // 브라우저 좌표 검색
		fn_comm_get_here(addrId, cortarInfoId); // 코아소프트 수정 브라우저 좌표 검색
		mobile = true;
	}
}


function GetPositionAddr(Latitude, Longitude, txtAddrId, txtCortarInfoId) {
    app_Latitude = Latitude;
    app_Longitude = Longitude;

    if (typeof txtAddrId != "undefined") addrId = txtAddrId;
    if (typeof txtCortarInfoId != "undefined") cortarInfoId = txtCortarInfoId;

	GetPositionAddrVworld(app_Latitude, app_Longitude);
	//GetPositionAddrKakao(app_Latitude, app_Longitude);
}


function GetPositionAddrVworld(Latitude, Longitude) {
	$.ajax({
		type: 'POST',
		data: {
			'key': GlobalVworldKey,
			'point': Longitude + ', ' + Latitude,
		},
		url: "/z/depot/public/vworldGeoCoder.asp",
		dataType: "json",
		success: function(result) {
			if (result.response.status == 'OK') {
				var _result_vworld_obj = result.response.result[0].structure;
				var _result_vworld_addr1 = _result_vworld_obj.level1;
				var _result_vworld_addr2 = _result_vworld_obj.level2.split(' ')[0];
				var _result_vworld_addr3 = _result_vworld_obj.level4L;

				if (_result_vworld_addr1 == '세종특별자치시') {
					_result_vworld_addr1 = '세종특별시';
					_result_vworld_addr2 = '세종시';
				}
				else if (_result_vworld_addr1 == '제주특별자치도') {
					_result_vworld_addr1 = '제주도';
				}

				 GetPositionAddrEnd('Vworld', Longitude, Latitude, _result_vworld_addr1, _result_vworld_addr2, _result_vworld_addr3);

			}
			else {
				SetGeocoderLog('Vworld', Longitude, Latitude, '', '', '', 'F');
			}
		},
		error: function(result) {
			SetGeocoderLog('Vworld', Longitude, Latitude, '', '', '', 'F');
		}
	});
}


function GetPositionAddrKakao(Latitude, Longitude) {
    var geocoder = new daum.maps.services.Geocoder();
    var coord = new daum.maps.LatLng(Latitude, Longitude);

	var callback2 = function(result, status) {
		if (status === daum.maps.services.Status.OK) {
			if (result[0].region_type == 'B') {
				var _region_1depth_name = result[0].region_1depth_name;
				var _region_2depth_name = result[0].region_2depth_name;
				var _region_3depth_name = result[0].region_3depth_name;
			}
			else if (result[1].region_type == 'B') {
				var _region_1depth_name = result[1].region_1depth_name;
				var _region_2depth_name = result[1].region_2depth_name;
				var _region_3depth_name = result[1].region_3depth_name;
			}

			var strAddr = setDaumRegionToR114(_region_1depth_name + ' ' + _region_2depth_name + ' ' + _region_3depth_name).split(" ");

			GetPositionAddrEnd('Kakao', Longitude, Latitude, strAddr[0], strAddr[1], strAddr[2]);
		}
		else {
			SetGeocoderLog('Kakao', Longitude, Latitude, '', '', '', 'F');
		}

    };
	geocoder.coord2RegionCode(coord.getLng(), coord.getLat(), callback2);
}


function GetPositionAddrEnd(_mapPlatform, _longitude, _latitude, _addr1, _addr2, _addr3) {
	$.ajax({
		type: "POST",
		data: { "addr1": _addr1, "addr2": _addr2, "addr3": _addr3 },
		url: "/?_c=comm&_m=getCortarNoInfo&_p=AJAX",
		dataType: "json",
		success: function(reparam) {
			if (Object.keys(reparam).length > 0) {
				if (cortarInfoId != "") {
					$("#" + cortarInfoId).val(reparam.법정동코드+"|"+reparam.지도레벨).trigger('change');
				}
				if (addrId != "") {
					var e = $.Event("keyup");
					e.keyCode = 13;
					$("#" + addrId).val(reparam.도시 + " " + reparam.구시군 + " " + reparam.읍면동).trigger('change').trigger(e);
				}
			}
			if (_addr1 == '' || _addr1 == 'undefined' || _addr2 == '' || _addr2 == 'undefined' || _addr3 == '' || _addr3 == 'undefined') {
				SetGeocoderLog(_mapPlatform, _latitude, _longitude, _addr1, _addr2, _addr3, 'M');
			}
			else {
				SetGeocoderLog(_mapPlatform, _latitude, _longitude, reparam.도시, reparam.구시군, reparam.읍면동, 'S');
			}
		},
		error: function(reparam) {
			SetGeocoderLog(_mapPlatform, _latitude, _longitude, _addr1, _addr2, _addr3, 'F');
		}
	});
}


var isFirstTime = true;

function GetPositionAddrLots(Latitude, Longitude, txtAddrId, mapLevel) {
    app_Latitude = Latitude;
    app_Longitude = Longitude;

	if (typeof txtAddrId != "undefined") addrId = txtAddrId;
    if (typeof txtCortarInfoId != "undefined") cortarInfoId = txtCortarInfoId;

	GetPositionAddrLotsVworld(app_Latitude, app_Longitude, mapLevel);
	//GetPositionAddrLotsKakao(app_Latitude, app_Longitude, mapLevel);
}

function GetPositionAddrLotsVworld(Latitude, Longitude, mapLevel) {
	$.ajax({
		type: 'POST',
		data: {
			'key': GlobalVworldKey,
			'point': Longitude + ', ' + Latitude,
		},
		url: "/z/depot/public/vworldGeoCoder.asp",
		dataType: "json",
		success: function(result) {
			if (result.response.status == 'OK') {
				var _result_vworld_obj = result.response.result[0].structure;
				var _result_vworld_addr1 = _result_vworld_obj.level1;
				var _result_vworld_addr2 = _result_vworld_obj.level2.split(' ')[0];
				var _result_vworld_addr3 = _result_vworld_obj.level4L;

				if (_result_vworld_addr1 == '세종특별자치시') {
					_result_vworld_addr1 = '세종특별시';
					_result_vworld_addr2 = '세종시';
				}
				else if (_result_vworld_addr1 == '제주특별자치도') {
					_result_vworld_addr1 = '제주도';
				}

				 GetPositionAddrLotsEnd('Vworld', Longitude, Latitude, _result_vworld_addr1, _result_vworld_addr2, _result_vworld_addr3, mapLevel);

			}
			else {
				SetGeocoderLog('Vworld', Longitude, Latitude, '', '', '', 'F');
			}
		},
		error: function(result) {
			SetGeocoderLog('Vworld', Longitude, Latitude, '', '', '', 'F');
		}
	});
}


function GetPositionAddrLotsKakao(Latitude, Longitude, mapLevel) {
    var geocoder = new daum.maps.services.Geocoder();
    var coord = new daum.maps.LatLng(Latitude, Longitude);

	var callback2 = function(result, status) {
		if (status === daum.maps.services.Status.OK) {
			if (result[0].region_type == 'B') {
				var _region_1depth_name = result[0].region_1depth_name;
				var _region_2depth_name = result[0].region_2depth_name;
				var _region_3depth_name = result[0].region_3depth_name;
			}
			else if (result[1].region_type == 'B') {
				var _region_1depth_name = result[1].region_1depth_name;
				var _region_2depth_name = result[1].region_2depth_name;
				var _region_3depth_name = result[1].region_3depth_name;
			}

			var strAddr = setDaumRegionToR114(_region_1depth_name + ' ' + _region_2depth_name + ' ' + _region_3depth_name).split(" ");

			GetPositionAddrLotsEnd('Kakao', Longitude, Latitude, strAddr[0], strAddr[1], strAddr[2], mapLevel);
		}
		else {
			SetGeocoderLog('Kakao', Longitude, Latitude, '', '', '', 'F');
		}

    };
	geocoder.coord2RegionCode(coord.getLng(), coord.getLat(), callback2);
}


function GetPositionAddrLotsEnd(_mapPlatform, _longitude, _latitude, _addr1, _addr2, _addr3, mapLevel) {
	$.ajax({
		type: "POST",
		data: { "addr1": _addr1, "addr2": _addr2, "addr3": _addr3 },
		url: "/?_c=comm&_m=getCortarNoInfo&_p=AJAX",
		dataType: "json",
		success: function(reparam) {
			if (Object.keys(reparam).length > 0) {
				if (cortarInfoId != "") {
					$("#" + cortarInfoId).val(reparam.법정동코드+"|"+reparam.지도레벨).trigger('change');
				}
				if (addrId != "") {
					if(mapLevel == 3){
						_SEL_METRO = reparam.도시;
						_SEL_COUNTY = reparam.구시군;
						_SEL_TOWN = reparam.읍면동;

						$("#" + addrId).val(reparam.도시 + " " + reparam.구시군 + " " + reparam.읍면동);
					}
					else if(mapLevel == 2){
						_SEL_METRO = reparam.도시;
						_SEL_COUNTY = reparam.구시군;
						_SEL_TOWN = "";

						$("#" + addrId).val(reparam.도시 + " " + reparam.구시군);
					}
					else{
						_SEL_METRO = reparam.도시;
						_SEL_COUNTY = "";
						_SEL_TOWN = "";

						$("#" + addrId).val(reparam.도시);
					}
				}
			}

			if(isFirstTime) {
				isFirstTime = false;
			}
			else {
				goSearch();
			}

			if (_addr1 == '' || _addr1 == 'undefined' || _addr2 == '' || _addr2 == 'undefined' || _addr3 == '' || _addr3 == 'undefined') {
				SetGeocoderLog(_mapPlatform, _latitude, _longitude, _addr1, _addr2, _addr3, 'M');
			}
			else {
				SetGeocoderLog(_mapPlatform, _latitude, _longitude, reparam.도시, reparam.구시군, reparam.읍면동, 'S');
			}
		},
		error: function(reparam) {
			SetGeocoderLog(_mapPlatform, _latitude, _longitude, _addr1, _addr2, _addr3, 'F');
		}
	});
}

























function setDaumRegionToR114(strAddr) {
    var addr = strAddr.split(" ");

    if (addr[0] == "서울") addr[0] = "서울특별시";
    else if (addr[0] == "경기") addr[0] = "경기도";
    else if (addr[0] == "경북") addr[0] = "경상북도";
    else if (addr[0] == "경남") addr[0] = "경상남도";
    else if (addr[0] == "대구") addr[0] = "대구광역시";
    else if (addr[0] == "전남") addr[0] = "전라남도";
    else if (addr[0] == "광주") addr[0] = "광주광역시";
    else if (addr[0] == "대전") addr[0] = "대전광역시";
    else if (addr[0] == "강원") addr[0] = "강원도";
    else if (addr[0] == "인천") addr[0] = "인천광역시";
    else if (addr[0] == "세종특별자치시") {
        addr[0] = "세종특별시";
        addr[3] = addr[2];
        addr[2] = addr[1];
        addr[1] = "세종시"
    } else if (addr[0] == "울산") addr[0] = "울산광역시";
    else if (addr[0] == "충북") addr[0] = "충청북도";
    else if (addr[0] == "부산") addr[0] = "부산광역시";
    else if (addr[0] == "부산") addr[0] = "부산광역시";
    else if (addr[0] == "전북") addr[0] = "전라북도";
    else if (addr[0] == "충남") addr[0] = "충청남도";
    else if (addr[0] == "제주특별자치도") addr[0] = "제주도";

    if (addr[2] == "도두1동") addr[2] = "도두일동";
    else if (addr[2] == "도두2동") addr[2] = "도두이동";
    else if (addr[2] == "도련1동") addr[2] = "도련일동";
    else if (addr[2] == "도련2동") addr[2] = "도련이동";
    else if (addr[2] == "삼도1동") addr[2] = "삼도일동";
    else if (addr[2] == "삼도2동") addr[2] = "삼도이동";
    else if (addr[2] == "삼양1동") addr[2] = "삼양일동";
    else if (addr[2] == "삼양2동") addr[2] = "삼양이동";
    else if (addr[2] == "삼양3동") addr[2] = "삼양삼동";
    else if (addr[2] == "아라1동") addr[2] = "아라일동";
    else if (addr[2] == "아라2동") addr[2] = "아라이동";
    else if (addr[2] == "오라1동") addr[2] = "오라일동";
    else if (addr[2] == "오라2동") addr[2] = "오라이동";
    else if (addr[2] == "오라3동") addr[2] = "오라삼동";
    else if (addr[2] == "외도1동") addr[2] = "외도일동";
    else if (addr[2] == "외도2동") addr[2] = "외도이동";
    else if (addr[2] == "용담1동") addr[2] = "용담일동";
    else if (addr[2] == "용담2동") addr[2] = "용담이동";
    else if (addr[2] == "용담3동") addr[2] = "용담삼동";
    else if (addr[2] == "이도1동") addr[2] = "이도일동";
    else if (addr[2] == "이도2동") addr[2] = "이도이동";
    else if (addr[2] == "이호1동") addr[2] = "이호일동";
    else if (addr[2] == "이호2동") addr[2] = "이호이동";
    else if (addr[2] == "일도1동") addr[2] = "일도일동";
    else if (addr[2] == "일도2동") addr[2] = "일도이동";
    else if (addr[2] == "화북1동") addr[2] = "화북일동";
    else if (addr[2] == "화북2동") addr[2] = "화북이동";

    if (addr.length > 3 && addr[3] != undefined && addr[3].substring(addr[3].length - 1, addr[3].length) != "리") {
        addr[2] = addr[3];
    }
    return addr[0] + " " + addr[1] + " " + addr[2];
}
//약관 동의후 app로 이동
function AfterVerify() {
    if (mobile) {
        if (android)
            window.GoogleApp.VerifySuccess();
        else if (iphone)
            document.location = "Action:VerifySuccess";
    }
}
//웹 로그아웃후 호출
function AppLogout() {
    if (mobile) {
        if (android)
		{
            window.GoogleApp.AfterLogout();
		}
        else if (iphone)
		{
			//alert("로그아웃");
            document.location = "Action:AfterLogout";
		}
    }
}


// UserAgent 정보 테스트
function InfoUserAgent() {
    alert(navigator.userAgent);
}

function RequestGoogleAccount() //하이브리드 앱에 구글 정보를 요청하는 함수
{
    window.GoogleApp.RequestGoogleAccount();
}

function GetGoogleAccount(account) //하이브리드 앱에서 구글 정보를 받는 함수
{
    //account 에 있는 안드로이드 구글 계정을 이용하시면 됩니다.
}

function GoToMarket() //마켓이동시 호출해주는 함수
{
    window.GoogleApp.GoBudongSanAR("Market");
}

function RequestARInstalled() //하이브리드 앱에 부동산GO 앱이 설치되였는지 요청하는 함수
{
    //alert('RequestARInstalled() 함수 호출 완료 / android : ' + android + ' / iphone = ' + iphone);
    if (android) {
        window.GoogleApp.RequestARInstalled();
    } else if (iphone) {
        document.location = 'Action:RequestARInstalled';
    } else {
        location.href = '/?_c=service&_m=m41';
    }
}

function GetARAppState(installFlag) //하이브리드 앱에서 부동산GO 앱이 설치되였는지 받는 함수
{
    //alert('GetARAppState() 함수 호출 완료 / installFlag : ' + installFlag);
    if (installFlag == 'YES') {
        OnRealBudongsan();
    } else if (installFlag == 'NO') {
        if (android) 
		{
			GetRequestUrl("https://play.google.com/store/apps/details?id=com.r114.rgo");
		}
		else if (iphone) 
		{
			GetRequestUrl("https://itunes.apple.com/kr/app/id1223752790?mt=8");
		}
		 else
		{
			var agent = navigator.userAgent.toLowerCase();
			if (agent.indexOf("iphone") != -1 || agent.indexOf("ipad") != -1) 
			{
				if (agent.indexOf("safari") != -1) {
					document.location = "https://itunes.apple.com/kr/app/id1223752790?mt=8";
				}
				else
				{
					window.open("https://itunes.apple.com/kr/app/id1223752790?mt=8");
				}
			}
			else
			{
				window.open("https://play.google.com/store/apps/details?id=com.r114.rgo");
			}
		}
    }
}

function RequestBangCallInstalled() //하이브리드 앱에 방콜 앱이 설치되였는지 요청하는 함수
{
    if (android)
        window.GoogleApp.RequestBangCallInstalled();
    else if (iphone)
        document.location = "Action:RequestBangCallInstalled";
    else // 앱설치가 안된경우 콜백함수 호출하고 다운로드 페이지로 이동
    	GetBangCallAppState("NO");
}

function GetBangCallAppState(installFlag) //하이브리드 앱에서 방콜 앱이 설치되였는지 받는 함수
{
    if (installFlag == "YES") {
        RunBangCallApp();
	} 
	else if (installFlag == "NO") 
	{
		if (android) 
		{
			GetRequestUrl("http://www.bangcall.com/bangcall/app_download.asp");
		}
		else if (iphone) 
		{
			GetRequestUrl("http://www.bangcall.com/bangcall/app_download.asp");
		}
		 else
		{
			var agent = navigator.userAgent.toLowerCase();
			if (agent.indexOf("iphone") != -1 || agent.indexOf("ipad") != -1) 
			{
				if (agent.indexOf("safari") != -1) {
					document.location = "http://www.bangcall.com/bangcall/app_download.asp";
				}
				else
				{
					window.open("http://www.bangcall.com/bangcall/app_download.asp");
				}
			}
			else
			{
				window.open("https://play.google.com/store/apps/details?id=com.bangcall.ext.app");
			}
		}
    }
}

function RunBangCallApp() //방콜앱을 실행시키는 함수
{
    if (android)
        window.GoogleApp.RunBangCallApp();
    else if (iphone)
        document.location = "Action:RunBangCallApp";
}

function GetRequestUrl(url) //외부로 나가야할 링크 처리 함수
{
    //alert('RequestARInstalled() 함수 호출 완료 / android : ' + android + ' / iphone = ' + iphone);
	if (url.toLowerCase().substring(0, 4) == "http")
	{
		 if (android) {
			window.GoogleApp.webOpen(url);
		} else if (iphone) {
			document.location = "webOpen:"+ url;
		} else {
			window.open(url);
		}
	}
	else
	{
		window.location.href = url;
	}
}
//<!-- 코어소프트 제공 앱 인터페이스 API  끝 -->

function SetGeocoderLog(_mapType, _latitude, _longitude, _addr1, _addr2, _addr3, _result) {
	$.ajax({
		type: "POST",
		data: { "mapType": _mapType, "latitude": _latitude, "longitude": _longitude, "addr1":_addr1, "addr2":_addr2, "addr3":_addr3, "result": _result },
		url: "/?_c=comm&_m=MapLogging&_p=AJAX",
		dataType: "json",
		success: function(reparam) {
		},
		error: function(reparam) {
		}
	});
}