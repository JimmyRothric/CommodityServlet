<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "Demo.MacCommodityServlet"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Mcdonalds</title>
</head>
<body>
${username}
<form action = "purchase" method = "post">
<h1>i'm lovin'it</h1>
<p>
<img src = "images/BigMac.jpg" weight = "120" height = "120" alt = "Big Mac"/>
<img src = "images/classic.jpg" weight = "120" height = "120" alt = "classic"/>
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
<input type = "submit" value = "购      买"/> <br/>
</form>
</body>
</html>