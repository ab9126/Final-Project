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
<link rel="shortcut icon" type="image/x-icon"
   href="/resources/images/favicon.ico">
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
<script src="/resources/imgjs/board2.js" type="text/javascript"></script>

<style type="text/css">
.fileDrop {
   width: 50%;
   height: 100px;
   border: 1px solid green;
   background-color: white;
   margin: auto;
}

.uploadedList {
   list-style: none;
}

.uploadedList {
   margin-top: 20px;
}

ul {
   padding: 16px 0;
}

ul li {
   display: inline-block;
   margin: 5px;
   font-size: 14px;
   letter-spacing: -.5px;
}

ul li.tag-item {
   padding: 4px 8px;
   background-color: #777;
   color: #000;
}

.tag-item:hover {
   background-color: #262626;
   color: #fff;
   cursor: pointer;
}

.del-btn {
   font-size: 12px;
   font-weight: bold;
}

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

.btn {
   position: relative;
   left: 200px;
}
</style>

<div id="wrapper">

   <c:choose>
      <c:when test="${login.m_admin==1}">
         <div id="header">
            <jsp:include page="../public/adminheader.jsp"></jsp:include></div>
      </c:when>
      <c:otherwise>
         <div id="header"><jsp:include page="../public/header.jsp"></jsp:include></div>
      </c:otherwise>

   </c:choose>
</div>
</head>
<body>
   <form method="post">
      <div class="col-sm-6 col-md-offset-3">

         <div class="form-group">

            <label for="title">제목</label> <input name="p_title" id="title"
               class="form-control">
         </div>

         <div class="form-group">
            <label for="price">가격</label> <input name="p_price" id="price"
               class="form-control" type="number">
         </div>

         <div class="form-group">
            <label for="writer">작성자</label> <input name="p_fk_m_id" id="writer"
               value="${login.m_id}" class="form-control">
         </div>
         <div class="form-group">
            <label for="info">내용</label>
            <textarea rows="5" name="p_info" id="info" class="form-control"></textarea>
         </div>
         <div class="form-group">
            <label for="catecode">카테고리</label> <input name="p_catecode"
               id="catecode" type="radio" value="Outer" checked>Outer <input
               type="radio" id="catecode" name="p_catecode" value="Top">Top
            <input type="radio" id="catecode" name="p_catecode" value="Bottom">Bottom
         </div>

         <table class="table table-hover">
            <colgroup>
               <col class="col-sm-3">
               <col class="col-sm-9">
               <col class="col-sm-1">
            </colgroup>

            <thead>

               <tr>

                  <th style="max-width: 200px;">옵션명</th>


                  <th style="min-width: 800px; max-width: 100px;">옵션값</th>


               </tr>


            </thead>

            <tbody>


               <tr>
                  <div style="width: 50px">
                     <td><div>색상</div></td>
                     <td><input class="form-control" data-class="tag"
                        placeholder="Enter 키 를 통해 구분하세요.">
                        <ul id="color-list">
                        </ul></td>
               </tr>
               <tr>
                  </div>
                  <td><div>사이즈</div></td>
                  <td><input class="form-control" data-class="tag"
                     placeholder="Enter 키 를 통해 구분하세요.">
                     <ul id="size-list">
                     </ul></td>
               </tr>
            </tbody>
         </table>

         <div class="form-group">
            <label>업로드할 파일을 드랍시키세요.</label>
            <div class="fileDrop"></div>
         </div>



         <ul class="uploadedList clearfix">

         </ul>
   </form>



   <div class="form-group btn">
      <!-- 원래 form태그 안에 썼지만 javascript(jquery) 이용하여 보내는 것이 더 좋음 -->
      <button type="submit" class="btn btn-primary">등록</button>
      <button type="reset" class="btn btn-warning">초기화</button>
   </div>









   <script type="text/javascript">
      $(document)
            .ready(
                  function() {

                     $("button[type='submit']")
                           .click(
                                 function(event) {
                                    event.preventDefault();
                                    var msg = "";

                                    $("#color-list")
                                          .children()
                                          .each(
                                                function() {
                                                   var do_name = $(
                                                         this)
                                                         .attr(
                                                               "data-val");
                                                   msg += "<input type='hidden' value='"+do_name+"' name='colorArr'>";
                                                });
                                    $("#size-list")
                                          .children()
                                          .each(
                                                function() {
                                                   var do_name = $(
                                                         this)
                                                         .attr(
                                                               "data-val");
                                                   msg += "<input type='hidden' value='"+do_name+"' name='sizeArr'>";
                                                });

                                    $(".delbtn")
                                          .each(
                                                function(index) {
                                                   var filename = $(
                                                         this)
                                                         .attr(
                                                               "href");
                                                   msg += "<input type='hidden' value='"+filename+"' name='filenames["+index+"]'>";
                                                });
                                    $("form").append(msg);
                                    $("form").submit();

                                 });

                     $("button[type='reset']").click(function() {
                        location.href = "/board/list";
                     });

                     $(".fileDrop").on("dragenter dragover",
                           function(event) {
                              event.preventDefault();
                           });

                     $(".fileDrop")
                           .on(
                                 "drop",
                                 function(event) {
                                    event.preventDefault();

                                    var filenames = event.originalEvent.dataTransfer.files;

                                    for (var i = 0; i < filenames.length; i++) {
                                       var formData = new FormData();
                                       formData.append("file",
                                             filenames[i]);

                                       $
                                             .ajax({
                                                type : "post",
                                                url : "/uploadajax",
                                                data : formData,
                                                dataType : "text",

                                                processData : false,
                                                contentType : false,
                                                success : function(
                                                      data) {
                                                   iconAppend(
                                                         data,
                                                         true,
                                                         ".uploadedList");
                                                }
                                             });
                                    }
                                 });

                     $(".uploadedList").on(
                           "click",
                           ".delbtn",
                           function(event) {
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
                                    that.parent("div").parent("li")
                                          .remove();
                                 }
                              });
                           });

                     $(document)
                           .on(
                                 "keypress",
                                 'input[data-class="tag"]',
                                 function(e) {

                                    var self = $(this);

                                    if (e.key === "Enter") {

                                       var tagValue = self.val(); // 값 가져오기

                                       // 값이 없으면 동작 ㄴㄴ
                                       if (tagValue != "") {
                                          self
                                                .next()
                                                .append(
                                                      "<li class='tag-item' data-val='"+tagValue+"'>"
                                                            + tagValue
                                                            + "<span style='margin-left: 8px'>x</span></li>");
                                          self.val("");
                                       }

                                       e.preventDefault(); // SpaceBar 시 빈공간이 생기지 않도록 방지
                                    }
                                 });

                     $(document).on("click", ".tag-item", function() {
                        $(this).remove();
                     });

                  });
   </script>
</body>
</html>