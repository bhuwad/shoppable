import javax.servlet.*;
import javax.servlet.http.*;

import java.io.IOException;
import java.sql.SQLException;

public class ChangePass extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
    	
			String name= request.getParameter("uname");
    		String pass= request.getParameter("pass");
	    	String cpass= request.getParameter("confirm_password");
    	
	    	boolean b;
		try {
			b = LrConnection.updatePassword(name, pass);
			
    	if(b)
	    	{
    		System.out.println("");
				RequestDispatcher rd= request.getRequestDispatcher("loginform.jsp");
				rd.forward(request, response);	
			}
			else
			{
		       System.out.println("Forget.jsp");
			}
	    		
    		
			} catch (ClassNotFoundException | SQLException e) {
			 
			e.printStackTrace();
			
		}
	
	
}
}

