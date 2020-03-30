<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style style="text/css">
header {
	position: fixed;
	left: 0px;
	top: 0px;
	height: 60px;
	width: 100%;
}

header p {
	text-align: center; @import
	url('https://fonts.googleapis.com/css?family=Roboto+Condensed') ;
	.preserve-3d {
	transform-style: preserve-3d;
	-webkit-transform-style: preserve-3d;
}

body {
	padding: 0;
	margin: 0;
	border: 0;
	overflow-x: none;
	background-color: #ffffff;
	font-family: Roboto Condensed, sans-serif;
	font-size: 12px;
	font-smooth: always;
	-webkit-font-smoothing: antialiased;
}

.back {
	width: 33%;
	height: 200px;
	float: left;
	background-color: #eeeeee;
	border: 10px;
	border-color: #ffffff;
	border-style: solid;
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	counter-increment: bc;
	padding: 0px 5px 5px 5px;
}

.back:before {
	content: counter(bc) "_";
	position: absolute;
	padding: 10px;
}

/* button */
html input[type=submit] {
   style="width: 140px;
  height: 45px;
  font-family: 'Roboto', sans-serif;
  font-size: 11px;
  text-transform: uppercase;
  letter-spacing: 2.5px;
  font-weight: 500;
  color: #000;
  background-color: #fff;
  border: none;
  border-radius: 45px;
  box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease 0s;
  cursor: pointer;
  outline: none;" 
}
html input[type=submit]:hover {
  background-color: #2EE59D;
  box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
  color: #fff;
  transform: translateY(-7px);
}




@media screen and (max-width: 1260px) {
	.back {
		width: 50%;
	}
}

@media screen and (max-width: 840px) {
	.back {
		width: 100%;
	}
}
</style>
</head>
<body>
	<div  id="header">
	<c:choose>
		<c:when test="${login.m_admin==1}">
			<div id="header"><jsp:include page="../public/adminheader.jsp"></jsp:include></div>
		</c:when>
		<c:otherwise>
			<div id="header"><jsp:include page="../public/header.jsp"></jsp:include></div>
		</c:otherwise>
	</c:choose>
	</div>
	<style>
	html input[type=submit]{
	
position:relative;
left:60px;
top:20px;
  width: 120px;
  height: 45px;
  font-family: 'Roboto', sans-serif;
  font-size: 11px;
  text-transform: uppercase;
  letter-spacing: 2.5px;
  font-weight: 500;
  color: #000;
  background-color: #fff;
  border: none;
  border-radius: 45px;
  box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease 0s;
  cursor: pointer;
  outline: none;" 
}
html input[type=submit]:hover{
  background-color: #000000;
  box-shadow: 0px 0px 40px rgba(53, 59, 72,1.0);
  color: #fff;
  transform: translateY(-7px);
}
.delete{
position: relative;
bottom: 50px;
left: 100px;
}
.delete a{
min-height:100px;
padding:20px;
min-width:120px;
text-align:center;
padding: 15px;
position:relative;

top:20px;
  min-width: 200px;
  min-height: 150px;
  font-family: 'Roboto', sans-serif;
  font-size: 12px;
  text-transform: uppercase;
  letter-spacing: 2.5px;
  font-weight: 500;
  color: #000;
  background-color: #fff;
  border: none;
  border-radius: 45px;
  box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease 0s;
  cursor: pointer;
  outline: none;
  margin: 5px;

}

.delete a:hover{
 background-color: #000000;
  box-shadow: 0px 0px 40px rgba(53, 59, 72,1.0);
  color: #fff;
  transform: translateY(-7px);

}
	</style>

	<article class="container">
		<div class="page-header">
			<div class="col-md-6 col-md-offset-3"></div>
		</div>

			<div class="col-sm-6 col-md-offset-3">
				<form action="update" method="post" role="form" id="usercheck"
					name="member">
					<div class="form-group">
						<label for="id">아이디</label> <input type="text"
							class="form-control" id="m_id" name="m_id"value="${login.m_id}"readonly>
						<div class="eheck_font" id="id_check"></div>
					</div>
					<div class="form-group">
						<label for="password">새로운 비밀번호</label> <input type="password"
							class="form-control" id="m_password" name="m_password"
							placeholder="PASSWORD">
						<div class="eheck_font" id="password_check"></div>
					</div>
					<div class="form-group">
						<label for="password2">새로운 비밀번호 확인</label> <input type="password"
							class="form-control" id="m_password2" name="m_password2"
							placeholder="Confirm Password">
						<div class="eheck_font" id="password2_check"></div>
					</div>
					<div class="form-group">
						<label for="m_name">이름</label> <input type="text"
							class="form-control" id="m_name" name="m_name"
							value="${login.m_name}"readonly>
						<div class="eheck_font" id="name_check"></div>
					</div>
					<div class="form-group">
						<label for="m_birth">생년월일</label> <input type="tel"
							class="form-control" id="m_birth" name="m_birth"
							placeholder="ex) 19990101" value="${login.m_birth}" readonly>
						<div class="eheck_font" id="birth_check"></div>
					</div>
					<div class="form-group">
						<label for="m_email">이메일 주소</label> <input type="email"
							class="form-control" id="m_email" name="m_email"
							placeholder="E-mail" value="${login.m_email}">
						<div class="eheck_font" id="email_check"></div>
					</div>
					<div class="form-group">
						<label for="m_ph">휴대폰 번호</label> <input type="tel"
							class="form-control" id="m_ph" name="m_ph" value="${login.m_ph}">
						<div class="eheck_font" id="ph_check"></div>
					</div>
					<div class="form-group">
						<label for="m_gender">성별</label> <input type="gender"
							class="form-control" id="m_gender" name="m_gender"
							value="${login.m_gender}"readonly>

					</div>
					<div class="form-group">
						<input class="form-control" style="width: 40%; display: inline;"
							 name="m_oaddress" id="m_oaddress" type="text"
							value="${login.m_oaddress}"readonly >
					</div>
					<div class="form-group">
						<input class="form-control" style="top: 5px;"
							name="m_address" id="m_address" type="text" value="${login.m_address}" />
					</div>
					<div class="form-group">
						<input class="form-control" 
							name="m_detailaddress" id="m_detailaddress" type="text"value="${login.m_detailaddress}" />
					</div>
					<div class="form-group text-center"> 
						<input  type="submit" value="정보수정">
					</div>
					<div class="button">
					    <div class="delete">				
							<a href="/member/delete">회원탈퇴</a> 
					    </div>
					</div>
				</form>
			</div>
	</article>
	<div id="footer">
	<jsp:include page="../public/footer.jsp"></jsp:include>
</div>
</body>
</html>
