<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
@charset "UTF-8";

#main {
	height: 900px;
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
		var td5ObjList = document.getElementsByClassName('td5');
		var td2ObjList = document.getElementsByClassName('td2');
		var td1Obj = document.getElementsByClassName('td1');
		var td2Obj = document.getElementsByClassName('td2');
		var td3Obj = document.getElementsByClassName('td3');
		var td4Obj = document.getElementsByClassName('td4');
		var a1Obj = document.getElementById('a1');
		var a2Obj = document.getElementById('a2');
		var a3Obj = document.getElementById('a3');
		var a4Obj = document.getElementById('a4');
		var a5Obj = document.getElementById('a5');
		var a6Obj = document.getElementsByClassName('a6');
		
		a1Obj.style.color = 'blue';
		
		/* 사이드메뉴  */
		var sideBox = document.getElementById('sideMenu');
		sideBox.setAttribute('onclick', 'openMenu();');
		
		var loginBox = document.getElementById('loginBox');

		loginBox.setAttribute('onmouseenter', 'changeBtnBlue();');
		loginBox.setAttribute('onmouseleave', 'changeBtnWhite();');
		
		//작성자, 제목 받기
		var urText = location.href;
		//번호
		cnt = 50;
		for (var i = 1; i < td1Obj.length; i++) {
			td1Obj[i].innerHTML = cnt;
			cnt--;
		}
		//1번 버튼 눌렀을때 이벤트
