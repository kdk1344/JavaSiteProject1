<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<style>
	.dropbtn {
	  color: black;
	  padding: 16px;
	  font-size: 16px;
	  border: none;
	  cursor: pointer;
	  font-weight:bold;
	  padding-top:30px;
	}
	
	/* The container <div> - needed to position the dropdown content */
	.dropdown {
	  position: relative;
	  display: inline-block;
	}
	
	/* Dropdown Content (Hidden by Default) */
	.dropdown-content {
	  display: none;
	  position: absolute;
	  background-color: #f9f9f9;
	  min-width: 120px;
	  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	  z-index: 1;
	}
	
	/* Links inside the dropdown */
	.dropdown-content a {
	  color: black;
	  padding: 12px 16px;
	  text-decoration: none;
	  display: block;
	  text-align:center;
	}
	
	/* Change color of dropdown links on hover */
	.dropdown-content a:hover {background-color: #f1f1f1}
	
	/* Show the dropdown menu on hover */
	.dropdown:hover .dropdown-content {
	  display: block;
	}
	

</style>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="/resources/assets/css/blue.css" >
	<link rel="stylesheet" type="text/css" href="/resources/assets/css/color_blue.css" >
	<link rel="stylesheet" type="text/css" href="/resources/assets/css/layout_main.css" >
	<link rel="stylesheet" type="text/css" href="/resources/assets/css/layout_sub.css" >
	<link rel="stylesheet" type="text/css" href="/resources/assets/css/module.css" >
	<link rel="stylesheet" type="text/css" href="/resources/assets/css/reset.css" >
	<link rel="stylesheet" type="text/css" href="/resources/assets/css/style.css" >
	<link rel="stylesheet" type="text/css" href="/resources/assets/css/wmuSlider.css" >
	<title>Board1</title>
</head>
<body>
	<!-- wrap -->
	<div id="wrap">
		<!-- header -->
		<div class="header">


	<!-- head_bar_1 -->
			<div class="head_bar_1">
				<!-- head_quick -->
				<div class="head_quick">
					<!-- member -->
					<ul class="member">
						<li><a href="/board02/logout">LOGOUT</a></li>
					</ul>
					<ul class="member">
						<li><a href="/board02/mypage">MYPAGE</a></li>
					</ul>
				</div>
			</div>
		<!-- /head_bar_1 -->

		<!-- head_bar_2 -->
			<div class="head_bar_2">
				<!-- head_cont -->
				<div class="head_cont">
					<!-- h1 -->
					<h1><a href="/board02/list"><img src="/resources/images/sm.png" alt="열린이비인후과 로고" width="240" height="70"></a></h1>
					<!-- /h1 -->
					<!-- nav -->
					<div class="nav">
						<ul class="gnb">
							<div class="dropdown">
							  <button class="dropbtn">본원소개</button>
							  <div class="dropdown-content">
							    <a href="/board02/brand">브랜드스토리</a>
							    <a href="/board02/guide">찾아오시는 길</a>
							    <a href="/board02/jinryo">진료정보</a>
							  </div>
							</div>
							<div class="dropdown">
							  <button class="dropbtn">진료안내</button>
							  <div class="dropdown-content">
							    <a href="/board02/contract">진료예약</a>
							    <a href="/board02/tongue">혀 건강검진</a>
							  </div>
							</div>
							<div class="dropdown">
							  <button class="dropbtn">기타</button>
							  <div class="dropdown-content">
							    <a href="/board02/sangdam">상담게시판</a>
							    <a href="/board02/weather">날씨 정보</a>
							    <a href="/board02/phone">전화번호</a>
							  </div>
							</div>
						</ul>
					</div>
					<!-- /nav -->
				</div>
				<!-- /head_cont -->
			</div>
		<!-- /head_bar_2 -->
	</div>
	<!-- /header -->

	<div class="contents">

			<!-- sub_visual -->
			<div class="sub_visual_area">
				<div class="sub_visual"></div>
			</div>
			<!-- sub_visual -->

			<!-- sub_container -->
			<div class="sub_container">

		<!-- sub_left -->
		<div id="sub_left">
			<h2>본원소개</h2>
			<!-- snb -->
			<div class="snb">
				<ul>
					<li><a href="/board02/brand">브랜드스토리</a></li>
					<li><a class="on" href="/board02/guide">찾아오시는 길</a></li>
					<li><a href="/board02/jinryo">진료정보</a></li>
			</ul>
			</div>
		<!-- /snb -->
		<!-- sub_time -->
			<div class="sub_time">
				<h3>진료시간</h3>
				<ul>
					<li><span>평일</span> 09:00 ~ 19:00</li>
					<li><span>토요일</span> 09:00 ~ 15:00</li>
					<li><span>점심시간</span> 13:00 ~ 14:00</li>
				</ul>
				<p>목요일 13:00 ~ 21:00 (야간진료)
				일/공휴일 휴진</p>
			</div>
			<!-- sub_time -->
			<!-- sub_call -->
			<div class="sub_call ">
				<p>032-765-7510</p>
			</div>
			<!-- /sub_call -->
			<!-- sub_call -->
			<div class="sub_sm_call ">
				<p><!-- Tel. 02-550-8703 --></p>
				<p><!-- Fax. 02-550-8703 --></p>
			</div>
			<!-- /sub_call -->
		</div>
				<!-- /sub_left -->

		<!-- sub_contents -->
		<div id="sub_contents">
			<!-- sub_head -->
			<div class="sub_head">
				<h3><span>찾아오시는 길</span></h3>
				<ul>
					<li>홈  >  본원소개  >  찾아오시는 길</li>
				</ul>
			</div>
			<!-- /sub_head -->

			<!-- sub_con_section -->
			<div class="sub_con_area">


<!-- 인트로 CSS 추가 -->
<link rel="stylesheet" type="text/css" href="/resources/assets/css/intro_ver_2016.css" >
<!-- 인사말 -->
<div class="guide">
	<!-- /진료시간 -->

	<!--
	* 카카오맵 - 약도서비스
	* 한 페이지 내에 약도를 2개 이상 넣을 경우에는
	* 약도의 수 만큼 소스를 새로 생성, 삽입해야 합니다.
-->
<!-- 1. 약도 노드 -->
<div id="daumRoughmapContainer1596090265791" class="root_daum_roughmap root_daum_roughmap_landing"></div>
		
<!-- 2. 설치 스크립트 -->
<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

<!-- 3. 실행 스크립트 -->
<script charset="UTF-8">
	new daum.roughmap.Lander({
		"timestamp" : "1596090265791",
		"key" : "2zgmu",
		"mapWidth" : "640",
		"mapHeight" : "360"
	}).render();
</script>

	<!-- 연락처 -->
	<div class="guide_table">
		<h3>연락처</h3>
		​
			<table>
			<caption>연락처에 설명입니다.</caption><colgroup>
			<col width="20%">
			<col width="auto">
			</colgroup>
			<tbody>

				<tr>
					<th>주소</th>
					<td>OO시 O구 OO로 00 (OO역) </td>
				</tr>

				<tr>
					<th>전화번호</th>
					<td>000-000-0000</td>
				</tr>

			</tbody>
		</table>
	</div>
	<!-- /연락처 -->

			
		
	</div>
<!-- 인사말 -->
					</div>
					<!-- /sub_con_section -->
				</div>
				<!-- /sub_contents -->
			</div>
			<!-- /sub_container -->
		</div>



		<!-- /footer -->
		<div class="footer">
			<!-- foot_cont -->
			<div class="foot_cont">
				<!-- copyright -->
				<div class="copyright">
					<ul>
						<li><a href="javascript:;" onclick="OpenMemberPrivate();">개인정보처리방침</a></li>
						<li><a href="#">이용약관</a></li>
						<li><a href="/Module/Intro/Sitemap.asp">사이트맵</a></li>
					</ul>
					<address>
						OO시 O구 OO로 00 (OO역)  &nbsp;스마트웰니스<br>TEL.000-000-0000&nbsp;&nbsp;&nbsp;
					</address>
				</div>
				<!-- /copyright -->


				<!-- banner -->
				<div class="banner">
					<ul>
						<li><div id="rolling2"></div></li>
						<li><div id="rolling1"></div></li>
					</ul>
				</div>
				<!-- /banner -->


			</div>
			<!-- /foot_cont -->
		</div>
		<!-- /footer -->

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-53993743-57', 'auto');
  ga('send', 'pageview');

</script><!------------------------------------------------------------------------------------------------------>
<!-------------------------------------------- 공통 ---------------------------------------------------->
<!------------------------------------------------------------------------------------------------------>

<script type="text/javascript">
/*  날짜형식 : 2012-5-16 */
function GlobalDataPopupCheck(startDate,EndDate) {
	var mydate=new Date();
	var year=mydate.getFullYear();
	var month=mydate.getMonth()+1;
	var day=mydate.getDate();

	var CheckDate =new Date(year,month-1,day);

	var TempStartDate = new Array(3);
	var TempEndDate = new Array(3);
	var IsPopup = false;

	if (startDate != "") {
		ArrstartDate = startDate.split("-");

		TempStartDate[0] = ArrstartDate[0];
		TempStartDate[1] = parseInt(ArrstartDate[1]) -1;
		TempStartDate[2] = ArrstartDate[2];


		sDate = new Date(TempStartDate[0], TempStartDate[1], TempStartDate[2]);
	}

	if (EndDate != "") {
		ArrEndDate = EndDate.split("-");

		TempEndDate[0] = ArrEndDate[0];
		TempEndDate[1] = parseInt(ArrEndDate[1]) -1;
		TempEndDate[2] = ArrEndDate[2];

		eDate = new Date(TempEndDate[0], TempEndDate[1], TempEndDate[2]);
	}

	if (startDate == "" && EndDate != "") {
		if (eDate.getTime() >= CheckDate.getTime()) {
			IsPopup = true;
		}
	} else if (startDate != "" && EndDate != "") {
//alert(sDate.getTime())
//alert(eDate.getTime())
//alert(CheckDate)
//alert(CheckDate.getTime())
//alert(sDate.getTime() <= CheckDate.getTime())
//alert(eDate.getTime() >= CheckDate.getTime())
		if (sDate.getTime() <= CheckDate.getTime() && eDate.getTime() >= CheckDate.getTime()) {
			IsPopup = true;
		}
	} else if (startDate != "" && EndDate == "") {
		if (sDate.getTime() <= CheckDate.getTime()) {
			IsPopup = true;
		}
	}
//	alert(IsPopup)
	return IsPopup
}

function hideMe(no) {
	document.getElementById("Notice"+no).style.display = "none";
}

function hideMeMovie(no) {
	document.getElementById("Notice"+no).style.display = "none";
	document.getElementById("HidocInterView").controls.stop();
}

function notice_setCookie( name, value, expiredays ){
	var todayDate = new Date();
	todayDate.setDate( todayDate.getDate() + expiredays );
	document.cookie = name + '=' + escape( value ) + '; path=/; expires=' + todayDate.toGMTString() + ';'
	return;
}

function notice_getCookie( name ) {
	var nameOfCookie = name + "=";
	var x = 0;
	while ( x <= document.cookie.length ) {
		var y = (x+nameOfCookie.length);
		if ( document.cookie.substring( x, y ) == nameOfCookie ) {
		if ( (endOfCookie=document.cookie.indexOf( ";", y )) == -1 )
		endOfCookie = document.cookie.length;
		return unescape( document.cookie.substring( y, endOfCookie ) );
		}
		x = document.cookie.indexOf( " ", x ) + 1;
		if ( x == 0 ) break;
	}
	return "";
}
</script>
<!------------------------------------------------------------------------------------------------------>
<!------------------------------------------------------------------------------------------------------>





<!------------------------------------------------------------------------------------------------------>
<!-------------------------------------------- 공통 ---------------------------------------------------->
<!------------------------------------------------------------------------------------------------------>





	</div>
	<!-- /wrap -->

<script type="text/javascript" src="/BasicJs/external/jquery.cookie.js"></script>
<script type="text/javascript">
<!--
	function LayerClose(Srno, OneDayClose){
		if(OneDayClose == "Y"){
			$.cookie("Popup_" + Srno, "Y", { expires: 1, path: "/", domain: "www.hoonet.co.kr" })
		}

		$("#LayerPopup_" + Srno).css({ "display": "none"});
	}
//-->
</script>
<script language="javascript" src="http://lib.drline.net/js/MCircleHomepageInit.js"></script>
<script language="javascript">
	var hospiCd = '6338';
	var hpType = 'FLEXIBLE'; /*EDT=EDT,HEALTHCARE=헬스케어,SEMI=중소병원,FLEXIBLE=플렉서블3,S3=S3,SPECIAL=개별,MOBILE=모바일,ADMIN=관리자*/
	var memberID = '';
	var isAdmin = 'False';
	McircleHomepageCommon(hospiCd, hpType, memberID, isAdmin);

	/*비밀번호 변경 3개월초과자 팝업 알림*/
	if(InnerGetCookie('SITECMD') == 'PWD_UPDATE_NOTI')
	{
		var url = 'http://lib.drline.net/popup/PwdUpdateNoti.asp?hospiCd=' + hospiCd + '&hpType=' + hpType +'&domain='+escape(document.domain);
		McircleCrossPOP(url, 'POPPwdUpdateNoti', '비밀번호 변경', 600, 536, 30, 30);
		InnerSetCookie('SITECMD', '', 1); // 비밀번호 변경 알림 Clear
	}
</script>



<!------------------------------------------------------------------------------------------------------>
<!---------------------------------------- 공통 스크립트------------------------------------------------>
<!------------------------------------------------------------------------------------------------------>

</body>
</html>