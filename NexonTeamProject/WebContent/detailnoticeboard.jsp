<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	
	.frameContainer {
		width: 1920px;
		height: 900px;
	}
	
	.mainContainer {
		width: 700px;
		height: 700px;
		border: 1px dotted red;
		margin: auto;
		padding-top: 120px;
	}
	
	.middleContainer1 {
		width: 520px; 
		margin: auto;
	}
	
	.middleContainer2 {
		clear: left; 
	}
	
	.bottomContainer1 {
		width: 200px;
		margin: auto;
		padding-top: 30px;
	}
	
	.bottomContainer2 {
		width: 250px;
		margin: auto;
		margin-right: 212px;
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
		height: 150px;
		float: left;
		margin-right: 6px;
		padding-top: 150px;
	}
	
	.itemDetailBox {
		width: 509px;
		height: 30px;
	}
	
	.inputButton1 {
		width: 150px;
		height: 50px;
		background-color: black;
		color: white;
		border-radius: 10px;
		margin-bottom: 20px;
		font-size: 20px;
		font-weight: bold;
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
		margin-top: 0;
	}
	
	button {
		border: none;
	}
	
</style>
<script type="text/javascript">

</script>
</head>
<body>

<div class="frameContainer">
	<div class="mainContainer">
		<div class="middleContainer1">
			<img class="logoImg1" src="images/logo_nexon.png" alt="로고">
			<h1 style="float: left;">친목 게시판 글쓰기</h1>
			<img class="logoImg2" src="images/logo_nexon.png" alt="로고">
		</div>
		<form action=""> <!-- 내용 입력 후 전생 링크 url 삽입 필요  -->
			<div class="middleContainer2">
				<div>
					<span class="itemSpanBox">작성자</span>
					<input class="itemDetailBox" type="text">
				</div>
				<div>
					<span class="itemSpanBox">제 목</span>
					<input class="itemDetailBox" type="text">
				</div>
				<div>
					<div>
						<span class="itemSpanBox_textArea">내 용</span>
					</div>
					<textarea rows="20" cols="70"></textarea>
				</div>	
			</div>
			<div class="bottomContainer1">
				<input class="inputButton1" type="submit" value="등록하기">
			</div>
			<div class="bottomContainer2">
				<button> <!-- 등록하기 버튼 링크 url 삽입 필요 -->
					<img src="images/button.png" alt="로고">
				</button>
			</div>
		</form>
	</div>
</div>
	
</body>
</html>