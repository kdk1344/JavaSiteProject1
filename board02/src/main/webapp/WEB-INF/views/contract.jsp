<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="/resources/assets/css/color_blue.css" >
	<link rel="stylesheet" type="text/css" href="/resources/assets/css/layout_sub.css?after" >
	<link rel="stylesheet" type="text/css" href="/resources/assets/css/reset.css" >
	<link rel="stylesheet" type="text/css" href="/resources/assets/css/style.css" >
	<link rel="stylesheet" type="text/css" href="/resources/assets/css/wmuSlider.css" >
	<title>Board1</title>
</head>
<style>
	
	table.contract input{
	font-size: large;
    vertical-align: middle;
	}

	#next-btn{
	background-color: #09C; width: 100px; height: 40px; 
	font-weight:bold;
	margin-top : 20px;
	}

	td.le {
  border-bottom: 1px solid rgba(0,0,0,.1);
  background: #fff;
  background-color:#8080804d;
  width:15%;
  font-weight:bold;
  font-size: large;
    vertical-align: middle;
    text-align: center;
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
	
	tr {
    height: 50px;
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
							<li><a "on" href="/board02/contract">진료예약</a></li>
							<li><a href="/board02/tongue">혀 건강검진</a></li>
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
						<h3><span>진료예약</span></h3>
						<ul>
							<li>홈  >  진료안내  >  진료예약</li>
						</ul>
					</div>
					<div class="sub_con_area">
						<div class="cms_skin">    
							<section class="bf_mg">
								<div class="table_list">
									<form action="/board02/contract" method="post" class="cf" name="select">
										<input type="hidden" name="userId" id="userId" value="${id}">
										<table class="contract">
										    <tbody>
										    <tr>
										        <td class="le">예약 일자</td>
										        <td><label for="booking-day"></label> 
									            <input type="date" name="bookDate" id="booking-day" class="booking-date" onchange="checkPrice()">
												</td>
										    </tr>
										    <tr>
										        <td class="le">예약자</td>
										        <td><label for="bookingName"></label> 
									       		<input type="text" name="bookname" id="book-name" required="required"> 
											    </td>
										    </tr>
										    </tbody>
										</table>
										<button type="submit" id="next-btn" onclick="insertOpt()">예약하기</button>
									</form>
								</div>
							</section>
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
</body>
<script>
	let nowUtc = Date.now();
	let timeOff = new Date().getTimezoneOffset() * 60000;
	let today = new Date(nowUtc - timeOff).toISOString().split("T")[0];
	console.log(document.getElementById("booking-day"));
	document.getElementById("booking-day").setAttribute("min", today);
</script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
	window.onload = function(){
    	var id = $("#userId").val();
   		console.log($("#userId").val());
   		
       	//Ajax로 전송
       	$.ajax({
       		url : './ConfirmId',
       		data : {
       			id : id
       		},
       		type : 'POST',
       		success : function(time) {
       			if (time != '') {
       				alert('이미 ' + time + '에 예약하셨습니다');
       				$("#next-btn").attr("disabled", true);
       			}
       		}
       	});
   	};
</script>
</html>