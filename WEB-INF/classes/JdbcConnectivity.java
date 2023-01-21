
import javax.servlet.*;
import javax.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JdbcConnectivity extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 try {
			PrintWriter out = response.getWriter();
			//Class.forName("com.mysql.cj.jdbc.Driver");
			//Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppable","root","root" );
			
			String name= request.getParameter("uname");
			String pass= request.getParameter("pass");
			
			System.out.println("Uname: "+name+" Password: "+pass);    
			
			if(LrConnection.validate(name, pass)) {
				System.out.println("Login validation done.........................");
				RequestDispatcher rd= request.getRequestDispatcher("index.html");
				rd.forward(request, response);	
			}
			else {
				System.out.println("Validation error................");
				RequestDispatcher rd= request.getRequestDispatcher("loginform.jsp");
				rd.forward(request, response);	
			}
		 } catch (ClassNotFoundException e) {
			 System.out.print(e.getMessage());
			
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.print(e.getMessage());
			e.printStackTrace();
		}	
	}
}
