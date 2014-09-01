<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import= "java.net.*"%>
<%@page import="java.lang.StringBuilder"%>
<%@page import="java.lang.*" %>

<%
//////////Receiving the URL from user

try 
{
	String Host = "jdbc:mysql://localhost:3306/mywebsite"; //
	Connection connection = null;
	Statement statement = null;
	ResultSet rs = null;
	Class.forName("com.mysql.jdbc.Driver");
	connection = DriverManager.getConnection(Host, "root", "");
	statement = connection.createStatement();

	String Data = "select * from trackitem";
	rs = statement.executeQuery(Data);

//////////////////
	String Host2 = "jdbc:mysql://localhost:3306/mywebsite";
	Connection connection2 = null;
	connection2 = DriverManager.getConnection(Host2, "root", "");

///////////////
	while(rs.next()){
		String inputUrl = rs.getString("TrackUrl");
		double oldprice = rs.getDouble("price");
        String inputLine=null;
        double p; 
        URL url = new URL(inputUrl);
        BufferedReader in = new BufferedReader(new InputStreamReader(url.openStream()));
		StringBuilder sb=new StringBuilder();
        
		while ((inputLine = in.readLine()) != null)
		{
			if(inputLine.contains("<span class=\"fk-font-verybig pprice fk-bold\">"))
			{   
				int i=0;
				boolean flag=false;
				
				while(i<inputLine.length()&& flag!=true)
				{
					if(inputLine.charAt(i)=='>')
					{
						flag=true;
						int j=i+1;
						
						while(true)
						{
							char ch;
							ch=inputLine.charAt(j);
							if(ch>='0' && ch<='9')
								sb.append(ch);
									
							if(inputLine.charAt(j)=='<')
								break;
						}
                                
						//out.print(inputLine.charAt(j));
						
						j++;
					}
				}
				++i;
			}
			//break;
		}
         // out.println(sb.toString()); //Price being sent from here
		double newprice=Double.parseDouble(sb.toString());
		//String itemurl = rs.getString("TrackUrl");
		if(newprice != oldprice)
		{
			double diff= newprice-oldprice;
			String updateprice="UPDATE trackitem SET change = " + diff + " WHERE  TrackUrl= '" + inputUrl+"'";
			PreparedStatement pstatement = null;
			pstatement=connection2.prepareStatement(updateprice);
			pstatement.executeUpdate();
			pstatement.close();			
		}
        in.close();
		break;
	}
	connection2.close();
	connection.close();
	//out.println("Item on Track!");
} 
catch (Exception ex) 
{
	out.println("Can't connect to database."+ ex);
}

%>
