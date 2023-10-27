<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<style>

	body {margin-top: -50px;}
	div.line {border-bottom: 1px solid #ff8b77;}
	h4.reply-h4 {margin-bottom: 0;}
	.uploadResult{
		width:100%;
	}
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
	  !important;
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
	<link rel="stylesheet" href="/resources/assets/css/mains.css" />
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
			<h2>기타</h2>
			<!-- snb -->
			<div class="snb">
				<ul>
					<li><a "on" href="/board02/sangdam">상담게시판</a></li>
					<li><a href="/board02/weather">날씨정보</a></li>
					<li><a href="/board02/phone">전화번호</a></li>
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
				<h3><span>상담게시판</span></h3>
				<ul>
					<li>홈  >  기타  >  상담게시판</li>
				</ul>
			</div>
			<!-- /sub_head -->

			<!-- sub_con_section -->
			<div class="sub_con_area">

	<div id="main">
			<div class="wrapper">
				<div class="inner">

					<!-- Elements -->
					<header class="major">
						<h1>Board</h1>
						<p>게시글 상세보기</p>
					</header>
					<!-- Table -->
					<h3><a href="/board02/sangdam${criteria.params}" class="button small">목록 보기</a></h3>
					<div class="content">
						<div class="form">
							<form action="/board02/remove" name="deleteForm">
								<div class="fields">
									<div class="field">
										<h4>번호</h4>
										<input type="text" name="bno" value="${board.bno}" readonly>
									</div>
									<div class="field">
										<h4>제목</h4>
										<input type="text" name="title" value="${board.title}" readonly>
									</div>
									<div class="field">
										<h4>내용</h4>
										<textarea type="text" name="content" rows="6" style="resize:none;" readonly> "${board.content}"</textarea>
									</div>
									<div class="field">
										<h4>작성자</h4>
										<input type="text" name="writer" value="${board.writer}" readonly>
									</div>
									<div class="field">
										<h4>첨부파일</h4>
										<div class="uploadResult">
											<ul></ul>
										</div>
									</div>
								</div>
								<ul class="actions special">
									<li>
										<input type="button" class="button" value="답글" onclick="location.href='/board02/answer${criteria.params}&bno=${board.bno}'"/>
										<input type="button" class="button" value="수정" onclick="location.href='/board02/modify${criteria.params}&bno=${board.bno}'"/>
										<input type="submit" class="button" value="삭제"/>
									</li>
								</ul>


							</form>
						</div>
					</div>
				</div>
			</div>
		</div> 
		</div>
			
					
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

<script src="/resources/assets/js/jquery.min.js"></script>
<script src="/resources/assets/js/jquery.dropotron.min.js"></script>
<script src="/resources/assets/js/browser.min.js"></script>
<script src="/resources/assets/js/breakpoints.min.js"></script>
<script src="/resources/assets/js/util.js"></script>
<script src="/resources/assets/js/main.js"></script>
<script src="/resources/assets/js/reply.js?v=1"></script>
<script>
	let page = 1;
	let bno = "${board.bno}";
	const repliesUL = $("ul.replies");
	
	showList(page);
	
	function showReplyPage(total){
		let endNum = Math.ceil(page/10.0)*10;
		let startNum = endNum-9;
		let prev = startNum !=1;
		let next = false;
		
		if(endNum * 10 >= total){
			endNum = Math.ceil(total / 10.0);
		}
		
		if (endNum * 10 < total){
			next = true;
		}
		
	}
	
	
	function showList(page){
		replyService.getList({
			bno:bno,
			page:page
			
		},function(result){
			let list = result.list;
			let total = result.total;
			let str = "";
			let date="";
			console.log(list);
			for(let i=0; i<list.length; i++){
				let check = false;
				check = list[i].replyDate == list[i].updateDate;
				date = check ? list[i].replyDate : list[i].updateDate;
				str += `<li id=` + list[i].rno + ` style="display: block;">`;
				str += `<div style="display: flex; justify-content: space-between">`;
				str += `<strong style="display: block;">` + list[i].replier + `</strong>`;
				str += `<div>`;
				str += `<a href=` + list[i].rno + ` class="modify-ready">수정</a>`;
				str += `<a href=` + list[i].rno + ` class="modify-finish" style="display: none">수정완료</a>`;
				str += `&nbsp;&nbsp;&nbsp;&nbsp;<a href=` + list[i].rno + ` class="remove">삭제</a>`;
				str += `</div>`;
				str += `</div>`;
				str += `<p class=` + list[i].rno +`>` + list[i].reply + `</p>`;
				str += `<strong style="display: block; text-align: right">` + (check ? "" : "*") + replyService.displayTime(date) + `</strong>`;
				str += `<div class="line"></div>`;
				str += `</li>`;
			}
			repliesUL.html(str);
			showReplyPage(total)
			
		}
		
		);
	}
	
	$("div.paging").on("click", "a.changePage", function(e){
		e.preventDefault();
		page = $(this).attr("href");
		showList(page);
	})
	
	$("a.finish").on("click", function(e){
		e.preventDefault();
		replyService.add({
			bno: bno,
			reply: $("textarea[name='reply']").val(),
			replier: $("input[name='replier']").val()
		}, function(){
			$("textarea[name='reply']").val("");
			$("input[name='replier']").val("");
			showList(page);
		});
	});
	
	$("a.register").on("click", function(e){
		e.preventDefault();
		$("div.register-form").show();
		$(this).hide();
	});
	
	$("a.cancel").on("click", function(e){
		e.preventDefault();
		$("div.register-form").hide();
		$("a.register").show();
	});
	
	//이벤트 위임
	//DOM으로 추가한 태그들은 이벤트가 발생하지 않는다.
	//이런 경우에는 기존에 있는 태그에 이벤트를 걸어주고,
	//새롭게 추가될 태그의 선택자를 on("이벤트명", "자식요소 선택자", callback)메소드에 같이 전달한다.
	//기존에 있었던 태그의 이벤트가 새롭게 추가된 자식 요소에 위임된다.
	let check = false;
	$("ul.replies").on("click", "a.modify-ready", function(e){
		e.preventDefault();

		if(check) {
			alert("이미 수정중인 댓글이 있습니다.");
			return;
		}
		
		let finish = $("a.modify-finish");
		let rno = $(this).attr("href");
		const p = $("li#" + rno).find("p." + rno);
		const remove = $("a.remove");
		
		$(this).hide();
		for(let i=0; i<finish.length; i++){
			if(finish[i].getAttribute("href") == rno){
				$(finish[i]).show();
				$(remove[i]).attr("class", "modify-cancel");
				$(remove[i]).text("취소");
				break;
			}
		}
		p.html("<textarea class=" + rno + " style='resize: none;'>" + p.text() + "</textarea>");
		check = true;
	});
	
	$("ul.replies").on("click", "a.modify-finish", function(e){
		e.preventDefault();
		
		let rno = $(this).attr("href");
		const p = $("li#" + rno).find("p." + rno);
		replyService.modify({
			reply: $("textarea."+rno).val(),
			rno: rno
		}, function(){
			p.html($("textarea."+rno).val());
			$(this).hide();
			$(this).prev().show();
			
			showList(page);
			check = false;
		});
	});
	
	$("ul.replies").on("click", "a.remove", function(e){
		e.preventDefault();
		let rno = $(this).attr("href");
		
		replyService.remove(rno, function(result){
			alert(result);
			showList(page);
		});
		
	});

	
	/* console.log("===JS TEST==="); */
	
	/* replyService.add({
		bno: bno,
		reply: "모듈화 테스트",
		replier: "한동석"
	}, function(result){
		console.log(result);
	}); */
	
	/* replyService.getList({bno: bno, page: 2}, function(list){
		console.log(list);
	}); */
	
	/* replyService.remove(64, function(result){
		alert(result);
	}); */
	
	/* replyService.modify({
		reply: "댓글 수정 테스트",
		rno: 61
	}, function(result){
		alert(result);
	}); */
	
	/* replyService.getReply(61, function(reply){
		console.log(reply);
	}); */
	
	
	$(document).ready(function(e){
		var $uploadResult = $(".uploadResult ul");
		
		$.getJSON("files", {bno:"${board.bno}"}, function(files){
			showUploadResult(files);
			
		})
		
		function showUploadResult(files){
			var str = "";
			$(files).each(function(i,file){
				var thumbfileName = encodeURIComponent(file.uploadPath + "/t_" + file.uuid + "_" + file.fileName);
				var fileName = encodeURIComponent(file.uploadPath + "\\" + file.uuid+"_"+file.fileName);
				if(!file.fileType){
					str += "<li data-filename='" + file.fileName + "' data-uuid='" + file.uuid + "' data-uploadpath='" + file.uploadPath + "' data-filetype='" + file.fileType + "'>";
					str += "<div>";
					str += "<a href='/download?fileName="+ fileName+"''>"
					str += "<img src='/resources/images/attach.jpg' width='100'>";
					str += "</a>"
					str += "</div>";
					str += "<span>" + file.fileName + "</span>"
					str += "</li>";
				}else{
					str += "<li data-filename='" + file.fileName + "' data-uuid='" + file.uuid + "' data-uploadpath='" + file.uploadPath + "' data-filetype='" + file.fileType + "'>";
					str += "<div>";
					str += "<a href='/download?fileName="+ fileName+"''>"
					str += "<img src='/display?fileName=" + thumbfileName + "' width='100'>";
					str += "</a>"
					str += "</div>";
					str += "<span>" + file.fileName + "</span>"
					str += "</li>";
					
				}
				
			});
			$uploadResult.append(str);
		}
		
		
		
	});
	
	$("input[type='submit']").on("click", function(e){
		e.preventDefault();
		
		$(".uploadResult ul li").each(function(i, li){
			var fileName = encodeURIComponent($(li).data("filetype") ? $(li).data("uploadpath") + "/t_" + $(li).data("uuid") + "_" + $(li).data("filename") : 
				$(li).data("uploadpath") + "/" + $(li).data("uuid") + "_" + $(li).data("filename"));
			$.ajax({
				url:"/deleteFile",
				type: "post",
				data: {fileName: fileName, fileType: $(li).data("filetype")},
				success: function(){
					document.deleteForm.submit();
				}
			});
		})
	});
</script>


<!------------------------------------------------------------------------------------------------------>
<!---------------------------------------- 공통 스크립트------------------------------------------------>
<!------------------------------------------------------------------------------------------------------>

</body>
</html>