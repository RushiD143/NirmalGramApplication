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
 * Servlet implementation class AddMeeting
 */
@WebServlet("/AddMeeting")
public class AddMeeting extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddMeeting() {
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
			String meeting_name,date,place,des;
			
			meeting_name=request.getParameter("mnm");
			place=request.getParameter("place");
			date=request.getParameter("dt");
			des=request.getParameter("desc");
			PreparedStatement pst;
			Connection con;
			

			com.dbconnector.beans.DBConnector dbc= new com.dbconnector.beans.DBConnector();
		    con=dbc.getDbconnection();
			pst=con.prepareStatement("insert into meetings values(?,?,?,?);");
			pst.setString(1, meeting_name);
			pst.setString(2, des);
			pst.setString(3, place);
			pst.setString(4, date);
			int cnt=pst.executeUpdate();
			if(cnt>0)
			{
				
					response.sendRedirect("meetingcreate.html");
				
			}
			else
			{
				response.sendRedirect("meetingfailed.html");
			}
			con.close();
			
		}
		catch(Exception e)
		{
			//out.println("Error : "+e.getMessage());
			out.println("<hr><br><a href='Sachiv.jsp'>Home</a>");
		}
}
}
