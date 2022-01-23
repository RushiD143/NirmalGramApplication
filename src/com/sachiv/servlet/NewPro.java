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
 * Servlet implementation class NewPro
 */
@WebServlet("/NewPro")
public class NewPro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewPro() {
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
			String pno,ano,nm,desc;
			pno=request.getParameter("pno");
			ano=request.getParameter("ano");
			nm= request.getParameter("nm");
			desc= request.getParameter("pdesc");
			
			Connection con;
			PreparedStatement pst;
			
			com.dbconnector.beans.DBConnector dbc= new com.dbconnector.beans.DBConnector();
		    con=dbc.getDbconnection();
		    pst=con.prepareStatement("insert into properties values(?,?,?,?);");
			pst.setString(1, ano);
			pst.setString(2, nm);
			pst.setString(3, pno);
			pst.setString(4, desc);
			int cnt=pst.executeUpdate();
			if(cnt>0)
			{
				response.sendRedirect("propaddsuccess.html");
			}
			else
			{
				response.sendRedirect("propfailed.html");
			}
		}
		catch(Exception ex)
		{
			out.println("Error : "+ex.getMessage());
		}
		
	}

}
