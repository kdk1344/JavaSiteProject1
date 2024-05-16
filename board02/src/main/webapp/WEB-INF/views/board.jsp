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
	.dropdown {
	  position: relative;
	  display: inline-block;
	}
	.dropdown-content {
	  display: none;
	  position: absolute;
	  background-color: #f9f9f9;
	  min-width: 120px;
	  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	  z-index: 1;
	}
	.dropdown-content a {
	  color: black;
	  padding: 12px 16px;
	  text-decoration: none;
	  display: block;
	  text-align:center;
	}
	.dropdown-content a:hover {background-color: #f1f1f1}
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
	<div id="wrap">
	<!-- header -->
		<div class="header">
			<div class="head_bar_1">
				<div class="head_quick">
					<ul class="member">
						<li><a href="/board02/logout">LOGOUT</a></li>
					</ul>
					<ul>
						<li>
							<input type="hidden" id="sessionTimeOut" name="sessionTimeOut" value=<%=session.getMaxInactiveInterval() %>>
						</li>
					</ul>
					<ul class="member">
						<li><a href="/board02/mypage">MYPAGE</a></li>
					</ul>
				</div>
			</div>
			<div class="head_bar_2">
				<div class="head_cont">
					<h1><a href="/board02/list"><img src="/resources/images/sm.png" alt="열린이비인후과 로고" width="240" height="70"></a></h1>
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
				</div>
			</div>
		</div>
	<!-- /header -->
		<!-- contents -->
		<div class="contents">
			<div class="contents_area_1">
				<div class="wmuSlider main_slide_box" style="height: 448px;">
					<div class="wmuSliderWrapper" style="display: block;">
						<article style="position: relative; width: 100%; opacity: 1;"><img src="/resources/images/blue.jpg"></article>
					</div>
					<div class="slide_slogan">
						<p class="txt_01"></p>
						<span class="txt_02" style="display: none;"></span>
					</div>
				<ul class="wmuSliderPagination"><li><a href="#" class="wmuActive">0</a></li></ul></div>
			<a class="wmuSliderPrev">Previous</a><a class="wmuSliderNext">Next</a></div>
			<div class="contents_area_2">
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
			</div>
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
							<p>목요일 13:00 ~ 21:00 (야간진료) 일/공휴일 휴진</p>
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
							<li class="facilities_01"><img src="" alt="둘러보기"></a></li>
							<li class="facilities_02"><img src="" alt="둘러보기"></a></li>
							<li class="facilities_03"><img src="" alt="둘러보기"></a></li>
							<li class="facilities_04"><img src="" alt="둘러보기"></a></li>
							<li class="facilities_05"><img src="" alt="둘러보기"></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- /footer -->
		<div class="footer">
			<div class="foot_cont">
				<div class="copyright">
					<ul>
						<li><a href="javascript:;" onclick="OpenMemberPrivate();">개인정보처리방침</a></li>
						<li><a href="#">이용약관</a></li>
					</ul>
					<address>
						OO O구 OO로 00 (OOO)  &nbsp;스마트 웰니스<br>TEL.000-000-0000&nbsp;&nbsp;&nbsp;
					</address>
				</div>
				<div class="banner">
					<ul>
						<li><div id="rolling2"></div></li>
						<li><div id="rolling1"></div></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- /footer -->
	</div>


</body>
</html>