.<%-- 
    Document   : afterreceptionlogin
    Created on : Oct 18, 2018, 4:36:23 PM
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
<title>Patient Data</title>
</head>
<body  bgcolor="skyblue">
    
    
    
<%
String name=request.getParameter("n1");
String pwd=request.getParameter("n2");
if(name.equals("")||pwd.equals(""))
 {
  %>
 
  <script language="javascript">
	    alert("Enter the Username and Password");
    </script>
  
<center><a href=receptionlogin.jsp><font size="4">Click here to Login</font></a></center>

 <%
 }
 
 else if(name.equals("receptionist")&& pwd.equals("1234"))
 {%>
 

  
  <%@include file="connection.jsp"%>
<% ResultSet rs=st.executeQuery("select * from appoint where status='"+("Pending")+"' order by date_time"); 
while(rs.next())
{String u1=rs.getString(1);
String u2=rs.getString(2);
String u3=rs.getString(3);
String u4=rs.getString(4);
String u5=rs.getString(5);
String u6=rs.getString(6);
String u7=rs.getString(7);

%>
   <form method="get" action="approved.jsp" >
   <table border="2" align="center">
   
        <!--th>Name</th>
		<th>DOB</th>
		<th>Sex</th>
		<th>Contact no</th>
		<th>City</th>
		<th>Username</th>
		<th>Date & Time</th>
		<th>Status</th>
	</tr-->


<%

%>



<%//response.sendRedirect("approved.jsp");%>
<tr>
<td><%=u1%></td> 
<td><%=u2%></td>
<td><%=u3%></td>
<td><%=u4%></td>
<td><%=u5%></td>
<td><%=u6%></td>
<td><%=u7%></td>
<td ><input type="hidden" name="app" value="<%=u1%>"/></td>
<td><input type="submit" value="APPROV" name="b1" />
</td>
</tr>


<%
 %>


</table>
        </form>
<%} }%>
<br><br><br><br><br><br>

   
<center><a href=index_1.html><font size="4" color=white>LOG OUT</font></a></center>
</body>
</html>
