<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>

<style>
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

#headerLine {
	width: 100%;
	border: 0.5px solid black;
	margin-bottom: 70px;
}

#wrap {
	height: 900px;
	/* 	border: 1px solid black; */
}

#secondWrap {
	width: 510px;
	height: 562px;
	/* 	border: 1px solid black; */
	margin: auto;
}

#basicInfo {
	width: 159px;
	height: 30px;
	margin-left: 175px;
}

#infoLine {
	width: 510px;
	border: 0.5px solid #D5D5D5;
}

.underDiv {
	width: 510px;
	height: 78px;
	/* 	border: 1px solid black; */
	margin-top: 40px;
	box-sizing: border-box;
}

.leftText {
	font-weight: bold;
	margin-top: 30px;
}

.secondUnderDiv {
	margin-top: 15px;
	width: 108px;
	/* 	border: 1px solid black; */
	float: left;
}

.thirdUnderDiv {
	width: 396px;
	height: 74px;
	/* 	border: 1px solid black; */
	float: right;
}

#idInput {
	width: 280px;
	height: 51px;
	background-color: #eaf0fe;
	float: left;
	padding-left: 17px;
	box-sizing: border-box;
	margin-bottom: 5px;
	border: 0.5px solid #D5D5D5;
}

#certification {
	width: 100px;
	height: 51px;
	border: 1px solid #b4beec;
	background-color: white;
	float: right;
	color: #6e81df;
	font-weight: bold;
}

.inputMsg {
	clear: both;
	font-size: 12px;
	color: #666666;
}

#numInput, #pwInput, #pwCheckInput {
	width: 396px;
	height: 51px;
	background-color: #eaf0fe;
	float: left;
	padding-left: 17px;
	box-sizing: border-box;
	margin-bottom: 5px;
	border: 0.5px solid #D5D5D5;
}

#btnWrap {
	margin: auto;
	width: 200px;
	height: 117px;
	/* 	border: 1px solid black; */
}

#bt1 {
	width: 92px;
	height: 45px;
	border: 1px solid #5a6ff2;
	float: left;
	background-color: #5a6ff2;
	color: white;
	font-size: 14px;
	font-weight: bold;
}

#bt2 {
	width: 92px;
	height: 45px;
	border: 1px solid #5a6ff2;
	float: right;
	background-color: white;
	color: #5a6ff2;
	font-size: 14px;
	font-weight: bold;
}

#bottomLine {
	width: 100%;
	border: 0.5px solid #D5D5D5;
	margin-bottom: 50px;
}

#copyright {
	width: 306px;
	margin: auto;
	font-size: 12px;
}
</style>

<script type="text/javascript">


var randomNum = 0;
	
	window.onload = function() {
		
		
		
		var bt1Obj = document.getElementById('bt1');
		var bt2Obj = document.getElementById('bt2');
		var certificationObj = document.getElementById('certification');
		
		bt1Obj.style.cursor = 'pointer';
		bt2Obj.style.cursor = 'pointer';
		certificationObj.style.cursor = 'pointer';
		
		var idInputObj = document.getElementById('idInput');
		
		idInputObj.setAttribute('onblur', 'changeMsg1Fnc();');
		
		var pwInputObj = document.getElementById('pwInput');
		
		pwInputObj.setAttribute('onblur', 'changeMsg2Fnc();');
		
		var pwCheckInputObj = document.getElementById('pwCheckInput');
		
		pwCheckInputObj.setAttribute('onblur', 'changeMsg3Fnc();');
		
		var certificateObj = document.getElementById('certification');
		certificateObj.setAttribute('onclick','AuthenticateFnc();');
		
		var numInputObj = document.getElementById("numInput");
		numInputObj.setAttribute('onchange', 'InputAuthNumFnc();');
	}
	
	function changeMsg1Fnc(){
		var idInputObj = document.getElementById('idInput');
		var email = idInputObj.value;
		var emailForm = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		var inputMsgList = document.getElementsByClassName('inputMsg');
		
		if(email == ''){
			idInputObj.style.border = '0.5px solid red';
			inputMsgList[0].style.color = 'red';
 			inputMsgList[0].innerHTML = '보유하신 이메일을 입력해주세요.';
		}else if(emailForm.test(email) == true){
			idInputObj.style.border = '0.5px solid #5a6ff2';
			inputMsgList[0].style.color = '#5a6ff2';
			inputMsgList[0].innerHTML = '사용 가능한 이메일입니다.';
		}else if(emailForm.test(email) == false){
			idInputObj.style.border = '0.5px solid red';
			inputMsgList[0].style.color = 'red';
			inputMsgList[0].innerHTML = '유효하지 않은 이메일 형식입니다.';
		}
	}
	
	function changeMsg2Fnc(){
		var pwInputObj = document.getElementById('pwInput');
		var pw = pwInputObj.value;
		var inputMsgList = document.getElementsByClassName('inputMsg');
			
		var num = pw.search(/[0-9]/g);
		var eng = pw.search(/[a-z]/ig);
		var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
		
		
		if(pw.length == 0){
			pwInputObj.style.border = '0.5px solid red';
 			inputMsgList[2].style.color = 'red';
			inputMsgList[2].innerHTML = '비밀번호를 입력해주세요.';
		}else if(pw.length < 10 || pw.length > 16){
			pwInputObj.style.border = '0.5px solid red';
 			inputMsgList[2].style.color = 'red';
 			inputMsgList[2].innerHTML = '비밀번호는 10~16자 이내로 입력해주세요.';
		}else if(num < 0 || eng < 0 || spe < 0){
			pwInputObj.style.border = '0.5px solid red';
 			inputMsgList[2].style.color = 'red';
			inputMsgList[2].innerHTML = '영문/숫자/특수문자를 모두 조합하여 입력해주세요.';
		}else{
			pwInputObj.style.border = '0.5px solid #5a6ff2';
			inputMsgList[2].style.color = '#5a6ff2';
			inputMsgList[2].innerHTML = '사용 가능한 비밀번호입니다.';
		}
		
	}
	
	function changeMsg3Fnc() {

		var pwInputObj = document.getElementById('pwInput');
		var pw = pwInputObj.value;

		var pwCheckInputObj = document.getElementById('pwCheckInput');
		var pwCheck = pwCheckInputObj.value;

		var inputMsgList = document.getElementsByClassName('inputMsg');
		
		if(pwCheck == ''){
			pwCheckInputObj.style.border = '0.5px solid red';
			inputMsgList[3].style.color = 'red';
			inputMsgList[3].innerHTML = '비밀번호를 입력해주세요.';
		}else if(pwCheck == pw){
			pwCheckInputObj.style.border = '0.5px solid #5a6ff2';
			inputMsgList[3].style.color = '#5a6ff2';
			inputMsgList[3].innerHTML = '입력한 비밀번호가 일치합니다.';
		}else{
			pwCheckInputObj.style.border = '0.5px solid red';
			inputMsgList[3].style.color = 'red';
			inputMsgList[3].innerHTML = '입력한 비밀번호가 서로 일치하지 않습니다.';
		}
		
		
		
	}

	function refreshFnc() {
		var result=confirm('입력하신 모든 정보가 초기화됩니다.\n정말 새로 입력하시겠습니까?');
		
		if(result){
			location.href='./membership.jsp';
		}
	}
	
	
	function AuthenticateFnc(){
		randomNum = Math.floor((Math.random() * 10000) + 1);
 		alert("인증번호는 "+randomNum+"입니다.");
	}
	
	
	function InputAuthNumFnc(){
		var numInputObj = document.getElementById("numInput");
		
		var pInputMsgObj = document.getElementsByClassName('inputMsg')[1];
		
		if(Number(numInputObj.value) == Number(randomNum)){
			numInputObj.style.border = '0.5px solid #5a6ff2';
			pInputMsgObj.style.color = '#5a6ff2';
			pInputMsgObj.innerHTML = "인증이 완료되었습니다.";
		}else{
			numInputObj.style.border = '0.5px solid red';
			pInputMsgObj.style.color = 'red';
			pInputMsgObj.innerHTML = "인증에 실패하셨습니다.";
		}	
		
		
	}
