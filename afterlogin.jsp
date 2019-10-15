<%-- 
    Document   : afterlogin
    Created on : Oct 17, 2018, 8:09:07 AM
    Author     : lenovo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<body bgcolor="skyblue">
<br><br><br><br>

<%@include file="connection.jsp" %>
<%
ResultSet rs;

String uname=request.getParameter("T1");
String pwd=request.getParameter("T2");

if(uname.equals("")||pwd.equals(""))
{

%>

 <script language="javascript">
	        alert("Enter the Username and Password");
  </script>
<center>
<b>Click to try again</b><br><br><br><br><br><br><br>

<a href="patientlogin.jsp"><font size="4"><i>Back</i></font></a>
    </center>
<%
}
else
{
        rs=st.executeQuery("select password from patient_table where Username='"+uname+"'");
        if(rs.next())
        {
	     
		  if(pwd.equals(rs.getString("password")))
	    {
%>

<center><font size="10"><i>Welcome <%=uname%></i></font>
<form method="post" action="appoint.jsp">
<input type="hidden" name="T1" value="<%=uname%>">
<br><br>
<input type="submit" name="btn" value="Take Appointment"></form></center>

<form method=post action="listofpatients.jsp">
<input type="hidden" name="T1" value="<%=uname%>">
<center><input type=SUBMIT value="VIEW MY PROFILE"></center>
</form>

            <%session.setAttribute("h",uname);
            session.setAttribute("j", pwd);}
                  else
                   {
                       %>
                               <script language="javascript">
	            alert("Invalid Username or Password");

       </script>
	<center><a href="patientlogin.jsp"><font size="6"><i>Back</i></font></a>   </center>

<%
                   }
         }
         else
        {

%>
<script language="javascript">
	   alert("Please register first..");

       </script>
<center>
<a href="patientform.jsp"><font size="6"><i>Click here to register</i></font></a>
<br><br><br><br><Br>
<a href="patientlogin.jsp"><font size="6"><i>Back</i></font></a>
</center><%
        }
}
%>
<br><br>
<a href="index_1.html"><center><font size="4"><i>Home</i></font></center></a>
</body>
</html>