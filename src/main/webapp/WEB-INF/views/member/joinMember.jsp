<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<!-- jQeury -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<!-- bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<style>
	.mainContainer{margin-top:50px; width:70%;}
	.authBtnDiv{text-align:center;}
	#authBtn{display:none;}
	.authBox{display:none;}
	.secondPage{display:none;}
</style>
<body>
	<header>
		<c:import url="../commons/gnb.jsp"></c:import>
	</header>
	<main>
		<div class="mainContainer container-fluid shadow p-3 mb-5 bg-body-tertiary rounded">
			<h1>With Me 회원 가입</h1>
			<div class="firstPage">
				<div class="emailBox">
					<div class="mb-3">
						<label for="exampleFormControlInput1" class="form-label">이메일 주소</label>
						<input type="email" class="form-control" id="email" name="email" placeholder="name@example.com">
						<div class="validCheck"></div>
					</div>
				</div>
				<div class="authBox">	
					<div class="mb-3">
						<label for="exampleFormControlInput1" class="form-label">인증 번호</label>
						<input class="form-control" id="authInput" type="text" placeholder="6자리 인증 번호를 입력해 주세요" aria-label="default input example">
					</div>
				</div>
				<div class="mb-3 authBtnDiv">
					<button type="button" id="sendMailBtn" class="btn btn-primary" disabled>다음</button>
					<button type="button" id="authBtn" class="btn btn-primary">인증하기</button>
				</div>
			</div>
			<div class="secondPage">
				<div class="mb-3">
					<label for="inputPassword5" class="form-label">비밀번호</label>
					<input type="password" id="password" class="form-control" aria-describedby="passwordHelpBlock">
					<div id="passwordHelpBlock" class="form-text">
  						Your password must be 8-20 characters long, contain letters and numbers, and must not contain spaces, special characters, or emoji.
					</div>
				</div>
				<div class="mb-3">
					<label for="inputPassword5" class="form-label">비밀번호 재입력</label>
					<input type="password" id="passwordCheck" class="form-control" aria-describedby="passwordHelpBlock">
				</div>
			</div>
			<div class="mb-3">
				<a class="icon-link icon-link-hover" href="/member/toLogin">
 			 		다시 로그인하러 가기<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
  					<path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z"/>
					</svg>
				</a>
			</div>
		</div>
	</main>
</body>
<script>
	let authNumber;
	
	// 이메일 형식 확인
	let regexEmail = /.+?@.+?\.com/;
	
	$("#email").on("keyup", function(){
		let email = $("#email").val();
		let resultEmail = regexEmail.exec(email);
		
		if(resultEmail){
			$(".validCheck").html("");
			$("#sendMailBtn").attr("disabled", false);
		}else {
			$(".validCheck").html("이메일의 형식이 일치하지 않습니다.").css({"color":"red", "font-size":"small"});
			$("#sendMailBtn").attr("disabled", true);
		}
	})
	
	// 이메일 전송
	$("#sendMailBtn").on("click", function(){
		let email = $("#email").val();
				
		$.ajax({
			url:"/member/toMailSend",
			type:"post",
			async: false,
			dataType:"json",
			data:{
				email:email
			}
		}).done(function(resp){
			if(resp){
				alert("메일이 전송 되었습니다!");
				authnumber = resp;
				
				// 숫자 인증 칸 보여주기
				$(".authBox").show();
				$("#sendMailBtn").hide();
				$("#authBtn").show();
			}
		})
	})
	
	// 인증 메일 일치 여부 확인
	$("#authBtn").on("click", function(){
		let authInput = $("#authInput").val();
		
		if(authInput == authnumber){
			$(".firstPage").hide();
			$(".secondPage").show();
		}else{
			alert("인증 번호가 일치하지 않습니다.\n다시 입력하여 주시기 바랍니다!");
			$("#authInput").val("");
		}
	})
	
	// 비밀번호 및 재입력 일치 여부 확인
	// 이름과 생년월일 입력받아 db 저장
	
	
</script>
</html>