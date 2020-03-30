<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="/resources/imgjs/board2.js" type="text/javascript"></script>
  
  <style type="text/css">
  
  	.fileDrop{
  		width : 100%;
  		height : 200px;
  		border : 1px solid green;
  		background-color: lightslategray;
  		margin: auto;
  	}
  	
  	.uploadedList{
  		list-style: none;
  	}
  	
  	.uploadedList{
  		margin-top: 20px;
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


	<div class="container">
		<div class="row">
		
			<h1 class="jumbotron">상품수정</h1>
			
			<form method="post">
			
				<input name="p_num" value="${p_dto.p_num}" type="hidden" readonly>
			
				<div class="form-group">
					<label for="title">제목</label>
					<input name="p_title" id="title" class="form-control" value="${p_dto.p_title}">
				</div>
				
				<div class="form-group">
					<label for="price">가격</label>
					<input name="p_price" id="price" class="form-control" type="number" value="${p_dto.p_price}">
				</div>
				
				<div class="form-group">
					<label for="writer">작성자</label>
					<input name="p_fk_m_id" id="writer" class="form-control" value="${p_dto.p_fk_m_id}">
				</div>
				
				<div class="form-group">
					<label for="info">내용</label>
					<textarea rows="5" name="p_info" id="info" class="form-control">${p_dto.p_info}</textarea>
				</div>
				<div class="form-group">
					<label for="catecode">카테고리</label>
					<input name="p_catecode" id="catecode" type="radio" value="1" checked>아우터
					<input type="radio" id="catecode" name="p_catecode" value="2">상의
					<input type="radio" id="catecode" name="p_catecode" value="3">하의
				</div>
			
			
			<div class="form-group">
				<label>업로드할 파일을 드랍시키세요.</label>
				<div class="fileDrop">
				</div>
			</div>
	
			<ul class="uploadedList clearfix"> 

			</ul>
			
			</form>
			<div class="form-group"><!-- 원래 form태그 안에 썼지만 javascript(jquery) 이용하여 보내는 것이 더 좋음 -->
				<button type="submit" class="btn btn-primary">수정</button>
				<button type="reset" class="btn btn-warning">취소</button>
			</div>
			
		</div>
	</div>

<script type="text/javascript">
	$(document).ready(function() {
		var arr = ${filenames};
		for(var i = 0; i<arr.length;i++) {
			iconAppend(arr[i], true, ".uploadedList");
		}
		
		$(".uploadedList").on("click", ".board_img_icon", function() {
			var filename = $(this).attr("data-url");
			if(checkImg(filename)) {
				filename = getImageName(filename);
			}
			location.assign("/display?filename="+filename);
		});
		
		
		$(".btn-primary").click(function(){
			var msg = "";
			
			$(".delbtn").each(function(index) {
				var filename = $(this).attr("href");
				msg += "<input type='hidden' value='"+filename+"' name='filenames["+index+"]'>";
			});
			
			$("form").append(msg);
			$("form").submit();
		});
		
		$("button[type='reset']").click(function() {
			location.href = "/product/read/${p_dto.p_num}?curPage=${curPage}";
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
						iconAppend(data, true, ".uploadedList"); 				
					}	
				});
	 		}
		});

		$(".uploadedList").on("click", ".delbtn", function(event) {
			event.preventDefault();
		
			var that = $(this); 
			var filename = that.attr("href");
			var go = confirm("경고: 수정버튼과 상관없이 파일이 삭제됩니다.\n 삭제하시겠습니까?");
			
			if(go)
				$.ajax({
					type : "post",
					url : "/product/deletefile/${p_dto.p_num}",
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