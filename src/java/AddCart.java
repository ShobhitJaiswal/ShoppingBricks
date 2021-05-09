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
public class AddCart extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		//out.print("Helloo");
		HttpSession session=request.getSession();
		Integer pid=Integer.parseInt(request.getParameter("pid"));
		
		ArrayList itemlist= (ArrayList)session.getAttribute("cartID");
		if(itemlist == null){
			itemlist = new ArrayList();
		}
		
		itemlist.add(pid);
		 
		session.setAttribute("cartID", itemlist);

		//Integer userid=(Integer)session.getAttribute("userid");
//		session.setAttribute("pid",pid);
		
		

		response.sendRedirect(request.getContextPath()+"/validate.jsp");
		
		out.flush();
		out.close();
	}

  
}
