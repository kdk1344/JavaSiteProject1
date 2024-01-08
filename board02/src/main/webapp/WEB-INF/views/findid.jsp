<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
	b, strong	{
	font-weight:700;
	}
	.alert-warning {
    background: #FFF3E0;
    color: #AA3510;
    border-color: #ECB45A;
    width:800px;
    height:auto;
    border: 1px solid #a68419;
    padding-left:5px;
    }
    button, html input[type=button], input[type=reset], input[type=submit] {
    -webkit-appearance: button;
    cursor: pointer;
    }
    section{
    margin : 30px;
    }
    
    div.find-info{
    width:1000px;
    height: 250px;
    border-style:groove;
    padding-left:20px;
    }
    
</style>
<meta charset="UTF-8">
<title>Finding ID</title>
</head>
<body>
	<div class="find-info">
	    <h4 class="margin-bottom-30"><strong>회원정보 찾기</strong></h4>
	    <div class="alert alert-warning">
	        <p><i class="fas fa-exclamation-circle"></i> 회원가입 시 등록하신 이메일 주소를 입력해 주세요. 아이디 정보를 보내드립니다.</p>
	    </div>
	
	    <form class="user" action="/board02/findid" method="post">
		    <input type="hidden" name="cert_no" value="">
		    <div id="info_fs">
		        <section>
		            <label for="mb_email" class="label">E-mail 주소</label>
		            <label class="input required-mark">
		                <i class="icon-append far fa-envelope"></i>
		                <input type="text" name="email" id="email" required="" size="30">
		            </label>
		        </section>
		        <div class="margin-hr-15"></div>
		    </div>
		    <div class="text-center margin-top-30">
		        <button type="submit" class="btn btn-primary btn-user btn-block">Find ID</button>
				<button type="button" onclick="location.href='/board02/loginForm' ">Login</button>
		    </div>
	    </form>
	</div>
</body>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>
<script src="member.js"></script>
</html>