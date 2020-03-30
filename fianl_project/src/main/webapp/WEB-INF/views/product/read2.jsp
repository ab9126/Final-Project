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
  
</head>
<style type="text/css">
.fileDrop{
        width : 100%;
        height : 200px;
        border : 1px solid green;
        background-color: lightslategray;
        margin: auto;
}
.uploadedList {
   list-style: none;
   margin-top: 20px;
}

.imgList {
   list-style: none;
   margin-top: 20px;
}
</style>
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
      
         <h1 class="jumbotron">상품 보기</h1>
         
         <form method="post">
         
            <div class="form-group">
               <label for="title">제목</label>
               <input name="p_title" id="title" class="form-control" value="${p_dto.p_title}" readonly>
            </div>
            
            <div class="form-group">
               <label for="price">가격</label>
               <input name="p_price" id="price" class="form-control" type="number" value="${p_dto.p_price}" readonly>
            </div>
            
            <div class="form-group">
               <label for="writer">작성자</label>
               <input name="p_fk_m_id" id="writer" class="form-control" value="${p_dto.p_fk_m_id}" readonly>
            </div>
            
            <div class="form-group">
               <label for="info">내용</label>
               <textarea rows="5" name="p_info" id="info" class="form-control" readonly>${p_dto.p_info}</textarea>
            </div>   
            
         <ul class="imgList clearfix"> 
         </ul>
         
         </form>
         <form id="selectform" method="post">
            <input type="hidden" name="cart_fk_p_num" value="${p_dto.p_num}">
            <input name="cart_fk_m_id" value="${login.m_id}">
            <div class="form-group">
               <select id="selectcolor">
                  <option value="">- [필수] 색상 선택 -</option>
                  <c:forEach items="${p_dto.colorArr}" var="color">
                     <option value="${color}">${color}</option>
                  </c:forEach>
               </select>
            </div>
         
            <div class="form-group">
               <select id="selectsize">
                  <option value="">- [필수] 사이즈 선택 -</option>
                  <c:forEach items="${p_dto.sizeArr}" var="size">
                     <option value="${size}">${size}</option>
                  </c:forEach>
               </select>
            </div>
            <div>
               <table id="selectlist" class="table">
                  <!-- <tr>
                     <td><div>black / M</div></td>
                     <td><input type="number" ></td>
                     <td><div>59000원</div></td>
                     <td><span class="selectdel">X</span></td>
                  </tr> -->
               </table>
            </div>
         </form>
            
            <div class="form-group">
               <button id="buy" class="btn btn-primary">구매</button>
               <button id="cart" class="btn btn-primary">장바구니</button>
            </div>
            
         <div class="form-group">
            <button id="review" class="btn btn-primary">리뷰</button>
            <button type="reset" class="btn btn-warning">목록</button>
            <button class="btn btn-success">수정</button>
            <button class="btn btn-danger">삭제</button>
         </div>
         
      </div>
      
            <!-- collapse:열렸다가 닫혔다가함(댓글버튼을 누르면 여기가 열렸다가 닫혔다가 하게하기) -->
      <div class="row">
         <div class="collapse" id="myCollapsible">
            
            <form id="reviewForm">
            <input name="r_fk_p_num" value="${p_dto.p_num}" type="hidden">
               <div>
                  <label for="r_grade">평점</label>
                  <select name="r_grade" id="r_grade">
                     <option >- [필수] 평점 선택 -</option>
                     <option value="1">★☆☆☆☆</option>
                     <option value="2">★★☆☆☆</option>
                     <option value="3">★★★☆☆</option>
                     <option value="4">★★★★☆</option>
                     <option value="5">★★★★★</option>
                  </select>
               </div>
               <div class="form-group">
                  <label for="r_fk_m_id">작성자</label>
                  <input class="form-control" id="r_fk_m_id" name="r_fk_m_id">
               </div>
               <div class="form-group">
                  <label for="r_content">내용</label>
                  <textarea rows="5" class="form-control" id="r_content" name="r_content"></textarea>
               </div>
            </form>
            
            <!-- 이 버튼은 실제 누르면 DB로 댓글이 입력되는 버튼, 위에있는 댓글버튼은 열렸다가 닫혔다가 하게하는 버튼임 -->
            <div class="form-group">
               <button class="btn btn-warning" id="insertReview">댓글 등록</button>
               <button class="btn btn-default">댓글 취소</button>
            </div>
            
            <div class="form-group">
            <label>업로드할 파일을 드랍시키세요.</label>
            <div class="fileDrop">
            </div>
         </div>
   
         <ul class="uploadedList clearfix"> 
         
         </ul>
         </div>
      </div><!-- class = row -->
      
      <!-- 댓글 보여주는곳 -->
      <div class="row">
         <div id="reviews">
             
         </div>
      </div> <!-- class = row -->
      
   </div>

