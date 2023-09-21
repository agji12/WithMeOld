<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소환사 정보</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	${summonerName}
	<fieldset>
		<legend>소환사 정보</legend>
		<div id="name">이름 : </div>
		<div id="profileIconId">아이콘 : </div>
		<div id="revisionDate">업데이트 날짜 : </div>
		<div id="summonerLevel">레벨 : </div>
	</fieldset>
	<fieldset>
		<legend>티어 정보</legend>
		<div id="soloRank">솔로 랭크 : </div>
		<div id="freeRank">자유 랭크 : </div>
	</fieldset>
</body>
</html>