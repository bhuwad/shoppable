import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LrConnection {
	static Connection con;
	
	
	public static boolean validate(String name, String pass) throws ClassNotFoundException, SQLException {
		boolean status = false;
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppable","root","root" );
		PreparedStatement ps=con.prepareStatement("select * from register where uname=? and password=?");
		
		ps.setString(1, name);
		ps.setString(2, pass);
		
		ResultSet rs=ps.executeQuery();
		status=rs.next();
		return status;

	}
	public static boolean updatePassword(String uname, String newpass) throws ClassNotFoundException, SQLException {
	Class.forName("com.mysql.cj.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppable","root","root" );
		PreparedStatement ps=con.prepareStatement("update register set password='"+newpass+"' where uname='"+uname+"' ");
	
	 int n=ps.executeUpdate();
	 System.out.print(n);
	 if(n>0)
	 {
		 return true;
	 }
	
	return false;
}
	
}
