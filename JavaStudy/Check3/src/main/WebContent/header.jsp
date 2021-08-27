<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar"%>
<%@ page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style=background-color:gray;>
		<label style=display:inline-box;padding:10px;color:white;>login</label>
		<label style=padding:10px;font-size:10px;>
	<%
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat date = new SimpleDateFormat("yyyy/MM/dd");
		String today = date.format(cal.getTime());
	%>
	<%=today%>	
		</label>
</div>
<!-- </body>
</html> -->