<%@page import="java.sql.*"%>
<html>
    <body>
        Products.
        <%
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppable","root","root"  );
			//System.out.print("Connection created.");
			Statement st= con.createStatement();
			ResultSet rs= st.executeQuery("select * from products where company='peterengland'");
			            
        %>

        <table border=1 width="20%">
        <tr>
        <%
            while(rs.next())
            {
        %>
            <td>
               <%= rs.getInt("id") %><br>
               <%= rs.getString("name") %><br>
               <%= rs.getString("price") %><br>
               <%= rs.getString("ratings") %><br>
               <%= rs.getString("img") %><br>

            </td>
          <%
            }
          %>
            </tr>
        </table>

    </body>
</html>