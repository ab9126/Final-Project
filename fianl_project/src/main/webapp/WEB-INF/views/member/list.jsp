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
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 <!-- Place favicon.ico in the root directory -->
    <link rel="shortcut icon" type="image/x-icon" href="/resources/images/favicon.ico">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    
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
</head>
     <c:choose>
      <c:when test="${login.m_admin==1}">
         <div id="header"><jsp:include page="../public/adminheader.jsp"></jsp:include></div>
      </c:when>
      <c:otherwise>
         <div id="header"><jsp:include page="../public/header.jsp"></jsp:include></div>
      </c:otherwise>
   </c:choose>
<body>
   <br><br><br><br><hr>

   <div class="container">
      <div class="page-header">
         <h1>회원정보리스트</h1><br><br>
      </div>
      
   <c:choose>
      <c:when test="${login.m_name != null}">
         <div style="margin-left: 480px;">   
            <h2>${login.m_name} 님 환영 합니다.</h2>
            <br>
         </div>
      </c:when>
   </c:choose>
      
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
      <br>
      <div class="page-footer" style="text-align: right;">
         <a href="delete" class="btn-default btn-lg">회원삭제</a>
      </div>
      <br>
      <form class="pull-right" id="searchform" action="/member/search" method="post">
         <select name="selectoption" id="selectoption">
            <option value="all">전체</option>
            <option value="m_id">아이디</option>
            <option value="m_name">이름</option>
            <option value="m_email">이메일</option>
         </select>
         <br><br><br><hr>
         <input class="form-control" name="search"><br>
         <button style="height: 30px; background-color: silver;" class="form-control glyphicon glyphicon-search" type="submit" value="검색"></button><br>
      </form>
      
      <div style="margin-left: 480px;">   
         <jsp:include page="../page.jsp" />
      </div>
      <div style = "margin-top: 400px;"></div>
   </div>
   
   <div id="footer">
      <jsp:include page="../public/footer.jsp"></jsp:include>
   </div>
</body>
</html>