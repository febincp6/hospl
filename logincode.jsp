<%-- 
    Document   : logincode
    Created on : Oct 14, 2018, 12:24:39 PM
    Author     : lenovo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        try
        {
            String uname=request.getParameter("T1");
       String pwd=request.getParameter("T2");%>
        <%@ include file="connection.jsp"%>
       <% 
        ResultSet sr=st.executeQuery("select * from saveemp where username='"+uname+"'and password='"+pwd+"'");
if(sr.next())
{
    session.setAttribute("g", sr.getString(2));
    session.setAttribute("h", sr.getString(4));}
   // response.sendRedirect("listofpatients.jsp");
     String uname1=((String)session.getAttribute("g"));
    
    String type1=((String)session.getAttribute("h"));
    
       ResultSet rs=st.executeQuery("select * from saveemp where username='"+uname1+"'and type='"+type1+"'");
if(rs.next())
{
         if(type1.equals("admin"))
         {
             response.sendRedirect("adminlogincode.jsp");}
              if(type1.equals("doctor"))
                  
             response.sendRedirect("doctorcode.jsp");
              else if(type1.equals("pharmacy"))
                  response.sendRedirect("pharmacypanel.jsp");
              }
else
{
    out.print("error");
}
       %>    
      
     
       
        <%
        }     catch(Exception e)
                {
                out.print(e);
                }%>
            </body>
</html>
