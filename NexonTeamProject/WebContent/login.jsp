<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
	<link rel="shortcut icon" href="./images/nexon_favicon.ico">
<style type="text/css">
	/* header */
	#header{
		width: 1900px; height: 62px;
	}
	#menuBox{
		float:left; width: 107px; height:64px; padding: 15px 23px 24px;
	}
	#menuIcon{
		width:18px; height:16px; margin: 1px 5px 0px 0px;
	}
	#logoBox{
		width: 130px; height: 62px; float:left; padding-left: 725px;
	}
	#rightHBox{
		width: 300px; float:right; padding-right: 11px;
	}
	#PCBox{
		display: inline-block; box-sizing:border-box; width: 95px; padding: 15px 10px 0px;
	}
	#signUpBox{
		display: inline-block; box-sizing:border-box; width: 90px; padding: 15px 12px 0px;;
	}
	#loginBox{
		display: inline-block; box-sizing:border-box; width: 95px; height:38px;
	}
	#loginBtn{
		padding: 7px 18px; border: 2px solid #17191D; border-radius: 19px;
	}
	.menuFont{
		color: #17191D; font:16px Gothic;
	}
	
	/* wrapper */
	#wrapper{
		width:440px; clear:both; margin:0px auto;
	}
	#wrapHeader{
		width:440px; height:70px; padding-top: 45px; box-sizing:border-box; font-weight:normal; font-size: 27px;
	}
	#choLoginBox1{
		width:140px; height:44px; float: left; padding-top: 5px;
	}
	#choLoginBox2{
		border-bottom: 1px solid #cbcbcb; width:300px; height:44px; float: left; padding-top: 5px; margin-left: -1px;
	}
	.choLoginBoxText{
		height: 44px; font: 12px Dotum; font-weight: bold; 
	}
	#nexonIdLogin{
		box-sizing:border-box; text-align:center; float: left; width: 140px; height:44px;padding-top: 10px; border-top: 1px solid #cbcbcb; border-left: 1px solid #cbcbcb; border-right: 1px solid #cbcbcb;
	}
	#disposLogin{
		box-sizing:border-box; margin-left:20px; text-align:center; float: left; width: 140px; height:44px; background-color: #F4F4F4;padding-top: 10px; border-top: 1px solid #cbcbcb; border-left: 1px solid #cbcbcb; border-right: 1px solid #cbcbcb;
	}
	#QRLogin{
		box-sizing:border-box; text-align:center; float: left; width: 140px; height:44px; background-color: #F4F4F4;padding-top: 10px; border-top: 1px solid #cbcbcb; border-left: 1px solid #cbcbcb; border-right: 1px solid #cbcbcb;
	}
	#inputBox{
		clear: both; width: 440px; height: 180px; padding-top: 30px;
	}
	#inputIdBox{
		box-sizing:border-box; width: 440px; height:55px; margin-top: 8px; padding: 7px 0px; border: 1px solid #cbcbcb;
	}
	#userId{
		font: 12px Dotum; border:none; box-sizing:border-box;width:412px; height: 39px;font-size:16px; padding: 12px 0px 12px 17px;
	}
	#inputPwdBox{
		box-sizing:border-box; width: 440px; height:55px; margin-top: 8px; padding: 7px 0px; border: 1px solid #cbcbcb;
	}
	#userPwd{
		font: 12px Dotum; border:none; box-sizing:border-box;width:412px; height: 39px;font-size:16px; padding: 12px 0px 12px 17px;
	}
	#inputLoginBtn{
		width:440px; height:58px; background-color: #486BCD; border: none;
	}
	#bottomMenu{
		width:440px; height:78px; padding: 22px 0px 37px;
	}
	.bottomMenuFont{
		font:12px Dotum; color:#777777; 
	}
	.bottomMenuForm{
		padding-right: 7px; border-right:1px solid #D9D9DA;
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
	.sideList{
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
	#mySidebar{
		border-right: 1px solid #dde1e5;
	}
	#sideHeaderBox{
		height: 0px;
		border-bottom: 1px solid #dde1e5;
	}
	#sideListBox{
		height: 700px;
