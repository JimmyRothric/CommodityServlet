<%@ page import="Demo.LoginServlet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>
</head>
<body>
<form action = "login" method = "post">
<pre>
用户名：<input type = "text" name = "username"/>	<br/>
密  码：<input type = "password" name = "password"/> <p/>
</pre>
<input type = "submit" value = "登录"/>
<input type = "reset" value = "重新输入"/> <br/>
<%	if (request.getAttribute("info") != null) {
		out.print(request.getAttribute("info"));
	} else {
		return;
	}
%>
</body>
</html>