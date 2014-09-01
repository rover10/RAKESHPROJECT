<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
try {

//String name=request.getParameter("txtname");


String Host = "jdbc:mysql://localhost:3306/mywebsite"; //osis
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
Class.forName("com.mysql.jdbc.Driver");
connection = DriverManager.getConnection(Host, "root", "");
statement = connection.createStatement();

String recvUserEmail=request.getParameter("txtemail");
String recvPass=request.getParameter("txtpass");
if(recvUserEmail.equals("") || recvPass.equals(""))
    	response.sendRedirect("http://localhost:8080/RAKESHPROJECT/test.jsp");
	
out.println(recvUserEmail);

String Data = "select * from users where useremail='"+recvUserEmail+"' and pass='"+recvPass+"'";
rs = statement.executeQuery(Data);

rs.next(); //starting the result set
String userEmail = rs.getString("useremail");
String password=rs.getString("pass");



//out.println("database"+userEmail+"database");
	
if(userEmail.equals(recvUserEmail) && password.equals(recvPass)){
		out.print(0);
		out.print(userEmail);
		session.setAttribute("uEmail", userEmail);
		String redirectURL = "http://localhost:8080/RAKESHPROJECT/testredirect.jsp";
		response.sendRedirect(redirectURL);
		//String redirectURL = "http://www.google.com";
		//response.sendRedirect(redirectURL);
	}
	else
	out.println("guest");
	
%>

<%
rs.close();
statement.close();
connection.close();
} catch (Exception ex) {

		response.sendRedirect("http://localhost:8080/RAKESHPROJECT/invaliduser.jsp");
//out.println("Error" +ex);
}
%>