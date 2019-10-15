<%-- 
    Document   : approve1
    Created on : Oct 23, 2018, 1:44:29 PM
    Author     : lenovo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<body bgcolor="skyblue" >
<br><br><br><br>

<%
        session.removeAttribute("h");
	
	
	
	try
	{%>
	<%@ include file="connection.jsp"%>
           <% ResultSet rs=st.executeQuery("select * from appoint ");
             String user=((String)session.getAttribute("h"));
	   %>
	 
	<%int i=st.executeUpdate("update appoint set status='"+("Approved")+"' where username='"+user+"'  status='"+("Pending")+"'");%>
	
        
          

            

    <%}
	
	catch(Exception e)
	{
	out.println("<center>APPROVED</center>");
	}
%>
<br>
<center><font size="4">APPOINTMENT GRANDED</font></center>
<br><br>
<a href="index_1.html"><center><font size="4"><i>Home</i></font></center></a>
</body>
</html>
