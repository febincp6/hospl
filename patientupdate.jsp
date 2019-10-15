<%-- 
    Document   : patientupdate
    Created on : Oct 7, 2018, 9:36:13 PM
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
        
         //int id=Integer.parseInt(request.getParameter("T1"));
     int card_no=Integer.parseInt(request.getParameter("T2"));
     String name=request.getParameter("T3");
     String gender=request.getParameter("g");
     int age=Integer.parseInt(request.getParameter("T0"));
     String address=request.getParameter("T4");
      int phone=Integer.parseInt(request.getParameter("T5"));
       String relative_name=request.getParameter("T6");
        String relative_address=request.getParameter("T7");
        String department=request.getParameter("T8");
         String doctor_name=request.getParameter("T9");
         String ptype=request.getParameter("PTYPE");
         String admit_date=request.getParameter("T10");
          String discharge_date=request.getParameter("T11");
         int room_id=Integer.parseInt(request.getParameter("T12"));
         String username=request.getParameter("T13");
         String password=request.getParameter("T14");
Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hms","root","root");
        Statement st=con.createStatement();
       // String id=(String)session.getAttribute("a");
        // String de= (String)session.getAttribute("d");
       // int ca=Integer.parseInt((String)session.getAttribute("c"));
        int id1=Integer.parseInt((String)session.getAttribute("a"));
       // ResultSet sr=st.executeQuery("select * from patient_table where id='"+id1+"'");
       int i=st.executeUpdate("update patient_table set card_no='"+card_no+"',name='"+name+"',gender='"+gender+"',age='"+age+"', address='"+address+"',phone='"+phone+"',relative_name='"+relative_name+"',relative_address='"+relative_address+"',department='"+department+"',doctor_name='"+doctor_name+"',admit_date='"+admit_date+"',discharge_date='"+discharge_date+"',room_id='"+room_id+"',ptype='"+ptype+"',username='"+username+"',password='"+password+"' where id='"+id1+"'");
       // String id=(String)session.setAttribute("a");
        
        
      // 
      // session.setAttribute("a", sr.getString(1));
   // response.sendRedirect("listofpatients.jsp");
    
      ResultSet rs=st.executeQuery("select * from patient_table where id='"+id1+"'");
          
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
                    <td>
                        ID:
                    </td>
                    <td>
                           <% if(rs.next())
                               {out.print(rs.getString(1));%> 
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        CARD_NO:
                    </td>
                    <td>
                        <%out.print(rs.getString(2));%>
                    </td>
                </tr>
                <tr>
                    <td>NAME:</td>
                    <td>
                        <%out.print(rs.getString(3));%>
                    </td>
                </tr>
                <tr>
                    <td>
                        GENDER:
                    </td>
                    <td>
                        <%out.print(rs.getString(4));%>
                    </td>
                </tr>
                <tr>
                    <td>
                        AGE:
                    </td>
                    <td>
                        <%out.print(rs.getString(5));%>
                    </td>
                </tr>
                <tr>
                    <td>
                        ADDRESS:
                    </td>
                    <td>
                        <%out.print(rs.getString(6));%>
                    </td>
                </tr><tr>
                    <td>
                        PHONE:
                    </td>
                    <td>
                        <%out.print(rs.getString(7));%>
                    </td>
                </tr>
                
                
                 <tr>
                    <td>
                        RELATIVE NAME:
                    </td>
                    <td>
                        <%out.print(rs.getString(8));%>
                    </td>
                </tr>
                <tr>
                    <td>
                      RELATIVE ADDRESS  :
                    </td>
                    <td>
                        <%out.print(rs.getString(9));%>
                    </td>
                </tr>
                <tr>
                    <td>
                        DEPARTMENT:
                    </td>
                    <td>
                        <%out.print(rs.getString(10));%>
                    </td>
                </tr>
                <tr>
                    <td>
                        DOCTOR NAME:
                    </td>
                    <td>
                        <%out.print(rs.getString(11));%>
                    </td>
                </tr>
                <tr>
                    <td>
                        ADMIT DATE:
                    </td>
                    <td>
                        <%out.print(rs.getString(12));%>
                    </td>
                </tr>
                <tr>
                    <td>
                        ROOM ID:
                    </td>
                    <td>
                        <%out.print(rs.getString(13));}%>
                    </td>
                </tr>
                           
            </tbody>
        </table>
    </body>
</html>

    
