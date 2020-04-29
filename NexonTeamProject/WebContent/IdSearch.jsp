<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<link rel="shortcut icon" href="./images/nexon_favicon.ico">
<style type="text/css">
#main {
	width: 600px;
	margin: auto;
}

#header {
	width: 1900px;
	height: 62px;
}

#menuBox {
	float: left;
	width: 107px;
	height: 64px;
	padding: 15px 23px 24px;
}

#menuIcon {
	width: 18px;
	height: 16px;
	margin: 1px 5px 0px 0px;
}

#logoBox {
	width: 130px;
	height: 62px;
	float: left;
	padding-left: 725px;
}

#rightHBox {
	width: 300px;
	float: right;
	padding-right: 11px;
}

#PCBox {
	display: inline-block;
	box-sizing: border-box;
	width: 95px;
	padding: 15px 10px 0px;
}

#signUpBox {
	display: inline-block;
	box-sizing: border-box;
	width: 90px;
	padding: 15px 12px 0px;;
}

#loginBox {
	display: inline-block;
	box-sizing: border-box;
	width: 95px;
	height: 38px;
}

#loginBtn {
	padding: 7px 18px;
	border: 2px solid #17191D;
	border-radius: 19px;
}

.menuFont {
	color: #17191D;
	font: 16px Gothic;
}

#id {
	color: #6799FF;
	padding-top: 10px;
	text-align: center;
	clear: left;
	border-right: 1px solid #CBCBCB;
	border-left: 1px solid #CBCBCB;
	border-top: 1px solid #CBCBCB;
	width: 150px;
	height: 40px;
	float: left;
	margin-bottom: 30px;
}

#password {
	background-color: #E7E7E7;
	color: #BDBDBD;
	padding-top: 10px;
	text-align: center;
	border: 1px solid #CBCBCB;
	width: 150px;
	height: 40px;
	float: left;
}

#line {
	width: 290px;
	padding-top: 10px;
	height: 41px;
	float: left;
	border-bottom: 1px solid #CBCBCB;
	padding-top: 10px;
}

#htag {
	margin-bottom: 30px;
	clear: left;
}

#table {
	margin-top: 20px;
	margin-bottom: 30px;
	border-collapse: collapse;
}

#tr1 {
	background-color: #E7E7E7;
	border-bottom: 1px solid #CBCBCB;
}

#tr2 {
	border-bottom: 1px solid #CBCBCB;
}

#tr3 {
	border-bottom: 1px solid #CBCBCB;
}

#tr4 {
	border-bottom: 1px solid #CBCBCB;
}

.td1 {
	height: 40px;
	width: 200px;
}

.td2 {
	text-align: center;
	height: 50px;
	width: 200px;
}

.td3 {
	text-align: center;
	height: 50px;
	width: 100px;
	color: #1DDB16;
}

#black {
	color: #000000;
}

#red {
	color: #FF0000;
}

.td4 {
	text-align: center;
	height: 50px;
	width: 100px;
}

#lgnBtn {
	border: 1px solid #6799FF;
	background-color: #6799FF;
	color: #FFFFFF;
	float: left;
	width: 150px;
	height: 40px;
	background-color: #6799FF;
}

#passwordBtn {
	margin-left: 15px;
	background-color: #FFFFFF;
	color: #6799FF;
	float: left;
	width: 150px;
	height: 40px;
	border: 1px solid #6799FF;
	width: 150px;
}

#Btn {
	margin: auto;
	width: 350px;
	height: 60px;
}

td>a {
	color: #8C8C8C;
}

input[type='radio'], input[type='radio']:checked {
	appearance: none;
	width: 0.9rem;
	height: 0.9rem;
	border-radius: 100%;
	margin-right: 0.1rem;
}

input[type='radio'] {
	background-color: white-color;
	border: 2px solid black;
}

input[type='radio']:checked {
	background-color: black;
}
/* 사이드 메뉴 */
.sidebar {
	height: 100%;
	width: 0;
	position: fixed;
	z-index: 1;
	top: 0;
	left: 0;
	background-color: #fff;
	overflow-x: hidden;
	transition: 0.5s;
	padding-top: 60px;
}

.sidebar a {
	text-decoration: none;
	font-size: 20px;
	color: #818181;
	display: block;
	transition: 0.3s;
}

.sideList {
	padding: 15px 20px;
}

.sidebar a:hover {
	color: #f1f1f1;
}

.sidebar .closebtn {
	position: absolute;
	top: 5px;
	left: 23px;
	font-size: 36px;
	color: #17191D;
}

#mySidebar {
	border-right: 1px solid #dde1e5;
}

#sideHeaderBox {
	height: 0px;
	border-bottom: 1px solid #dde1e5;
}

#sideListBox {
	height: 700px;
	/*  		background-color: #fafafa;  */
}

#otherBox {
	height: 195px;
	background-color: #17191D;
}

