<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
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

section p{
	text-align: right;
	padding: 10px;
}

.place{
	padding: 30px;
}

table{
	margin: 0 auto;	
	border: 1px solid #718093;
}

th{
	width: 300px;
	border: 1px solid #718093;
}

td{
	width: 400px;
	border: 1px solid #718093;
}

#textBox{
	width: 400px;
}

.btn{
	padding: 10px;
	width: 150px;
	height: 50px;
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
		<div class="place">
		<form action="sign" name="signForm" method="post">
			<table border="1">
				<tr>
					<th>아이디</th>
					<td><input type="text" name="userId" id="textBox" placeholder="영어로 20자 내외"></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="password" id="textBox" placeholder="영어, 숫자로 30자 내외"></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" name="userName" id="textBox" placeholder="한글로 6자 내외"></td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td><input type="text" id="textBox" name="userPhone" placeholder="-까지 포함할 것."></td>
				</tr>
				<tr>
					<th>종류</th>
					<td>
						<input type="radio" id="admin" name="status" value="a">
						<label for="admin">admin</label>
						<input type="radio" id="user" name="status" value="u">
						<label for="user">user</label>
					</td>
				</tr>
			</table>
			<p>
				<button class="btn" onclick="sign()">회원가입</button>
			</p>
		</form>
		</div>
	</section>
<jsp:include page="footer.jsp"></jsp:include>
<script type="text/javascript" src="script.js"></script>
</body>
</html>