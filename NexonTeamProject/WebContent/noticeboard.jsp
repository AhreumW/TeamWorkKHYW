<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#main {
	height: 900px;
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

#subMain {
	width: 1100px;
	height: 768px;
	margin: auto;
}

#ask {
	float: left;
	height: 30px;
}

#list {
	clear: left;
}

#one {
	margin-top: 20px;
}

#line {
	border-left: 1px solid black;
	padding-left: 7px;
}

#table1 {
	width: 1100px;
	clear: left;
	margin-top: 70px;
	margin-bottom: 30px;
}

table {
	border-collapse: collapse;
}

#tr1 {
	background-color: #8BBDFF;
	border-bottom: 1px solid black;
}

.tr2 {
	border-bottom: 1px solid #E1E1E1;
}

#tr3 {
	border-bottom: 1px solid black;
}

td {
	height: 30px;
}

.td1 {
	width: 100px;
}

.td2 {
	width: 350px;
}

.td3 {
	width: 120px;
}

.td4 {
	width: 400px;
}

.td5 {
	width: 120px;
}

#num {
	width: 200px;
	margin: auto;
}

#bg {
	margin-top: 30px;
	background-color: #FFD3B0;
	height: 50px;
	background-color: #FFD3B0;
}

#btn {
	margin-top: 10px;
	margin-right: 10px;
	float: right;
}
</style>
<script type="text/javascript">
	window.onload = function() {
		var td2Obj = document.getElementsByClassName('td2');
		
		for (var i = 0; i < td2Obj.length; i++) {
// 			td2Obj[i].onclick = eveBtnFnc(i);
			td2Obj[i].setAttribute('onclick', 'eveBtnFnc('+i+');'); 
			
		}
		
	}
	var cnt = 0;
	
	function eveBtnFnc(num) {
		var td2Obj = document.getElementsByClassName('td2');
		
		var into1Obj = document.getElementsByClassName('into1');
		 
// 		for(var i=0; i<into1Obj.length; i++){		
			cnt = parseInt(into1Obj[num-1].innerHTML);
			alert("cnt"+cnt);
			
// 			alert(cnt);
			cnt++; 
			
			into1Obj[num-1].innerHTML = parseInt(into1Obj[num-1].innerHTML) 1+ cnt;
			
		
	}
</script>
</head>

<body>
	<div id='main'>
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
		<div id='subMain'>
			<div id='one'>
				<div id='ask'>
					<span id="list">전체게시글 : 14</span>
				</div>

			</div>
			<div id='table1'>
				<table>
					<tr id='tr1'>
						<td class='td1'>번호</td>
						<td class='td2'>제목</td>
						<td class='td3'>글쓴이</td>
						<td class='td4'>작성일</td>
						<td class='td5'>조회</td>
					</tr>
					<tr class='tr2'>
						<td class='td1'>1</td>
						<td class='td2'><a href="">1번째 게시물입니다</a></td>
						<td class='td3'>운영자</td>
						<td class='td4'>20-04-27 11:07</td>
						<td class='td5'><div class='into1'></div></td>
					</tr>
					<tr class='tr2'>
						<td class='td1'>2</td>
						<td class='td2'><a href="">2번째 게시물입니다</a></td>
						<td class='td3'>운영자</td>
						<td class='td4'>20-04-27 11:07</td>
						<td class='td5'><div class='into1'></div></td>
					</tr>
					<tr class='tr2'>
						<td class='td1'>3</td>
						<td class='td2'><a href="">3번째 게시물입니다</a></td>
						<td class='td3'>운영자</td>
						<td class='td4'>20-04-27 11:07</td>
						<td class='td5'><div class='into1'></div></td>
					</tr>
					<tr class='tr2'>
						<td class='td1'>4</td>
						<td class='td2'><a href="">4번째 게시물입니다</a></td>
						<td class='td3'>운영자</td>
						<td class='td4'>20-04-27 11:07</td>
						<td class='td5'><div class='into1'>0</div></td>
					</tr>
					<tr class='tr2'>
						<td class='td1'>5</td>
						<td class='td2'><a href="">5번째 게시물입니다</a></td>
						<td class='td3'>운영자</td>
						<td class='td4'>20-04-27 11:07</td>
						<td class='td5'><div class='into1'>0</div></td>
					</tr>
					<tr class='tr2'>
						<td class='td1'>6</td>
						<td class='td2'><a href="">6번째 게시물입니다</a></td>
						<td class='td3'>운영자</td>
						<td class='td4'>20-04-27 11:07</td>
						<td class='td5'><div class='into1'>0</div></td>
					</tr>
					<tr class='tr2'>
						<td class='td1'>7</td>
						<td class='td2'><a href="">7번째 게시물입니다</a></td>
						<td class='td3'>운영자</td>
						<td class='td4'>20-04-27 11:07</td>
						<td class='td5'><div class='into1'>0</div></td>
					</tr>
					<tr class='tr2'>
						<td class='td1'>8</td>
						<td class='td2'><a href="">8번째 게시물입니다</a></td>
						<td class='td3'>운영자</td>
						<td class='td4'>20-04-27 11:07</td>
						<td class='td5'><div class='into1'>0</div></td>
					</tr>
					<tr class='tr2'>
						<td class='td1'>9</td>
						<td class='td2'><a href="">9번째 게시물입니다</a></td>
						<td class='td3'>운영자</td>
						<td class='td4'>20-04-27 11:07</td>
						<td class='td5'><div class='into1'>0</div></td>
					</tr>
					<tr id='tr3'>
						<td class='td1'>10</td>
						<td class='td2'><a href="">10번째 게시물입니다</a></td>
						<td class='td3'>운영자</td>
						<td class='td4'>20-04-27 11:07</td>
						<td class='td5'><div class='into1'>0</div></td>
					</tr>

				</table>
			</div>
			<div id='num'>
				<a href="">&#9664;</a> <a href="">[1]</a> <a href="">[2]</a> <a
					href="">[3]</a> <a href="">[4]</a> <a href="">[5]</a> <a href="">&#9654;</a>
			</div>
			<div id='bg'>
				<input type="submit" id='btn' value="글쓰기">
			</div>
		</div>
	</div>



</body>
</html>