<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>숫자 합 계산</title>
</head>
<body>
<form>
<input type="number" name="num" min=1 required>
<button type="submit">계산</button>
</form>
<%	
	String param = (request.getParameter("num"));
	if (param != null){
		int num = Integer.parseInt(param);
		
		
		int sum = 0;
		for (int i = 1; i <= num; i++) {
			sum += i;
		}
%>
<h1>1 ~ <%=num %>까지의 합은 <%=sum %>입니다. </h1>
<%
	}
	
	// 현재 일시 구하기
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss a");
%>
현재 일시는 <%= sdf.format(new Date()) %>
</body>
</html>