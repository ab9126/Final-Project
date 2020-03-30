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
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>


<style tyle="text/css">
	html, body {
	   margin: 0;
	   padding: 0;
	   height: 0%;
	}
	
	#wrapper {
	   position: relative;
	   min-height: 100%;
	}
	
	#header {
	   height: 50px;
	}
	
	/* #container { */
	/*    left: 50%; */
	/* } */
	#footer {
	   position: absolute;
	   bottom: 0;
	   width: 100%;
	   height: 70px;
	}
</style>

      <jsp:include page="../public/header.jsp"></jsp:include>
            
            
</head>
<body>


<div id="header">
<%--    <jsp:include page="../public/adminheader.jsp"></jsp:include> --%>
</div>




<div style="text-align: center">
      <h1>관리자 화면</h1>
   </div>



   <div class="container">
      <table class="table table-hover">
         <thead>
            <tr>
               <th>글번호</th>
               <th>상품</th>
               <th>제목</th>
               <th>작성자</th>
               <th>작성일</th>
            </tr>
         </thead>
         <tbody>
            <c:forEach items="${to.qlist}" var="dto">
               <tr data-qnum="${dto.q_num}">
                  <td>${dto.q_num}</td>
                  <td>${dto.q_fk_p_num}</td>
                  <td><c:forEach begin="1" end="${dto.q_indent}">ㄴ</c:forEach>
                     <a href="/qna/read/${dto.q_num}?curPage=${to.curPage}">${dto.q_title}</a></td>
                  <td>${dto.q_fk_m_id}</td>
                  <td>${dto.q_regdate}</td>
               </tr>

            </c:forEach>
         </tbody>
      </table>
        <form class="pull-right" id="searchform" action="/qna/search" method="post">
			<select name="selectoption" id="selectoption">
				<option value="all">전체</option>
				<option value="q_title">제목</option>
				<option value="q_content">본문</option>
				<option value="q_fk_m_id">작성자</option>
			</select>
			<hr>
			<input class="form-control" name="search" required><br>
			<button style="height: 30px; background-color: silver;" class="form-control glyphicon glyphicon-search" type="submit" value="검색"></button><br>
		</form>
      <div class="button">
         <a href="/qna/insert?curPage=${to.curPage}">글쓰기</a><br>
      </div>
      <div class="row">
         <div class="container">
            <div style="margin: auto; width: 90px;">
               <jsp:include page="../page.jsp" />
            </div>
         </div>
      </div>
   </div>







<div class="page-header"></div>
<div class="container">



   <div class="panel panel-default">
      <div class="panel-heading">회원 정보 입력</div>
      <div class="panel-body">
         <!-- action="확장자 방식의 서블릿요청주소 -->
         <form action="memberinsert.it" method="post">
            <div class="form-group">
               <!-- name="" 속성은 JSP 프로그램 진행시 필수 속성 -->
               <!-- 식별자는 자료형 클래스의 멤버명으로 작성할 것 -->
               <!-- 동일 자료 동일 식별자 원칙 -->
               <label for="name">이름:</label> <input type="text"
                  class="form-control" id="name" name="name" required>
            </div>
            <div class="form-group">
               <label for="phone">전화번호:</label> <input type="text"
                  class="form-control" id="phone" name="phone" required>
            </div>
            <div class="form-group">
               <label for="email">이메일:</label> <input type="text"
                  class="form-control" id="email" name="email" required>
            </div>

            <!-- submit 버튼은 JSP 프로그램 진행시 필수 요소 -->
            <!-- 폼 태그 범위 안에 위치해야 한다. -->
            <button type="submit" class="btn btn-default">Submit</button>

         </form>
      </div>
   </div>

   <div class="panel panel-default">
      <div class="panel-heading">회원 명단 출력</div>
      <div class="panel-body">
         <%--테이블 태그 --%>
         <table class="table table-striped">
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

         <form method="post" class="form-inline">

            <div class="form-group">
               <button type="button" class="btn btn-default">

                  <%-- 문제) EL를 이용한 동적 데이터 출력 --%>
                  Count <span class="badge">${count}</span>
               </button>
            </div>

            <div class="form-group">
               <select class="form-control" name="skey" id="skey">
                  <option value="all">전체</option>
                  <option value="name">이름</option>
                  <option value="phone">전화번호</option>
                  <option value="email">이메일</option>
               </select>
            </div>

            <div class="form-group">
               <input type="text" class="form-control" id="svalue" name="svalue">
            </div>

            <button type="submit" class="btn btn-default">Search</button>

         </form>
      </div>
   </div>
</div>


	
	        <br><br>

<jsp:include page="../public/footer.jsp"></jsp:include>


</body>
</html>