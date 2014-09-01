<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import= "java.net.*"%>
<%@page import="java.lang.StringBuilder"%>
<%@page import="java.lang.*" %>

<%
//////////Receiving the URL from user
		String  inputUrl=request.getParameter("myUrl");
        String inputLine=null;
        double p; 
        URL url = new URL(inputUrl);
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

		try {
		String Email;
		Email= (String)session.getAttribute("uEmail");
		double price=Double.parseDouble(sb.toString());
				String Host2 = "jdbc:mysql://localhost:3306/mywebsite";
				Connection connection2 = null;
				connection2 = DriverManager.getConnection(Host2, "root", "");		
				String storeUserData="insert into trackitem(userEmail,TrackUrl,price) values(?,?,?)";
				PreparedStatement pstatement = null;
				pstatement=connection2.prepareStatement(storeUserData);
				pstatement.setString(1,Email);
				pstatement.setString(2,inputUrl);
				pstatement.setDouble(3,price);

				pstatement.execute();
				pstatement.close();
				connection2.close();
				//out.println("Item on Track!");

} catch (Exception ex) {
out.println("Can't connect to database."+ ex);
}

%>
