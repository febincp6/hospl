<%-- 
    Document   : roomcode
    Created on : Oct 9, 2018, 8:15:51 AM
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
        <script>
          
           
        </script>
    </head>
    <body>
        <% try
            {
              int id=Integer.parseInt((String)request.getParameter("T0"));
              int roomno=Integer.parseInt((String)request.getParameter("T1"));
              String roomtype=request.getParameter("T2");
              int roomcharge=Integer.parseInt((String)request.getParameter("T3"));
              String roomstatus=request.getParameter("T4");
          Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hms","root","root");
        Statement st=con.createStatement();
         int i=st.executeUpdate("insert into room(id,roomno,roomtype,roomcharge,roomstatus) values('"+id+"','"+roomno+"','"+roomtype+"','"+roomcharge+"','"+roomstatus+"')");
       // ResultSet sr=st.executeQuery("select * from room");
           //session.setAttribute("e",sr.getString(1));
          ResultSet rs=st.executeQuery("select * from room where id='"+id+"'");
        if(rs.next())
        {
           session.setAttribute("e",rs.getString(1));
            //session.setAttribute("d",rs.getString(2));
            int id1=Integer.parseInt((String)session.getAttribute("e"));
           // int rn=Integer.parseInt((String)session.getAttribute("d"));
            ResultSet sr=st.executeQuery("select * from room where id='"+id1+"'"); 
     // if(sr.next())
      // {
        %> 
        <form name="f2" action="roomupdate.jsp">
        
        <table border="0">
            <thead>
                <tr>
                    <th>ID:</th>
                    <th>ROOM NO:</th>
                    <th>ROOM TYPE:</th>
                    <th>ROOM CHARGE:</th>
                    <th>ROOM STATUS:</th>
                </tr>
            </thead>
            <tbody>
                <% while(sr.next()){%>
                <tr>
                    <td><input type="text" name="T0" value="<%=sr.getString(1)%>" /></td>
                    <td><input type="text" name="T1" value="<%=sr.getString(2)%>"/></td>
                    <td><select name="T2" >
                    <option>"<%=sr.getString(3)%>"</option>
                            <option>GENERAL</option>
                            <option>DELUXE</option>
                        </select>  </td>
                    <td><input type="text" name="T3" value="<%=sr.getString(4)%>"/></td>
                    <td><select name="T4" >
                    <option>"<%=sr.getString(5)%>"</option>
                            <option>OCCUPIED</option>
                            <option>FREE</option>
                        </select> </td>
                    <%}%>
                </tr>
                
            </tbody>
        </table>

                        
                        <%}}
                       catch(Exception e)
                        {
                out.print(e);
                }%>
                
                <input type="submit" value="update" name="B2"  /> 
        </form>
    </body>
</html>
