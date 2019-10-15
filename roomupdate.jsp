<%-- 
    Document   : roomupdate
    Created on : Oct 9, 2018, 3:23:13 PM
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
    <body>
        <%
            int id=Integer.parseInt((String)request.getParameter("T0"));
            int roomno=Integer.parseInt((String)request.getParameter("T1"));
            String roomtype=request.getParameter("T2");
            int roomcharge=Integer.parseInt((String)request.getParameter("T3"));
            String roomstatus=request.getParameter("T4");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hms","root","root");
        Statement st=con.createStatement();
        int id1=Integer.parseInt((String)session.getAttribute("e"));
         //int rn= Integer.parseInt((String)session.getAttribute("d"));
       int i=st.executeUpdate("update room set roomno='"+roomno+"',roomtype='"+roomtype+"',roomcharge='"+roomcharge+"',roomstatus='"+roomstatus+"' where id='"+id1+"'");
        ResultSet rs=st.executeQuery("select * from room ");
       %>   
      
     
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>ROOM NO</th>
                    <th>ROOM TYPE</th>
                    <th>ROOM CHARGE</th>
                    <th>ROOM STATUS</th>
                </tr>
            </thead>
            <tbody>
                <%while(rs.next()){%>
                <tr>
                    <td>
                        <%out.print(rs.getString(1));%>
                    </td>
                    
                    <td>
                           <% out.print(rs.getString(2));%> 
                        
                    </td>
                
                    
                    <td>
                        <%out.print(rs.getString(3));%>
                    </td>
                
                   
                    <td>
                        <%out.print(rs.getString(4));%>
                    </td>
               
                    
                    <td>
                        <%out.print(rs.getString(5));}%>
                    </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>

    
