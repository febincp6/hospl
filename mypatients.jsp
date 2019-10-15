<%-- 
    Document   : mypatients
    Created on : Oct 4, 2018, 11:45:56 AM
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
        int id=Integer.parseInt(request.getParameter("T0"));
       // int card=Integer.parseInt(request.getParameter("T1"));
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
       
       // String dischargedate=request.getParameter("T11");
       // int roomid=Integer.parseInt(request.getParameter("T12"));
   //int departmntt=Integer.parseInt(dept);
    Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hms","root","root");
        Statement st=con.createStatement();
         int i=st.executeUpdate("insert into prescription(id,patientname,age,doctorname,department,gender,patienttype,disease,medicine,dosage) values('"+id+"','"+patientname+"','"+age+"','"+doctorname+"','"+department+"','"+gender+"','"+patienttype+"','"+disease+"','"+medicine+"','"+dosage+"')");
         ResultSet rs=st.executeQuery("select * from prescription where id='"+id+"'and department='"+department+"'");
if(rs.next())
{
    session.setAttribute("a", rs.getString(1));
   // response.sendRedirect("listofpatients.jsp");
    int id1=Integer.parseInt((String)session.getAttribute("a"));
       ResultSet sr=st.executeQuery("select * from prescription where doctorname='"+doctorname+"'and id='"+id1+"'");
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
                           <% if(sr.next())
                               {out.print(sr.getString(1));%> 
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        PATIENT NAME:
                    </td>
                    <td>
                        <%out.print(sr.getString(2));%>
                    </td>
                </tr>
                 <tr>
                    <td>
                        AGE:
                    </td>
                    <td>
                        <%out.print(sr.getString(3));%>
                    </td>
                </tr>
                <tr>
                    <td>DOCTOR NAME:</td>
                    <td>
                        <%out.print(sr.getString(4));%>
                    </td>
                </tr>
                <tr>
                    <td>
                        DEPARTMENT:
                    </td>
                    <td>
                        <%out.print(sr.getString(5));%>
                    </td>
                </tr>
                <tr>
                    <td>
                        GENDER:
                    </td>
                    <td>
                        <%out.print(sr.getString(6));%>
                    </td>
                </tr>
                 <tr>
                    <td>
                        PATIENT TYPE:
                    </td>
                    <td>
                        <%out.print(sr.getString(7));%>
                    </td>
                </tr>
                <tr>
                    <td>
                        DISEASE:
                    </td>
                    <td>
                        <%out.print(sr.getString(8));%>
                    </td>
                </tr>
                 <tr>
                    <td>
                        MEDICINE:
                    </td>
                    <td>
                        <%out.print(sr.getString(9));%>
                    </td>
                </tr>
                 <tr>
                    <td>
                        DOSAGE:
                    </td>
                    <td>
                        <%out.print(sr.getString(10));}%>
                    </td>
                </tr>
                 
                <%
                }}
                catch(Exception e)
                {
                out.print(e);
                }%>
            </tbody>
        </table>

                    <a href="fupdate.jsp"> update</a>   
    </body>
</html>
    
   

    

        <h1>Hello World!</h1>
    </body>
</html>
