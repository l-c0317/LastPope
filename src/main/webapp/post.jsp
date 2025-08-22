<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소통</title>
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
	text-align: center;
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
	width: 500px;
	border: 1px solid #718093;
}

td{
	text-align: right;
	width: 200px;
	border: 1px solid #718093;
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
			<table border="1">
				<tr>
					<th colspan="3">${post.title}</th>
				</tr>
				<tr>
					<td colspan="2" style="text-align:left;" data-type="${post.post_type}" id="postType">${post.post_type} | ${post.writtenDate}</td>
					<td>${post.userId}</td>
				</tr>
				<tr>
					<td colspan="3" style="height: 600px; text-align: left; vertical-align: top;">${post.content}</td>
				</tr>
			</table>
			<p>
				<button class="btn" onclick="backToTheChatting()">다른 게시글<br>보러 가기</button>
			</p>
		</div>
	</section>
<jsp:include page="footer.jsp"></jsp:include>
<script type="text/javascript" src="script.js"></script>
</body>
</html>