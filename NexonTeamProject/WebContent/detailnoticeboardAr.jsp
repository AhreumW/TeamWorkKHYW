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

#bottomContainer1 {
	width: 200px;
	padding-left: 220px;
	padding-top: 30px;
}

#bottomContainer2 {
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
	font-size: 20px;
	font-weight: bold;
}

.itemSpanBox_textArea {
	height: 276px;
	padding-right: 6px;
	float: left;
	display: flex;
	align-items: center;
}

.itemDetailBox1 {
	width: 250px;
	height: 30px;
}

.itemDetailBox2, .itemDetailEmptyBox {
	width: 510px;
	height: 30px;
}

.itemDetailEmptyBox {
	margin-left: 86px;
	/* 	border: 1px solid red; */
}

#inputButton {
	width: 150px;
	height: 50px;
	background-color: black;
	color: white;
	border-radius: 10px;
	margin-bottom: 5px;
	font-size: 20px;
	font-weight: bold;
	cursor: pointer;
}

.inputButton2 {
	height: 80px;
	width: 200px;
}

.logoImg1 {
	float: left;
}

.logoImg1, .logoImg2 {
	width: 100px;
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
</style>
<script type="text/javascript">
	/*헤더 스크립트  */
	window.onload = function() {
		var loginBox = document.getElementById('loginBox');
		var inputButtonBox = document.getElementById('inputButton');
		var authorInput = document.getElementsByClassName('itemDetailBox1')[0];
		var titleInput = document.getElementsByClassName('itemDetailBox2')[0];
		var contentInput = document.getElementById('textareaBox');

		authorInput.addEventListener('blur', authorBtnFnc, false);
		titleInput.addEventListener('blur', titleBtnFnc, false);
		contentInput.addEventListener('blur', contentBtnFnc, false);
		inputButtonBox.addEventListener('click', confirmFnc, false);

		loginBox.setAttribute('onmouseenter', 'changeBtnBlue();');
		loginBox.setAttribute('onmouseleave', 'changeBtnWhite();');

		//현재 시간
		var currentTimeObj = document.getElementById('currentTime');
		var time = updateTimeFnc();
		currentTimeObj.value= time;
	}
	
	//현재시간 
	function updateTimeFnc(){
		var localTime = new Date();
		
		var year = localTime.getYear().toString();
		var yearTxt = year.slice(1, 3);
		
		var month = localTime.getMonth() + 1;
		if(month.toString().length == 1){
			var monthTxt = ''+ 0 + month;
		}else{
			var monthTxt = ''+ month;
		}
		
		
		var date = localTime.getDate();
		if(date.toString().length == 1){
			var dateTxt = ''+ 0 + date;
		}else{
			var dateTxt = ''+ date;
		}
		
		var hour = localTime.getHours();
		if(hour.toString().length == 1){
			var hourTxt = ''+ 0 + hour;
		}else{
			var hourTxt = ''+ hour;
		}
		
		var minute = localTime.getMinutes();
		if(minute.toString().length == 1){
			var minuteTxt = ''+ 0 + minute;
		}else{
			var minuteTxt = ''+ minute;
		}
		
		var timeTxt = yearTxt +'-';
		timeTxt += monthTxt + '-';
		timeTxt += dateTxt + ' ';
		timeTxt += hourTxt + ':';
		timeTxt += minuteTxt;
		
		return timeTxt;
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

	/*글쓰기 등록 스크립트  */
	function authorBtnFnc() {
		var authorInput = document.getElementsByClassName('itemDetailBox1')[0];
		var authorText = document.getElementsByClassName('itemDetailEmptyBox')[0];
		var authorInputValue = authorInput.value;

		if (authorInputValue == '') {
			authorText.style.color = 'red';
			authorText.style.fontSize = '13px';
			authorText.innerHTML = '작성자를 입력해주세요.';
		}

	}

	function titleBtnFnc() {
		var titleInput = document.getElementsByClassName('itemDetailBox2')[0];
		var titleText = document.getElementsByClassName('itemDetailEmptyBox')[1];
		var titleInputValue = titleInput.value;

		if (titleInputValue == '') {
			titleText.style.color = 'red';
			titleText.style.fontSize = '13px';
			titleText.innerHTML = '제목을 입력하세요';
		}
	}

	function contentBtnFnc() {
		var contentInput = document.getElementById('textareaBox');
		var contentText = document.getElementsByClassName('itemDetailEmptyBox')[2];
		var contentInputValue = contentInput.value;

		if (contentInputValue == '') {
			contentText.style.color = 'red';
			contentText.style.fontSize = '13px';
			contentText.innerHTML = '내용을 입력하세요';
		}
	}

	function confirmFnc() {
		var authorInput = document.getElementsByClassName('itemDetailBox1')[0];
		var authorText = document.getElementsByClassName('itemDetailEmptyBox')[0];
		var authorInputValue = authorInput.value;

		var titleInput = document.getElementsByClassName('itemDetailBox2')[0];
		var titleText = document.getElementsByClassName('itemDetailEmptyBox')[1];
		var titleInputValue = titleInput.value;

		var contentInput = document.getElementById('textareaBox');
		var contentText = document.getElementsByClassName('itemDetailEmptyBox')[2];
		var contentInputValue = contentInput.value;

		if (authorInputValue != '' && titleInputValue != ''
				&& contentInputValue != '') {
			var confirmText = confirm('새 게시글을 등록하시겠습니까?');
			if (confirmText == true) {
				alert('게시글이 등록되었습니다.');
			} else {
				alert('게시글 등록이 취소되었습니다.');
			}
		} else if (authorInputValue == '' && titleInputValue == ''
				&& contentInputValue == '') {
			alert('게시물 내용이 없습니다. \n게시물 목록으로 넘어갑니다.');
		}
	}
</script>
</head>
<body>
	<!--헤더  -->
	<div id="header">
		<div id="menuBox">
			<a> <img id="menuIcon" alt="menuIcon" src="./images/menu.png">
				<span class="menuFont" style="width: 30px;">메뉴</span>
			</a>
		</div>
		<img id="logoBox" alt="logo" src="./images/logo_nexon.png">
		<div id="rightHBox">
			<div id="PCBox">
				<span class="menuFont">PC방</span> <span
					style="color: #9FA1A7; font: 16px Gothic; font-weight: bold;">OFF</span>
			</div>
			<div id="signUpBox">
				<a> <span class="menuFont">회원가입</span>
				</a>
			</div>

			<div id="loginBox">
				<a id="loginBtn"> <span
					style="font: 16px Gothic; color: #080410; font-weight: bold;">로그인</span>
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
			<form action="./noticeboardAR.jsp">
			<div class="middleContainer2">
				<div id="emptyAlarm">
					<span class="itemSpanBox">작성자</span> <input class="itemDetailBox1"
						type="text" placeholder=" 작성자명을 입력하세요." name="userID">
				</div>

				<div class="itemDetailEmptyBox">
					<!-- 공란으로 등록을 클릭했을때 경고메시지 출력되는 공간 -->
				</div>

				<div>
					<span class="itemSpanBox">제 목</span> <input class="itemDetailBox2"
						type="text" placeholder=" 제목을 입력하세요." name="title">
				</div>

				<div class="itemDetailEmptyBox">
					<!-- 공란으로 등록을 클릭했을때 경고메시지 출력되는 공간 -->
				</div>

				<div>
					<span class="itemSpanBox_textArea">내 용</span>
					<textarea rows="15" cols="82" placeholder=" 내용을 입력하세요."
						id="textareaBox"></textarea>
				</div>

				<div class="itemDetailEmptyBox">
					<!-- 공란으로 등록을 클릭했을때 경고메시지 출력되는 공간 -->
				</div>

				
			</div>
			
<!-- 			<input type="hidden" name="hiddenvalue" size=10 value='uiandwe@tistory.com'> -->
			<input id="currentTime" type="hidden" name="currentTime" value="">
			
			<div id="bottomContainer1">	
				<input id="inputButton" type="submit" value="등록하기">
			</div>
			</form>
			
			<div id="bottomContainer2">
				<a href="noticeboard.jsp">
					<button>
						<img src="images/button.png" alt="로고">
					</button>
				</a>
			</div>
				

		</div>
	</div>

</body>
</html>