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
	
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

    <!-- Modernizr JS -->
    <script src="/resources/js/vendor/modernizr-2.8.3.min.js"></script>
	<script src="/resources/imgjs2/board.js" type="text/javascript"></script>
	
	<c:choose>
		<c:when test="${login.m_admin==1}">
			<div id="header"><jsp:include page="../public/adminheader.jsp"></jsp:include></div>
		</c:when>
		<c:otherwise>
			<div id="header"><jsp:include page="../public/header.jsp"></jsp:include></div>
		</c:otherwise>
	</c:choose>

<style>

	 .fileDrop {
	   width: 100%;
	   height: 200px;
	   border: 1px dotted black;
	   background-image:url('/resources/images/product/sm-img/6.jpg');
	   background-position: 50% 50%;
	   background-size:100%
	   margin: auto;
	}
  	
  	.uploadedList{
  		list-style: none;
  	}
  	
  	.uploadedList{
  		margin-top: 20px;
  	}

.panel{
min-width:1123px;
}
</style>

<style>
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


<br><br><br><br><hr>

        <!-- cart-main-area start -->
        <div class="cart-main-area ptb--120 bg__white">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-12">
                        <div class="table-content table-responsive">
                              <table>
                                  <thead>
                                  </thead>
                               	  <tbody>
		                               <tr>
		                                 <td style="font-weight: bold; width: 20%;">제목</td>
		                                 <td style="text-align: left;">${q_dto.q_title}</td>
		                              </tr>
		                              <tr>
		                                 <td style="font-weight: bold; width: 20%;">작성자</td>
		                                 <td style="text-align: left;">${q_dto.q_fk_m_id}</td>
		                              </tr>
		                              <tr>
		                                 <td style="font-weight: bold; width: 20%;">작성일</td>
		                                 <td style="text-align: left;">${q_dto.q_regdate}</td>
		                              </tr>
		                              <tr>
		                                 <td style="font-weight: bold; width: 20%;">내용</td>
		                                 <td style="text-align: left;">${q_dto.q_content}</td>
		                              </tr>
		                              <tr>
		                                 <td style="font-weight: bold; width: 20%;">IMAGE</td>
		                                 
		                                 <td style="text-align: left;">
		                                 	<ul class="uploadedList clearfix" id="ruploadedList"></ul>
		                                 </td>
		                                 
		                              </tr>
                                 </tbody>
                              </table>
                        </div>
				        <div class="form-group">
							<button class="w3-button w3-black" id="btn-info">댓글</button> &nbsp;
							<button onclick="document.getElementById('id01').style.display='block'" id="btn-success" class="w3-button w3-black">수정</button> &nbsp;
							<button class="w3-button w3-black" id="btn-danger">삭제</button>&nbsp;
							<button class="w3-button w3-black" id="btn-primary">목록</button>&nbsp;
							
							  <div id="id01" class="w3-modal">
							    <div class="w3-modal-content">
							      <header class="w3-container"> 
							        <span onclick="document.getElementById('id01').style.display='none'" 
							        class="w3-button w3-display-topright">&times;</span>
							        <h2> Q&A 수정</h2>
							      </header>
							      <div class="w3-container">
							      <br>
							      
									제 목 :<input id="modal_q_title" placeholder="${q_dto.q_title}" class="form-control">
									본 문 :<textarea id="modal_q_content" placeholder="${q_dto.q_content}" class="form-control"></textarea>
							        <br>
							      </div>
							      <footer class="w3-container w3">
									<div class="modal-footer">
										<button class="btn btn-warning btn-xs" id="modal_update2" data-dismiss="modal">수정</button>
									</div>
							      </footer>
							    </div>
							  </div>
						</div>
                    </div>
                </div>
                
                <form id="formdel" action="/qna/delete">
                	<input type="hidden" name="q_num" value="${q_dto.q_num}"> 
                	<input type="hidden" name="curPage" value="${curPage}"> 
                </form>
                
                <div class="row">
					<div class="collapse" id="myCollapsible">
						<div class="form-group">
							<label for="r_fk_m_id">작성자</label>
							<input class="form-control" id="r_fk_m_id" name="r_fk_m_id" value="${login.m_name}">
						</div>
						<div class="form-controll">
							<label for="r_replytext">내용</label>
							<textarea rows="5" cols="138" class="form-control" id="r_replytext" name="r_replytext"></textarea>
						</div>
						<div class="form-group">
							<br>
							<button class="btn" id="insertReply">댓글 등록</button>
							<hr>
						</div>
					</div>
				</div>
         			<!-- 댓글 보여주는곳 -->
				<div class="row">
					<div id="replies">
					</div>
				</div> <!-- class = row -->                
            </div>
            
	        <div class="row">
				<div id="myModal" class="modal">
					<div class="modal-dialog">
						<div class="modal-header">
							<button data-dismiss="modal" class="close">&times;</button> <!-- 모달 없애는 버튼(class="close"), 사용자 속성 이용 -->
							<p id="modal_r_num"></p>
						</div>
						<div class="modal-body">
							<input id="modal_r_replytext" class="form-control">
						</div>
						<div class="modal-footer">
							<button class="btn btn-warning btn-xs" id="modal_update" data-dismiss="modal">수정</button> <!-- data-dismiss="modal"때문에 여기의 수정, 취소 버튼을 클릭하면 모달창이 없어짐 -->
							<button class="btn btn-warning btn-xs" id="modal_close" data-dismiss="modal">취소</button> <!-- 취소버튼을 눌러을때 다른 작업은 필요없음(취소버튼 누르면 모달창이 꺼짐)  -->
						</div>
					</div>
				</div>
			</div> <!-- class = row -->
        </div>
        
	        <br><br>