// 		a1Obj.addEventListener('click', 'pageEve0Fnc', false);
		a1Obj.setAttribute('onclick', 'colorpageFnc(this);pageEve0Fnc();');
		//2번 버튼 눌렀을때 이벤트
		
		a2Obj.setAttribute('onclick', 'colorpageFnc(this);pageEve1Fnc();');
		//3번 버튼 눌렀을때 이벤트
	
		a3Obj.setAttribute('onclick', 'colorpageFnc(this);pageEve2Fnc();');
		//4번 버튼 눌렀을때 이벤트
		
		a4Obj.setAttribute('onclick', 'colorpageFnc(this);pageEve3Fnc();');
		//5번 버튼 눌렀을때 이벤트
		
		a5Obj.setAttribute('onclick', 'colorpageFnc(this);pageEve4Fnc();');
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
		//1번째 페이지 시간
		var dt = 23;
		var mi = 60;
		
		td4ObjList[1].innerHTML = '20-04-29 ' + dt + ':00';
		
		for (var i = 2; i < td4ObjList.length; i++) {
			mi = mi-5;
			
			td4ObjList[i].innerHTML = '20-04-29 ' + dt + ':' + mi;
			dt = dt-2;
			
			if(dt < 10) {
				td4ObjList[i].innerHTML = '20-04-29 0' + dt + ':' + mi;
			}
			
			if(mi < 10) {
				td4ObjList[i].innerHTML = '20-04-29 ' + dt + ':0' + mi;
			}
			
			if(dt < 10 && mi < 10) {
				td4ObjList[i].innerHTML = '20-04-29 0' + dt + ':0' + mi;
			}
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
	
	var cnt = 0;
	
	function pageEve0Fnc() {
		var td2ObjList = document.getElementsByClassName('td2');
		var td1Obj = document.getElementsByClassName('td1');
		var td5ObjList = document.getElementsByClassName('td5');
		var td4ObjList = document.getElementsByClassName('td4');
		var td3ObjList = document.getElementsByClassName('td3');
		var a1Obj = document.getElementById('a1');
		var a2Obj = document.getElementById('a2');
		var a3Obj = document.getElementById('a3');
		var a4Obj = document.getElementById('a4');
		var a5Obj = document.getElementById('a5');
		
		cnt = 50;
		for (var i = 1; i < td1Obj.length; i++) {
			countList[i] = 0;
			td5ObjList[i].innerHTML = countList[i];
			td1Obj[i].innerHTML = cnt;
			cnt--;
		}

		for (var i = 1; i < td2ObjList.length; i++) {
			td2ObjList[i].innerHTML = ('<a href="#"><span">' + td1Obj[i].innerHTML + '번째 게시판 입니다.' + '</span></a>');
		}
		
		var dt = 23;
		var mi = 60;
		
		td4ObjList[1].innerHTML = '20-04-29 ' + dt + ':00';
		
		for (var i = 2; i < td4ObjList.length; i++) {
			mi = mi-5;
			
			td4ObjList[i].innerHTML = '20-04-29 ' + dt + ':' + mi;
			dt = dt-2;
			
			if(dt < 10) {
				td4ObjList[i].innerHTML = '20-04-29 0' + dt + ':' + mi;
			}
			
			if(mi < 10) {
				td4ObjList[i].innerHTML = '20-04-29 ' + dt + ':0' + mi;
			}
			
			if(dt < 10 && mi < 10) {
				td4ObjList[i].innerHTML = '20-04-29 0' + dt + ':0' + mi;
			}
		}
		
		for (var i = 0; i < td3ObjList.length; i++) {
			td3ObjList[i].innerHTML = '운영자';
		}
	
		
	
		a1Obj.style.color = 'blue';
		a2Obj.style.color = 'black';
		a3Obj.style.color = 'black';
		a4Obj.style.color = 'black';
		a5Obj.style.color = 'black';
		
	}
	function pageEve1Fnc() {
		var td2ObjList = document.getElementsByClassName('td2');
		var td1Obj = document.getElementsByClassName('td1');
		var td5ObjList = document.getElementsByClassName('td5');
		var td4ObjList = document.getElementsByClassName('td4');
		var a1Obj = document.getElementById('a1');
		var a2Obj = document.getElementById('a2');
		var a3Obj = document.getElementById('a3');
		var a4Obj = document.getElementById('a4');
		var a5Obj = document.getElementById('a5');
		
		cnt = 40;
		for (var i = 1; i < td1Obj.length; i++) {
			countList[i] = 0;
			td5ObjList[i].innerHTML = countList[i];
			td1Obj[i].innerHTML = cnt;
			cnt--;
		}

		for (var i = 1; i < td2ObjList.length; i++) {
			td2ObjList[i].innerHTML = ('<a href="#"><span">' + td1Obj[i].innerHTML + '번째 게시판 입니다.' + '</span></a>');
		}
		
		var dt = 23;
		var mi = 60;
		
		td4ObjList[1].innerHTML = '20-04-28 ' + dt + ':00';
		
		for (var i = 2; i < td4ObjList.length; i++) {
			mi = mi-5;
			
			td4ObjList[i].innerHTML = '20-04-28 ' + dt + ':' + mi;
			dt = dt-2;
			
			if(dt < 10) {
				td4ObjList[i].innerHTML = '20-04-28 0' + dt + ':' + mi;
			}
			
			if(mi < 10) {
				td4ObjList[i].innerHTML = '20-04-28 ' + dt + ':0' + mi;
			}
			
			if(dt < 10 && mi < 10) {
				td4ObjList[i].innerHTML = '20-04-28 0' + dt + ':0' + mi;
			}
		}
		for (var i = 0; i < td3ObjList.length; i++) {
			td3ObjList[i].innerHTML = '운영자';
		}
		
		a1Obj.style.color = 'black';
		a2Obj.style.color = 'blue';
		a3Obj.style.color = 'black';
		a4Obj.style.color = 'black';
		a5Obj.style.color = 'black';

	}
	function pageEve2Fnc() {
		var td2ObjList = document.getElementsByClassName('td2');
		var td1Obj = document.getElementsByClassName('td1');
		var td5ObjList = document.getElementsByClassName('td5');
		var td4ObjList = document.getElementsByClassName('td4');
		var a1Obj = document.getElementById('a1');
		var a2Obj = document.getElementById('a2');
		var a3Obj = document.getElementById('a3');
		var a4Obj = document.getElementById('a4');
		var a5Obj = document.getElementById('a5');

		cnt = 30;
		for (var i = 1; i < td1Obj.length; i++) {
			countList[i] = 0;
			td5ObjList[i].innerHTML = countList[i];
			td1Obj[i].innerHTML = cnt;
			cnt--;
		}

		for (var i = 1; i < td2ObjList.length; i++) {
			td2ObjList[i].innerHTML = ('<a href="#"><span">' + td1Obj[i].innerHTML + '번째 게시판 입니다.' + '</span></a>');;
		}
		var dt = 23;
		var mi = 60;
		
		td4ObjList[1].innerHTML = '20-04-27 ' + dt + ':00';
		
		for (var i = 2; i < td4ObjList.length; i++) {
			mi = mi-3;
			
			td4ObjList[i].innerHTML = '20-04-27 ' + dt + ':' + mi;
			dt = dt-2;
			
			if(dt < 10) {
				td4ObjList[i].innerHTML = '20-04-27 0' + dt + ':' + mi;
			}
			
			if(mi < 10) {
				td4ObjList[i].innerHTML = '20-04-27 ' + dt + ':0' + mi;
			}
			
			if(dt < 10 && mi < 10) {
				td4ObjList[i].innerHTML = '20-04-27 0' + dt + ':0' + mi;
			}
		}
		for (var i = 0; i < td3ObjList.length; i++) {
			td3ObjList[i].innerHTML = '운영자';
		}
		
		a1Obj.style.color = 'black';
		a2Obj.style.color = 'black';
		a3Obj.style.color = 'blue';
		a4Obj.style.color = 'black';
		a5Obj.style.color = 'black';

	}
	function pageEve3Fnc() {
		var td2ObjList = document.getElementsByClassName('td2');
		var td1Obj = document.getElementsByClassName('td1');
		var td5ObjList = document.getElementsByClassName('td5');
		var td4ObjList = document.getElementsByClassName('td4');
		var a1Obj = document.getElementById('a1');
		var a2Obj = document.getElementById('a2');
		var a3Obj = document.getElementById('a3');
		var a4Obj = document.getElementById('a4');
		var a5Obj = document.getElementById('a5');
		
		cnt = 20;

		for (var i = 1; i < td1Obj.length; i++) {
			countList[i] = 0;
			td5ObjList[i].innerHTML = countList[i];
			td1Obj[i].innerHTML = cnt;
			cnt--;
		}

		for (var i = 1; i < td2ObjList.length; i++) {
			td2ObjList[i].innerHTML = ('<a href="#"><span">' + td1Obj[i].innerHTML + '번째 게시판 입니다.' + '</span></a>');;
		}
		var dt = 23;
		var mi = 60;
		
		td4ObjList[1].innerHTML = '20-04-26 ' + dt + ':00';
		
		for (var i = 2; i < td4ObjList.length; i++) {
			mi = mi-6;
			
			td4ObjList[i].innerHTML = '20-04-26 ' + dt + ':' + mi;
			dt = dt-2;
			
			if(dt < 10) {
				td4ObjList[i].innerHTML = '20-04-26 0' + dt + ':' + mi;
			}
			
			if(mi < 10) {
				td4ObjList[i].innerHTML = '20-04-26 ' + dt + ':0' + mi;
			}
			
			if(dt < 10 && mi < 10) {
				td4ObjList[i].innerHTML = '20-04-26 0' + dt + ':0' + mi;
			}
		}
		for (var i = 0; i < td3ObjList.length; i++) {
			td3ObjList[i].innerHTML = '운영자';
		}
		
		
		a1Obj.style.color = 'black';
		a2Obj.style.color = 'black';
		a3Obj.style.color = 'black';
		a4Obj.style.color = 'blue';
		a5Obj.style.color = 'black';
	}
	function pageEve4Fnc() {
		
		var td2ObjList = document.getElementsByClassName('td2');
		var td1Obj = document.getElementsByClassName('td1');
		var td5ObjList = document.getElementsByClassName('td5');
		var td4ObjList = document.getElementsByClassName('td4');
		var a1Obj = document.getElementById('a1');
		var a2Obj = document.getElementById('a2');
		var a3Obj = document.getElementById('a3');
		var a4Obj = document.getElementById('a4');
		var a5Obj = document.getElementById('a5');
		
		cnt = 10;

		for (var i = 1; i < td1Obj.length; i++) {
			countList[i] = 0;
			td5ObjList[i].innerHTML = countList[i];
			td1Obj[i].innerHTML = cnt;
			cnt--;
		}

		for (var i = 1; i < td2ObjList.length; i++) {
			td2ObjList[i].innerHTML = ('<a href="#"><span">' + td1Obj[i].innerHTML + '번째 게시판 입니다.' + '</span></a>');;
		}
		
		var dt = 23;
		var mi = 60;
		
		td4ObjList[1].innerHTML = '20-04-25 ' + dt + ':00';
		
		for (var i = 2; i < td4ObjList.length; i++) {
			mi = mi-6;
			
			td4ObjList[i].innerHTML = '20-04-25 ' + dt + ':' + mi;
			dt--;
			
			if(dt < 10) {
				td4ObjList[i].innerHTML = '20-04-25 0' + dt + ':' + mi;
			}
			
			if(mi < 10) {
				td4ObjList[i].innerHTML = '20-04-25 ' + dt + ':0' + mi;
			}
			
			if(dt < 10 && mi < 10) {
				td4ObjList[i].innerHTML = '20-04-25 0' + dt + ':0' + mi;
			}
		}
		
		for (var i = 0; i < td3ObjList.length; i++) {
			td3ObjList[i].innerHTML = '운영자';
		}
		a1Obj.style.color = 'black';
		a2Obj.style.color = 'black';
		a3Obj.style.color = 'black';
		a4Obj.style.color = 'black';
		a5Obj.style.color = 'blue';

	}
	
	function eveFnc() {
		var td1Obj = document.getElementsByClassName('td1')[10];
		

			/* if (0 < td1Obj[i] <= 10) {
				a6Obj[i]
			} else */ if (Number(td1Obj.innerHTML) == 41) {
				pageEve1Fnc();
			} else if (Number(td1Obj.innerHTML) == 31) {
				pageEve2Fnc();
			} else if (Number(td1Obj.innerHTML) == 21) {
				pageEve3Fnc();
			} else if (Number(td1Obj.innerHTML) == 11) {
				pageEve4Fnc();
			}
	}
	function eve2Fnc() {
		var td1Obj = document.getElementsByClassName('td1')[10];
		var a1Obj = document.getElementById('a1');
		var a2Obj = document.getElementById('a2');
		var a3Obj = document.getElementById('a3');
		var a4Obj = document.getElementById('a4');
		var a5Obj = document.getElementById('a5');
		
			if(Number(td1Obj.innerHTML) == 31) {
				pageEve0Fnc();
			} else if (Number(td1Obj.innerHTML) == 21) {
				pageEve1Fnc();
			} else if (Number(td1Obj.innerHTML) == 11) {
				pageEve2Fnc();
			} else if (Number(td1Obj.innerHTML) == 1) {
				pageEve3Fnc();
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
	
	//현재 페이지 색깔 바뀌는거
	function colorpageFnc(aObj) {
		var aChild = [];
		
		for (var i = 1; i < 6; i++) {
			aChild[i] = document.getElementById('a'+i);
			aChild[i].style.color = 'black';
		}
		
		
		aObj.style.color= 'blue';
	}
	
	//원래색깔
	function colorbackFnc(aObj) {
		aObj.style.color = '';
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
		<img id="logoBox" alt="logo" src="./images/logo_nexon.png">
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
				<a id="loginBtn" href="login.jsp">			
					<span style="font:13px Gothic; color:#080410; font-weight: bold;">로그아웃</span>
				</a>
			</div>		
		</div>
	</div>
	<div id='headerLine'></div>
	<div id='main'>
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
						<td class='td2'><a href="#"><span>50번째 게시물입니다</span></a></td>
						<td class='td3'>운영자</td>
						<td class='td4'>20-04-27 11:07</td>
						<td class='td5'><div class='into1'></div></td>
					</tr>
					<tr class='tr2'>
						<td class='td1'></td>
						<td class='td2'><a href="#"><span>49번째 게시물입니다</span></a></td>
						<td class='td3'>운영자</td>
						<td class='td4'>20-04-27 11:07</td>
						<td class='td5'><div class='into1'></div></td>
					</tr>
					<tr class='tr2'>
						<td class='td1'></td>
						<td class='td2'><a href="#"><span>48번째 게시물입니다</span></a></td>
						<td class='td3'>운영자</td>
						<td class='td4'>20-04-27 11:07</td>
						<td class='td5'><div class='into1'></div></td>
					</tr>
					<tr class='tr2'>
						<td class='td1'></td>
						<td class='td2'><a href="#"><span>47번째 게시물입니다</span></a></td>
						<td class='td3'>운영자</td>
						<td class='td4'>20-04-27 11:07</td>
						<td class='td5'><div class='into1'>0</div></td>
					</tr>
					<tr class='tr2'>
						<td class='td1'></td>
						<td class='td2'><a href="#"><span>46번째 게시물입니다</span></a></td>
						<td class='td3'>운영자</td>
						<td class='td4'>20-04-27 11:07</td>
						<td class='td5'><div class='into1'>0</div></td>
					</tr>
					<tr class='tr2'>
						<td class='td1'></td>
						<td class='td2'><a href="#"><span>45번째 게시물입니다</span></a></td>
						<td class='td3'>운영자</td>
						<td class='td4'>20-04-27 11:07</td>
						<td class='td5'><div class='into1'>0</div></td>
					</tr>
					<tr class='tr2'>
						<td class='td1'></td>
						<td class='td2'><a href="#"><span>44번째 게시물입니다</span></a></td>
						<td class='td3'>운영자</td>
						<td class='td4'>20-04-27 11:07</td>
						<td class='td5'><div class='into1'>0</div></td>
					</tr>
					<tr class='tr2'>
						<td class='td1'></td>
						<td class='td2'><a href="#"><span>43번째 게시물입니다</span></a></td>
						<td class='td3'>운영자</td>
						<td class='td4'>20-04-27 11:07</td>
						<td class='td5'><div class='into1'>0</div></td>
					</tr>
					<tr class='tr2'>
						<td class='td1'></td>
						<td class='td2'><a href="#"><span>42번째 게시물입니다</span></a></td>
						<td class='td3'>운영자</td>
						<td class='td4'>20-04-27 11:07</td>
						<td class='td5'><div class='into1'>0</div></td>
					</tr>
					<tr id='tr3'>
						<td class='td1'></td>
						<td class='td2'><a href="#"><span>41번째 게시물입니다</span></a></td>
						<td class='td3'>운영자</td>
						<td class='td4'>20-04-27 11:07</td>
						<td class='td5'><div class='into1'>0</div></td>
					</tr>

				</table>
			</div>
			<div id='num'>
				<a href="#"><span class='a6'>&#9664;</span></a> 
				<a href="#"><span id='a1'>[1]</span></a> 
				<a href="#"><span id='a2'>[2]</span></a>
				<a href="#"><span id='a3'>[3]</span></a>
				<a href="#"><span id='a4'>[4]</span></a> 
				<a href="#"><span id='a5'>[5]</span></a>
				<a href="#"><span class='a6'>&#9654;</span></a>
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