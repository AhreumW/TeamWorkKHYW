<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
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
	
</style>
</head>
<body>
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
	
	<div id="wrapper" style="width:440px; clear:both; margin:0px auto;">
		<h1 style="width:440px; height:70px; padding-top: 45px; box-sizing:border-box; font-weight:normal; font-size: 27px;">로그인</h1>
		<div id="choLoginBox" style="width:140px; height:44px; float: left; padding-top: 5px;">
			<div style=" box-sizing:border-box; text-align:center; float: left; width: 140px; height:44px;padding-top: 10px; border-top: 1px solid #cbcbcb; border-left: 1px solid #cbcbcb; border-right: 1px solid #cbcbcb;">
				<span style="height: 44px; font: 12px Dotum; font-weight: bold; color:#222222;">넥슨ID 로그인</span>
			</div>
		</div>
		<div style="border-bottom: 1px solid #cbcbcb; width:300px; height:44px; float: left; padding-top: 5px; margin-left: -1px;">	
			<div style="box-sizing:border-box; margin-left:20px; text-align:center; float: left; width: 140px; height:44px; background-color: #F4F4F4;padding-top: 10px; border-top: 1px solid #cbcbcb; border-left: 1px solid #cbcbcb; border-right: 1px solid #cbcbcb;">
				<span style="height: 44px; font: 12px Dotum; font-weight: bold; color:#7A7A7A;">일회용 로그인</span>
			</div>
			<div style=" box-sizing:border-box; text-align:center; float: left; width: 140px; height:44px; background-color: #F4F4F4;padding-top: 10px; border-top: 1px solid #cbcbcb; border-left: 1px solid #cbcbcb; border-right: 1px solid #cbcbcb;">
				<span style="height: 44px; font: 12px Dotum; font-weight: bold; color:#7A7A7A;">QR 로그인</span>
			</div>
		</div>
		<div id="inputBox" style="clear: both; width: 440px; height: 180px; padding-top: 30px;">
			<input type="checkbox"><span style="font:12px Dotum;">넥슨ID 저장</span>
			<div style="box-sizing:border-box; width: 440px; height:55px; margin-top: 8px; padding: 7px 0px; border: 1px solid #cbcbcb;">		
				<input type="text" placeholder="넥슨ID(아이디 또는 이메일)를 입력해주세요." style="font: 12px Dotum; border:none; box-sizing:border-box;width:412px; height: 39px;font-size:16px; padding: 12px 0px 12px 17px;">
			</div>
			<div style="box-sizing:border-box; width: 440px; height:55px; margin-top: 8px; padding: 7px 0px; border: 1px solid #cbcbcb;">
				<input type="password" placeholder="비밀번호를 입력해주세요." style="font: 12px Dotum; border:none; box-sizing:border-box;width:412px; height: 39px;font-size:16px; padding: 12px 0px 12px 17px;">
			</div>
		</div>
		<button style="width:440px; height:58px; background-color: #486BCD; border: none;">
			<span style="font: 18px Dotum; color: #FFFFFF;">넥슨ID 로그인</span>
		</button>
		<div style="width:440px; height:78px; padding: 22px 0px 37px;">
			<span style="font:12px Dotum; color:#777777; padding-right: 7px; border-right:1px solid #D9D9DA;">넥슨ID 찾기</span>
			<span style="font:12px Dotum; color:#777777; padding-right: 7px; border-right:1px solid #D9D9DA;">비밀번호 찾기</span>
			<span style="font:12px Dotum; color:#777777;">넥슨 회원가입</span>
			<span style="font:12px Dotum; color:#777777; padding-left: 143px;">보안센터</span>
		</div>
	</div>
</body>
</html>