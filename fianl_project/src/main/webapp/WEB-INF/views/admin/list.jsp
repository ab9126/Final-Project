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
</head>
<body>
   <style tyle="text/css">
html, body {
   margin: 0;
   padding: 0;
   height: 45%;
}

#wrapper {
   position: relative;
   min-height: 100%;
}

#header {
   height: 40px;
}

#footer {
   position: absolute;
   bottom: 0;
   width: 100%;
   height: 70px;
}
</style>

   <div id="wrapper">

      <div id="header"><jsp:include page="../public/header.jsp"></jsp:include></div>

   </div>
   <div style="text-align: center">
      <c:if test="${login.m_name != null}">
         <p><h1>${login.m_name}님환영합니다.</h1><p>
      </c:if>
   </div>

   <div class="row">
      <div class="container">
         <table class="table table-hover">
            <thead>
               <tr>
                  <th>아이디</th>
                  <th>비밀번호</th>
                  <th>이름</th>
                  <th>생년월일</th>
                  <th>이메일</th>
                  <th>전화번호</th>
                  <th>성별</th>
               </tr>
            </thead>


            <tbody>
               <c:forEach items="${to.mlist}" var="dto">
                  <tr>
                     <td><a href="read.do?m_id=${dto.m_id}">${dto.m_id}</a></td>
                     <td>${dto.m_password}</td>
                     <td>${dto.m_name}</td>
                     <td>${dto.m_birth}</td>
                     <td>${dto.m_email}</td>
                     <td>${dto.m_ph}</td>
                     <td>${dto.m_gender}</td>
                  </tr>
               </c:forEach>
            </tbody>
         </table>
         <div class="page-footer" style="text-align: right;">
            <a href="delete" class="btn btn-success btn-lg"> <span
               class="glyphicon glyphicon-trash"></span> 회원삭제
            </a>
         </div>
      </div>
   </div>

   </div>

   <a href="/member/login">로그인</a>
   <a href="/member/logout">로그아웃</a>
   <a href="/member/insert">회원가입</a>
   <a href="/member/update">회원수정</a>



   <div id="footer"><jsp:include page="../public/footer.jsp"></jsp:include></div>
</body>
</html>