package Demo;

import java.io.*;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class MacCommodity
 */
@WebServlet("/MacCommodityServlet")
public class MacCommodityServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MacCommodityServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		int sum = 0;
		String[] commodity = request.getParameterValues("commodity");
		String num0 = request.getParameter("comname1");
		String num1 = request.getParameter("comname2");
		String num2 = request.getParameter("comname3");
		HashMap<String, Integer> commodityMap = new HashMap<String, Integer>();
		commodityMap.put("巨无霸", type_Int(num0));
		commodityMap.put("麦辣鸡腿汉堡", type_Int(num1));
		commodityMap.put("原味板烧鸡腿堡", type_Int(num2));
		HashMap<String, Integer> priceMap = new HashMap<String, Integer>();
		priceMap.put("巨无霸", 20);
		priceMap.put("麦辣鸡腿汉堡", 17);
		priceMap.put("原味板烧鸡腿堡", 18);
		
		response.setContentType("text/html;charset=UTF-8");
		ArrayList<Commodity> ShoppingCart = new ArrayList<Commodity>();
		for(int i = 0; i < commodity.length; i++) {
			Commodity c = new Commodity(commodity[i], commodityMap.get(commodity[i]), priceMap.get(commodity[i]));
			sum+=c.sum();
			ShoppingCart.add(c);
		}
		request.setAttribute("shoppingcart", ShoppingCart);
		request.setAttribute("sum", sum);
		
		RequestDispatcher rd = request.getRequestDispatcher("/ShoppingCart.jsp");
		rd.forward(request, response);
		
//		int sum = 0;
//		PrintWriter out = response.getWriter();
//		out.println("<html><body>");
//		out.println("<p><b>合计：</b></p>" );
//		for(int i = 0; i < commodity.length; i++) {
//			if(commodity[i] != null && commodityMap.get(commodity[i]) != 0) {
//				out.print(commodity[i] + "*" + commodityMap.get(commodity[i]));
//				sum = sum+commodityMap.get(commodity[i])*priceMap.get(commodity[i]);
//				out.print("<br/>");
//			}
//		}
//		out.println("<p><big>" + sum + "元</big></p>");
//		out.println("</body></html>");
	}
	public int type_Int(String s) {
		if(s != "")
			return  Integer.parseInt(s);
		else
			return 0;
	}
}
