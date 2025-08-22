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

table{
	margin: 0 auto;
	border-collapse: collapse;
}

tr{
	border: 1px solid white;
}

tr:hover{
	background-color: #5c6679;
	cursor: pointer;
}

td{
	padding: 3px;
}

.place{
	padding: 30px;
}

.btn{
	padding: 10px;
	width: 100px;
	height: 30px;
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
			<div class="table-wrapper" style="display: flex; flex-direction: column; align-items: flex-end;">
			<table id="post_table">
				<c:forEach var="item" items="${list}">
	  				<tr data-code="${item.identyfier_code}">
	  					<td style="width: 500px;">${item.title}</td>
			            <td style="width: 100px; text-align: right;">${item.userId}</td>
			            <td style="width: 150px; text-align: right;">${item.writtenDate}</td>
	  				</tr>
				</c:forEach>
			</table>
			<button class="btn" onclick="insert.jsp()">  작성  </button>
			</div>
		</div>
	</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>