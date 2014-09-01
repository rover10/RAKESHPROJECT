<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="java.net.URL" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import= "java.net.*"%>
<%@page import="java.lang.StringBuilder"%>
<%@page import="java.lang.*" %>

<center>
<table Align="Center" class="CSSTableGenerator">
<TR><TD>Product Name </td>
 <TD>Date & Time </td>
 <TD>Price  </td> </TR>
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
String Data = "select * from trackitem";// where useremail='"+recvUserEmail+"'";
rs = statement.executeQuery(Data);
//String dropurl;
 URL url=new URL("http://www.flipkart.com");
while(rs.next()){
		//while(){
	
			//	}
  //URL dropurl = new URL(rs.getString("TrackUrl")); 
	//String time=rs.getString("trackTime"); 
	//double oldprice=rs.getDouble("price");
	out.print("1");
	///////////////////////////////////////////
	//////////Receiving the URL from user
		String  inputUrl=rs.getString("TrackUrl");    //request.getParameter("myUrl");
        String inputLine=null;
        double p; 
        url = new URL(inputUrl);
        BufferedReader in = new BufferedReader(new InputStreamReader(url.openStream()));
		StringBuilder sb=new StringBuilder();
        
	   while ((inputLine = in.readLine()) != null)
             if(inputLine.contains("<span class=\"fk-font-verybig pprice fk-bold\">")){   
                    int i=0;
                    boolean flag=false;
                    while(i<inputLine.length()&& flag!=true){
                        if(inputLine.charAt(i)=='>')
                        {   
                            flag=true;
                            int j=i+1;
                            while(true){
							
								char ch;
								ch=inputLine.charAt(j);
								if(ch>='0' && ch<='9')
								  sb.append(ch);
								
	                            if(inputLine.charAt(j)=='<'){//bugggg
								/*************/
								  
								/***************/
								    break;
								}
                                
                               //out.print(inputLine.charAt(j));
								
                            j++;
                            }
                        } 
                        
                        ++i;
                    }
             }
          out.println(sb.toString()); //Price being sent from here
        in.close();

		
		//String Email;
		
		//Email= (String)session.getAttribute("uEmail");
		double oldprice=rs.getDouble("price");
		double newprice=Double.parseDouble(sb.toString());
				String Host2 = "jdbc:mysql://localhost:3306/mywebsite";
				Connection connection2 = null;
				connection2 = DriverManager.getConnection(Host2, "root", "");		
				String storeUserData="UPDATE trackitem SET changeprice=? WHERE TrackUrl=?";
				PreparedStatement pstatement = null;
				pstatement=connection2.prepareStatement(storeUserData);
				pstatement.setDouble(1,newprice-oldprice);
				pstatement.setString(2,inputUrl);
				//pstatement.setDouble(2,8999);
				//pstatement.setDouble(3,price);

				pstatement.executeUpdate();
				pstatement.close();
				connection2.close();
				//out.println("Item on Track!");

	///////////////////////////////////////////
}

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