<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인 페이지</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" type="text/css" href="/resources/assets/css/main.css" />
	<style>
	</style>
</head>
<body>
	<div id="wrap" class="wrap">
	    <header class="header" role="banner">
	        <div class="header_inner">
		 <h1 class="blind">SITE</h1>
	        </div>
	    </header>
	
	    <div id="container" class="container">
	        <div class="content">
	            <div class="login_wrap">
	                <ul class="menu_wrap">
	                    <li class="menu_item" role="presentation">
 	                        <a id="loinid" class="menu_id on">
 	                        	<span class="text">ID 로그인</span>
							</a>			                            
	                    </li>
	                </ul>
	                <form id="frmNIDLogin" name="frmNIDLogin" target="_top" autocomplete="off" action="/board02/login" method="post">
	                    <ul class="panel_wrap">
	                        <li class="panel_item" style="display: block;">
	                            <div class="panel_inner" role="tabpanel" aria-controls="loinid">
	                                <div class="id_pw_wrap">
	                                    <div class="input_row" id="id_line">
	
	                                            <span class="icon_id">
	                                                <span class="blind">아이디</span>
	                                            </span>
	                                        <input type="text" id="id" name="id" placeholder="아이디" title="아이디" class="input_text" maxlength="41" value="">
	                                    </div>
	                                    <div class="input_row" id="pw_line">
	
	                                            <span class="icon_pw">
	                                                <span class="blind">비밀번호</span>
	                                            </span>
	                                        <input type="password" id="pw" name="pw" placeholder="비밀번호" title="비밀번호" class="input_text" maxlength="16">
	                                    </div>
	                                </div>
	                                <div class="btn_login_wrap">
	
	                                    <button type="submit" class="btn_login" id="log.login">
	                                        <span class="btn_text">로그인</span>
	                                    </button>
	
	                                </div>
	                            </div>
	                        </li>
	                    </ul>
	                </form>
	            </div>
	            <ul class="find_wrap" id="find_wrap">

	                <li><a target="_blank" href="/board02/findpw" class="find_text">비밀번호 찾기</a></li>
	                <li><a target="_blank" href="/board02/findid" class="find_text">아이디 찾기</a></li>
	                <li><a target="_blank"  href="/board02/join" class="find_text">회원가입</a>
	                </li>
	
	            </ul>
	    
	            <!--배너-->
	            <div id="gladbanner" class="banner_wrap">
	            </div>
	        </div>
	    </div>

	</div>
</body>
</html>