<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import= "java.net.*"%>
<%@page import="java.lang.StringBuilder"%>
<font size="+3" color="red"></b>
<%
try{
	String name1;
	name1=(String)session.getAttribute("uEmail");
	out.println("I received data ."+name1);
	
	}catch (Exception e){

	out.println("Error");
}

%>