<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	width: 290px; padding-top : 10px;
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
	border: 1px solid #6799FF; background-color : #6799FF;
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
	float: left; width : 150px;
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
</style>
<script type="text/javascript">
	
</script>
</head>

<body>
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
		<div>
			<table id='table'>
				<tr id='tr1'>
					<th class='td1'>넥슨ID</th>
					<th class='td2'>가입일</th>
					<th class='td3' id='black'>회원상태</th>
					<th class='td4'>게임정보</th>
				</tr>
				<tr id='tr2'>
					<td class='td1'><input type="radio" name="id">xxx0427@naver.com</td>
					<td class='td2'>2015.07.18</td>
					<td class='td3'>정상</td>
					<td class='td4'><a href="">보기</a></td>
				</tr>
				<tr id='tr3'>
					<td class='td1'><input type="radio" name="id">xxx0427</td>
					<td class='td2'>2011.09.08</td>
					<td class='td3' id='red'>비정상</td>
					<td class='td4'><a href="">보기</a></td>
				</tr>
				<tr id='tr4'>
					<td class='td1'><input type="radio" name="id">xxy0455@daum.net</td>
					<td class='td2'>2011.01.07</td>
					<td class='td3'>정상</td>
					<td class='td4'><a href="">보기</a></td>
				</tr>
			</table>
		</div>
		<div id='Btn'>
			<form action="">
				<input id='lgnBtn' type="submit" value="로그인">
			</form>
			<form action="">
				<input id='passwordBtn' type="submit" value="비밀번호 재설정">
			</form>
		</div>
	</div>
</body>
</html>