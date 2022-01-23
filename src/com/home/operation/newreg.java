package com.home.operation;
import java.sql.*;
import java.io.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class newreg
 */
@WebServlet("/newreg")
public class newreg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public newreg() {
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
			String ano,pswd,nm,mo,gen,apaadhar = null;
			int age;
			String sec,ans;
			sec=request.getParameter("sec");
			ans=request.getParameter("ans");
			ano=request.getParameter("ano");
			pswd=request.getParameter("pswd");
			nm=request.getParameter("nm");
			mo=request.getParameter("mo");
			age=Integer.parseInt(request.getParameter("age"));
			gen=request.getParameter("gen");
			
			
			PreparedStatement pst;
			Connection con;
			ResultSet rs;
			com.dbconnector.beans.DBConnector dbc= new com.dbconnector.beans.DBConnector();
		    con=dbc.getDbconnection();
		    
		    /*pst=con.prepareStatement("select * from peoples_info;");
			rs=pst.executeQuery();
			while(rs.next())
			{
				apaadhar=rs.getString("aadhar");
			}
			if(apaadhar.equals(ano))
			{*/
				pst=con.prepareStatement("insert into registration values(?,?,?,?,default);");
				pst.setString(1, ano);
				pst.setString(2, pswd);
				pst.setString(3, nm);
				pst.setString(4, "user");
				int cnt=pst.executeUpdate();
				if(cnt>0)
				{
					pst=con.prepareStatement("insert into regpersonal values(?,?,?,?,?,?);");
					pst.setString(1, ano);
					pst.setString(2, mo);
					pst.setInt(3, age);
					pst.setString(4, gen);
					pst.setString(5, sec);
					pst.setString(6, ans);
					int cnt1=pst.executeUpdate();
					if(cnt1>0)
					{
						response.sendRedirect("regsuccess.html");
					}
				}
				else
				{
					response.sendRedirect("regfailed.html");
				}
			/*}
			else
			{
				out.println("You'r not able to make account...Please Contact to GramPanchayet Office");
			}
			*/
			con.close();
			
		}
		catch(Exception e)
		{
			out.println("Error : "+e.getMessage());
			out.println("<hr><br><a href='index.jsp'>Home</a>");
		}
	}

}
