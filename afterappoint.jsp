<%-- 
    Document   : afterappoint
    Created on : Oct 17, 2018, 3:33:01 PM
    Author     : lenovo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>After Appt</title>
</head>
<body bgcolor="skyblue" >
<br><br><br><br>

<%String date=((String)session.getAttribute("i"));
String status=((String)session.getAttribute("k"));
String user=((String)session.getAttribute("h"));
//String user=request.getParameter("T1");
//String date=request.getParameter("txtdt");
//String status=request.getParameter("txtst");
if(date.equals(""))
{
%>
<script language="javascript">
	        alert("Enter date & time");
  </script>

<%}
else
    {
try
{%>
<%@include file="connection.jsp"%>

<%int i=st.executeUpdate("update appoint set Status='"+("Pending")+"' where Status='"+("null")+"'");%>


<%}
catch(Exception e)
{
out.println("");
}
}
%>

<center><i><font size="4">Appointment Granted.</font></i></center>
<br><br><br>
<center>
    <a href=index_1.html><font size="4">LOG OUT</font></a></center>

</body>
</html>