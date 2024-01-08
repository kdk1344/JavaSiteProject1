<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<style>
	/* Style The Dropdown Button */
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
	<link rel="stylesheet" type="text/css" href="/resources/assets/css/module.css" >
	<link rel="stylesheet" type="text/css" href="/resources/assets/css/reset.css" >
	<link rel="stylesheet" type="text/css" href="/resources/assets/css/style.css" >
	<link rel="stylesheet" type="text/css" href="/resources/assets/css/wmuSlider.css" >
	<title>Board1</title>
</head>
<body>
	<c:if test= "${id eq null}">
		<script type="text/javascript">
			alert("로그인이 필요합니다");
			location.href="loginForm"
		</script>	
	</c:if>
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
						<li><span>${id}</span>님 환영합니다</li>
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
		<!-- contents -->
		<div class="contents">
			<!-- contents_area_1 -->
			<div class="contents_area_1">
				<!-- mainslider -->
				<div class="wmuSlider main_slide_box" style="height: 448px;">
					<div class="wmuSliderWrapper" style="display: block;">
						<article style="position: relative; width: 100%; opacity: 1;"><img src="/resources/images/blue.jpg"></article>
					</div>
					<div class="slide_slogan">
						<p class="txt_01"></p>
						<span class="txt_02" style="display: none;"></span>
					</div>
				<ul class="wmuSliderPagination"><li><a href="#" class="wmuActive">0</a></li></ul></div>
				<!-- /mainslider -->
			<a class="wmuSliderPrev">Previous</a><a class="wmuSliderNext">Next</a></div>
			<!-- /contents_area_1 -->

			<!-- contents_area_2 -->
			<div class="contents_area_2">
				<!-- clinic -->
				<div class="clinic">
					<div class="clinic_box">
							<ul>
								<li class="clinic_01"><a href="/board02/brand" class="white"><span>브랜드스토리</span></a></li>
								<li class="clinic_02"><a href="/board02/contract" class="white"><span>진료예약</span></a></li>
								<li class="clinic_03"><a href="/board02/tongue"><span>혀 건강검진</span></a></li>
								<li class="clinic_04"><a href="/board02/sangdam"><span>상담게시판</span></a></li>
								<li class="clinic_05"><a href="/board02/weather" class="white"><span>날씨정보</span></a></li>
								<li class="clinic_06"><a href="/board02/phone" class="white"><span>전화번호</span></a></li>
							</ul>
					</div>
				</div>
				<!-- /clinic -->
			</div>
			<!-- /contents_area_2 -->

			<!-- contents_area_3 -->
			<div class="contents_area_3">
				<div class="ca3_inner_left">
					<div class="time">
						<h2>진료시간</h2>
						<div class="time_table">
							<ul>

								<li class="table_01"><span>평일</span>09:00 ~ 19:00</li>

								<li class="table_02"><span>토요일</span>09:00 ~ 15:00</li>

								<li class="table_03"><span>점심시간</span>13:00 ~ 14:00</li>

							</ul>
							<p>목요일 13:00 ~ 21:00 (야간진료)
일/공휴일 휴진</p>
						</div>
					</div>
				</div>
				<div class="ca3_inner_right">
					<div class="facilities">
						<ul>
							<li class="facilities_00">
								<h2>Interior</h2>
								<p>머무는 곳은 언제나<br> 편안해야 한다는 생각.</p>
							</li>

							<li class="facilities_01"><img src="http://fileupload.drline.net/6338/HospiBrowse/INF.JPG" alt="둘러보기"></a></li>

							<li class="facilities_02"><img src="http://fileupload.drline.net/6338/HospiBrowse/검사.JPG" alt="둘러보기"></a></li>

							<li class="facilities_03"><img src="http://fileupload.drline.net/6338/HospiBrowse/대기.JPG" alt="둘러보기"></a></li>

							<li class="facilities_04"><img src="http://fileupload.drline.net/6338/HospiBrowse/수술.JPG" alt="둘러보기"></a></li>

							<li class="facilities_05"><img src="http://fileupload.drline.net/6338/HospiBrowse/주사.JPG" alt="둘러보기"></a></li>

						</ul>
					</div>
				</div>
			</div>
			<!-- /contents_area_3 -->

			<!-- contents_area_5 -->

			<!-- /contents_area_5 -->
		</div>
		<!-- /contents -->


		<!-- /footer -->
		<div class="footer">
			<!-- foot_cont -->
			<div class="foot_cont">
				<!-- copyright -->
				<div class="copyright">
					<ul>
						<li><a href="javascript:;" onclick="OpenMemberPrivate();">개인정보처리방침</a></li>
						<li><a href="#">이용약관</a></li>
					</ul>
					<address>
						OO O구 OO로 00 (OOO)  &nbsp;스마트 웰니스<br>TEL.000-000-0000&nbsp;&nbsp;&nbsp;
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