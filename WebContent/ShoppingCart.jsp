<%@ page import="Demo.Commodity "%>
<%@ page import="Demo.MacCommodityServlet"%>
<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Shopping Cart</title>
</head>
<body>
<%	if (session == null || session.getAttribute("loggedin") == null) {
		RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
		rd.forward(request, response);
		return;
		//check if user has logged in
	}
%>
<h3>Total</h3>
<div style="float:right">${username}</div>
<pre>
<%	
	ArrayList<Commodity> cart = (ArrayList<Commodity>)session.getAttribute("shoppingcart");
	if (cart != null) {
		for(Commodity c:cart) {
			out.print(c.print());
		}
%>
<br/>
<b>合计：.......${sum}元</b>
<%
	} else {
%>
<br/>
<b>合计：.......0元</b>
<% 	
	}
%>
</pre>
</body>
</html>