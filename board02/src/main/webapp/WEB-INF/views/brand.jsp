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
	<link rel="stylesheet" type="text/css" href="/resources/assets/css/color_blue.css" >
	<link rel="stylesheet" type="text/css" href="/resources/assets/css/layout_sub.css" >
	<link rel="stylesheet" type="text/css" href="/resources/assets/css/reset.css" >
	<link rel="stylesheet" type="text/css" href="/resources/assets/css/style.css" >
	<link rel="stylesheet" type="text/css" href="/resources/assets/css/wmuSlider.css" >
	<link rel="stylesheet" href="/resources/assets/css/mains.css?after" />
	
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
					<li><a "on" href="/board02/brand">브랜드스토리</a></li>
					<li><a href="/board02/guide">찾아오시는 길</a></li>
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
				<h3><span>인사말</span></h3>
				<ul>
					<li>홈  >  본원소개  >  브랜드스토리</li>
				</ul>
			</div>
			<!-- /sub_head -->

			<!-- sub_con_section -->
			<div class="sub_con_area">


<!-- 인트로 CSS 추가 -->
<link rel="stylesheet" type="text/css" href="/resources/assets/css/intro_ver_2016.css" >
<!-- 인사말 -->
<div class="about">
	<!-- 안녕하세요 -->
	<div class="greeting">
		<h3>안녕하세요.<br>홈페이지 방문을 감사드립니다.</h3>
		<p class="thanks">
			-
		</p>
		<p class="slogan">
			</p><p style="text-align: center;"><img src="/resources/images/imshi.png" title="" alt="1" style="vertical-align: baseline; border: 0px solid rgb(0, 0, 0); width: 650px;"></p>
		<p></p>
	</div>
	<!-- /안녕하세요 -->

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
</body>
</html>