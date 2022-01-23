package com.home.operation;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ChangePass
 */
@WebServlet("/ChangePass")
public class ChangePass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangePass() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		String ano,curps,newps,confps;
		ano=request.getParameter("ano");
		curps=request.getParameter("curps");
		newps=request.getParameter("newps");
		confps=request.getParameter("confps");
		
		Connection con;
		PreparedStatement pst;
		
		if(newps.equals(confps))
		{
			try
			{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nirmalgram?user=root&password=shubham");
			pst=con.prepareStatement("update registration set pswd=? where aadhar=? and pswd=?;");
			pst.setString(1, newps);
			pst.setString(2, ano);
			pst.setString(3, curps);
			int cnt=pst.executeUpdate();
			if(cnt==1)
				out.println("<html><head><link rel=\"stylesheet\" href=\"bootstrap.min.css\"><br><br><div class='container'><h3>Password changed successfully</h3></div></head></html>");
			else
				out.println("<div class='container'><h3>Password change failed</h3></div>");
			con.close();
			}
			catch(Exception e)
			{
				out.println(e);
			}
		}
		else
		{
			out.println("<div class='container'><h3>New Passwords Mismatched</h3></div>");
		}
		out.println("<br><br><div class='container'><a href='index.jsp'>Home</a></div>");
	}
	

}
