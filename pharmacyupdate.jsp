<%-- 
    Document   : pharmacyupdate
    Created on : Oct 11, 2018, 10:14:53 PM
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
        <% int id=Integer.parseInt((String)request.getParameter("T1"));
            int prize=Integer.parseInt((String)request.getParameter("T3"));
            String medicinename=request.getParameter("T2");
            int stock=Integer.parseInt((String)request.getParameter("T4"));
            //String roomstatus=request.getParameter("T4");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hms","root","root");
        Statement st=con.createStatement();
        int id1=Integer.parseInt((String)session.getAttribute("e"));
         //int rn= Integer.parseInt((String)session.getAttribute("d"));
       int i=st.executeUpdate("update medicine set medicinename='"+medicinename+"',prize='"+prize+"',stock='"+stock+"' where id='"+id1+"'");
        ResultSet rs=st.executeQuery("select * from medicine ");
       %>   
      
     
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>MEDICINE NAME</th>
                    <th>PRIZE</th>
                    <th>STOCK</th>
                                    </tr>
            </thead>
            <tbody>
                <%while(rs.next()){%>
                <tr>
                    
                     <td><input type="text" name="T1" value="<%out.print(rs.getString(1));%>" /></td>  
                    
                    
                    <td>
                       <input type="text" name="T2" value="<%=rs.getString(2)%>" />  
                        
                    </td>
                
                    
                    <td>
                        <%out.print(rs.getString(3));%>
                    </td>
                
                   
                    <td>
                        <%out.print(rs.getString(4));}%>
                    </td>
               
                    
                   
                </tr>
            </tbody>
        </table>
    </body>
</html>

    

  
