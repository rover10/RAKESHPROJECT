<style>



.CSSTableGenerator a:link {color:green;}    /* unvisited link */
.CSSTableGenerator a:visited {color:green;} /* visited link */
.CSSTableGenerator a:hover {color:White;}   /* mouse over link */
.CSSTableGenerator a:active {color:green;}  /* selected link */



.CSSTableGenerator {
	align:center;
	margin:0px;padding:0px;
	box-shadow: 10px 10px 5px #888888;
	border:1px solid #000000;
	
	-moz-border-radius-bottomleft:0px;
	-webkit-border-bottom-left-radius:0px;
	border-bottom-left-radius:0px;
	
	-moz-border-radius-bottomright:0px;
	-webkit-border-bottom-right-radius:0px;
	border-bottom-right-radius:0px;
	
	-moz-border-radius-topright:0px;
	-webkit-border-top-right-radius:0px;
	border-top-right-radius:0px;
	
	-moz-border-radius-topleft:0px;
	-webkit-border-top-left-radius:0px;
	border-top-left-radius:0px;
}.CSSTableGenerator table{
	align:center;
    border-collapse: collapse;
        border-spacing: 0;
	
	height:100%;
	margin:0px;padding:0px;
}.CSSTableGenerator tr:last-child td:last-child {
	-moz-border-radius-bottomright:0px;
	-webkit-border-bottom-right-radius:0px;
	border-bottom-right-radius:0px;
}
.CSSTableGenerator table tr:first-child td:first-child {
	-moz-border-radius-topleft:0px;
	-webkit-border-top-left-radius:0px;
	border-top-left-radius:0px;
}
.CSSTableGenerator table tr:first-child td:last-child {
	-moz-border-radius-topright:0px;
	-webkit-border-top-right-radius:0px;
	border-top-right-radius:0px;
}.CSSTableGenerator tr:last-child td:first-child{
	-moz-border-radius-bottomleft:0px;
	-webkit-border-bottom-left-radius:0px;
	border-bottom-left-radius:0px;
}.CSSTableGenerator tr:hover td{
	
}
.CSSTableGenerator tr:nth-child(odd){ background-color:#e5e5e5; }
.CSSTableGenerator tr:nth-child(even)    { background-color:#e5e5e5; }.CSSTableGenerator td{
	vertical-align:middle;
	
	
	border:1px solid #000000;
	border-width:0px 1px 1px 0px;
	text-align:left;
	padding:7px;
	font-size:15px;
	font-family:Arial;
	font-weight:bold;
	color:#000000;
}.CSSTableGenerator tr:last-child td{
	border-width:0px 1px 0px 0px;
}.CSSTableGenerator tr td:last-child{
	border-width:0px 0px 1px 0px;
}.CSSTableGenerator tr:last-child td:last-child{
	border-width:0px 0px 0px 0px;
}
.CSSTableGenerator tr:first-child td{
		background:-o-linear-gradient(bottom, #d4ffaa 5%, #00bf00 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #d4ffaa), color-stop(1, #00bf00) );
	background:-moz-linear-gradient( center top, #d4ffaa 5%, #00bf00 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#d4ffaa", endColorstr="#00bf00");	background: -o-linear-gradient(top,#d4ffaa,00bf00);

	background-color:#d4ffaa;
	border:0px solid #000000;
	text-align:center;
	border-width:0px 0px 1px 1px;
	font-size:18px;
	font-family:Arial;
	font-weight:bold;
	color:#ffffff;
}
.CSSTableGenerator tr:first-child:hover td{
	background:-o-linear-gradient(bottom, #d4ffaa 5%, #00bf00 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #d4ffaa), color-stop(1, #00bf00) );
	background:-moz-linear-gradient( center top, #d4ffaa 5%, #00bf00 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#d4ffaa", endColorstr="#00bf00");	background: -o-linear-gradient(top,#d4ffaa,00bf00);

	background-color:#d4ffaa;
}
.CSSTableGenerator tr:first-child td:first-child{
	border-width:0px 0px 1px 0px;
}
.CSSTableGenerator tr:first-child td:last-child{
	border-width:0px 0px 1px 1px;
}
</style>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<center>
<table Align="Center" class="CSSTableGenerator">
<TR><TD>Product Name </td>
 <TD>Date & Time </td>
 <TD>Price  </td> 
 <TD> Changes</td></TR>
<%

try {
String Host = "jdbc:mysql://localhost:3306/mywebsite"; //osis
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
Class.forName("com.mysql.jdbc.Driver");
connection = DriverManager.getConnection(Host, "root", "");
statement = connection.createStatement();

String recvUserEmail=(String)session.getAttribute("uEmail");
String Data = "select * from trackitem where useremail='"+recvUserEmail+"'";
rs = statement.executeQuery(Data);
while(rs.next()){
%>
<TR><TD ><A target="_blank" href=

		<%String changeprice=rs.getString("changeprice");
				
		if(Double.parseDouble(changeprice)<0){
			String url = rs.getString("TrackUrl"); 
			int count=0;
			int i=0;
			out.print(url+">" );
	
			while(count<4){
			if(url.charAt(i)=='/')
				count++;
			else if(count>2 && url.charAt(i)!='-')
				out.print(url.charAt(i));
			else
				out.print(" ");
			i++;
		
			}
	out.print("</A></TD>");  
	
String time=rs.getString("trackTime"); 
	out.print("<TD>" + time + "</TD>"); 
	String price=rs.getString("price");
	out.print("<TD>Rs. "   + price +"</TD>");
	


	
				out.print("<TD bgcolor=red>Rs. "   + changeprice +"</TD></tr>");

		}
			
	%>


	<%

} //while close here
rs.close();
statement.close();
connection.close();
} catch (Exception ex) {
		//response.sendRedirect("http://localhost:8080/RAKESHPROJECT/invaliduser.jsp");
	out.println("Error" +ex);
}
%>

	</table>
	
	</center>