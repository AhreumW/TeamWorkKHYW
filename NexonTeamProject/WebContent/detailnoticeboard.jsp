<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 상세</title>
<style type="text/css">
	
	.frameContainer {
		width: 1920px;
		height: 900px;
		display: flex;
		justify-content: center;
	}
	.middleContainer1 {
		width: 600px; 
		display: inline-block;
	}
	.middleContainer2 {
		clear: left; 
	}
	.bottomContainer1 {
		width: 200px;
		padding-left: 220px;
		padding-top: 30px;
	}
	.bottomContainer2 {
		width: 250px;
		padding-left: 210px;
	}
	.bottomContainer2>button>img {
		cursor: pointer;
	}
	.itemSpanBox, .itemSpanBox_textArea {
		display: inline-block;
		width: 80px;
		height: 30px;
		margin-bottom: 30px;
		font-size: 20px;
		font-weight: bold;
	}
	.itemSpanBox_textArea {
		height: 276px;
		padding-right: 5px;
		float: left;
		display: flex;
		align-items: center;
	}
	.itemDetailBox1 {
		width: 250px;
		height: 30px;
	}
	.itemDetailBox2 {
		width: 510px;
		height: 30px;
	}
	.inputButton1 {
		width: 150px;
		height: 50px;
		background-color: black;
		color: white;
		border-radius: 10px;
		margin-bottom: 5px;
		font-size: 20px;
		font-weight: bold;
		cursor:pointer;
	}
	.inputButton2 {
		height: 80px;
		width: 200px;
	}
	.logoImg1 {
		float: left;
	}
	.logoImg1, .logoImg2 {
		width:100px;
		height: 50px;
	}
	h1 {
		width: 300px;
		height: 50px;
		text-align: center; 
		float: left;
		margin-top: 0;
		margin-left: 50px;
		margin-right: 50px;
	}
	button {
		border: none;
		background-color: white;
	}
	textarea {
		font-family: sans-serif;
	}
	
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

</style>
<script type="text/javascript">
		/*헤더 스크립트  */
		window.onload = function(){
			var loginBox = document.getElementById('loginBox');
		
			loginBox.setAttribute('onmouseenter', 'changeBtnBlue();');
			loginBox.setAttribute('onmouseleave', 'changeBtnWhite();');
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
		
	/*글쓰기 컨펌 스크립트  */
	function regiConfirmFnc() {
		var confirmText = confirm("새로 쓴 글을 등록하시겠습니까?");
		if (confirmText==true) {
			alert('등록이 완료되었습니다.');
		} else {
			alert('등록이 취소되었습니다.');
		}
	}

	
</script>
</head>
<body>
<!--헤더  -->
<div id="header">
		<div id="menuBox">
			<a>
				<img id="menuIcon" alt="menuIcon" src="./images/menu.png">			
				<span class="menuFont" style="width: 30px;">메뉴</span>
			</a>
		</div>
		<img id="logoBox" alt="logo" src="./images/logo_nexon.png">
		<div id="rightHBox">
			<div id="PCBox">
				<span class="menuFont">PC방</span>
				<span style="color:#9FA1A7; font:16px Gothic; font-weight: bold;">OFF</span>
			</div>
			<div id="signUpBox">
				<a>
					<span class="menuFont">회원가입</span>
				</a>
			</div>
			
			<div id="loginBox">
				<a id="loginBtn">			
					<span style="font:16px Gothic; color:#080410; font-weight: bold;">로그인</span>
				</a>
			</div>		
		</div>
	</div>
<!-- 본문  -->
<div class="frameContainer">
	<div>
		<div class="middleContainer1">
			<img class="logoImg1" src="images/logo_nexon.png" alt="로고">
			<h1>친목 게시판 글쓰기</h1>
			<img class="logoImg2" src="images/logo_nexon.png" alt="로고">
		</div>
		<form action="noticeboard.jsp">
			<div class="middleContainer2">
				<div>
					<span class="itemSpanBox">작성자</span>
					<input class="itemDetailBox1" type="text" placeholder=" 작성자명을 입력하세요.">
				</div>
				<div>
					<span class="itemSpanBox">제 목</span>
					<input class="itemDetailBox2" type="text" placeholder=" 제목을 입력하세요.">
				</div>
				<div>
					<span class="itemSpanBox_textArea">내 용</span>
					<textarea rows="15" cols="82" placeholder=" 내용을 입력하세요."></textarea>
				</div>	
			</div>
			<div class="bottomContainer1">
				<input class="inputButton1" type="submit" onclick="regiConfirmFnc()" value="등록하기">
			</div>
		</form>
			<div class="bottomContainer2">
				<a href="noticeboard.jsp"> 
					<button>
						<img src="images/button.png" alt="로고" >
					</button>
				</a>
			</div>

	</div>
</div>
	
</body>
</html>