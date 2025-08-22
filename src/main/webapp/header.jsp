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
}

header{
	height: 60px;
	line-height: 60px;
	background-color: #2f3640;
	color: #ffffff;
	text-align: center;
}

nav{
	height: 30px;
	line-height: 30px;
	background-color: #40407a;
	display: flex;
	justify-content: space-between; /* 왼쪽/오른쪽 분리 */
    padding: 0 10px; /* 좌우 여백 */
}

nav ul{
	display: flex;
}

nav ul li {
	padding: 0 10px;
}

nav ul li a{
	color: #dcdde1;
}
</style>
</head>
<body>
	<header>
		<h2>Last Pope Official Community</h2>
	</header>
	<nav>
		<ul>
			<li><a href="list">소통</a></li>
			<li><a href="notice">공지</a></li>
			<li><a href="log.jsp">업데이트 로그</a></li>
			<li><a href="index.jsp">로비로</a></li>
		</ul>
		<ul>
			<li><a href="sign.jsp">회원가입</a></li>
			<%
		  		session = request.getSession();
	    		String userId = (String) session.getAttribute("userId");
	    		String link;
	    		if(!(userId.equals("undefined"))){
	    			link = "mypage.jsp";
	    		}else{
	    			link = "login.jsp";
	    		}
			%>
			<li><a href="<%= link %>"><%=userId %></a></li>
		</ul>
	</nav>
</body>
</html>