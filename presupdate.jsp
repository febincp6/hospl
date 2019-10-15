<%-- 
    Document   : presupdate
    Created on : Oct 10, 2018, 9:49:40 PM
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
            int id=Integer.parseInt(request.getParameter("T0"));
           
           /* String patientname=request.getParameter("T1");
             int age=Integer.parseInt(request.getParameter("T2"));
             //int roomcharge=Integer.parseInt((String)request.getParameter("T3"));
            String doctorname=request.getParameter("T3");
             String department=request.getParameter("T4");
              String gender=request.getParameter("G");
               String patienttype=request.getParameter("T5");
                String disease=request.getParameter("T6");
                 String medicine=request.getParameter("T7");
                  String dosage=request.getParameter("T8");*/
                String patientname=request.getParameter("T1");
        
        int age=Integer.parseInt(request.getParameter("T2"));
         String doctorname=request.getParameter("T3");
        String department=request.getParameter("T4");
        String gender=request.getParameter("G");
        String patienttype=request.getParameter("T5");
       // int phone=Integer.parseInt(request.getParameter("T4"));
        String disease=request.getParameter("T6");
        String medicine=request.getParameter("T7");
        String dosage=request.getParameter("T8");
  
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hms","root","root");
        Statement st=con.createStatement();
      int id1=Integer.parseInt((String)session.getAttribute("a"));
         //int rn= Integer.parseInt((String)session.getAttribute("d"));
      int i=st.executeUpdate("update prescription set patientname='"+patientname+"',age='"+age+"',doctorname='"+doctorname+"',department='"+department+"',gender='"+gender+"',patienttype='"+patienttype+"',disease='"+disease+"',medicine='"+medicine+"',dosage='"+dosage+"' where id='"+id1+"'");
       //int i=st.executeUpdate("update prescription set patientname='"+patientname+"',age='"+age+"',doctorname='"+doctorname+"',department='"+department+"',gender='"+gender+"',patienttype='"+patienttype+"',disease='"+disease+"',medicine='"+medicine+"',dosage='"+dosage+"' where id='"+id1+"'" );
       // int i=st.executeUpdate("update prescription set patienttype='"+patienttype+"',disease='"+disease+"',medicine='"+medicine+"',dosage='"+dosage+"' where id='"+id1+"'" );
        
       ResultSet rs=st.executeQuery("select * from prescription ");
        
        
       %>   
      
     
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>PATIENT NAME</th>
                    <th>AGE</th>
                    <th>DOCTOR NAME</th>
                    <th>DEPARTMENT</th>
                    <th>GENDER</th>
                    <th>PATIENT TYPE</th>
                    <th>DISEASE</th>
                    <th>MEDICINE</th>
                    <th>DOSAGE</th>
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
                        <%out.print(rs.getString(5));%>
                    </td>
                      <td>
                        <%out.print(rs.getString(6));%>
                    </td>
                      <td>
                        <%out.print(rs.getString(7));%>
                    </td>
                      <td>
                        <%out.print(rs.getString(8));%>
                    </td>
                    <td>
                        <%out.print(rs.getString(9));%>
                    </td>
                    <td>
                        <%out.print(rs.getString(10));}%>
                    </td>
                </tr>
            </tbody>
        </table>
    </body>
      
    </html>
