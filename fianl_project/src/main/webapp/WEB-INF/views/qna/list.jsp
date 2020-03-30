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
<script src="/resources/imgjs2/board.js" type="text/javascript"></script>
<style>
	html, body {
	   margin: 0;
	   padding: 0;
	   height: 35%;
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
	
	.button {
	   height: 100%;
	   display: flex;
	   align-items: center;
	   justify-content: center;
	}
	
	.button a {
	    position:relative;
	    top:40px;
	    right:500px;
	   text-align: center;
	   width: 145px;
	   height: 45px;
	   line-height: 45px; font-family : 'Roboto', sans-serif;
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
	   font-family: 'Roboto', sans-serif;
	}
	
	.button a:hover {
	   background-color: #000000;
  	   box-shadow: 0px 0px 40px rgba(53, 59, 72,1.0);
	   color: #fff;
	   transform: translateY(-7px);
	}
</style>

	<c:choose>
		<c:when test="${login.m_admin==1}">
			<div id="header"><jsp:include page="../public/adminheader.jsp"></jsp:include></div>
		</c:when>
		<c:otherwise>
			<div id="header"><jsp:include page="../public/header.jsp"></jsp:include></div>
		</c:otherwise>
	</c:choose>

</head>
<body>
<br><br><hr>
   <div id="wrapper">
   </div>
   <div style="text-align: center">
      <h1>Q&A</h1>
   </div>
   
<br>

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
			<button style="height: 30px; background-color: silver;" class="form-control glyphicon glyphicon-search" type="submit" value="검색"></button>
		</form>
		<br>
		  <div style="margin-left: 250px;" class="button">
	         <a href="/qna/insert?curPage=${to.curPage}">글쓰기</a>
	      </div>
      <br>
      <div class="row">
         <div class="container">
            <div style="margin: auto; width: 90px;">
               <jsp:include page="../page.jsp" />
            </div>
         </div>
      </div>
   </div>
   <div id="footer"><jsp:include page="../public/footer.jsp"></jsp:include></div>


</body>
</html>