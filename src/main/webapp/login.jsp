<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	text-align: right;
	width: 400px;
	border: 1px solid #718093;
}

input{
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
		<form action="login" name="loginForm" method="post">
			<table border="1">
				<tr>
					<th>아이디</th>
					<td><input type="text" name="userId" placeholder="아이디를 입력하시오."></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="password" placeholder="아이디를 입력하시오."></td>
				</tr>
			</table>
			<p>
				<button class="btn" onclick="login()">로그인</button>
			</p>
		</form>
		</div>
	</section>
<jsp:include page="footer.jsp"></jsp:include>
<script type="text/javascript" src="script.js"></script>
</body>
</html>