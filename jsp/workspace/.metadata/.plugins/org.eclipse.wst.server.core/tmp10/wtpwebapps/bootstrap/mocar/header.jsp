<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="UTF-8">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.88.1">
<title>mocar</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />

<style>
.nav-link:hover {
	color: #fff;
	background-color: #0d6efd;
}
#slider { width:50%;}
#slideList > p { display:none;}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.css" integrity="sha256-p6xU9YulB7E2Ic62/PX+h59ayb3PBJ0WFTEQxq0EjHw=" crossorigin="anonymous" />
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.js" integrity="sha256-T0Vest3yCU7pafRw9r+settMBX6JkKN06dqBnpQ8d30=" crossorigin="anonymous"></script>
		<script>
			$(document).ready(function(){
				var imgList = $('#slideList p');

				$('#slider').slider({
					min:0,
					max:119,
					value:1,
					slide:function(event,ui){
						imgList.hide();
						imgList.eq(ui.value).show();
					}

				});
			});
		</script>

</head>
<body>


	<div class="row g-0">
		<div class="d-flex flex-column p-3 bg-light order-first col-md-3 col-lg-2">
			<a href="/mocar/index.jsp"
				class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
				<span class="fs-4">Logo</span>
			</a>
			<hr>
			<ul class=" nav nav-pills flex-column" id="navbarToggler8">
				<li class="nav-item"><a href="/mocar/rent2.jsp" class="nav-link link-dark"
					aria-current="page"> ???????????? </a></li>
				<li class="nav-item"><a href="/mocar/border.jsp" class="nav-link link-dark">
						???????????? </a></li>
				<li class="nav-item"><a href="/mocar/BBS.jsp" class="nav-link link-dark">
						Q&amp;A </a></li>
				<li class="nav-item"><a href="/mocar/map.jsp"
					class="nav-link link-dark"> ??????????????? ??? </a></li>
				<li class="nav-item"><a href="/mocar/contact.jsp"
					class="nav-link link-dark"> Contact </a></li>
			</ul>
			<hr>

			<a href="#"
				class="d-flex align-items-center link-dark text-decoration-none"
				id="dropdownUser2" data-bs-toggle="dropdown" aria-expanded="false">
			</a>
			<button type="button" class="btn d-flex" data-bs-toggle="modal"
				data-bs-target="#login">
				<strong>login</strong>
			</button>

			<!-- Modal -->
			<div class="modal" id="login" data-bs-backdrop="static"
				data-bs-keyboard="false" tabindex="-1"
				aria-labelledby="staticBackdropLabel" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered">
					<div class="modal-content">
						<div class="modal-header p-5 pb-4 border-bottom-0">
							<h2 class="fw-bold mb-0">login</h2>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body p-5 pt-0">
							<form class="">
								<div class="form-floating mb-3">
									<input type="email" class="form-control rounded-4"
										id="floatingInput" placeholder="name@example.com"> <label
										for="floatingInput">?????????</label>
								</div>
								<div class="form-floating mb-3">
									<input type="password" class="form-control rounded-4"
										id="floatingPassword" placeholder="Password"> <label
										for="floatingPassword">????????????</label>
								</div>
								<button class="w-100 mb-2 btn btn-lg rounded-4 btn-primary"
									type="submit">?????????</button>
								<div id="opt" class="row">
									<div class="opt_left col">
										<a href="#" data-bs-toggle="modal" data-bs-target="#resist">????????????</a>
									</div>
									<div class="opt_right col text-end ">
										<a id="find1" class="d-inline-block " href="#"
											data-bs-toggle="modal" data-bs-target="#modalSignin">ID</a>
										<p class="d-inline-block">/</p>
										<a id="find2" class="d-inline-block" href="#"
											data-bs-toggle="modal" data-bs-target="#modalSignpw">PW??????</a>
									</div>
								</div>
								<hr class="my-4">
								<h2 class="fs-5 fw-bold mb-3">?????? ???????????? ???????????????</h2>
								<button
									class="w-100 py-2 mb-2 btn btn-outline-success rounded-4"
									type="button" onclick="location.href='https://nid.naver.com/'">
									<img src=img/naver.png style="width: 20px; height: 20px;">
									???????????? ???????????????
								</button>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- ???????????? -->
			<div class="modal" id="resist" data-bs-backdrop="static"
				data-bs-keyboard="false" tabindex="-1"
				aria-labelledby="staticBackdropLabel" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered">
					<div class="modal-content">
						<div class="modal-header p-5 pb-4 border-bottom-0">
							<h2 class="fw-bold mb-0">????????????</h2>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body p-5 pt-0">
							<form class="">
								<div class="form-floating mb-3 row"
									style='width: 100%; margin-left: 1px;'>
									<input type="text" class="form-control rounded-4 col"
										id="floatingInput" placeholder="name@example.com"> <label
										for="floatingInput">?????????</label>
									<button type="button" class="btn btn-primary col-3"
										style='margin-left: 20px;'>????????????</button>
								</div>
								<div class="form-floating mb-3">
									<input type="password" class="form-control rounded-4"
										id="floatingPassword" placeholder="Password"> <label
										for="floatingPassword">????????????</label>
								</div>
								<div class="form-floating mb-3">
									<input type="password" class="form-control rounded-4"
										id="floatingPassword" placeholder="Password"> <label
										for="floatingPassword">???????????? ??????</label>
								</div>
								<div class="form-floating mb-3">
									<input type="text" class="form-control rounded-4"
										id="floatingInput" placeholder="name"> <label
										for="floatingInput">??????</label>
								</div>
								<div class="container px-1">
									<div class="row gx-5">
										<div class="col">
											<select class="form-select"
												aria-label="Default select example">
												<option selected>????????????</option>
												<option value="1">1950???</option>
												<option value="2">1951???</option>
												<option value="3">1952???</option>
												<option value="4">1953???</option>
												<option value="5">1954???</option>
												<option value="6">1955???</option>
												<option value="7">1956???</option>
												<option value="8">1957???</option>
												<option value="9">1958???</option>
												<option value="10">1959???</option>
												<option value="11">1960???</option>
												<option value="12">1961???</option>
												<option value="13">1962???</option>
												<option value="14">1963???</option>
												<option value="15">1964???</option>
												<option value="16">1965???</option>
												<option value="17">1966???</option>
												<option value="18">1967???</option>
												<option value="19">1968???</option>
												<option value="20">1969???</option>
												<option value="21">1970???</option>
												<option value="22">1971???</option>
												<option value="23">1972???</option>
												<option value="24">1973???</option>
												<option value="25">1974???</option>
												<option value="26">1975???</option>
												<option value="27">1976???</option>
												<option value="28">1977???</option>
												<option value="29">1978???</option>
												<option value="30">1979???</option>
												<option value="31">1980???</option>
												<option value="32">1981???</option>
												<option value="33">1982???</option>
												<option value="34">1983???</option>
												<option value="35">1984???</option>
												<option value="36">1985???</option>
												<option value="37">1986???</option>
												<option value="38">1987???</option>
												<option value="39">1988???</option>
												<option value="40">1989???</option>
												<option value="41">1990???</option>
												<option value="42">1991???</option>
												<option value="43">1992???</option>
												<option value="44">1993???</option>
												<option value="45">1994???</option>
												<option value="46">1995???</option>
												<option value="47">1996???</option>
												<option value="48">1997???</option>
												<option value="49">1998???</option>
												<option value="50">1999???</option>
												<option value="51">2000???</option>
												<option value="52">2001???</option>
												<option value="53">2002???</option>
												<option value="54">2003???</option>
												<option value="55">2004???</option>
												<option value="56">2005???</option>
												<option value="57">2006???</option>
												<option value="58">2007???</option>
												<option value="59">2008???</option>
												<option value="60">2009???</option>
											</select>
										</div>
										<div class="col">
											<select class="form-select text-end"
												aria-label="Default select example">
												<option selected>???</option>
												<option value="1">1???</option>
												<option value="2">2???</option>
												<option value="3">3???</option>
												<option value="4">4???</option>
												<option value="5">5???</option>
												<option value="6">6???</option>
												<option value="7">7???</option>
												<option value="8">8???</option>
												<option value="9">9???</option>
												<option value="10">10???</option>
												<option value="11">11???</option>
												<option value="12">12???</option>
											</select>
										</div>
										<div class="col">
											<select class="form-select text-end"
												aria-label="Default select example">
												<option selected>???</option>
												<option value="1">1???</option>
												<option value="2">2???</option>
												<option value="3">3???</option>
												<option value="4">4???</option>
												<option value="5">5???</option>
												<option value="6">6???</option>
												<option value="7">7???</option>
												<option value="8">8???</option>
												<option value="9">9???</option>
												<option value="10">10???</option>
												<option value="11">11???</option>
												<option value="12">12???</option>
												<option value="13">13???</option>
												<option value="14">14???</option>
												<option value="15">15???</option>
												<option value="16">16???</option>
												<option value="17">17???</option>
												<option value="18">18???</option>
												<option value="19">19???</option>
												<option value="20">20???</option>
												<option value="21">21???</option>
												<option value="22">22???</option>
												<option value="23">23???</option>
												<option value="24">24???</option>
												<option value="25">25???</option>
												<option value="26">26???</option>
												<option value="27">27???</option>
												<option value="28">28???</option>
												<option value="29">29???</option>
												<option value="30">30???</option>
												<option value="31">31???</option>
											</select>
										</div>

									</div>
								</div>
								<div class="form-floating mb-3" style='margin-top: 13px;'>
									<input type="email" class="form-control rounded-4"
										id="floatingemail" placeholder="email"> <label
										for="floatingemail">?????????</label>
								</div>
								<div class="form-floating mb-3 row"
									style='width: 100%; margin-left: 1px;'>
									<input type="text" class="form-control rounded-4 col"
										id="floatingInput" placeholder="abcd1234"> <label
										for="floatingInput">?????????</label>
									<button type="button" class="btn btn-primary col-3"
										style='margin-left: 20px;'>??????</button>
								</div>
								<div class="form">
									<label class=""
										style='font-weight: 500; font-size: 18px; margin-bottom: 5px;'>??????
										??????</label>
									<div class="form-checkbox">
										<input class="form-check-input" type="checkbox" value=""
											id="flexCheckDefault"> <label
											class="form-check-label" for="flexCheckDefault"> </label> <a
											class="fw-bold" href="#">????????????</a>??? ???????????????.
									</div>
								</div>
								<div class="modal-footer border-0 p-0 mt-4">
									<button type="button" class="btn btn-primary">??????</button>
									<button type="button" class="btn btn-warning"
										data-bs-dismiss="modal">??????</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- id?????? -->
			<div class="modal" id="modalSignin" data-bs-backdrop="static"
				data-bs-keyboard="false" tabindex="-1"
				aria-labelledby="staticBackdropLabel" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered">
					<div class="modal-content rounded-5 shadow">
						<div class="modal-header p-5 pb-4 border-bottom-0">
							<h2 class="fw-bold mb-0">ID??????</h2>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body p-5 pt-0">
							<form class="">
								<div class="form-floating mb-3">
									<input type="text" class="form-control rounded-4"
										id="floatingInput" placeholder="?????????"> <label
										for="floatingInput">??????</label>
								</div>
								<div class="form-floating mb-3">
									<input type="email" class="form-control rounded-4"
										id="floatingInput" placeholder="name@example.com"> <label
										for="floatingInput">?????????</label>
								</div>
							</form>
							<div class="text-end">
								<button type="button" class="btn btn-primary text-end">??????</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- pw?????? -->
			<div class="modal" id="modalSignpw" data-bs-backdrop="static"
				data-bs-keyboard="false" tabindex="-1"
				aria-labelledby="staticBackdropLabel" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered">
					<div class="modal-content rounded-5 shadow">
						<div class="modal-header p-5 pb-4 border-bottom-0">
							<h2 class="fw-bold mb-0">PW??????</h2>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body p-5 pt-0">
							<form class="">
								<div class="form-floating mb-3">
									<input type="text" class="form-control rounded-4"
										id="floatingInput" placeholder="?????????"> <label
										for="floatingInput">??????</label>
								</div>
								<div class="form-floating mb-3">
									<input type="text" class="form-control rounded-4"
										id="floatingInput" placeholder="abcd1234"> <label
										for="floatingInput">?????????</label>
								</div>
								<div class="form-floating mb-5">
									<input type="email" class="form-control rounded-4"
										id="floatingInput" placeholder="abcd1234"> <label
										for="floatingInput">?????????</label>
								</div>
								<div class="row g-2 mb-5">
									<div class="col-md">
										<div class="form-floating">
											<input type="password" class="form-control"
												id="floatingInputGrid" placeholder="password"> <label
												for="floatingInputGrid">????????? ????????????</label>
										</div>
									</div>
									<div class="col-md">
										<div class="form-floating">
											<input type="password" class="form-control"
												id="floatingInputGrid" placeholder="password"> <label
												for="floatingInputGrid">???????????? ?????????</label>
										</div>
									</div>
								</div>

							</form>
							<div class="text-end">
								<button type="button" class="btn btn-primary text-end">??????</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>