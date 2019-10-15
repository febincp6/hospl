<%-- 
    Document   : pharmacycode
    Created on : Oct 11, 2018, 9:32:20 PM
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
              int id=Integer.parseInt((String)request.getParameter("T1"));
              int prize=Integer.parseInt((String)request.getParameter("T3"));
              String medicinename=request.getParameter("T2");
              int stock=Integer.parseInt((String)request.getParameter("T4"));
              
          Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hms","root","root");
        Statement st=con.createStatement();
         int i=st.executeUpdate("insert into medicine(id,medicinename,prize,stock) values('"+id+"','"+medicinename+"','"+prize+"','"+stock+"')");
        ResultSet rs=st.executeQuery("select * from medicine where id='"+id+"'");
        if(rs.next())
        {
           session.setAttribute("e",rs.getString(1));
            //session.setAttribute("d",rs.getString(2));
            int id1=Integer.parseInt((String)session.getAttribute("e"));
           // int rn=Integer.parseInt((String)session.getAttribute("d"));
      ResultSet sr=st.executeQuery("select * from medicine where id='"+id1+"'"); 
     // if(sr.next())
      // {
        %>
        <form name="f2" action="pharmacyupdate.jsp">
        
        <table border="0">
            <thead>
                
                
                <tr>
                    <th>ID:</th>
                    <th>MEDICINE NAME:</th>
                    <th>PRIZE:</th>
                    <th>STOCK:</th>
                    
                </tr>
            </thead>
            <tbody>
                <% while(sr.next()){%>
                <tr>
                    <td><input type="text" name="T1" value="<%=sr.getString(1)%>" /></td>
                    <td><input type="text" name="T2" value="<%=sr.getString(2)%>"/></td>
                    <td><input type="text"  name="T3" value="<%=sr.getString(3)%>"/> </td>
                    <td><input type="text"  name="T4" value="<%=sr.getString(4)%>"/></td>
                    <td> </td>
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
  
      
