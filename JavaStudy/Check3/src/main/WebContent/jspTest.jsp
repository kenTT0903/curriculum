<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp"%>
<!-- name、idの入力エリアを作成しなさい -->
<div style=padding-top:50px;padding-bottom:50px;>
	<table>
		<tbody>
			<tr>
				<th>name</th> <th><input type="text"></th>
			</tr>
			<tr>
				<th>id</th> <th><input type="text"></th>
			</tr>
		</tbody>
	</table>
</div>

<%@ include file="footer.jsp"%>
</body>
</html>