<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 


<%
try {
         // String delete = "DELETE from user WHERE pass = ?";

          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("mywebsite", "root", "");
          //PreparedStatement ps = con.prepareStatement(delete);
         String insert = "INSERT INTO user(id, name, pass)"+" VALUES (?, ?, ?)";
PreparedStatement ps = con.prepareStatement(insert);
ps.setString(1, "g");
ps.setString(2, "tim");
ps.setString(3, "rim");
ps.executeUpdate();

      } catch (Exception ex) {
		out.print(ex);
         // Logger.getLogger(BooksWorker.class.getName()).log( 
           //  Level.SEVERE, null, ex);
      }
%>