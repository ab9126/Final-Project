
<%@page import="com.naver.dto.PageTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="description" content="">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- Place favicon.ico in the root directory -->
<link rel="shortcut icon" type="/resources/image/x-icon"
	href="/resources/images/favicon.ico">
<link rel="apple-touch-icon" href="/resources/apple-touch-icon.png">

<!-- Bootstrap Fremwork Main Css -->
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<!-- All Plugins css -->
<link rel="stylesheet" href="/resources/css/plugins.css">
<!-- Theme shortcodes/elements style -->
<link rel="stylesheet" href="/resources/css/shortcode/shortcodes.css">
<!-- Theme main style -->
<link rel="stylesheet" href="/resources/style.css">
<!-- Responsive css -->
<link rel="stylesheet" href="/resources/css/responsive.css">
<!-- User style -->
<link rel="stylesheet" href="/resources/css/custom.css">


<!-- Modernizr JS -->
<script src="/resources/js/vendor/modernizr-2.8.3.min.js"></script>

  	<c:choose>
		<c:when test="${login.m_admin==1}">
			<div id="header"><jsp:include page="../public/adminheader.jsp"></jsp:include></div>
		</c:when>
		<c:otherwise>
			<div id="header"><jsp:include page="../public/header.jsp"></jsp:include></div>
		</c:otherwise>
	</c:choose>

<style> 
input[type=text] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border: none;
  border-bottom: 2px solid black;
}

input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border: none;
  border-bottom: 2px solid black;
}
</style>

</head>


<!-- Start Login Register Area -->
<div class="htc__login__register bg__white ptb--130" style="background: rgba(0, 0, 0, 0) url(/resources/images/bg/5.jpg) no-repeat scroll center center/cover;">
	<div class="container">
		<div class="row">
			<div class="col-md-6 ml-auto mr-auto">
				<ul class="login__register__menu nav justify-contend-center"
					role="tablist">
					<li role="presentation" class="login active"><a class="active"
						href="#login" role="tab" data-toggle="tab">Login</a></li>
				</ul>
			</div>
		</div>
		<!-- Start Login Register Content -->
		<div class="row tab-content">
			<div class="col-md-6  ml-auto mr-auto">
				<div class="htc__login__register__wrap">
						<!-- Start Single Content -->
						<div id="login" role="tabpanel"
							class="single__tabs__panel tab-pane active">
							<div id="login" role="tabpanel" class="single__tabs__panel tab-pane active">
								<form action="/member/loginPost" id="login_form" method="post">
									<input name="m_id" type="text" placeholder="User Name*">
									<input name="m_password" type="password" placeholder="Password*">
								</form>
							</div>
							<div class="tabs__checkbox">
								<input type="checkbox"> <span> 자동저장</span> 
								<span class="forget"><a href="/member/pwfind">비밀번호찾기</a></span>
							</div>
							<div class="htc__login__btn mt--30">
								<button class="btn" id="login_btn">로그인</button>
								&nbsp;&nbsp;
								<button class="btn" id="insert_btn">회원가입</button>
							</div>
						</div>
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="../public/footer.jsp"></jsp:include>

<script type="text/javascript">
	$(document).ready(function() {
		
		$("#login_btn").click(function(event) {
			event.preventDefault();
			$("#login_form").submit();
		});
		
		$("#insert_btn").click(function(event) {
			location.assign("/member/insert");
		});
		
	});
	
	
	
</script>
</body>
</html>