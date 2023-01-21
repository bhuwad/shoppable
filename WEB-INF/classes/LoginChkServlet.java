import javax.servlet.*;
import javax.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

/**
 * Servlet implementation class LoginChkServlet
 */
public class LoginChkServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		PrintWriter out = response.getWriter();
		
		String name= request.getParameter("uname");
		String pass= request.getParameter("pass");
		
		System.out.println("Uname: "+name+" Password: "+pass);
		if(LrConnection.validate(name, pass)) {
			System.out.println("Login validation done.........................");
			HttpSession session= request.getSession(true);
			session.setAttribute("username", name);
			//RequestDispatcher rd= request.getRequestDispatcher("index.html");
			//rd.forward(request, response);	
			response.sendRedirect("index.jsp");
		}
		else {
			System.out.println("Validation error................");
			RequestDispatcher rd= request.getRequestDispatcher("loginform.jsp");
			rd.forward(request, response);	
		}
		}catch (ClassNotFoundException e) {
			 System.out.print(e.getMessage());
				
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.print(e.getMessage());
			e.printStackTrace();
		}	
	
	}

}
