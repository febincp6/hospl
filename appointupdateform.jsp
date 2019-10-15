<%-- 
    Document   : appointupdateform
    Created on : Oct 17, 2018, 3:56:14 PM
    Author     : lenovo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head><title>Update appoint</title></head>
<body bgcolor="skyblue" >
<form method="post" action=appointupdate.jsp>
Enter the field that you want to update:
<input type=text name=txtup>


<br><br>

<%
 try
    {
      String user=((String)session.getAttribute("h"));%>
               <%@ include file="connection.jsp"%>
		
		<%ResultSet rs=st.executeQuery("select * from appoint where Username='"+user+"'");

		if(rs.next())
		{%>
			
		
		<b>Enter new Date and time</b>
		<input type="text" name="t1" >
		<input type=hidden name="T1" value="<%=user%>">
		<input type=submit name=btn Value=Update>
		

    	<%}

        else
        {
          out.println("Please take appointment");
        }
    }
		catch(Exception e)
		{
		out.print(e);
		}
 
%>
<br><br>
<a href="Home.html"><center><font size="4"><i>Home</i></font></center></a>
</form>
</body>
</html>