
import javax.servlet.*;
import javax.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegConnectivity extends HttpServlet {
	private static final long serialVersionUID = 1L;
	  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Throwable e;
		PrintWriter out=  response.getWriter();
		try {
			 
			Class.forName("com.mysql.cj.jdbc.Driver");		
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppable","root","root" );
			//System.out.print("Connection created");
			String name= request.getParameter("uname");
			String email= request.getParameter("email");
			String cnumb= request.getParameter("Contact_Number");
			String pass= request.getParameter("pass");
			String gender= request.getParameter("gender");
			//System.out.print("data gather");
			PreparedStatement ps = con.prepareStatement("insert into register values(?,?,?,?,?)");
			ps.setString(1,name);
			ps.setString(2,email);
			ps.setString(3,cnumb);
			ps.setString(4,pass);
			ps.setString(5,gender);
			
			int i= ps.executeUpdate();
			//System.out.println("Boolean : "+i);
			if(i>0)
			{
				System.out.println("Redirecting to Login Page");
				RequestDispatcher rd= request.getRequestDispatcher("loginform.jsp");
				rd.forward(request, response);	
			}
			else
			{
		       System.out.println("Registration failed.");
			}
			
			
		} catch (ClassNotFoundException e1) {
			System.out.print(e1.getMessage());
			e1.printStackTrace();
			
		} catch (SQLException e1) {
			out.print(e1.getMessage());
			System.out.print(e1.getMessage());
			RequestDispatcher rd= request.getRequestDispatcher("regform.jsp");
			
			rd.include(request, response);
			System.out.println("in catch.......................................................................");
		}
		
	}

}
