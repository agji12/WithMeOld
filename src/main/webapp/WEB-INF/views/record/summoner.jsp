<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소환사 정보</title>
<!-- jQeury -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<!-- bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<style>
div {
	border: 1px solid black;
}
container{background-color:blue;}

.iconBox{width:30%; height:100%;}
.summonerBox{width:70%; height:100%;}
.soloRank{width:50%;}
.freeRank{width:50%;}
</style>
<body>
	<header> ${summonerName} </header>
	<main>
		<div class="container container-fluid shadow p-3 mb-5 bg-body-tertiary rounded">
			<div class="inputBox input-group mb-3">
				<input class="form-control" type="text" name="summonerName" placeholder="소환사명을 입력해 주세요" aria-label="default input example">
				<button class="btn btn-outline-secondary" id="searchBtn">Button</button>
			</div>
			<div class="summonerInfo d-flex flex-row mb-3">
				<div class="iconBox">
					아이콘
				</div>
				<div class="summonerBox">
					<div class="nameBox">
						이름
					</div>
					<div class="updateBox">
						전적갱신
					</div>
				</div>
			</div>
			<br>
			<div class="tierInfo d-flex flex-row mb-3">
				<div class="soloRank">솔로${summonerTier}</div>
				<div class="freeRank">자유</div>
			</div>
			<br>
			<div class="matchInfo">
				최근 10경기 정보 보기 ...
			</div>
		</div>
	</main>


</body>
</html>