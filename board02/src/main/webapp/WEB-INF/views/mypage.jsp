<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>

<style>
  	label {
    display: block;
    margin-bottom: 5px;
}
form, fieldset, input, table, tr, th, td {
    margin: 0;
    padding: 0;
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

	table {
		margin: 0 0 2rem 0;
		width: 100%;
	}

		table tbody tr {
			border: solid 1px;
			border-left: 0;
			border-right: 0;
		}

		table tbody tr:nth-child(2n + 1) {
			background-color: rgba(144, 144, 144, 0.075);
		}

		table td {
			padding: 0.75rem 0.75rem;
		}

		table th {
			font-size: 0.9rem;
			font-weight: 700;
			padding: 0 0.75rem 0.75rem 0.75rem;
			text-align: left;
		}

	table th {
		color: #424242;
	}

	table thead {
		border-bottom-color: rgba(144, 144, 144, 0.25);
	}
	
	form input{
	margin-top: 10px;
    padding: 0.5rem 1rem;
    font-size: 12px;
    border: solid 1px;
    background-color: whitesmoke;
    cursor: pointer;
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
							<li><a "on" href="/board02/mypage">마이페이지</a></li>
							<li><a href="/board02/inform">정보수정</a></li>
						</ul>
					</div>
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
						<h3><span>예약정보</span></h3>
						<ul>
							<li>마이페이지  >  예약정보</li>
						</ul>
					</div>
						<div class="sub_con_area">
							<div class="cms_skin">    
								<section class="bf_mg">
									<div>
										<input type="hidden" value="${booking.bookingId}" readonly="readonly">
									</div>
								</section>
								<c:choose>
									<c:when test="${empty booking}">
								  			예약 정보가 없습니다.
								  	</c:when>
									<c:otherwise>
										<div class="table-wrapper">
											<table>
												<thead>
													<tr class="tHead">
														<th class="writer">예약자</th>
														<th class="regDate">예약일</th>
													</tr>
												</thead>
												<tbody>
													<tr class="tbody">
														<td class="writer">${booking.bookname}</td>
														<td class="regDate">${booking.bookDate}</td>							
													</tr>
												</tbody>
											</table>
										</div>
										<form action="/board02/bookDelete" name="deleteForm">
											<input type="hidden" name="userId" value="${booking.userId}" readonly="readonly">
											<input type="submit" class="button" value="취소"/>			
										</form>
								    </c:otherwise>
								 </c:choose>
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