import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 try {
				PrintWriter out = response.getWriter();
				//Class.forName("com.mysql.cj.jdbc.Driver");
				//Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppable","root","root" );
				
				String name= request.getParameter("uname");
				String pass= request.getParameter("pass");
				
			
				if(LrConnection.validate(name, pass)) {
					RequestDispatcher rd= request.getRequestDispatcher("index.html");
					rd.forward(request, response);	
				}
				else {
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
