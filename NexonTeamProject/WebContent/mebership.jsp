<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>

<style>
#wrap {
	height: 900px;
	border: 1px solid black;
}

#secondWrap {
	width: 510px;
	height: 622px;
	border: 1px solid black;
	margin: auto;
}

#basicInfo {
	width: 159px;
	height: 30px;
	margin-left: 175px;
}

#infoLine {
	width: 510px;
	border: 0.8px solid grey;
}

.underDiv {
	width: 510px;
	height: 78px;
	border: 1px solid black;
	margin-top: 50px;
	box-sizing: border-box;
}

.leftText {
	font-weight: bold;
	margin-top: 30px;
}

.secondUnderDiv {
	margin-top: 15px;
	width: 108px;
	border: 1px solid black;
	float: left;
}

.thirdUnderDiv {
	width: 396px;
	height: 74px;
	border: 1px solid black;
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
}

#btnWrap {
	margin: auto;
	width: 188px;
	height: 47px;
	border: 1px solid black;
}
</style>

</head>

<body>

	<div id='wrap'>
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
					<input type="text" id='idInput' placeholder='넥슨ID (이메일)' />
					<button id='certification'>인증번호 발송</button>
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
			<a href = "./mebership.jsp">다음</a>
			<a href = "./mebership.jsp">새로 입력</a>
		</div>
	</div>

</body>
</html>