/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import connect.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author shravan
 */
public class Payment extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String card_holder_name=request.getParameter("card_holder_name");
		String card_number=request.getParameter("card_number");
		String cvv_code=request.getParameter("cvv_code");
		String month_start=request.getParameter("month_start");
		String year_start=request.getParameter("year_start");
		
		//out.print("Holder_Name::"+card_holder_name +"<br>Card_Number::"+card_number +"<br>Cvv_Code:::"+cvv_code +"<br>Month::"+month_start +"<br>Year::"+year_start);
		
		
		Connection con=ConnectionProvider.getCon();
		
		try {
			Statement stmt=con.createStatement();
			stmt.executeUpdate("insert into payment_detail (card_holder_name,card_number,cvv_code,month_start,year_start) values('"+card_holder_name+ "','"+card_number+"','"+cvv_code+"','"+month_start+"','"+year_start+"')");
			
			response.sendRedirect(request.getContextPath()+"/payment_msg.jsp");

		} catch (Exception e) {
			
			// TODO Auto-generated catch block
			e.printStackTrace();
			out.print("Generated Exception ::::::"+e);
		}
		
		out.flush();
		out.close();
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String card_holder_name=request.getParameter("card_holder_name");
		String card_number=request.getParameter("card_number");
		String cvv_code=request.getParameter("cvv_code");
		String month_start=request.getParameter("month_start");
		String year_start=request.getParameter("year_start");
		
		//out.print("Holder_Name::"+card_holder_name +"<br>Card_Number::"+card_number +"<br>Cvv_Code:::"+cvv_code +"<br>Month::"+month_start +"<br>Year::"+year_start);
		
		
		Connection con=ConnectionProvider.getCon();
		
		try {
			Statement stmt=con.createStatement();
			stmt.executeUpdate("insert into payment_detail (card_holder_name,card_number,cvv_code,month_start,year_start) values('"+card_holder_name+ "','"+card_number+"','"+cvv_code+"','"+month_start+"','"+year_start+"')");
			
			response.sendRedirect(request.getContextPath()+"/payment_msg.jsp");

		} catch (Exception e) {
			
			// TODO Auto-generated catch block
			e.printStackTrace();
			out.print("Generated Exception ::::::"+e);
		}

		
		out.flush();
		out.close();
}

}
