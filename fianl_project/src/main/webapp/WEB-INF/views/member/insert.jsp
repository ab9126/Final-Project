<%@page import="com.naver.dto.PageTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>minimi</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- 부트스트랩 -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- daum 도로명주소 찾기 api -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
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


<style type="text/css">
td {
	border: 1px solid #000000;
	border-collapse: collapse;
}

form {
	position: relative;
	top: 50px;
}

.text-center button {
	position: relative;
	top: 20px;
	width: 120px;
	height: 45px;
	font-family: 'Roboto', sans-serif;
	font-size: 11px;
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
	"
}

.text-center button:hover {
	background-color: #000000;
	box-shadow: 0px 0px 40px rgba(53, 59, 72, 1.0);
	color: #fff;
	transform: translateY(-7px);
}
input[type=text] {
   width: 100%;
   padding: 12px 20px;
   margin: 8px 0;
   box-sizing: border-box;
   border: none;
   border-bottom: 2px solid black;
}

input[type=password] {
   width: 100%;
   padding: 12px 20px;
   margin: 8px 0;
   box-sizing: border-box;
   border: none;
   border-bottom: 2px solid black;
}

input[type=tel] {
   width: 100%;
   padding: 12px 20px;
   margin: 8px 0;
   box-sizing: border-box;
   border: none;
   border-bottom: 2px solid black;
}

input[type=email] {
   width: 100%;
   padding: 12px 20px;
   margin: 8px 0;
   box-sizing: border-box;
   border: none;
   border-bottom: 2px solid black;
}
</style>

