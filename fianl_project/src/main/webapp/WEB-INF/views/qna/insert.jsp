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
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    
    <!-- Bootstrap Fremwork Main Css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- All Plugins css -->
    <link rel="stylesheet" href="css/plugins.css">
    <!-- Theme shortcodes/elements style -->
    <link rel="stylesheet" href="css/shortcode/shortcodes.css">
    <!-- Theme main style -->
    <link rel="stylesheet" href="style.css">
    <!-- Responsive css -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- User style -->
    <link rel="stylesheet" href="css/custom.css">

    <!-- Modernizr JS -->
    <script src="/resources/js/vendor/modernizr-2.8.3.min.js"></script>
    
	<script src="/resources/imgjs2/board.js" type="text/javascript"></script>



<style type="text/css">
.fileDrop {
   width: 100%;
   height: 150px;
   border: 1px dotted green;
   background-color: white;
   margin: auto;
}

.uploadedList {
   list-style: none;
   margin-top: 20px;
}

.wrap {
   height: 100%;
   display: flex;
   align-items: center;
   justify-content: center;
}

.button  {
   margin:center;
   position: relative;
   text-align: center;
   width: 145px;
   height: 45px;
   line-height: 45px;
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
   font-family: 'Roboto', sans-serif;
}

.button:hover {
   background-color: #000000;
   box-shadow: 0px 15px 20px rgba(53, 59, 72, 1.0);
   color: #fff;
   transform: translateY(-7px);
}
</style>

</head>
<body>

	<c:choose>
		<c:when test="${login.m_admin==1}">
			<div id="header"><jsp:include page="../public/adminheader.jsp"></jsp:include></div>
		</c:when>
		<c:otherwise>
			<div id="header"><jsp:include page="../public/header.jsp"></jsp:include></div>
		</c:otherwise>
	</c:choose>
	<br><br><br>
</head>
<body>

<br><br><br><br><hr>
	
	<article class="container">
		<div class="page-header">
			<div class="col-md-6 col-md-offset-3"></div>
		</div>
		<div class="body__overlay"></div>

			<div class="col-sm-6 col-md-offset-3">
		     <form id="form" method="post">
		     		<div class="form-group">
		               <label for="title">상품 번호</label> <input required="required"
		                  class="form-control" name="q_fk_p_num">
		            </div>
		     		
		            <div class="form-group">
		               <label for="title">제목</label> <input required="required"
		                  class="form-control" name="q_title">
		            </div>
		            <div class="form-group">
		               <label for="q_fk_m_id">작성자</label>
		                	<input required="required"
		                  class="form-control" name="q_fk_m_id" value="${login.m_name}">
		            </div>
		            <div class="form-group">
		               <label for="content">내용</label>
		               <textarea required="required" rows="5" class="form-control"
		                  name="q_content"></textarea>
		            </div>

	         </form>
	         	<div class="form-group">
		            <label>업로드할 파일을 드랍시키세요.</label>
		            <div class="fileDrop">
		            </div>
		         </div>
		         <ul class="uploadedList clearfix"> 
		         </ul>
	         
	         <div class="wrap">
	            <button class="button" type="submit">등록</button>
	            <button class="button" type="reset">취소</button>
         	</div>
			</div>
	</article>
	<br><br>
	<div id="footer">
	<jsp:include page="../public/footer.jsp"></jsp:include>
	</div>
	        

   <script type="text/javascript">
      $(document).ready(function() {
         $("button[type='reset']").click(function() {
            location.href = "/qna/list?curPage=${param.curPage}";
         });
         
         
         $("button[type='submit']").click(function(event) {
            event.preventDefault();
            var msg ="";
            $(".delbtn").each(function(index) {
               var filename = $(this).attr("href");
               msg += "<input type='hidden' value='"+filename+"' name='q_filenames["+index+"]'>";
            });
            $("#form").append(msg);
            $("#form").submit();
         });
         
         
         $("button[type='reset']").click(function() {
            location.href = "/qna/list";
         }); 
         
         
         $(".fileDrop").on("dragenter dragover", function(event) {
            event.preventDefault();
         });
         
         
         $(".fileDrop").on("drop", function(event) {
            event.preventDefault();
            var filenames = event.originalEvent.dataTransfer.files;
             for(var i = 0; i < filenames.length; i++) {
               var formData = new FormData();   
               formData.append("file", filenames[i]);
               
               $.ajax({
                  type : "post",
                  url : "/uploadajax",
                  data : formData,
                  dataType : "text",
                  processData : false,
                  contentType : false,
                  success : function(data) {
                     iconAppend(data, true);             
                  }   
               });
             }
         });

         
         $(".uploadedList").on("click", ".delbtn", function(event) {
            event.preventDefault();
         
            var that = $(this); 
            var filename = that.attr("href");
            
            $.ajax({
               type : "post",
               url : "/deletefile",
               data : {
                  filename : filename
               },
               dataType : "text",
               success : function(data) {
                  that.parent("div").parent("li").remove();
               }
            });
         });
      });
   </script>

</body>
</html>