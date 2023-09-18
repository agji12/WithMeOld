<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jQeury -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<!-- bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<style>
	.titleBox{text-align:center;}
</style>
<body>
	<form action="/toTestJSP" method="post">
		<button>테스트용</button>
	</form>
	<div class="container">
		<div class="titleBox">
			<h1>With Me</h1>
		</div>
		<div class="inputBox input-group mb-3">
			<input class="form-control" type="text" placeholder="소환사명을 입력해 주세요" aria-label="default input example">
			<button class="btn btn-outline-secondary" type="button" id="button-addon2">Button</button>
		</div>
	</div>
</body>
</html>