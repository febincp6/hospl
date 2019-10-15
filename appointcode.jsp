
<%-- 
    Document   : appointcode
    Created on : Oct 17, 2018, 10:30:54 PM
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <body bgcolor="skyblue">
            <form name="f1" action="appointupdateform.jsp">
            
<% 
//String user=request.getParameter("T1");
//String password=request.getParameter("T2");
String btn=request.getParameter("btn");
//String date=request.getParameter("txtdt");
//String status=request.getParameter("txtst");
String doctname=request.getParameter("T3");
String dt=request.getParameter("txtdt");
String sts=request.getParameter("txtst");
//String doctname=request.getParameter("T3");
String dept=request.getParameter("T4");
//String department=request.getParameter("T4");
String user=((String)session.getAttribute("h"));
String password=((String)session.getAttribute("j"));

//session.setAttribute("l",doctname);
session.setAttribute("i",dt);
session.setAttribute("k",sts);
session.setAttribute("l",doctname);
session.setAttribute("m",dept);
String date=((String)session.getAttribute("i"));
String status=((String)session.getAttribute("k"));
String doctorname=((String)session.getAttribute("l"));

String department=((String)session.getAttribute("m"));
Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hms","root","root");
        Statement st=con.createStatement();


int i=st.executeUpdate("insert into appoint(username,password,doctorname,department,date_time,status) values('"+user+"','"+password+"','"+doctorname+"','"+department+"','"+date+"','"+status+"')");

 if(i>0)
        {
   System.out.println("success");
   }
   else
 {  
   ResultSet rs=st.executeQuery("select * from appoint where Username='"+user+"'");
    if(rs.next())
    {
        response.sendRedirect("afterappoint.jsp");
    }
       
   }
 
 
   %>

   <input type="submit" value="UPDATE" name="b1" />
<a href="index_1.html"><center><font size="4"><i>Home</i></font></center></a>
            </form>
</body>
</html>