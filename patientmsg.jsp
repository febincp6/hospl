<%-- 
    Document   : patientmsg
    Created on : Oct 7, 2018, 4:14:20 PM
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
        <script>
            function msg()
            {
                
               confirm("patient registered");
            }
        </script>
    </head>
    <body>
        <%
            
            try
            {
        int id=Integer.parseInt(request.getParameter("T1"));
        int card=Integer.parseInt(request.getParameter("T2"));
        String name=request.getParameter("T3");
        String gender=request.getParameter("g");
        int age=Integer.parseInt(request.getParameter("T0"));
        String address=request.getParameter("T4");
        int phone=Integer.parseInt(request.getParameter("T5"));
        String relname=request.getParameter("T6");
        String reladdress=request.getParameter("T7");
        String department=request.getParameter("T8");
        String doctorname=request.getParameter("T9");
        String admitdate=request.getParameter("T10");
        String dischargedate=request.getParameter("T11");
        int roomid=Integer.parseInt(request.getParameter("T12"));
      
   //int departmntt=Integer.parseInt(dept);
    Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hms","root","root");
        Statement st=con.createStatement();
         int i=st.executeUpdate("insert into patient_table(id,card_no,name,gender,age,address,phone,relative_name,relative_address,department,doctor_name,admit_date,discharge_date,room_id) values('"+id+"','"+card+"','"+name+"','"+gender+"','"+age+"','"+address+"','"+phone+"','"+relname+"','"+reladdress+"','"+department+"','"+doctorname+"','"+admitdate+"','"+dischargedate+"','"+roomid+"')");
         ResultSet sr=st.executeQuery("select * from patient_table where card_no='"+card+"'and id='"+id+"'");
if(sr.next())
{
    session.setAttribute("b", sr.getString(1));
    //session.setAttribute("c", sr.getString(2));
   // response.sendRedirect("patientedit.jsp");
  // int id1=Integer.parseInt((String)session.getAttribute("a"));
     //ResultSet sr=st.executeQuery("select * from patient_table where card_no='"+card+"'and id='"+id1+"'");
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
                           <% //if(sr.next())
                               //{
                                out.print(sr.getString(1));%> 
                        
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
                 <tr>
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
                <%
                }}
                catch(Exception e)
                {
                out.print(e);
                }%>
            </tbody>
        </table>

                    <a href="patientedit.jsp"> update</a> 
               <input type="submit" value="SUBMIT" name="BUTTON" onclick="msg()"/>     
    </body>
</html>
    
        