#headerLine {
	width: 100%;
	border: 0.5px solid black;
	margin-bottom: 70px;
}

a:link {
	color: red;
	text-decoration: none;
}

a:visited {
	color: black;
	text-decoration: none;
}

a:hover {
	color: blue;
	text-decoration: underline;
}
</style>
<script type="text/javascript">
	window.onload = function() {

		/* 사이드메뉴  */
		var sideBox = document.getElementById('sideMenu');
		sideBox.setAttribute('onclick', 'openMenu();');

		/* 로그인버튼 이벤트  */
		var loginBox = document.getElementById('loginBox');

		loginBox.setAttribute('onmouseenter', 'changeBtnBlue();');
		loginBox.setAttribute('onmouseleave', 'changeBtnWhite();');

	}
	function changeBtnBlue() {
		var loginBtn = document.getElementById('loginBtn');

		loginBtn.style.backgroundColor = "#07f";
		loginBtn.style.border = "none";

		loginBtn.children[0].style.color = "#fff";
	}

	function changeBtnWhite() {
		var loginBtn = document.getElementById('loginBtn');

		loginBtn.style.backgroundColor = "#fff";
		loginBtn.style.border = "2px solid #17191D";

		loginBtn.children[0].style.color = "#080410";
	}

	/* 사이드메뉴 */
	function openMenu() {
		document.getElementById("mySidebar").style.width = "440px";
	}
	function closeMenu() {
		document.getElementById("mySidebar").style.width = "0";
	}
</script>
</head>

<body>
	<div id="mySidebar" class="sidebar">
		<div id="sideHeaderBox">
			<a href="javascript:void(0)" class="closebtn" onclick="closeMenu()">×</a>
		</div>
		<div id="sideListBox">
			<a href="membership.jsp" class="sideList">회원가입</a> <a
				href="noticeboard.jsp" class="sideList">게시판 목록</a> <a
				href="detailnoticeboard.jsp" class="sideList">게시판 글쓰기</a>
		</div>
		<div id="otherBox"></div>
	</div>
	<div id="header">
		<div id="menuBox">
			<a id="sideMenu"> <img id="menuIcon" alt="menuIcon"
				src="./images/menu.png"> <span class="menuFont"
				style="width: 30px;">메뉴</span>
			</a>
		</div>
		<a href="login.jsp">
		<img id="logoBox" alt="logo" src="./images/logo_nexon.png">
		</a>
		<div id="rightHBox">
			<div id="PCBox">
				<span class="menuFont">PC방</span> <span
					style="color: #9FA1A7; font: 16px Gothic; font-weight: bold;">OFF</span>
			</div>
			<div id="signUpBox">
				<a href='membership.jsp'> <span class="menuFont">회원가입</span>
				</a>
			</div>

			<div id="loginBox">
				<a id="loginBtn" href="login.jsp"> <span
					style="font: 16px Gothic; color: #080410; font-weight: bold;">로그인</span>
				</a>
			</div>
		</div>
	</div>
	<div id='headerLine'></div>
	<div id='main'>
		<div>
			<div id='id'>
				<a>넥슨ID찾기</a>
			</div>
			<div id='password'>
				<a>비밀번호찾기</a>
			</div>
			<div id='line'></div>
		</div>
		<div id='htag'>
			<h4>고객님의 정보와 일치하는 넥슨ID 입니다.</h4>
		</div>
		<form action="login.jsp">
		<div>
			<table id='table'>
				<tr id='tr1'>
					<th class='td1'>넥슨ID</th>
					<th class='td2'>가입일</th>
					<th class='td3' id='black'>회원상태</th>
					<th class='td4'>게임정보</th>
				</tr>
				<tr id='tr2'>
					<td class='td1'>
					<input type="radio" name="id" value="xxx0427@naver.com">xxx0427@naver.com</td>
					<td class='td2'>2015.07.18</td>
					<td class='td3'>정상</td>
					<td class='td4'><a href="">보기</a></td>
				</tr>
				<tr id='tr3'>
					<td class='td1'>
					<input type="radio" name="id" value="xxx0427">xxx0427</td>
					<td class='td2'>2011.09.08</td>
					<td class='td3' id='red'>비정상</td>
					<td class='td4'><a href="">보기</a></td>
				</tr>
				<tr id='tr4'>
					<td class='td1'>
					<input type="radio" name="id" value="xxy0455@daum.net">xxy0455@daum.net</td>
					<td class='td2'>2011.01.07</td>
					<td class='td3'>정상</td>
					<td class='td4'><a href="">보기</a></td>
				</tr>
			</table>
		</div>
		<div id='Btn'>
				<input id='lgnBtn' type="submit" value="로그인">
				<input id='passwordBtn' type="button" value="비밀번호 재설정">
		</div>
		</form>
	</div>
</body>
</html>