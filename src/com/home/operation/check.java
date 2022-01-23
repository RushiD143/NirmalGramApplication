package com.home.operation;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class check
 */
@WebServlet("/check")
public class check extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public check() {
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
		
		String ano,pswd,typ;
		ano=request.getParameter("ano");
		pswd=request.getParameter("pswd");
		
		try
		{
			Connection con;
			PreparedStatement pst;
			ResultSet rs;
			
			com.dbconnector.beans.DBConnector dbc= new com.dbconnector.beans.DBConnector();
		    con=dbc.getDbconnection();
		    pst=con.prepareStatement("select * from registration where aadhar=? and pswd=? and status='active';");
			pst.setString(1, ano);
			pst.setString(2, pswd);
			rs=pst.executeQuery();
			if(rs.next())
			{
				//out.println("<h3 style='color:green'>Welcome to Java application</h3>");
				HttpSession ses=request.getSession(true);
				ses.setAttribute("aadhar", ano);
				
				typ=rs.getString("usertype");
				
				
				if(rs.getString("usertype").equals("user"))
				response.sendRedirect("User.jsp");
				
				else if(rs.getString("usertype").equals("sachiv"))
					response.sendRedirect("Sachiv.jsp");
				
				else if(rs.getString("usertype").equals("clerk"))
					response.sendRedirect("Clerk.jsp");
				
			}
			else
			{
				//out.println("<h3 style='color:red'>Sorry authentication failed or account deactivated</h3>");
				response.sendRedirect("Failure.jsp");
			}
			
		}
		catch(Exception e)
		{
			out.println("Error : "+e.getMessage());
		}
	}

}
