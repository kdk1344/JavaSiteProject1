<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>                                                            
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html>
<html>
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
    margin-bottom:10px;
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
<head>
<meta charset="UTF-8">
<title>Finding Password</title>
</head>
<body>
	<div class="find-info">
	    <h4 class="margin-bottom-30"><strong>회원정보 찾기</strong></h4>
	    <div class="alert alert-warning">
	        <div class="result-box">
				<c:choose>
					<c:when test="${empty findId}">
						<p class="inquiry">조회결과가 없습니다.</p>
					</c:when>
			        <c:otherwise>
			            <p>당신의 ID는 ${findId.id}입니다.</p>
			        </c:otherwise>
				</c:choose>
			</div>
	    </div>
	
	    <div class="text-center margin-top-30">
			<button type="button" onclick="location.href='/board02/loginForm' ">Login</button>
	    </div>
	</div>
</body>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>
<script src="member.js"></script>
</html>