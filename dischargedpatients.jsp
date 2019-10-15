<%-- 
    Document   : dischargedpatients
    Created on : Oct 16, 2018, 8:32:07 AM
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
        <% try
        
          {
             /* int id=Integer.parseInt((String)request.getParameter("T1"));
              int prize=Integer.parseInt((String)request.getParameter("T3"));
              String patienttype=request.getParameter("T5");
              int stock=Integer.parseInt((String)request.getParameter("T4"));*/
              
          Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hms","root","root");
        Statement st=con.createStatement();
       //  int i=st.executeUpdate("insert into medicine(id,medicinename,prize,stock) values('"+id+"','"+medicinename+"','"+prize+"','"+stock+"')");
        ResultSet rs=st.executeQuery("select * from patient_table");
       if(rs.next())
       {  
           
       String dateenter=request.getParameter("dateenter");
           //session.setAttribute("e",sr.getString(15));
            //session.setAttribute("d",rs.getString(2));
            //int id1=Integer.parseInt((String)session.getAttribute("e"));
           // String ptype1=(String)session.getAttribute("b");
      ResultSet sr=st.executeQuery("select * from patient_table where discharge_date='"+dateenter+"'"); 
     // if(sr.next())
      // {
        %>
       <form name="f2"> 
        
        <table border="0">
            <thead>
                
                
                <tr>
                    <th></th>
                
                
                    <th></th>
                 <th></th>
                  <th></th>
                     <th></th>
                      <th></th>
                       <th></th>
                        <th></th>
                         <th></th>
                          <th></th>
                          <th></th>
                          <th></th>
                          <th></th>
                          <th></th>
                </tr>
            </thead>
            
            <tbody>
                <% while(sr.next()){%>
                <tr>
                    <td></td>
                    <td></td></tr>
                <tr> <td>ID:</td>  <td><input type="text" name="T1" value="<%=sr.getString(1)%>" /></td></tr>
                <tr><td>CARD NO:</td>   <td><input type="text" name="T2" value="<%=sr.getString(2)%>"/> </td></tr>
                <tr><td>NAME:</td>   <td><input type="text"  name="T4" value="<%=sr.getString(3)%>"/></td></tr>
                <tr><td>GENDER:</td>   <td><input type="text"  name="T4" value="<%=sr.getString(4)%>"/></td></tr>
                <tr><td>AGE:</td>   <td><input type="text"  name="T4" value="<%=sr.getString(5)%>"/></td></tr>
                <tr><td>ADDRESS:</td>   <td><input type="text"  name="T4" value="<%=sr.getString(6)%>"/></td></tr>
                <tr><td>PHONE:</td>   <td><input type="text"  name="T4" value="<%=sr.getString(7)%>"/></td></tr>
                <tr><td>RELATIVE NAME:</td>   <td><input type="text"  name="T4" value="<%=sr.getString(8)%>"/></td></tr>
                <tr><td>RELATIVE ADDRESS:</td>  <td><input type="text"  name="T4" value="<%=sr.getString(9)%>"/></td></tr>
                <tr><td>DEPARTMENT: </td>   <td><input type="text"  name="T4" value="<%=sr.getString(10)%>"/></td></tr>
                <tr><td>DOCTOR NAME: </td>   <td><input type="text"  name="T4" value="<%=sr.getString(11)%>"/></td></tr>
                <tr><td>ADMITTED DATE:</td>     <td><input type="text"  name="T4" value="<%=sr.getString(12)%>"/></td></tr>
                 <tr><td>DISCHARGE DATE: </td><td><input type="text"  name="T4" value="<%=sr.getString(13)%>"/></td></tr>
                 <tr><td>ROOM ID:</td>       <td><input type="text"  name="T4" value="<%=sr.getString(14)%>"/></td></tr>
                  <tr><td>PATIENT TYPE:</td>     <td><input type="text"  name="T4" value="<%=sr.getString(15)%>"/></td>
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
</html>

    </body>
</html>
