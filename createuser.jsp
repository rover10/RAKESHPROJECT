<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
try {
	String Host = "jdbc:mysql://localhost:3306/mywebsite"; 
	Connection connection = null;
	Statement statement = null;
	ResultSet rs = null;
	Class.forName("com.mysql.jdbc.Driver");
	connection = DriverManager.getConnection(Host, "root", "");
	statement = connection.createStatement();

	String Data = "select * from users";
	rs = statement.executeQuery(Data);
	
	rs.next(); //starting the result set
	//---------------------------------------
		String frmEmail;
				String username;
				String userpassword;
				String userConPassword;
				String userEmail;
				String userMobNo;
	userEmail = rs.getString("useremail");
	frmEmail=request.getParameter("txtemail");

	if(userEmail.equals(frmEmail))
		out.println("This user already exits ! Please Login");

////////////////////////////////////////////////////////////////////////////////
		else{
				
				username=request.getParameter("user");
				userpassword=request.getParameter("pass");
				userConPassword =request.getParameter("conpass");
				userEmail=request.getParameter("email");
				userMobNo=request.getParameter("mob");
	
			if(userpassword.equals(userConPassword)){
				String Host2 = "jdbc:mysql://localhost:3306/mywebsite";
				Connection connection2 = null;
				connection2 = DriverManager.getConnection(Host2, "root", "");		
				String storeUserData="insert into users(name,pass,useremail,mobno) values(?,?,?,?)";
				PreparedStatement pstatement = null;
				pstatement=connection2.prepareStatement(storeUserData);
				pstatement.setString(1,username);
				pstatement.setString(2,userpassword);
				pstatement.setString(3,userEmail);
				pstatement.setString(4,userMobNo);
				
				pstatement.execute();
				pstatement.close();
				connection2.close();
				session.setAttribute("uEmail", userEmail);//Creating session
				out.println("New Account created!");	
		     }
		  else
				out.println("Password Mismatched");
	}
	out.println("Server Received Data");

rs.close();
statement.close();
connection.close();
} catch (Exception ex) {
out.println("Can't connect to database."+ ex);
}

%>