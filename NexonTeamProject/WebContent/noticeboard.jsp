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
		var td5ObjList = document.getElementsByClassName('td5');
		var td2ObjList = document.getElementsByClassName('td2');
		var td1Obj = document.getElementsByClassName('td1');
		var td2Obj = document.getElementsByClassName('td2');
		var td3Obj = document.getElementsByClassName('td3');
		var a2Obj = document.getElementById('a2');
		var a3Obj = document.getElementById('a3');
		var a4Obj = document.getElementById('a4');
		var a5Obj = document.getElementById('a5');
		var a6Obj = document.getElementsByClassName('a6');
		

		//작성자, 제목 받기
		var urText = location.href;
		//번호
		for (var i = 1; i < td1Obj.length; i++) {
			td1Obj[i].innerHTML = i;
		}
		
		//2번 버튼 눌렀을때 이벤트
		a2Obj.setAttribute('onclick', 'pageEve1Fnc();');
		//3번 버튼 눌렀을때 이벤트
		a3Obj.setAttribute('onclick', 'pageEve2Fnc();');
		//4번 버튼 눌렀을때 이벤트
		a4Obj.setAttribute('onclick', 'pageEve3Fnc();');
		//5번 버튼 눌렀을때 이벤트
		a5Obj.setAttribute('onclick', 'pageEve4Fnc();');
		//왼쪽 화살표 버튼 눌렀을 경우
		a6Obj[0].setAttribute('onclick', 'eve2Fnc();');
		//오른쪽 화살표 버튼 눌렀을경우
		a6Obj[1].setAttribute('onclick', 'eveFnc();');
		
		for(var i=1; i<td5ObjList.length; i++){
			td5ObjList[i].innerHTML = 0;
		}	
				
		for(var i=1; i<td2ObjList.length; i++){
			td2ObjList[i].setAttribute("onclick","eveBtnFnc("+i+");");			
		}
		
		/* url주소에 변수들을 추가로 가져오면 input placeholder변경 */
		var urlTxt = decodeURIComponent(location.href);
