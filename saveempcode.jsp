<%-- 
    Document   : saveempcode
    Created on : Oct 14, 2018, 6:36:17 AM
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
         int id=Integer.parseInt(request.getParameter("T1"));
           String username=request.getParameter("T2");
        String password=request.getParameter("T3");
         String type=request.getParameter("T4");
          int salary=Integer.parseInt(request.getParameter("T5"));
          int phone=Integer.parseInt(request.getParameter("T6"));%>
        <%@include file="connection.jsp"%>
        <% int i=st.executeUpdate("insert into saveemp(id,username,password,type,salary,phone) values('"+id+"','"+username+"','"+password+"','"+type+"','"+salary+"','"+phone+"')");
        ResultSet rs=st.executeQuery("select * from saveemp where id='"+id+"'");
        if(rs.next())
        {
           session.setAttribute("f",rs.getString(1));
            //session.setAttribute("d",rs.getString(2));
            int id1=Integer.parseInt((String)session.getAttribute("f"));
           // int rn=Integer.parseInt((String)session.getAttribute("d"));
      ResultSet sr=st.executeQuery("select * from saveemp where id='"+id1+"'"); 
     // if(sr.next())
      // {
        %>
        <form name="f2" action="saveempupdate.jsp">
        
        <table border="0">
            <thead>
                
                
                <tr>
                    <th>ID:</th>
                    <th>USER NAME:</th>
                    <th>PASSWORD:</th>
                    <th>TYPE:</th>
                    <th>SALARY:</th>
                    <th>PHONE:</th>
                    
                </tr>
            </thead>
            <tbody>
                <% while(sr.next()){%>
                <tr>
                    <td><input type="text" name="T1" value="<%=sr.getString(1)%>" /></td>
                    <td><input type="text" name="T2" value="<%=sr.getString(2)%>"/></td>
                    <td><input type="text"  name="T3" value="<%=sr.getString(3)%>"/> </td>
                    <td><input type="text"  name="T4" value="<%=sr.getString(4)%>"/></td>
                    <td><input type="text" name="T5" value="<%=sr.getString(5)%>"/></td>
                    <td><input type="text"  name="T6" value="<%=sr.getString(6)%>"/></td>
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
  
    
