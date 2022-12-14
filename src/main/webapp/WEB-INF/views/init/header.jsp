<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>...</title>
<style>
#myPage-btn {
	background-color: #27292a;
	color: #666;
	border: 0;
	outline: 0;
}

#myPage-btn:hover {
	background-color: #e75e8d;
	color: white;
}

.offcanvas {
	background-color: #222222;
}

@media ( max-width : 992px) {
	#myPage-btn {
		display: none;
	}
	#myPage-logo {
		display: none;
	}
	.main-nav .nav>li:last-child {
		display: none;
	}
}

.off-ul {
	display: block !important;
	position: static !important;
	top: 100% !important;
	left: 0 !important;
}

.off-li {
	width: 126px !important;
	position: static !important;
	display: inline !important;
}

.header-area {
	position: fixed;
	background-color: #1f2122;
	top: 0px;
	border-bottom: 1px solid var(--bs-success);
}

.header-area .main-nav .nav li a {
	font-weight: bold;
	color: #bbbbbb;
}

.header-area .main-nav .nav li:hover>a, .header-area .main-nav .nav li>a.active
	{
	color: #ffffff;
	background-color: #198754;
}

a:hover {
	color: var(--bs-teal);
	transition: all .5s;
}

#myPage-btn:hover {
	background-color: #198754;
}

.most-popular {
	border-bottom: 1px solid var(--bs-success);
}

.header-title {
	color: #FFFFFF;
	background: inherit;
	text-shadow: 0 0 15px #FFFFFF;
}

.logo:hover {
	-webkit-animation: pulsate-bck 1.5s ease-in-out infinite both;
	animation: pulsate-bck 1.5s ease-in-out infinite both;
}

#back2Top {
	width: 40px;
	line-height: 40px;
	overflow: hidden;
	z-index: 999;
	display: none;
	cursor: pointer;
	position: fixed;
	bottom: 50px;
	right: 50px;
	background-color: inherit;
	color: #b5b5b5;
	text-align: center;
	font-size: 30px;
	text-decoration: none;
}

#back2Top:hover>i {
	color: var(--bs-success);
	transition: all .5s;
}

