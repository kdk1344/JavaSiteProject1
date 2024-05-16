<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>

<style>

	.uploadResult.ul{
		display:flex;
		justify-content: center;
	}
	.uploadResult.li{
		list-style: none;
	}
	
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
			<div class="head_bar_1">
				<div class="head_quick">
					<ul class="member">
						<li><a href="/board02/logout">LOGOUT</a></li>
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
		<div class="contents">
			<div class="sub_visual_area">
				<div class="sub_visual"></div>
			</div>
			<div class="sub_container">
				<div id="sub_left">
					<h2>기타</h2>
					<div class="snb">
						<ul>
							<li><a "on" href="/board02/sangdam">상담게시판</a></li>
							<li><a href="/board02/weather">날씨정보</a></li>
							<li><a href="/board02/phone">전화번호</a></li>
						</ul>
					</div>
					<div class="sub_time">
						<h3>진료시간</h3>
						<ul>
							<li><a href="/board02/contract">진료예약</a></li>
							<li><a "on" href="/board02/tongue">혀 건강검진</a></li>
						</ul>
						<p>목요일 13:00 ~ 21:00 (야간진료)
						일/공휴일 휴진</p>
					</div>
					<div class="sub_call ">
						<p>032-765-7510</p>
					</div>
					<div class="sub_sm_call ">
						<p><!-- Tel. 02-550-8703 --></p>
						<p><!-- Fax. 02-550-8703 --></p>
					</div>
				</div>
				<div id="sub_contents">
					<div class="sub_head">
						<h3><span>혀 건강검진</span></h3>
						<ul>
							<li>홈  >  진료안내  >  혀 건강검진</li>
						</ul>
					</div>
					<div class="sub_con_area">
						<div class="mt-3 container file-upload">
					        <div class="file-upload-content">
					            <div class="field">
									<h3 class="mb-5 pb-5 pt-4  upload-text">혓바닥을 업데이트 하세요!</h3>
									<input name="multipartFiles" type="file" multiple/>
								</div>
								<div class="field">
									<div class="uploadResult">
										<ul></ul>
									</div>
								</div>
					        </div>
					    </div>
					</div>
				</div>
			</div>
		</div>
		<!-- /footer -->
		<div class="footer">
			<!-- foot_cont -->
			<div class="foot_cont">
				<div class="copyright">
					<ul>
						<li><a href="javascript:;" onclick="OpenMemberPrivate();">개인정보처리방침</a></li>
						<li><a href="#">이용약관</a></li>
						<li><a href="/Module/Intro/Sitemap.asp">사이트맵</a></li>
					</ul>
					<address>
						OO O구 OO로 00 (OOO)  &nbsp;스마트 웰니스<br>TEL.000-000-0000&nbsp;&nbsp;&nbsp;
					</address>
				</div>
			</div>
		</div>
		<!-- /footer -->
	</div>
</body>
</html>