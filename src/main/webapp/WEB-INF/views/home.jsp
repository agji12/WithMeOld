<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	Hello
	<br>
	<input type="text" name="summonerName" id="summonerName">
	<input type="submit" value="button" id="btn">
	<fieldset>
		<legend>소환사 정보</legend>
		<div id="summonerInfo"></div>
	</fieldset>
</body>
<script>
	$("#btn").on("click", function(){
		$.ajax({
			url:"/test/summoner",
			dataType:"json",
			data:{
				summonerName:$("#summonerName").val()
			}
		}).done(function(resp){
			console.log(resp);
		})
	})
</script>
</html>