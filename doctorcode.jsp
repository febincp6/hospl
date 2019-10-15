<%-- 
    Document   : doctorcode
    Created on : Oct 4, 2018, 3:04:30 PM
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
        <%  try
            {
        int id=Integer.parseInt(request.getParameter("T1"));
       // int card=Integer.parseInt(request.getParameter("T2"));
        String doctorname=request.getParameter("T2");
        String gender=request.getParameter("G");
        int age=Integer.parseInt(request.getParameter("T3"));
        String address=request.getParameter("T7");
       // int phone=Integer.parseInt(request.getParameter("T5"));
        String degree=request.getParameter("T5");
       // String reladdress=request.getParameter("T7");
        String department=request.getParameter("T4");
        String emailid=request.getParameter("T6");
        String registrationdate=request.getParameter("T8");
       // String dischargedat=request.getParameter("T11");
        int fees=Integer.parseInt(request.getParameter("T9"));
   //int departmntt=Integer.parseInt(dept);
         Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hms","root","root");
        Statement st=con.createStatement();
         int i=st.executeUpdate("insert into doctor(id,doctorname,age,gender,department,degree,email_id,address,registration_date,fees) values('"+id+"','"+doctorname+"','"+age+"','"+gender+"','"+department+"','"+degree+"','"+emailid+"','"+address+"','"+registrationdate+"','"+fees+"')");
         ResultSet sr=st.executeQuery("select * from doctor where doctorname='"+doctorname+"' and id='"+id+"'");
if(sr.next())
{
   /* session.setAttribute("a", rs.getString(1));
   // response.sendRedirect("listofpatients.jsp");
    int id1=Integer.parseInt((String)session.getAttribute("a"));
       ResultSet sr=st.executeQuery("select * from prescription where doctorname='"+doctorname+"'");*/
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
                           <%// while (sr.next())
                               //{
                              out.print(sr.getString(1));%> 
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        DOCTOR NAME:
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
                    <td>GENDER:</td>
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
                        DEGREE:
                    </td>
                    <td>
                        <%out.print(sr.getString(6));%>
                    </td>
                </tr>
                 <tr>
                    <td>
                        EMAIL ID:
                    </td>
                    <td>
                        <%out.print(sr.getString(7));%>
                    </td>
                </tr>
                 <tr>
                    <td>
                        ADDRESS:
                    </td>
                    <td>
                        <%out.print(sr.getString(8));%>
                    </td>
                </tr>
                 <tr>
                    <td>
                        REGISTRATION DATE:
                    </td>
                    <td>
                        <%out.print(sr.getString(9));%>
                    </td>
                </tr>
                 <tr>
                    <td>
                        FEES:
                    </td>
                    <td>
                        <%out.print(sr.getString(10));%>
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
    
   

        
    
