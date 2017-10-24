<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "Demo.Commodity "%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Shopping Cart</title>
</head>
<body>
<h3>Total</h3>
<pre>
<%	ArrayList<Commodity> cart = (ArrayList<Commodity>)request.getAttribute("shoppingcart");
	for(Commodity c:cart) {
		out.print(c.print());
	}%>
<br/>
<b>合计：.......${sum}元</b>
</pre>
</body>
</html>