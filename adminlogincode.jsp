<%-- 
    Document   : adminlogincode
    Created on : Sep 24, 2018, 8:56:13 AM
    Author     : lenovo
--%>

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
    <body>
        <%
        int id=Integer.parseInt(request.getParameter("T1"));
        
        String username=request.getParameter("T2");
        String password=request.getParameter("T3");
        
    Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hms","root","root");
        Statement st=con.createStatement();
         int i=st.executeUpdate("insert into admin(idAdmin,username,password) values('"+id+"','"+username+"','"+password+"')");
         
         
        if(i>0)
        {
   System.out.println("success");
   }
   else
   {System.out.println("failed");
   }
   
 
   %>
    </body>
</html>
