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
 * Servlet implementation class UpdateProperty
 */
@WebServlet("/UpdateProperty")
public class UpdateProperty extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProperty() {
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
			String pno,chano,nhano,nhnm;
			
			pno=request.getParameter("pno");
			chano=request.getParameter("chano");
			nhano=request.getParameter("nhano");
			nhnm=request.getParameter("nnm");
			
			
			PreparedStatement pst;
			Connection con;
			
            
			com.dbconnector.beans.DBConnector dbc= new com.dbconnector.beans.DBConnector();
		    con=dbc.getDbconnection();
			pst=con.prepareStatement("update properties set aadhar=?,name=? where prop_no=? and aadhar=?;");
			pst.setString(1, nhano);
			pst.setString(2, nhnm);
			pst.setString(3, pno);
			pst.setString(4, chano);
			int cnt=pst.executeUpdate();
			if(cnt>0)
			{
					 response.sendRedirect("updatesuccess.html");
			}
			else
			{
				response.sendRedirect("updatefailed.html");
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
