<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로비</title>
<style type="text/css">
*{
	padding: 0;
	margin: 0;
	box-sizing: border-box;
	list-style: none;
	text-decoration: none;
	font-family: 'Times New Roman', serif;
}

section{
	height: calc(100vh - 150px);
	background-color: #353b48;
	color: #f5f6fa;
}

section h3{
	text-align: center;
	padding: 20px;
}

section p{
	text-align: center;
	padding: 10px;
}

.trust{
	font-weight: bold;
	color: #e84118;
	text-align: center;
}

.power{
	font-weight: bold;
	color: #0097e6;
	text-align: center;
}

.distrust{
	font-weight: bold;
	color: #e1b12c;
	text-align: center;
}

.btn{
	padding: 10px;
	width: 130px;
	height: 40px;
	background-color: #718093;
	color: #ffffff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-size: 15px;
}

.btn:hover {
	background-color: #273c75;
}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
	<section>
		<h3>새로운 교황이 선출되었습니다!</h3>
		<p>
		우리는 크나큰 죄악을 떠안은 죽어가는 죄들의 덩어리 입니다.<br>
		우리에게 남겨진 것은 살가죽과 그 안에 틀어박힌 어둡고 진한 우리의 진흙같은 죄 뿐 입니다.<br>
		Last Pope는 여러분들께 마지막의 교황으로, 무너져가는 기독교 세력 안에서 살아남기를 종용합니다.<br><br></p>
		<div class="trust">무너지는 믿음,</div><br>
		<div class="power">추락한 권위,</div><br>
		<div class="distrust">반복되는 불신.</div><br><br>
		<p>
		많은 이들이 한줌이라도 남은 교황의 권위를 쟁탈하려 시도할 것 입니다.<br><br>
		진정한 교황이 되어 우리의 새로운 선지자가 되던지,<br>
		척박한 광야에서 우리를 구원할 새로운 신이 되던지.<br><br>
		그것은 당신에게 달려있습니다.<br><br><br>
		</p>
		<hr>
		<p>
		<button class="btn" onclick="btnclick()">  Habemus Papam  </button>
		</p>
	</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>