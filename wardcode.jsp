<%-- 
    Document   : wardcode
    Created on : Oct 11, 2018, 1:59:55 PM
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
            
            try
            {
              int id=Integer.parseInt((String)request.getParameter("T0"));
              int charge=Integer.parseInt((String)request.getParameter("T4"));
              String wardname=request.getParameter("T1");
              int noofbed=Integer.parseInt((String)request.getParameter("T3"));
              String wardtype=request.getParameter("T2");
          Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hms","root","root");
        Statement st=con.createStatement();
         int i=st.executeUpdate("insert into ward(id,wardname,wardtype,no_of_bed,charge_per_day) values('"+id+"','"+wardname+"','"+wardtype+"','"+noofbed+"','"+charge+"')");
        ResultSet sr=st.executeQuery("select * from ward");
           //session.setAttribute("e",sr.getString(1));
            //session.setAttribute("d",rs.getString(2));
           // int id1=Integer.parseInt((String)session.getAttribute("e"));
           // int rn=Integer.parseInt((String)session.getAttribute("d"));
     // ResultSet sr=st.executeQuery("select * from room where id='"+id1+"'"); 
      if(sr.next())
       {
        %>
        <form name="f2" action="wardupdate.jsp">
        
        <table border="0">
            <thead>
                <tr>
                    <th>ID:</th>
                    <th>WARD NAME:</th>
                    <th>WARD TYPE:</th>
                    <th>NO OF BED:</th>
                    <th>CHARGE PER DAY:</th>
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
                            <option>SPECIAL</option>
                        </select>  </td>
                    <td><input type="text" name="T3" value="<%=sr.getString(4)%>"/></td>
                    <td><input type="text" name="T5" value="<%=sr.getString(5)%>" /> </td>
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
