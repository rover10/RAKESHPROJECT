<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%
try {
/*
//String name=request.getParameter("txtname");


String Host = "jdbc:mysql://localhost:3306/mywebsite"; //osis
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
Class.forName("com.mysql.jdbc.Driver");
connection = DriverManager.getConnection(Host, "root", "");
statement = connection.createStatement();

String recvUserEmail=request.getParameter("email");
out.println(recvUserEmail);

String Data = "select * from users where useremail='"+recvUserEmail+"' and pass='"+recvPass+"'";
rs = statement.executeQuery(Data);

rs.next(); //starting the result set
String userEmail = rs.getString("useremail");
String password=rs.getString("pass");
*/

	out.print("Forgot Email");
//////// Create a default MimeMessage object.
String result;
   // Recipient's email ID needs to be mentioned.
   String to = "rakesh.r1303@gmail.com";
   // Sender's email ID needs to be mentioned
   String from = "mcmohd@gmail.com";
   // Assuming you are sending email from localhost
   String host = "localhost";
   // Get system properties object
   Properties properties = System.getProperties();
   // Setup mail server
   properties.setProperty("mail.smtp.host", host);
   // Get the default Session object.
   Session mailSession = Session.getDefaultInstance(properties);
      // Create a default MimeMessage object.
      MimeMessage message = new MimeMessage(mailSession);
      // Set From: header field of the header.
      message.setFrom(new InternetAddress(from));
      // Set To: header field of the header.
      message.addRecipient(Message.RecipientType.TO,
                               new InternetAddress(to));
      // Set Subject: header field
      message.setSubject("This is the Subject Line!");
      // Now set the actual message
      message.setText("This is actual message");
      // Send message
      Transport.send(message);
      result = "Sent message successfully....";
   
/////


//out.println("database"+userEmail+"database");
	
//if(userEmail.equals(recvUserEmail) && password.equals(recvPass)){
	//	out.print(0);
	//	out.print(userEmail);
	//	session.setAttribute("uEmail", userEmail);
	//	String redirectURL = "http://localhost:8080/RAKESHPROJECT/testredirect.jsp";
	//	response.sendRedirect(redirectURL);
		
	//}
	//else
	//out.println("guest");
	
%>

<%
//rs.close();
//statement.close();
//connection.close();
} catch (Exception ex) {
out.println("Error" +ex);
}
%>