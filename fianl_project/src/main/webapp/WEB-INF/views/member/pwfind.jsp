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
<script src="js/vendor/modernizr-2.8.3.min.js"></script>
<style style="text/css">

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
</style>
</head>
<body>

   <div id="wrapper">

    <c:choose>
		<c:when test="${login.m_admin==1}">
			<div id="header"><jsp:include page="../public/adminheader.jsp"></jsp:include></div>
		</c:when>
		<c:otherwise>
			<div id="header"><jsp:include page="../public/header.jsp"></jsp:include></div>
		</c:otherwise>
	</c:choose>

   </div>

   <div class="col-sm-6 col-md-offset-3">
      <form role="form" id="usercheck" name="member">
         <div class="form-group">
            <label for="id">아이디</label> <input type="text" class="form-control"
               id="m_id" name="m_id" placeholder="ID">
            <div class="eheck_font" id="id_check"></div>
         </div>
         <div class="form-group">
            <label for="m_email">이메일</label> <input class="form-control"
               id="m_email" name="m_email" placeholder="m_email">
         </div>
      </form>
          <div class="form-group text-center">
             <button class="sign" type="submit">찾기</button>
          </div>
   </div>



   <div id="footer"><jsp:include page="../public/footer.jsp"></jsp:include></div>
   
        <script type="text/javascript">
         $(document).ready(function(){

            $(".sign").click(function() {
           	 var m_id = $("#m_id").val();
        	 var m_email = $("#m_email").val();
            	$.ajax({
                  type:'post',
                  url   :'/member/pwfind',      
                  data: {
                	  m_id:m_id,
                	  m_email:m_email
                  },
                  dataType:'text',
                  success: function(result){ 
				      alert(result);                 
                  }
               });
         	});
         }); 
        </script>
</body>
</html>