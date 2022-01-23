package com.users.servlet;

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
 * Servlet implementation class SendReq
 */
@WebServlet("/SendReq")
public class SendReq extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendReq() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		// TODO Auto-generated method stub
		
	try
	{
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		Connection con;
		PreparedStatement pst;

		String ano,name,toreq,msg;
	
		ano=request.getParameter("ano");
		name=request.getParameter("nm");
		toreq=request.getParameter("to");
		msg=request.getParameter("msg");
		
		
		com.dbconnector.beans.DBConnector dbc= new com.dbconnector.beans.DBConnector();
	    con=dbc.getDbconnection();
		pst=con.prepareStatement("insert into request values(?,?,?,?,now());");
		pst.setString(1, ano);
		pst.setString(2, name);
		pst.setString(3,toreq);
		pst.setString(4, msg);
		int cnt=pst.executeUpdate();
		if(cnt>0)
		{
			response.sendRedirect("sendsuccess.jsp");
		}
		else
		{
			response.sendRedirect("reqfailed.jsp");
		}
		
	}
	catch(Exception e)
	{
	
	}
	}
}
