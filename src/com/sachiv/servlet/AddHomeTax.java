package com.sachiv.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddHomeTax
 */
@WebServlet("/AddHomeTax")
public class AddHomeTax extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddHomeTax() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		try
		{
			String pno,year;
			double tax,total;
			
			pno=request.getParameter("pno");
			tax=Double.parseDouble(request.getParameter("tax"));
			total=0.0;
			total=total+tax;
			year=request.getParameter("yr");
			
			Connection con;
			PreparedStatement pst;
			
			com.dbconnector.beans.DBConnector dbc= new com.dbconnector.beans.DBConnector();
		    con=dbc.getDbconnection();
		    pst=con.prepareStatement("insert into home_tax values(?,?,?);");
			pst.setString(1, pno);
			pst.setDouble(2, tax);
			pst.setString(3, year);
			int cnt=pst.executeUpdate();
			if(cnt>0)
			{
				 
						response.sendRedirect("taxaddedSuceess.jsp");
					
			}
			else
			{
				          response.sendRedirect("taxaddedFailed.jsp");
			}
			
		}
		catch(Exception ex)
		{
			out.println("Error  : "+ex.getMessage());
		}
	}

}