</script>

</head>

<body>

	<div id='wrap'>
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
					<a href='./membership.jsp' style='text-decoration: none;'> <span
						class="menuFont">회원가입</span>
					</a>
				</div>
				<div id="loginBox">
					<a id="loginBtn" href='./login.jsp' style='text-decoration: none;'>
						<span
						style="font: 16px Gothic; color: #080410; font-weight: bold;">로그인</span>
					</a>
				</div>
			</div>
		</div>

		<div id='headerLine'></div>
		<form action="./login.jsp">
			<div id='secondWrap'>
				<h2>
					<img id='basicInfo' src='./images/userinfo.gif'>
				</h2>
				<div id='infoLine'></div>

				<div class='underDiv'>
					<div class='secondUnderDiv'>
						<span class='leftText'>넥슨ID</span>
					</div>
					<div class='thirdUnderDiv'>
						<input type="email" id='idInput' placeholder='넥슨ID (이메일)' /> <input
							id='certification' type="button" value='인증번호 발송' />
						<p class='inputMsg'>
							보유하신 <strong>이메일</strong>을 입력해주세요.
						</p>
					</div>
				</div>

				<div class='underDiv'>
					<div class='secondUnderDiv'>
						<span class='leftText'>인증번호</span>
					</div>
					<div class='thirdUnderDiv'>
						<input type='text' id='numInput' placeholder="인증번호 입력 (유효시간 5분)" />
						<p class='inputMsg'>
							<strong>[인증번호 발송]</strong>을 먼저 진행해주세요.
						</p>
					</div>
				</div>

				<div class='underDiv'>
					<div class='secondUnderDiv'>
						<span class='leftText'>비밀번호</span>
					</div>
					<div class='thirdUnderDiv'>
						<input type='text' id='pwInput' placeholder="비밀번호" />
						<p class='inputMsg'>영문/숫자/특수문자를 조합하여 10~16자로 입력해주세요.</p>
					</div>
				</div>

				<div class='underDiv'>
					<div class='secondUnderDiv'>
						<span class='leftText'>비밀번호 확인</span>
					</div>
					<div class='thirdUnderDiv'>
						<input type='text' id='pwCheckInput' placeholder="비밀번호 확인" />
						<p class='inputMsg'>
							<strong>비밀번호</strong>를 다시 한번 입력해주세요.
						</p>
					</div>
				</div>
			</div>

			<div id='btnWrap'>
				<input id='bt1' type="submit" value="다음" /> <input id='bt2'
					type="button" value="새로 입력" onclick='refreshFnc();' />
			</div>
		</form>

		<div id='bottomLine'></div>

		<div id='copyright'>
			<span>© 2004 NEXON Korea Corporation All Rights Reserved.</span>
		</div>
	</div>

</body>
</html>