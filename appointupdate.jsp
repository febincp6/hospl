<%-- 
    Document   : appointupdate
    Created on : Oct 17, 2018, 3:52:20 PM
    Author     : lenovo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<body bgcolor="limegreen">
    <form action="afterappoint.jsp">
    
<%
String user=((String)session.getAttribute("h"));
String dt=request.getParameter("t1");
out.println(user);
out.println(dt);

try
{%>
    <%@ include file="connection.jsp"%>
	<% int i=st.executeUpdate("update appoint set date_time='"+dt+"' where username='"+user+"'");
    out.println("Date and Time Updated.");
}
catch(Exception e)
{
 out.println(e);
}
%>
<br><br>
<input type="submit" value="update" name="b1" />
<a href="index_1.html"><center><font size="4"><i>Home</i></font></center></a>
    </form>
</body>
</html>
