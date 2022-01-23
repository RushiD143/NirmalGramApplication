package com.sachiv.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddBirth
 */
@WebServlet("/AddBirth")
public class AddBirth extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddBirth() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub

		PrintWriter out= response.getWriter();
		response.setContentType("Text/html");
		try
		{
			String nm,ano,gen,place,dt;
			
			ano=request.getParameter("ano");
			nm=request.getParameter("nm");
			gen=request.getParameter("gen");
			place=request.getParameter("place");
			dt=request.getParameter("dt");
			
			
			PreparedStatement pst;
			Connection con;
			

			com.dbconnector.beans.DBConnector dbc= new com.dbconnector.beans.DBConnector();
		    con=dbc.getDbconnection();
			pst=con.prepareStatement("insert into birth_death values(?,?,?,?,?,?);");
			pst.setString(1, ano);
			pst.setString(2, nm);
			pst.setString(3, gen);
			pst.setString(4, "birth");
			pst.setString(5, place);
			pst.setString(6, dt);
			int cnt=pst.executeUpdate();
			if(cnt>0)
			{
				
					response.sendRedirect("newresidencesuceess.html");
				
			}
			else
			{
				response.sendRedirect("newresidencefailed.html");
			}
			con.close();
			
		}
		catch(Exception e)
		{
			out.println("Error : "+e.getMessage());
			out.println("<hr><br><a href='Sachiv.jsp'>Home</a>");
		}
}
}
