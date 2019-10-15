<%-- 
    Document   : patientdisplay
    Created on : Sep 28, 2018, 12:02:54 PM
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
         // int id=Integer.parseInt(request.getParameter("T1"));
        //int card=Integer.parseInt(request.getParameter("T2"));
        //String name=request.getParameter("T3");
         Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hms","root","root");
        Statement st=con.createStatement();
        /*  ResultSet rs=st.executeQuery("select * from patient_table");// where name='"+name+"'and id='"+id+"'");
if(rs.next())
{
    session.setAttribute("a", rs.getString(1));*/
   // response.sendRedirect("listofpatients.jsp");
   // int id1=Integer.parseInt((String)session.getAttribute("a"));
       ResultSet sr=st.executeQuery("select * from patient_table"); 
   // int id1=Integer.parseInt((String)session.getAttribute("a"));
     //  ResultSet sr=st.executeQuery("select * from patient_table ");

       %>    
      
     
        <table border="1">
            <thead>
                <tr>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <% while(sr.next()){%>
                    <td>
                        ID:
                    </td>
                    <td>
                           
                               <%out.print(sr.getString(1));%> 
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        CARD_NO:
                    </td>
                    <td>
                        <%out.print(sr.getString(2));%>
                    </td>
                </tr>
                 <tr>
                    <td>
                        NAME:
                    </td>
                    <td>
                    <%out.print(sr.getString(3));%>
                    </td>
                </tr>
                <tr>
                    <td>GENDER:</td>
                    <td>
                   <%out.print(sr.getString(4));%>
                    </td>
                </tr>
                <tr>
                    <td>
                        AGE:
                    </td>
                    <td>
                 <%out.print(sr.getString(5));%>
                    </td>
                </tr>
                <tr>
                    <td>
                        ADDRESS:
                    </td>
                    <td>
                        <%out.print(sr.getString(6));%>
                    </td>
                </tr>
                 <tr>
                    <td>
                        PHONE:
                    </td>
                    <td>
                        <%out.print(sr.getString(7));%>
                    </td>
                </tr>
                 <tr>
                    <td>
                        RELATIVE NAME:
                    </td>
                    <td>
                        <%out.print(sr.getString(8));%>
                    </td>
                </tr>
                 <tr>
                    <td>
                        RELATIVE ADDRESS:
                    </td>
                    <td>
                        <%out.print(sr.getString(9));%>
                    </td>
                </tr>
                 <tr>
                    <td>
                        DEPARTMENT:
                    </td>
                    <td>
                        <%out.print(sr.getString(10));%>
                    </td>
                </tr>
                                  <td>
                        DOCTOR NAME:
                    </td>
                    <td>
                        <%out.print(sr.getString(11));%>
                    </td>
                </tr>
                 <tr>
                    <td>
                        ADMIT DATE:
                    </td>
                    <td>
                        <%out.print(sr.getString(12));%>
                    </td>
                </tr>
                 <tr>
                    <td>
                        DISCHARGE DATE:
                    </td>
                    <td>
                        <%out.print(sr.getString(13));%>
                    </td>
                </tr>
                 <tr>
                    <td>
                        ROOM ID:
                    </td>
                    <td>
                        <%out.print(sr.getString(14));%>
                        
                   </td>
                </tr>
                 <tr>
                    <td>
                        PATIENT TYPE:
                    </td>
                    <td>
                        <%out.print(sr.getString(15));%>
                        
                   </td>
                </tr>
                 <tr>
                    <td>
                        USER NAME:
                    </td>
                    <td>
                        <%out.print(sr.getString(16));%>
                        
                   </td>
                </tr>
                
                       <tr>
                    <td>
                        PASSWORD:
                    </td>
                    <td>
                        <%out.print(sr.getString(17));}%>
                        
                   </td>
                </tr>                                                 
                </tbody>
        </table>
                
                    <a href="patientupdate.jsp"> update</a>   
    </body>
</html>
    
    
