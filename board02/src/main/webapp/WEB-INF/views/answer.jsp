<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<style>
	body {margin-top: -50px;}
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
						<h3><span>상담게시판</span></h3>
						<ul>
							<li>홈  >  기타  >  상담게시판</li>
						</ul>
					</div>
					<div class="sub_con_area">
						<div id="main">
							<div class="wrapper">
								<div class="inner">
									<header class="major">
										<h1>Board</h1>
										<p>게시글 답글</p>
									</header>
									<h3><a href="/board02/sangdam${criteria.params}" class="button small">목록 보기</a></h3>
									<div class="content">
										<div class="form">
											<form action="/board02/answer" method="post">
												<input type="text" name="root" value="<c:out value="${board.root}"/>">
												<div class="fields">
													<div class="field">
														<h4>*제목</h4>
														<input type="text" name="title" value="ㄴ re : ${board.title}">
													</div>
													<div class="field">
														<h4>*내용</h4>
														<textarea name="content" rows="6" style="resize: none;">${board.content}</textarea>
													</div>
													<div class="field">
														<h4>*작성자</h4>
														<input type="text" name="writer" value="${board.writer}">
													</div>
													<div class="field">
														<h4>첨부파일</h4>
														<input name="multipartFiles" type="file" multiple/>
													</div>
													<div class="field">
														<div class="uploadResult">
															<ul></ul>
														</div>
													</div>
												</div>
												<ul class="actions special">
													<li>
														<input type="submit" class="button" value="글 쓰기"/>
													</li>
												</ul>
											</form>
										</div>
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
<script src="/resources/assets/js/jquery.min.js"></script>
<script src="/resources/assets/js/jquery.dropotron.min.js"></script>
<script src="/resources/assets/js/browser.min.js"></script>
<script src="/resources/assets/js/breakpoints.min.js"></script>
<script src="/resources/assets/js/util.js"></script>
<script src="/resources/assets/js/main.js"></script>
<script>
	$(document).ready(function(e){
		var $uploadResult = $(".uploadResult ul");
		var contextPath = "${pageContext.request.contextPath}";
		var IMG_FORMAT = "\\.(exe|sh|zip|alz)$";
		var maxSize = 1024*1024*20;
		
		function showUploadResult(files){
			var str = "";
			$(files).each(function(i,file){
				if(!file.fileType){
					var fileName = file.uploadPath + "\\" + file.uuid+"_"+file.fileName;
					str += "<li data-filename='" + file.fileName + "' data-uuid='" + file.uuid + "' data-uploadpath='" + file.uploadPath + "' data-filetype='" + file.fileType + "'>";
					str += "<div>";
					str += "<img src='/resources/images/attach.jpg' width='100'>";
					str += "</div>";
					str += "<span>" + file.fileName + "</span>"
					str += "</li>";
				}else{
					var fileName = encodeURIComponent(file.uploadPath + "/t_" + file.uuid + "_" + file.fileName);
					str += "<li data-filename='" + file.fileName + "' data-uuid='" + file.uuid + "' data-uploadpath='" + file.uploadPath + "' data-filetype='" + file.fileType + "'>";
					str += "<div>";
					str += "<img src='/display?fileName=" + fileName + "' width='100'>";
					str += "</div>";
					str += "<span>" + file.fileName + "</span>"
					str += "</li>";
					
				}
				
			});
			$uploadResult.append(str);
		}
		
		
		$("input[type='file']").change(function(e){
			$(".uploadResult ul li").remove();
			var formData = new FormData();
			var $inputFile = $(this);
			var files = $inputFile[0].files;
			console.log(files);
			
			for(let i=0; i<files.length; i++){
				if(!checkExtension(files[i].name, files[i].size)){
					return false;
				}
				formData.append("multipartFiles", files[i]);
			}
			
			$.ajax({
				url: '/upload',
				processData: false,
				contentType: false,
				data:formData,
				type:"post",
				dataType:"json",
				success: function(result){
					console.log(result);
					showUploadResult(result);	
				}
			});
		});

	})
</script>
</body>
</html>