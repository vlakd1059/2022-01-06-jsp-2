<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String title = request.getParameter("title");
	String[] result = request.getParameterValues("item"); //동일한값 여러개가져올때
	Random menu = new Random();
	%>
	<fieldset>
		<legend align="center">랜덤당첨결과</legend>
		<div style="text-align: center;">
			<%=title%><br>
			<%=result[menu.nextInt(result.length)]%>

		</div>
	</fieldset>
</body>
</html>