<script type="text/javascript">
//모든 공백 체크 정규식
var empJ = /\s/g;
//아이디 정규식
var idJ = /^[a-z0-9][a-z0-9_\-]{4,19}$/;
// 비밀번호 정규식
var pwJ = /^[A-Za-z0-9]{4,12}$/;
// 이름 정규식
var nameJ = /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/;
// 이메일 검사 정규식
var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
// 휴대폰 번호 정규식
var phoneJ = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;
/^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/
var birthJ = false;
var address = $('#m_detailaddress');

	$(document).ready(function() {
		var address = $('#m_detailaddress');
		//아이디 중복확인
		$("#m_id").blur(function() {
			if($('#m_id').val()==''){
				$('#id_check').text('아이디를 입력하세요.');
				$('#id_check').css('color', 'red');
			} else if(idJ.test($('#m_id').val())!=true){
				$('#id_check').text('4~12자의 영문, 숫자만 사용 가능합니다.');
				$('#id_check').css('color', 'red');
			} else if($('#m_id').val()!=''){
				var m_id=$('#m_id').val();
				$.ajax({
				async : true,
				type : 'POST',
				data : m_id,//mem_id라는 이름으로 mem_id라는 데이터를 @WebServlet("/idsearch.do")에 보내겠다
				url : 'idcheck.do',
				dateType: 'json',
				contentType: "application/json; charset=UTF-8",
				success : function(data) {
						if(data.cnt > 0){
						$('#id_check').text('중복된 아이디 입니다.');
						$('#id_check').css('color', 'red');
						$("#usercheck").attr("disabled", true);
						}
						else{
							if(idJ.test(m_id)){
								$('#id_check').text('사용가능한 아이디 입니다.');
								$('#id_check').css('color', 'blue');
								$("#usercheck").attr("disabled", false);
							}
							else if(m_id==''){
								$('#id_check').text('아이디를 입력해주세요.');
								$('#id_check').css('color', 'red');
								$("#usercheck").attr("disabled", true);
							}
							else{
								$('#id_check').text("아이디는 소문자와 숫자 4~12자리만 가능합니다.");
								$('#id_check').css('color', 'red');
								$("#usercheck").attr("disabled", true);
							}
						}
					}
				});//ajax///
			}//else if
		});//blur
		
		$('form').on('submit',function(){
		var inval_Arr = new Array(8).fill(false);
		if (idJ.test($('#m_id').val())) {
		inval_Arr[0] = true;
		} else {
		inval_Arr[0] = false;
		alert('아이디를 확인하세요.');
		return false;
		}
		
		// 비밀번호가 같은 경우 && 비밀번호 정규식
		if (($('#m_password').val() == ($('#m_password2').val()))
		&& pwJ.test($('#m_password').val())) {
		inval_Arr[1] = true;
		} else {
		inval_Arr[1] = false;
		alert('비밀번호를 확인하세요.');
		return false;
		}
		// 이름 정규식
		if (nameJ.test($('#m_name').val())) {
		inval_Arr[2] = true;
		} else {
		inval_Arr[2] = false;
		alert('이름을 확인하세요.');
		return false;
		}
		// 생년월일 정규식
		if (birthJ) {
		console.log(birthJ);
		inval_Arr[3] = true;
		} else {
		inval_Arr[3] = false;
		alert('생년월일을 확인하세요.');
		return false;
		}
		// 이메일 정규식
		if (mailJ.test($('#m_email').val())){
		console.log(phoneJ.test($('#m_email').val()));
		inval_Arr[4] = true;
		} else {
		inval_Arr[4] = false;
		alert('이메일을 확인하세요.');
		return false;
		}
		// 휴대폰번호 정규식
		if (phoneJ.test($('#m_ph').val())) {
			console.log(phoneJ.test($('#m_ph').val()));
			inval_Arr[5] = true;
		} else {
			inval_Arr[5] = false;
			alert('휴대폰 번호를 확인하세요.');
			return false;
		}
		//성별 확인
		if(member.mem_gender[0].checked==false&&member.mem_gender[1].checked==false){
		inval_Arr[6] = false;
		alert('성별을 확인하세요.');
		return false;
		} else{
		inval_Arr[6] = true;
		}
		//주소확인
		if(address.val() == ''){
		inval_Arr[7] = false;
		alert('주소를 확인하세요.');
		return false;
		}else
		inval_Arr[7] = true;
		//전체 유효성 검사
		var validAll = true;
		for(var i = 0; i < inval_Arr.length; i++){
		if(inval_Arr[i] == false){
		validAll = false;
		}
		}
		if(validAll == true){ // 유효성 모두 통과
		alert('하이');
		} else{
		alert('정보를 다시 확인하세요.')
		}
		});
		$('#m_id').blur(function() {
		if (idJ.test($('#m_id').val())) {
		console.log('true');
		$('#id_check').text('');
		} else {
		console.log('false');
		$('#id_check').text('5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.');
		$('#id_check').css('color', 'red');
		}
		});
		$('#m_password').blur(function() {
		if (pwJ.test($('#m_password').val())) {
		console.log('true');
		$('#password_check').text('');
		} else {
		console.log('false');
		$('#password_check').text('4~12자의 숫자 , 문자로만 사용 가능합니다.');
		$('#password_check').css('color', 'red');
		}
		});
		//1~2 패스워드 일치 확인
		$('#m_password2').blur(function() {
		if ($('#m_password').val() != $(this).val()) {
		$('#password2_check').text('비밀번호가 일치하지 않습니다.');
		$('#password2_check').css('color', 'red');
		} else {
		$('#password2_check').text('');
		}
		});
		//이름에 특수문자 들어가지 않도록 설정
		$("#m_name").blur(function() {
		if (nameJ.test($(this).val())) {
		console.log(nameJ.test($(this).val()));
		$("#name_check").text('');
		} else {
		$('#name_check').text('한글 2~4자 이내로 입력하세요. (특수기호, 공백 사용 불가)');
		$('#name_check').css('color', 'red');
		}
		});
		$("#m_email").blur(function() {
		if (mailJ.test($(this).val())) {
		$("#email_check").text('');
		} else {
		$('#email_check').text('이메일 양식을 확인해주세요.');
		$('#email_check').css('color', 'red');
		}
		});
		// 생일 유효성 검사
		var birthJ = false;
		// 생년월일 birthJ 유효성 검사
		$('#m_birth').blur(function(){
		var dateStr = $(this).val();
		var year = Number(dateStr.substr(0,4)); // 입력한 값의 0~4자리까지 (연)
		var month = Number(dateStr.substr(4,2)); // 입력한 값의 4번째 자리부터 2자리 숫자 (월)
		var day = Number(dateStr.substr(6,2)); // 입력한 값 6번째 자리부터 2자리 숫자 (일)
		var today = new Date(); // 날짜 변수 선언
		var yearNow = today.getFullYear(); // 올해 연도 가져옴
		if (dateStr.length <=8) {
		// 연도의 경우 1900 보다 작거나 yearNow 보다 크다면 false를 반환합니다.
		if (year > yearNow || year < 1900 ){
		$('#birth_check').text('생년월일을 확인해주세요');
		$('#birth_check').css('color', 'red');
		}
		else if (month < 1 || month > 12) {
		$('#birth_check').text('생년월일을 확인해주세요 ');
		$('#birth_check').css('color', 'red');
		}else if (day < 1 || day > 31) {
		$('#birth_check').text('생년월일을 확인해주세요 ');
		$('#birth_check').css('color', 'red');
		}else if ((month==4 || month==6 || month==9 || month==11) && day==31) {
		$('#birth_check').text('생년월일을 확인해주세요 ');
		$('#birth_check').css('color', 'red');
		}else if (month == 2) {
		var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
		if (day>29 || (day==29 && !isleap)) {
		$('#birth_check').text('생년월일을 확인해주세요 ');
		$('#birth_check').css('color', 'red');
		}else{
		$('#birth_check').text('');
		birthJ = true;
		}
		}else{
		$('#birth_check').text('');
		birthJ = true;
		}//end of if
		}else{
		//1.입력된 생년월일이 8자 초과할때 : auth:false
		$('#birth_check').text('생년월일을 확인해주세요 ');
		$('#birth_check').css('color', 'red');
		}
		}); //End of method /*
		// 휴대전화
		$('#m_ph').blur(function(){
		if(phoneJ.test($(this).val())){
		console.log(nameJ.test($(this).val()));
		$("#ph_check").text('');
		} else {
		$('#ph_check').text('휴대폰번호를 확인해주세요 ');
		$('#ph_check').css('color', 'red');
		}
		});
	});
