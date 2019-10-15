<%-- 
    Document   : approved
    Created on : Oct 18, 2018, 5:06:26 PM
    Author     : lenovo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<body bgcolor="skyblue" >
<br><br><br><br>

<%
	// String user=((String)session.getAttribute("h"));
	
	
	
	
	%>
	<%@ include file="connection.jsp"%>
	 <%
            String ap=request.getParameter("app");
            out.println(ap);
         %>
	<%int i=st.executeUpdate("update appoint set status='"+("Approved")+"' where id='"+ap+"' and  status='pending'");%>
	
        
          

            

    <%
	
	
%>
<br>
<center><font size="4">APPOINTMENT GRANDED</font></center>
<br><br>
<a href="index_1.html"><center><font size="4"><i>Home</i></font></center></a>
</body>
</html>