<jsp:include page="../public/footer.jsp"></jsp:include>



<script type="text/javascript">
	var r_fk_q_num = "${q_dto.q_num}";
	
	$(document).ready(function(){
		var arr = ${filenames};
		for(var i = 0; i<arr.length;i++) {
			iconAppend(arr[i], false);
		}
		
		$(".uploadedList").on("click", ".img_icon", function() {
			var filename = $(this).attr("data-url");
			if(checkImg(filename)) {
				filename = getImageName(filename);
			}
			location.assign("/display?filename="+filename);
		});
		
		//댓글버튼 클릭하면 댓글 입력창이 나타남
		$("#btn-info").click(function() {
			$("#myCollapsible").collapse("toggle");
		});
		
		//댓글등록을 누르면 댓글이 등록됨
		$("#insertReply").click(function() {
			var r_fk_m_id = $("#r_fk_m_id").val();
			var r_replytext = $("#r_replytext").val();
			
			$.ajax({
				type : 'post',
				url : '/replies',
				headers : {
					'Content-Type' : 'application/json',
					'X-HTTP-Method-Override' : 'post'
				},
				data : JSON.stringify({
					r_fk_m_id : r_fk_m_id,
					r_replytext : r_replytext,
					r_fk_q_num : r_fk_q_num
				}),
				dataType :'text',
				success : function(result) {
					$("#r_fk_m_id").val(''); //val 안이 비어있으면 가져오는거고, val 안에 값을 넣으면 값을 넣어주는것임, ''는 아무것도 안넣어줌
					$("#r_replytext").val('');
					getList(r_fk_q_num); // 댓글 입력한 후에 새로고침 없이 입력한 댓글 보이게 하기위해 getList 다시 호출
				}
			});
		});
		
		//목록 
		$("#btn-primary").click(function() {
			 location.assign("/qna/list?curPage=${curPage}");		
		});
		
		//삭제, form태그 이용 안하고 해보기
		$("#btn-danger").click(function() {
			$("#formdel").attr("method" ,"get")
			$("#formdel").submit();
		});
		
		getList(r_fk_q_num); //메서드 호출
		
		//댓글 삭제 동적으로 생성된 '삭제'버튼을 누르면 삭제가 되도록 on()이용
		$("#replies").on("click", ".btn-delete", function() {	
			var q_num = ${q_dto.q_num};
			var r_num = $(this).parent().attr("data-r_num");
			var r_replytext = $("#modal_r_replytext").val();
			
			$.ajax({	//실제 삭제 작업
				type: 'delete',
				url : '/replies/' + r_num,
				headers : {
					'Content-Type' : 'application/json',
					'X-HTTP-Method-Override' :'delete'
				},
				dataType : 'text',
				success : function(result) {
					getList(r_fk_q_num); //데이터 갱신
				}
			})
		});
		
		// 댓글 수정, 모달창 이용
		$("#replies").on("click", ".btn-update", function() {
			$("#myModal").modal("show");
			var r_num = $(this).parent().attr("data-r_num"); // 주석처리된 수정버튼 위에있는 div태그에(class="panel-body") rno 값이 있음, this = .btn-update
			var r_replytext = $(this).prev("p").text(); // 주석처리된 수정버튼 앞에있는 p태그에(댓글 입력하는곳) r_replytext 값이 있음
			$("#modal_r_num").text(r_num); //text()괄호가 비어있으면 값을 가져오는거고 text(rno) 이렇게 해주면 text에 rno값을 넣어주는것임
			$("#modal_r_replytext").val(r_replytext);

			$("#modal_update").click(function() {	//모달창은 정적으로 만들었기 때문에 .on()이 아닌(동적으로 만든 것일때 사용) .click을 써도 된다
				var r_num = $("#modal_r_num").text();
				var r_replytext = $("#modal_r_replytext").val();
				
				$.ajax({
					type : "put",
					url : '/replies',
					headers : {
						'Content-Type' : 'application/json',
						'X-HTTP-Method-Override' : 'put'
					},
					data : JSON.stringify({ 
						r_num : r_num,
						r_replytext : r_replytext
					}),
					dataType : 'text',
					success : function(data) {
						getList(r_fk_q_num);
					}
				});
			});
		});
		
		//qna 수정
		$("#btn-success").on("click", function() {
			$("#myModal2").modal("show");
			$("#modal_update2").click(function() {	//모달창은 정적으로 만들었기 때문에 .on()이 아닌(동적으로 만든 것일때 사용) .click을 써도 된다
				var q_num = ${q_dto.q_num};
				var q_content = $("#modal_q_content").val();
				var q_title = $("#modal_q_title").val();
				$.ajax({
					type : "put",
					url : '/qna',
					headers : {
						'Content-Type' : 'application/json',
						'X-HTTP-Method-Override' : 'put'
					},
					data : JSON.stringify({ 
						q_num : q_num,
						q_content : q_content,
						q_title : q_title
					}),
					dataType : 'text',
					success : function(data) {
						location.assign("/qna/read/"+ q_num + "?curPage=${curPage}");	
					}
				});
			});
		});
	});
	function getList(r_fk_q_num) { //댓글 가져오는 함수 만들기
		//select 할때는 $.getJSON 사용, select 아닐때는 (cud작업) ajax 사용
		$.getJSON("/replies/"+r_fk_q_num, function(data) {
			var str ="";
			for(var i=0; i<data.length; i++) {
				var obj = data[i];
				
				//이 밑에는 엔터치면 안됨, 위에 있는 panel-info 안의 내용을 복사해서 한줄로 만듬, 그리고 DB에 있는 데이터를 받아서 데이터(obj.rno)를 넣어줌
// 				str += '<div class="panel"><div class="panel-heading"><span>r_num:'+obj.r_num+', 작성자:'+obj.r_fk_m_id+'</span><span class="pull-right">'+obj.r_updatedate+'</span></div><div class="panel-body" data-r_num="'+obj.r_num+'"><p>'+obj.r_replytext+'</p><button class="btn btn-update btn-xs">수정</button>&nbsp;&nbsp;<button class="btn btn-delete btn-xs">삭제</button></div></div><hr>';
				str += '<div class="panel"><div class="panel-heading"><span>글번호 : '+obj.r_num+'  작성자 : '+obj.r_fk_m_id+'</span><span class="pull-right">작성일 : '+obj.r_updatedate+'</span></div><div class="panel-body" data-r_num="'+obj.r_num+'"><p>'+obj.r_replytext+'</p>&nbsp;&nbsp;<br><button class="btn btn-delete btn-xs">삭제</button></div></div><hr>';
			}
			$("#replies").html(str);
		});
	}
</script>
	
			
			
</body>
</html>