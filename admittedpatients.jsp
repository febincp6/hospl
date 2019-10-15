<%-- 
    Document   : admitted patients
    Created on : Oct 12, 2018, 1:53:39 PM
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
           
       
           //session.setAttribute("b",rs.getString(15));
            //session.setAttribute("d",rs.getString(2));
            //int id1=Integer.parseInt((String)session.getAttribute("e"));
            String ptype1=(String)session.getAttribute("b");
      ResultSet sr=st.executeQuery("select * from patient_table where ptype='INDOOR'"); 
     // if(sr.next())
      // {
        %>
       <form name="f2"> 
        
        <table border="0">
            <thead>
                
                
                <tr>
                    <th>ID:</th>
                     <th>CARD NO:</th>
                    <th>NAME:</th>
                      <th>GENDER:</th>
                     <th>AGE:</th>
                      <th>ADDRESS:</th>
                       <th>PHONE:</th>
                        <th>RELATIVE NAME:</th>
                         <th>RELATIVE ADDRESS:</th>
                          <th>DEPARTMENT:</th>
                          <th>DOCTOR NAME:</th>
                          <th>ADMITTED DATE:</th>
                          <th>DISCHARGED DATE:</th>
                          <th>ROOM ID:</th>
                          <th>PATIENTTYPE:</th>
                          <th>USERNAME:</th>
                          <th>PASSWORD:</th>
                          
                </tr>
            </thead>
            
            <tbody>
                <% while(sr.next()){%>
                
                    
                    
                <tr> <td><input type="text" name="T1" value="<%=sr.getString(1)%>" /></td>
                <td><input type="text" name="T2" value="<%=sr.getString(2)%>"/> </td>
                <td><input type="text"  name="T4" value="<%=sr.getString(3)%>"/></td>
                <td><input type="text"  name="T4" value="<%=sr.getString(4)%>"/></td>
                <td><input type="text"  name="T4" value="<%=sr.getString(5)%>"/></td>
                <td><input type="text"  name="T4" value="<%=sr.getString(6)%>"/></td>
                <td><input type="text"  name="T4" value="<%=sr.getString(7)%>"/></td>
                <td><input type="text"  name="T4" value="<%=sr.getString(8)%>"/></td>
                <td><input type="text"  name="T4" value="<%=sr.getString(9)%>"/></td>
                <td><input type="text"  name="T4" value="<%=sr.getString(10)%>"/></td>
                <td><input type="text"  name="T4" value="<%=sr.getString(11)%>"/></td>
                <td><input type="text"  name="T4" value="<%=sr.getString(12)%>"/></td>
                 <td><input type="text"  name="T4" value="<%=sr.getString(13)%>"/></td>
                 <td><input type="text"  name="T4" value="<%=sr.getString(14)%>"/></td>
                 <td><input type="text"  name="T4" value="<%=sr.getString(15)%>"/></td>
                  <td><input type="text"  name="T4" value="<%=sr.getString(16)%>"/></td>
                  <td><input type="text"  name="T4" value="<%=sr.getString(17)%>"/></td>
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