@-webkit-keyframes pulsate-bck { 
0% {
	-webkit-transform: scale(1);
	transform: scale(1);
}

50%
{
	-webkit-transform:
	scale(0.95);
	transform:
	scale(0.95);
}


100%
{
	-webkit-transform:scale(1);
	transform:scale(1);
}
}
@
keyframes pulsate-bck { 0% {
	-webkit-transform: scale(1);
	transform: scale(1);
}
50%
{
-webkit-transform
:
scale(
0.95
);
transform
:
scale(
0.95
);
}
100%
{
-webkit-transform:
scale(1);
transform:
scale(1);
}
}
</style>
</head>
<body>
	<!-- ***** Header Area Start ***** -->
	<header class="header-area header-sticky">
		<div class="container mt-0" style="width: 1280px;">
			<div class="row">
				<div class="col-12 px-0">
					<nav class="main-nav">
						<!-- ***** Logo Start ***** -->

						<a href="/" class="logo"> <span class="h1 header-title">TECH
								HOUSE</span>
						</a>
						<!-- ***** Logo End ***** -->
						<!-- ***** Menu Start ***** -->

						<ul class="nav align-items-center px-0">
							<li><a href="/board/community/free">????????????</a>
								<ul>
									<li><a href="/board/community/free">???????????????</a></li>
									<li><a href="/board/community/mysetting">???????????????</a></li>
									<li><a href="/board/community/hobby">????????????</a></li>
								</ul></li>
							<li><a href="/board/trade/tradeInfo">?????? ??????</a>
								<ul>
									<li><a href="/board/trade/tradeInfo">??????????????????</a></li>
									<li><a href="/board/trade/tradeBoard">???????????????</a></li>
									<li><a href="/board/trade/aftertrade">????????????</a></li>
								</ul></li>

							<li><a href="/board/news/issue">??????</a>
								<ul>
									<li><a href="/board/news/trend">IT/?????????</a></li>
									<li><a href="/board/news/issue">?????????</a></li>
									<li><a href="/board/news/gameInfo">??????????????????</a></li>
									<li><a href="/board/news/hotDeal">??????/??????</a></li>
								</ul></li>
							<li><a href="/board/apply/product">????????????</a>
								<ul>
									<li><a href="javascript:alert('??????????????????.')">??????</a></li>
									<li><a href="/board/apply/product">????????????</a></li>
								</ul></li>

							<c:if test="${member == null }">
								<li><a href="/member/login">Sign in <i
										class="fa-solid fa-right-to-bracket" style="font-size: 18px"></i>&nbsp;&nbsp;
								</a></li>
							</c:if>
							<c:if test="${member != null}">
								<li>
									<button id="myPage-btn" type="button"
										class="button-1 px-3  text-center" data-bs-toggle="offcanvas"
										data-bs-target="#offcanvasRight"
										aria-controls="offcanvasRight">
										<i class="fa-solid fa-bars " id="myPage-logo"
											style="font-size: 24px;"></i>
									</button>

									<div class="offcanvas offcanvas-end opacity-75" tabindex="-1"
										id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
										<!-- ????????????????????? {s} -->
										<div class="offcanvas-header" style="color: #666;">
											<a href="/member/logout" class="d-block"><span
												class="me-2 fw-bold">logout</span><i
												class="fa-solid fa-right-to-bracket fs-5"></i></a>
											<button type="button" class="button-3">
												<span class="fw-bold">?????????</span>
											</button>

										</div>
										<hr class="my-0 text-white">
										<button type="button" class="btn-close"
											data-bs-dismiss="offcanvas" aria-label="Close"></button>
										<div class="offcanvas-body mx-2">
											<div class="user-info-box">
												<img src="/resources/images/user_upload/${member.profileimg }"
													class="img-fluid rounded-circle text-center d-block mx-auto mb-3"
													style="width: 180px; height: 180px;">
												<div
													class="info-box-inner d-flex justify-content-between mb-3 ">
													<p class="text-white fw-bold text-start">${member.name }???!</p>
													<p class="text-warning fw-bold text-start">
														<span class="text-white">rank : </span> ${member.rank }
													</p>
												</div>

											</div>
											<c:if test="${ member.rank != '?????????' }">
												<ul class="off-ul">
													<li class="off-li"><a href="/member/mypage"
														class="text-white">????????????</a></li>
													<li class="off-li"><a type="submit"
														href="/member/board?userName=${ member.name }"
														class="text-white">?????? ????????? ??????</a></li>
													<li class="off-li"><a
														href="/member/trade?userName=${ member.name }"
														class="text-white">?????? ????????? ??????</a></li>
													<li class="off-li"><a
														href="/member/mypage_comment?userName=${ member.name }"
														class="text-white">?????? ?????? ??????</a></li>
													<li class="off-li"><a href="/member/mypage_qna?userName=${ member.name }" class="text-white">??????
															??????</a></li>
												</ul>
											</c:if>
											<c:if test="${ member.rank == '?????????' }">
												<ul class="off-ul">
													<li class="off-li"><a href="/admin/admin_users"
														class="text-white">????????????</a></li>
													<li class="off-li"><a type="submit"
														href="/admin/board/"
														class="text-white">?????? ????????? ??????</a></li>
													<li class="off-li"><a
														href="/admin/trade/"
														class="text-white">?????? ????????? ??????</a></li>
													<li class="off-li"><a
														href="/admin/admin_comment/"
														class="text-white">?????? ?????? ??????</a></li>
													<li class="off-li"><a href="/admin/admin_qna" class="text-white">??????
															??????</a></li>
												</ul>
											</c:if>
										</div>
										<hr class="" style="color: var(--bs-success)">
										<div class="offcanvas-footer mx-2">
											<c:if test="${member.rank eq '?????????'}"></c:if>
											<c:if test="${member.rank ne '?????????'}">
												<a href="/member/my_del"
													class="text-danger fs-bold text-start">????????????</a>
											</c:if>
										</div>
										<!-- ????????????????????? {e}-->

									</div>


								</li>


							</c:if>

						</ul>
						<a class='menu-trigger'> <span>Menu</span>
						</a>
						<!-- ***** Menu End ***** -->
					</nav>
				</div>
			</div>
		</div>
	</header>

	<script src="/resources/vendor/jquery/jquery.min.js"></script>
	<a id="back2Top" title="top?????? ??????" href="#"><i
		class="fa-solid fa-chevron-up"></i></a>
	<script>
		/*Scroll to top when arrow up clicked BEGIN*/
		$(window).scroll(function() {
			var height = $(window).scrollTop();
			if (height > 300) {
				$('#back2Top').fadeIn();
			} else {
				$('#back2Top').fadeOut();
			}
		});
		$(document).ready(function() {
			$("#back2Top").click(function(event) {
				event.preventDefault();
				$("html, body").animate({
					scrollTop : 0
				}, 0);
				return false;
			});

		});
		/*Scroll to top when arrow up clicked END*/
	</script>
</body>

</html>