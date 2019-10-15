<%-- 
    Document   : appoint
    Created on : Oct 17, 2018, 11:46:21 AM
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
<title>Patient Appointment</title>
</head>

<body bgcolor="skyblue">

<% 
//String user=request.getParameter("T1");
//String password=request.getParameter("T2");
String btn=request.getParameter("btn");
String date=request.getParameter("txtdt");
String status=request.getParameter("txtst");
String doctname=request.getParameter("T3");
String department=request.getParameter("T4");
String user=((String)session.getAttribute("h"));
String password=((String)session.getAttribute("j"));
session.setAttribute("l",doctname);
Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hms","root","root");
        Statement st=con.createStatement();
if(btn.equals("Take Appointment"))
{
%>
 
<form method=post action=appointcode.jsp>
<br><center>Enter Date and Time:
<input type="datetime" name=txtdt>(dd/mm/yyyy)(am/pm)</center>
<br><center> Please enter space between date & time</center>
<br><center>Doctor is available between:<br></center>
<center>8 am - 12 pm<br>
5 pm - 9 pm</center><br>
<center>Your status is:<input type=text name="txtst"  value=""></center>
<center><table><tr><td>DOCTOR NAME:</td>
        <td><select name="T3">
    <option>DR.KISHOR</option>
    <option>DR.HUSSAIN</option>
    <option>DR.VINOD</option>
    <option>DR.SHAAN</option>
    <option>DR.RAHEEM</option>
    <option>DR.SHETTY</option>
    <option></option>
    <option></option>
    <option></option>
            </select></td></tr>
        <tr><td>
    DEPARTMENT:
            </td>
            <td><select name="T4">
    <option>PEDIATRICIAN</option>
    <option>CARDIAC</option>
    <option>GYNAC</option>
    <option>PHYSICIAN</option>
    <option>NEURO</option>
    <option>ORTHO</option>
    <option></option>
    <option></option>
    <option></option>
                </select></td></tr></table></center>


<center><input type=submit name="done" Value=Done></center>

</form>
<%

}%>
<a href="index_1.html"><center><font size="4"><i>Home</i></font></center></a>
</body>
</html>