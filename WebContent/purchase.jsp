<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "Demo.MacCommodityServlet"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Mcdonalds</title>
</head>
<body>
<%	if (session == null || session.getAttribute("loggedin") == null) {
		RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
		rd.forward(request, response);
		return;
		//check if user has logged in
	}
	Integer accessCount = (Integer)session.getAttribute("accessCount");
	if (accessCount == null) {
		accessCount = new Integer(1);
	} else {
		accessCount = accessCount + 1;
	}
	session.setAttribute("accessCount", accessCount);
%>
<form action = "purchase" method = "post">
<h1>i'm lovin'it</h1>
<div style="float:right">Hello, ${username}!</div>
<p>
<img src = "images/BigMac.jpg" weight = "120" height = "120" alt = "Big Mac"/>
<img src = "images/classic.jpg" weight = "120" height = "120" alt = "Classic"/>
<img src = "images/GrilledChicken.jpg" weight = "120" height = "120" alt = "GrilledChicken"/>
</p>
<pre>
    巨无霸        麦辣鸡腿汉堡      原味板烧鸡腿堡
     20元           17元              18元
</pre>
<input type = "checkbox" name = "commodity" value = "巨无霸"/> 巨无霸
<input type = "checkbox" name = "commodity" value = "麦辣鸡腿汉堡"/> 麦辣鸡腿汉堡
<input type = "checkbox" name = "commodity" value = "原味板烧鸡腿堡"/> 原味板烧鸡腿堡 <br/>
<input type = "text" name = "comname1" size = "3"/> 
<input type = "text" name = "comname2" size = "3"/> 
<input type = "text" name = "comname3" size = "3"/> <br/>
<input type = "reset" value = "重新输入"/>
<input type = "submit" value = "购      买"/> 

<div style="float:right">
<small>这是第 <%out.print((Integer)session.getAttribute("accessCount"));%> 次访问本网站，
上次访问时间：<%out.print(new Date(session.getLastAccessedTime()));%></small>
</div>
</form>
</body>
</html>