/*  		background-color: #fafafa;  */
	}
	#otherBox{
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
	
	window.onload = function(){
		/* 사이드메뉴  */
		var sideBox = document.getElementById('sideMenu');
		sideBox.setAttribute('onclick', 'openMenu();');
		
		/* 로그인버튼 이벤트  */
		var loginBox = document.getElementById('loginBox');

		loginBox.setAttribute('onmouseenter', 'changeBtnBlue();');
		loginBox.setAttribute('onmouseleave', 'changeBtnWhite();');
		
		/* url주소에 변수들을 추가로 가져오면 input placeholder변경 */
		var urlTxt = location.href;
// 		alert(urlTxt);
		var urlSplitTxtList = urlTxt.split('?');

		if(urlSplitTxtList.length == 2){
			var emailTxt = urlSplitTxtList[1].split('=');
// 			alert("길이는 2");
			var userIdObj = document.getElementById('userId');
			userIdObj.removeAttribute('placeholder');
			var userPwdObj = document.getElementById('userPwd');
			userIdObj.removeAttribute('placeholder');
			
			var emailId = emailTxt[1].replace('%40', '@');
			userIdObj.setAttribute('value', emailId);
		}
	}
	
	
	function changeBtnBlue(){
		var loginBtn = document.getElementById('loginBtn');

		loginBtn.style.backgroundColor = "#07f";
		loginBtn.style.border = "none";

		loginBtn.children[0].style.color = "#fff";
	}
	
	function changeBtnWhite(){
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
			<a href="membership.jsp" class="sideList">회원가입</a>
			<a href="noticeboard.jsp" class="sideList">게시판 목록</a>
			<a href="detailnoticeboard.jsp" class="sideList">게시판 글쓰기</a>
		</div>
		<div id="otherBox"></div>
	</div>
	<div id="header">
		<div id="menuBox">
			<a id="sideMenu">
				<img id="menuIcon" alt="menuIcon" src="./images/menu.png">			
				<span class="menuFont" style="width: 30px;">메뉴</span>
			</a>
		</div>
		<a href="login.jsp">
		<img id="logoBox" alt="logo" src="./images/logo_nexon.png">
		</a>
		<div id="rightHBox">
			<div id="PCBox">
				<span class="menuFont">PC방</span>
				<span style="color:#9FA1A7; font:16px Gothic; font-weight: bold;">OFF</span>
			</div>
			<div id="signUpBox">
				<a href='membership.jsp'>
					<span class="menuFont">회원가입</span>
				</a>
			</div>
			
			<div id="loginBox">
				<a id="loginBtn" href='login.jsp'>			
					<span style="font:16px Gothic; color:#080410; font-weight: bold;">로그인</span>
				</a>
			</div>		
		</div>
	</div>
	<div id='headerLine'></div>
	
	<div id="wrapper">
		<h1 id="wrapHeader">로그인</h1>
		<div id="choLoginBox1">
			<div id="nexonIdLogin">
				<span class="choLoginBoxText" style="color:#222222;">넥슨ID 로그인</span>
			</div>
		</div>
		<div id="choLoginBox2">	
			<div id="disposLogin">
				<span class="choLoginBoxText"  style="color:#7A7A7A;">일회용 로그인</span>
			</div>
			<div id="QRLogin">
				<span class="choLoginBoxText"  style="color:#7A7A7A;">QR 로그인</span>
			</div>
		</div>
		<div id="inputBox">
			<input type="checkbox"><span style="font:12px Dotum;">넥슨ID 저장</span>
			<div id="inputIdBox">		
				<input id="userId" type="text" placeholder="넥슨ID(아이디 또는 이메일)를 입력해주세요.">
			</div>
			<div id="inputPwdBox">
				<input id="userPwd" type="password" placeholder="비밀번호를 입력해주세요.">
			</div>
		</div>
		<button id="inputLoginBtn">
			<span style="font: 18px Dotum; color: #FFFFFF;">넥슨ID 로그인</span>
		</button>
		<div id="bottomMenu">
			<a href="IdSearch.jsp"><span class="bottomMenuFont bottomMenuForm">넥슨ID 찾기</span></a>
			<a href="#"><span class="bottomMenuFont bottomMenuForm">비밀번호 찾기</span></a>
			<a href="membership.jsp"><span class="bottomMenuFont">넥슨 회원가입</span></a>
			<span class="bottomMenuFont" style="padding-left: 143px;">보안센터</span>
		</div>

	</div>
	
</body>
</html>