<script type="text/javascript">
   $(document).ready(function() {
      
      var arr = ${filenames};
      for(var i = 0; i<arr.length;i++) {
         iconAppend(arr[i], false, ".imgList");
      }
      
      $(".uploadedList").on("click", ".img_icon", function() {
         var filename = $(this).attr("data-url");
         if(checkImg(filename)) {
            filename = getImageName(filename);
         }
         location.assign("/display?filename="+filename);
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
      
      $("button[type='reset']").click(function() {
         location.href = "/product/list?curPage=${curPage}";
      }); 
      
      $(".btn-danger").click(function() {
         location.href = "/product/delete/${p_dto.p_num}?curPage=${curPage}";
      });
      
      $(".btn-success").click(function(){
         location.href = "/product/update/${p_dto.p_num}?curPage=${curPage}";
      });
      
      //댓글버튼 클릭하면 댓글 입력창이 나타남
      $("#review").click(function() {
         $("#myCollapsible").collapse("toggle");
      });
      
      var p_num = ${p_dto.p_num};
      
      $("#insertReview").click(function() {
         var formData = new FormData(document.getElementById("reviewForm"));
         $(".delbtn").each(function() {
            var filename = $(this).attr("href");
            formData.append("filenames", filename);
         }); 
         
         var object = {};
         formData.forEach(function(value, key) {
             if (key != 'filenames') {
               object[key] = value;
               return;
             }
             if(!Array.isArray(object[key])){
                 object[key] = [];    
             }
             object[key].push(value);
           });

         $.ajax({
            type : 'post',
            url : '/review',
            headers : {
               'Content-Type' : 'application/json',
               'X-HTTP-Method-Override' : 'post'
            },
            data : JSON.stringify(object),
            dataType :'text',
            success : function(result) {
               $("#r_grade").find('option:first').attr('selected', 'selected');
               $("#r_fk_m_id").val('');
               $("#r_content").val('');
               $(".uploadedList").html('');
               getReviewList(p_num);
            }
         });
      });
      
       getReviewList(p_num); 
      
      function getReviewList(p_num) {
         $.getJSON("/review/"+p_num, function(data) {
            var str ="";
            for(var i=0; i<data.rlist.length; i++) {
               var obj = data.rlist[i];
               var r_grade = '';
               for(var j = 0; j< obj.r_grade; j++){
                  r_grade += '★';
               }
               for(var j = obj.r_grade; j< 5; j++){
                  r_grade += '☆';
               }
               var filestr = '<li class="col-xs-3">';
               obj.filenames.forEach(function(filename, idx){
                  filestr += '<a target="_blank" href="/display?filename='+getImageName(filename)+'"><img alt="이미지파일 썸네일" src="/display?filename='+filename+'" class="img_icon" data-url="'+filename+'"></a>';
               });
               filestr += '</li>';
               str +='<div class="panel panel-info">'
                     +'<div class="panel-heading">'
                        +'<span>'+r_grade+'</span><br>'
                        +'<span>작성자 :'+obj.r_fk_m_id+'</span>'
                        +'<span class="pull-right">'+obj.r_regdate+'</span>'
                     +'</div>'
                     +'<div class="panel-body" data-r_num="'+obj.r_num+'">'
                        +'<p>'+obj.r_content+'</p>'
                        +'<ul class="imgList clearfix">'
                        +filestr
                        +'</ul>'
                     /*    +'<button class="btn btn-link review-update pull-right">수정</button>' */
                        +'<button class="btn btn-link review-delete pull-right">삭제</button>'
                     +'</div>'
                  +'</div>';
                     
            }
            $("#reviews").html(str);
         });
      }
      
      $("#reviews").on("click", ".review-delete", function(){
         var r_num = $(this).parent().attr("data-r_num");
         var r_content = $(this).prev("p").text();
         $.ajax({
            type : 'delete',
            url : '/review/'+r_num,
            headers : {
               'Content-Type' : 'application/json',
               'X-HTTP-Method-Override' : 'delete'
            },
            dataType : 'text',
            success : function(result){
               getReviewList(p_num);
            }
         });
      });
      price = ${p_dto.p_price};
      $("select").change(function(){
         size = $("#selectsize option:selected").val();
         color = $("#selectcolor option:selected").val();
         if(size != "" && color != ""){
            console.log(price);
            msg = '<tr>'
               +'<input type="hidden" name="cart_sizes" value="'+size+'">'
               +'<input type="hidden" name="cart_colors" value="'+color+'">'
               +'<td><div>'+color+' / '+size+'</div></td>'
               +'<td><input name="cart_cnts" type="number" value="1"></td>'
               +'<td><div>'+ price +'</div></td>'
               +'<td><button class="selectdel">X</button></td>'
            +'</tr>';
            $("#selectlist").append(msg);
            $("#selectcolor").find('option:first').attr('selected', 'selected');
            $("#selectsize").find('option:first').attr('selected', 'selected');
         }
      });
      
      $("#selectlist").on("click", ".selectdel", function(){
         console.log($(this).parent().parent());
         $(this).parent().parent().remove();
      });
      
      $("#cart").click(function(){
         $("#selectform").attr("action", "/cart/insert");
         $("#selectform").submit();
      });
         
   });
   
</script>

   
</body>
</html>