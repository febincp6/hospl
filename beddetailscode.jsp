<%-- 
    Document   : beddetailscode
    Created on : Sep 25, 2018, 2:39:51 PM
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
        
        String bedno=request.getParameter("T2");
        String status=request.getParameter("T3");
        
    Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hms","root","root");
        Statement st=con.createStatement();
         int i=st.executeUpdate("insert into bed_details(id,bed_no,status) values('"+id+"','"+bedno+"','"+status+"')");
         
         
        if(i>0)
        {
   out.println("success");
   }
   else
   {out.println("failed");
   }
   
 
   %>
       
    </body>
</html>
