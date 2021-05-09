/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author shravan
 */
public class DeleteCart extends HttpServlet {

public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		Integer pid=Integer.parseInt(request.getParameter("pid"));
		
		//out.print("hiii" + pid);
		HttpSession session=request.getSession(true);
		ArrayList itemlist= (ArrayList)session.getAttribute("cartID");
		if(itemlist!=null){
			itemlist.remove(pid);
		}
		
		
		 
		session.setAttribute("cartID", itemlist);
		response.sendRedirect(request.getContextPath()+"/viewCart.jsp");

		out.flush();
		out.close();
	}

}
