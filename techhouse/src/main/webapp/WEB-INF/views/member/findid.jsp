<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">

<title>TECH HOUSE - 로그인</title>

<!-- Bootstrap core CSS -->
<link href="/resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">


<!-- Additional CSS Files -->
<link rel="stylesheet" href="/resources/assets/css/fontawesome.css">
<link rel="stylesheet"
	href="/resources/assets/css/templatemo-cyborg-gaming.css">
<link rel="stylesheet" href="/resources/assets/css/owl.css">
<link rel="stylesheet" href="/resources/assets/css/animate.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous">
	
</script>
<style>
/* 로그인 실패시 경고글 */
.findID_warn {
	margin-top: 30px;
	text-align: center;
	color: red;
}

.findID-box {
	margin-top: 75px;
	height: auto;
	background: #1A2226;
	text-align: center;
	box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23);
}

.findID-key {
	height: 100px;
	font-size: 80px;
	line-height: 100px;
	background: -webkit-linear-gradient(#27EF9F, #0DB8DE);
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
}

.findID-title {
	margin-top: 15px;
	text-align: center;
	font-size: 30px;
	letter-spacing: 2px;
	margin-top: 15px;
	font-weight: bold;
	color: #ECF0F5;
}

.findID-form {
	margin-top: 25px;
	text-align: left;
}

input[type=text] {
	background-color: #1A2226;
	border: none;
	border-bottom: 2px solid #0DB8DE;
	border-top: 0px;
	border-radius: 0px;
	font-weight: bold;
	outline: 0;
	margin-bottom: 20px;
	padding-left: 0px;
	color: #ECF0F5;
}

input[type=password] {
	background-color: #1A2226;
	border: none;
	border-bottom: 2px solid #0DB8DE;
	border-top: 0px;
	border-radius: 0px;
	font-weight: bold;
	outline: 0;
	padding-left: 0px;
	margin-bottom: 20px;
	color: #ECF0F5;
}

.form-group {
	margin-bottom: 40px;
	outline: 0px;
}

.form-control:focus {
	border-color: inherit;
	-webkit-box-shadow: none;
	box-shadow: none;
	border-bottom: 2px solid #0DB8DE;
	outline: 0;
	background-color: #1A2226;
	color: #ECF0F5;
}

input:focus {
	outline: none;
	box-shadow: 0 0 0;
}

label {
	margin-bottom: 0px;
}

.form-control-label {
	font-size: 10px;
	color: #6C6C6C;
	font-weight: bold;
	letter-spacing: 1px;
}

.btn-outline-primary {
	border-color: #0DB8DE;
	color: #0DB8DE;
	border-radius: 0px;
	font-weight: bold;
	letter-spacing: 1px;
	box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
}

.btn-outline-primary:hover {
	background-color: #0DB8DE;
	right: 0px;
}

.findID-btm {
	float: left;
}

.findID-button {
	padding-right: 0px;
	text-align: right;
	margin-bottom: 25px;
}

.findID-text {
	text-align: left;
	padding-left: 0px;
	color: #A2A4A4;
}

.findIDbttm {
	padding: 0px;
}
</style>
<meta charset="UTF-8" />
</head>
<body>


	<jsp:include page="../init/header.jsp"></jsp:include>
	<div class="container" style="margin-top: 150px;">
		<div class="row">
			<div class="col-lg-3 col-md-2"></div>
			<div class="col-lg-6 col-md-8 findID-box">
				<div class="col-lg-12 findID-title">Find ID</div>

				<div class="col-lg-12 findID-form">
					<div class="col-lg-12 findID-form">
						<form id="idfind" method="post">
							<div class="form-group mx-5">
								<label class="form-control-label ">ID :</label> <br> <input
									type="text" class="id_input w-100 " name="id" placeholder="">
							</div>
							<div class="form-group mx-5 mb-2">
								<label class="form-control-label">Email : </label><br> <input
									class="email_input w-100 " name="email" type="text"
									placeholder="">
							</div>
							<c:if test="${result == 0 }">
								<div class="login_warn mb-4">존재하지 않은 아이디거나 다른 이메일입니다.</div>
							</c:if>
							<div class="col-lg-12 findIDbttm ">
								<div class="col-lg-6 findID-btm findID-text">
									<!-- Error Message -->
								</div>
								<div class="col-lg-6 findID-btm findID-button w-100 d-flex align-items-center justify-content-center">
									<input type="button" class="findID_button button-0" value="아이디 찾기">
									<a href="/main" class="button-0-border">취소</a>
								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="col-lg-3 col-md-2"></div>
			</div>
		</div>
	</div>

	<script>
		/* 로그인 버튼 클릭 메서드 */
		$(".findID_button").click(function() {

			//alert("로그인 버튼 작동");
			/* 로그인 메서드 서버 요청 */
			$("#idfind").attr("action", "/member/idfind");
			$("#idfind").submit();

		});
	</script>
	<!-- Bootstrap core JavaScript -->
	<script src="/resources/vendor/jquery/jquery.min.js"></script>
	<script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

	<script src="/resources/assets/js/isotope.min.js"></script>
	<script src="/resources/assets/js/owl-carousel.js"></script>
	<script src="/resources/assets/js/tabs.js"></script>
	<script src="/resources/assets/js/popup.js"></script>
	<script src="/resources/assets/js/custom.js"></script>
</body>
</html>