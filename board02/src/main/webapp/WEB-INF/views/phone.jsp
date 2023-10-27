<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="/resources/assets/css/color_blue.css" >
	<link rel="stylesheet" type="text/css" href="/resources/assets/css/layout_sub.css" >
	<link rel="stylesheet" type="text/css" href="/resources/assets/css/reset.css" >
	<link rel="stylesheet" type="text/css" href="/resources/assets/css/style.css" >
	<link rel="stylesheet" type="text/css" href="/resources/assets/css/wmuSlider.css" >
	<title>Board1</title>
</head>
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

	table {
	  border: 1px #a39485 solid;
	  font-size: .9em;
	  box-shadow: 0 2px 5px rgba(0,0,0,.25);
	  width: 100%;
	  border-collapse: collapse;
	  border-radius: 5px;
	  overflow: hidden;
	}
	
	th {
	  text-align: left;
	}
	  
	thead {
	  font-weight: bold;
	  color: #fff;
	  background: #73685d;
	}
	  
	 td, th {
	  padding: 1em .5em;
	  vertical-align: middle;
	}
	  
	 td {
	  border-bottom: 1px solid rgba(0,0,0,.1);
	  background: #fff;
	}
	
	a {
	  color: #73685d;
	}
	  
	 @media all and (max-width: 768px) {
	    
	  table, thead, tbody, th, td, tr {
	    display: block;
	  }
	  
	  th {
	    text-align: right;
	  }
	  
	  table {
	    position: relative; 
	    padding-bottom: 0;
	    border: none;
	    box-shadow: 0 0 10px rgba(0,0,0,.2);
	  }
	  
	  thead {
	    float: left;
	    white-space: nowrap;
	  }
	  
	  tbody {
	    overflow-x: auto;
	    overflow-y: hidden;
	    position: relative;
	    white-space: nowrap;
	  }
	  
	  tr {
	    display: inline-block;
	    vertical-align: top;
	  }
	  
	  th {
	    border-bottom: 1px solid #a39485;
	  }
	  
	  td {
	    border-bottom: 1px solid #e5e5e5;
	  }
  
  
  }
</style>
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
			<h2>기타</h2>
			<!-- snb -->
			<div class="snb">
				<ul>
					<li><a href="/board02/sangdam">상담게시판</a></li>
					<li><a href="/board02/weather">날씨정보</a></li>
					<li><a "on" href="/board02/phone">전화번호</a></li>
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
				<h3><span>전화번호</span></h3>
				<ul>
					<li>홈  >  기타  >  전화번호</li>
				</ul>
			</div>
			<!-- /sub_head -->

			<!-- sub_con_section -->
			<div class="sub_con_area">


			
					
<script type="text/javascript">
<!--
	$(document).ready(
		function(){
			if($(".menu3_tab .on").size() == 0){
				$(".menu3_tab ul > li:eq(0) a").addClass("on");
			}
		}
	);
//-->
</script>


<!-- 인트로 CSS 추가 -->
<link rel="stylesheet" type="text/css" href="/resources/assets/css/intro_ver_2016.css" >
<!-- 인사말 -->

<div class="cms_skin">    
	<section class="bf_mg">
		<div class="table_list">
			<table>
			    <thead>
			    <tr>
			        <th>이름</th>
			        <th>전화번호</th>
			    </tr>
			    </thead>
			    <tbody>
			    <tr>
			        <td>총 전화번호</td>
			        <td>(713) 123-8965</td>
			    </tr>
			    <tr>
			        <td>간호사</td>
			        <td>(713) 584-9614</td>
			    </tr>
			    <tr>
			        <td>의사</td>
			        <td>(713) 847-1124</td>
			    </tr>
			    </tbody>
			</table>
		</div>
	</section>
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
						인천 중구 우현로 75 (인현동, 눈편한안과,상아치과,포도나무약국)  &nbsp;열린이비인후과<br>TEL.032-765-7510&nbsp;&nbsp;&nbsp;
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