//우편번호 찾기 버튼 클릭시 발생 이벤트


function execPostCode() {
new daum.Postcode({
oncomplete: function(data) {
// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
var extraRoadAddr = ''; // 도로명 조합형 주소 변수
// 법정동명이 있을 경우 추가한다. (법정리는 제외)
// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
extraRoadAddr += data.bname;
}
// 건물명이 있고, 공동주택일 경우 추가한다.
if(data.buildingName !== '' && data.apartment === 'Y'){
extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
}
// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
if(extraRoadAddr !== ''){
extraRoadAddr = ' (' + extraRoadAddr + ')';
}
// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
if(fullRoadAddr !== ''){
fullRoadAddr += extraRoadAddr;
}
// 우편번호와 주소 정보를 해당 필드에 넣는다.
console.log(data.zonecode);
console.log(fullRoadAddr);
/* var a = console.log(data.zonecode);
var b = console.log(fullRoadAddr);
if(a == null || b = null){
alert("주소를 확인하세요.");
return false;
} */
$("[name=m_oaddress]").val(data.zonecode);
$("[name=m_address]").val(fullRoadAddr);
document.getElementById('m_oaddress').value = data.zonecode; //5자리 새우편번호 사용
document.getElementById('m_address').value = fullRoadAddr;
//document.getElementById('mem_detailaddress').value = data.jibunAddress;
}
}).open();
}
</script>

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
	<article class="container">
		<div class="page-header">
			<div class="col-md-6 col-md-offset-3"></div>
		</div>
		

			<div class="col-sm-6 col-md-offset-3">
				<form action="insert" method="post" role="form" id="usercheck"
					name="member">
					<div class="form-group">
						<label for="id">아이디</label> <input type="text"
							class="form-control" id="m_id" name="m_id" placeholder="ID">
						<div class="eheck_font" id="id_check"></div>
					</div>
					<div class="form-group">
						<label for="password">비밀번호</label> <input type="password"
							class="form-control" id="m_password" name="m_password"
							placeholder="PASSWORD">
						<div class="eheck_font" id="password_check"></div>
					</div>
					<div class="form-group">
						<label for="password2">비밀번호 확인</label> <input type="password"
							class="form-control" id="m_password2" name="m_password2"
							placeholder="Confirm Password">
						<div class="eheck_font" id="password2_check"></div>
					</div>
					<div class="form-group">
						<label for="m_name">이름</label> <input type="text"
							class="form-control" id="m_name" name="m_name" placeholder="Name">
						<div class="eheck_font" id="name_check"></div>
					</div>
					<div class="form-group">
						<label for="m_birth">생년월일</label> <input type="tel"
							class="form-control" id="m_birth" name="m_birth"
							placeholder="ex) 19990101">
						<div class="eheck_font" id="birth_check"></div>
					</div>
					<div class="form-group">
						<label for="m_email">이메일 주소</label> <input type="email"
							class="form-control" id="m_email" name="m_email"
							placeholder="E-mail">
						<div class="eheck_font" id="email_check"></div>
					</div>
					<div class="form-group">
						<label for="m_ph">휴대폰 번호('-'없이 번호만 입력해주세요)</label> <input
							type="tel" class="form-control" id="m_ph" name="m_ph"
							placeholder="Phone Number">
						<div class="eheck_font" id="ph_check"></div>
					</div>
					<div class="form-group">
						<label for="m_gender">성별 </label> <input type="checkbox"
							id="m_gender" name="m_gender" value="남">남 <input
							type="checkbox" id="m_gender" name="m_gender" value="여">여
					</div>
					<div class="form-group">
						<input class="form-control" style="width: 40%; display: inline;"
							placeholder="우편번호" name="m_oaddress" id="m_oaddress" type="text"
							readonly="readonly">
						<button type="button" class="btn btn-default"
							onclick="execPostCode();">
							<i class="fa fa-search"></i> 우편번호 찾기
						</button>
					</div>
					<div class="form-group">
						<input class="form-control" style="top: 5px;" placeholder="도로명 주소"
							name="m_address" id="m_address" type="text" readonly="readonly" />
					</div>
					<div class="form-group">
						<input class="form-control" placeholder="상세주소"
							name="m_detailaddress" id="m_detailaddress" type="text" />
					</div>
					<div class="form-group text-center">
						<button class="sign" type="submit">회원가입</button>
					</div>
				</form>
			</div>
	</article>
	<jsp:include page="../public/footer.jsp"></jsp:include>
</body>
</html>

