<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<fieldset>
		<legend align="center">랜덤당첨 작성</legend>
		<div style="text-align: center;">
			<%
			request.setCharacterEncoding("UTF-8");
			int r_num = Integer.parseInt(request.getParameter("num"));
			%>
			<form action="ex11randomWinner.jsp" method="post">
				<table align="center">

					<tr>
						<td>주제 :</td>
						<td><input type="text" name="title"></td>
					</tr>
					<%
					for (int i = 1; i <= r_num; i++) {
					%>
					<tr>
						<td>아이템<%=i%>:
						</td>
						<td><input type="text" name="item"></td>
					</tr>

					<%
					}
					%>
					<tr>
						<td colspan="2"><input type="submit" value="시작"></td>
					</tr>
				</table>
			</form>
		</div>
	</fieldset>
</body>
</html>