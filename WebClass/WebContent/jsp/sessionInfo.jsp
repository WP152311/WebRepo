<%@page import="org.dimigo.vo.UserVo"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<% UserVo user = (UserVo)session.getAttribute("user"); %>
id : <%=user.getId() %> <br>
name : <%=user.getName() %> <br>
nickname : <%=user.getNickname() %>
</body>
</html>