// 		userID=1234&title=2334
		var urlSplitTxtList = urlTxt.split('?');
		if(urlSplitTxtList.length == 2){
		var idTxt = urlSplitTxtList[1].split('&');
		var id2Txt = idTxt[0].split('=');
		var titleTxt = idTxt[1].split('=');
			
			
			var nameId = id2Txt[1];
			var titleName = titleTxt[1];

			td3Obj[1].innerHTML = nameId;
			td2Obj[1].innerHTML = titleName;
		}
	}
		
		 

	function eveBtnFnc(i) {
// 		alert(i);
		
		var td5ObjList = document.getElementsByClassName('td5');
		
		countList[i] = Number(td5ObjList[i].innerHTML);
		
		countList[i]++;
		
		countSave(i,countList[i]);
		
	}

	var countList = new Array();
	function countSave(i, countNum){
		var td5ObjList = document.getElementsByClassName('td5');
		td5ObjList[i].innerHTML = countNum;
	}
	function pageEve0Fnc() {
		var td2ObjList = document.getElementsByClassName('td2');
		var td1Obj = document.getElementsByClassName('td1');
		var td5ObjList = document.getElementsByClassName('td5');

		for (var i = 1; i < td1Obj.length; i++) {
			countList[i] = 0;
			td5ObjList[i].innerHTML = countList[i];
			td1Obj[i].innerHTML = i;
		}

		for (var i = 1; i < td2ObjList.length; i++) {
			td2ObjList[i].innerHTML = ('<span">' + td1Obj[i].innerHTML + '번째 게시판 입니다.' + '</span>');
		}
	}
	function pageEve1Fnc() {
		var td2ObjList = document.getElementsByClassName('td2');
		var td1Obj = document.getElementsByClassName('td1');
		var td5ObjList = document.getElementsByClassName('td5');

		for (var i = 1; i < td1Obj.length; i++) {
			countList[i] = 0;
			td5ObjList[i].innerHTML = countList[i];
			td1Obj[i].innerHTML = i + 10;
		}

		for (var i = 1; i < td2ObjList.length; i++) {
			td2ObjList[i].innerHTML = ('<span">' + td1Obj[i].innerHTML + '번째 게시판 입니다.' + '</span>');
		}

	}
	function pageEve2Fnc() {
		var td2ObjList = document.getElementsByClassName('td2');
		var td1Obj = document.getElementsByClassName('td1');
		var td5ObjList = document.getElementsByClassName('td5');

		for (var i = 1; i < td1Obj.length; i++) {
			countList[i] = 0;
			td5ObjList[i].innerHTML = countList[i];
			td1Obj[i].innerHTML = i + 20;
		}

		for (var i = 1; i < td2ObjList.length; i++) {
			td2ObjList[i].innerHTML = ('<span">' + td1Obj[i].innerHTML + '번째 게시판 입니다.' + '</span>');
		}

	}
	function pageEve3Fnc() {
		var td2ObjList = document.getElementsByClassName('td2');
		var td1Obj = document.getElementsByClassName('td1');
		var td5ObjList = document.getElementsByClassName('td5');

		for (var i = 1; i < td1Obj.length; i++) {
			countList[i] = 0;
			td5ObjList[i].innerHTML = countList[i];
			td1Obj[i].innerHTML = i + 30;
		}

		for (var i = 1; i < td2ObjList.length; i++) {
			td2ObjList[i].innerHTML = ('<span">' + td1Obj[i].innerHTML + '번째 게시판 입니다.' + '</span>');
		}

	}
	function pageEve4Fnc() {
		var td2ObjList = document.getElementsByClassName('td2');
		var td1Obj = document.getElementsByClassName('td1');
		var td5ObjList = document.getElementsByClassName('td5');

		for (var i = 1; i < td1Obj.length; i++) {
			countList[i] = 0;
			td5ObjList[i].innerHTML = countList[i];
			td1Obj[i].innerHTML = i + 40;
		}

		for (var i = 1; i < td2ObjList.length; i++) {
			td2ObjList[i].innerHTML = ('<span">' + td1Obj[i].innerHTML + '번째 게시판 입니다.' + '</span>');
		}

	}
	
	function eveFnc() {
		var td1Obj = document.getElementsByClassName('td1')[10];
		

			/* if (0 < td1Obj[i] <= 10) {
				a6Obj[i]
			} else */ if (Number(td1Obj.innerHTML) == 10) {
				pageEve1Fnc();
			} else if (Number(td1Obj.innerHTML) == 20) {
				pageEve2Fnc();
			} else if (Number(td1Obj.innerHTML) == 30) {
				pageEve3Fnc();
			} else if (Number(td1Obj.innerHTML) == 40) {
				pageEve4Fnc();
			}
	}
	function eve2Fnc() {
		var td1Obj = document.getElementsByClassName('td1')[10];
			if(Number(td1Obj.innerHTML) == 20) {
				pageEve0Fnc();
			} else if (Number(td1Obj.innerHTML) == 30) {
				pageEve1Fnc();
			} else if (Number(td1Obj.innerHTML) == 40) {
				pageEve2Fnc();
			} else if (Number(td1Obj.innerHTML) == 50) {
				pageEve3Fnc();
			}
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
					<span id="list">전체게시글 : 50</span>
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
						<td class='td1'></td>
						<td class='td2'><span>1번째 게시물입니다</span></td>
						<td class='td3'>운영자</td>
						<td class='td4'>20-04-27 11:07</td>
						<td class='td5'><div class='into1'></div></td>
					</tr>
					<tr class='tr2'>
						<td class='td1'></td>
						<td class='td2'><span>2번째 게시물입니다</span></td>
						<td class='td3'>운영자</td>
						<td class='td4'>20-04-27 11:07</td>
						<td class='td5'><div class='into1'></div></td>
					</tr>
					<tr class='tr2'>
						<td class='td1'></td>
						<td class='td2'><span>3번째 게시물입니다</span></td>
						<td class='td3'>운영자</td>
						<td class='td4'>20-04-27 11:07</td>
						<td class='td5'><div class='into1'></div></td>
					</tr>
					<tr class='tr2'>
						<td class='td1'></td>
						<td class='td2'><span>4번째 게시물입니다</span></td>
						<td class='td3'>운영자</td>
						<td class='td4'>20-04-27 11:07</td>
						<td class='td5'><div class='into1'>0</div></td>
					</tr>
					<tr class='tr2'>
						<td class='td1'></td>
						<td class='td2'><span>5번째 게시물입니다</span></td>
						<td class='td3'>운영자</td>
						<td class='td4'>20-04-27 11:07</td>
						<td class='td5'><div class='into1'>0</div></td>
					</tr>
					<tr class='tr2'>
						<td class='td1'></td>
						<td class='td2'><span>6번째 게시물입니다</span></td>
						<td class='td3'>운영자</td>
						<td class='td4'>20-04-27 11:07</td>
						<td class='td5'><div class='into1'>0</div></td>
					</tr>
					<tr class='tr2'>
						<td class='td1'></td>
						<td class='td2'><span>7번째 게시물입니다</span></td>
						<td class='td3'>운영자</td>
						<td class='td4'>20-04-27 11:07</td>
						<td class='td5'><div class='into1'>0</div></td>
					</tr>
					<tr class='tr2'>
						<td class='td1'></td>
						<td class='td2'><span>8번째 게시물입니다</span></td>
						<td class='td3'>운영자</td>
						<td class='td4'>20-04-27 11:07</td>
						<td class='td5'><div class='into1'>0</div></td>
					</tr>
					<tr class='tr2'>
						<td class='td1'></td>
						<td class='td2'><span>9번째 게시물입니다</span></td>
						<td class='td3'>운영자</td>
						<td class='td4'>20-04-27 11:07</td>
						<td class='td5'><div class='into1'>0</div></td>
					</tr>
					<tr id='tr3'>
						<td class='td1'></td>
						<td class='td2'><span>10번째 게시물입니다</span></td>
						<td class='td3'>운영자</td>
						<td class='td4'>20-04-27 11:07</td>
						<td class='td5'><div class='into1'>0</div></td>
					</tr>

				</table>
			</div>
			<div id='num'>
				<span class='a6'>&#9664;</span> <span>[1]</span> <span id='a2'>[2]</span>
				<span id='a3'>[3]</span> <span id='a4'>[4]</span> <span id='a5'>[5]</span>
				<span class='a6'>&#9654;</span>
			</div>
			<div id='bg'>
				<form action="detailnoticeboard.jsp">
					<input type="submit" id='btn' value="글쓰기">
				</form>
			</div>
		</div>
	</div>



</body>
</html>