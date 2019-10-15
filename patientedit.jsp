<%-- 
    Document   : patientedit
    Created on : Oct 8, 2018, 1:25:19 PM
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
                Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hms","root","root");
        Statement st=con.createStatement();
       // int ca=Integer.parseInt((String)session.getAttribute("c"));
        int id1=Integer.parseInt((String)session.getAttribute("b"));
         //int i=st.executeUpdate("insert into patient_table(id,card_no,name,gender,age,address,phone,relative_name,relative_address,department,doctor_name,admit_date,discharge_date,room_id) values('"+id+"','"+card+"','"+name+"','"+gender+"','"+age+"','"+address+"','"+phone+"','"+relname+"','"+reladdress+"','"+department+"','"+doctorname+"','"+admitdate+"','"+dischargedate+"','"+roomid+"')");
         ResultSet sr=st.executeQuery("select * from patient_table where  id='"+id1+"'");
if(sr.next())
{%>
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
                        <input type="text" name="T1" value="<%=sr.getString(1)%>" />
                            
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        CARD_NO:
                    </td>
                    <td>
                        <input type="text" name="T2" value="<%=sr.getString(2)%>" />
                    </td>
                </tr>
                 <tr>
                    <td>
                        NAME:
                    </td>
                    <td>
                        <input type="text" name="T1" value="<%=sr.getString(3)%>" />
                    </td>
                </tr>
                <tr>
                    <td>GENDER:</td>
                    <td>
                      <input type="text" name="T1" value="<%=sr.getString(4)%>" />
                    </td>
                </tr>
                <tr>
                    <td>
                        AGE:
                    </td>
                    <td>
                        <input type="text" name="T1" value="<%=sr.getString(5)%>" />
                    </td>
                </tr>
                <tr>
                    <td>
                        ADDRESS:
                    </td>
                    <td>
                        <input type="text" name="T1" value="<%=sr.getString(6)%>" />
                    </td>
                </tr>
                 <tr>
                    <td>
                        PHONE:
                    </td>
                    <td>
                                  <input type="text" name="T1" value="<%=sr.getString(7)%>" />       </td>
                </tr>
                 <tr>
                    <td>
                        RELATIVE NAME:
                    </td>
                    <td>
                        <input type="text" name="T1" value="<%=sr.getString(8)%>" />
                    </td>
                </tr>
                 <tr>
                    <td>
                        RELATIVE ADDRESS:
                    </td>
                    <td>
                        <input type="text" name="T1" value="<%=sr.getString(9)%>" />
                    </td>
                </tr>
                 <tr>
                    <td>
                        DEPARTMENT:
                    </td>
                    <td>
                        <input type="text" name="T1" value="<%=sr.getString(10)%>" />
                    </td>
                </tr>
                 <tr>
                    <td>
                        DOCTOR NAME:
                    </td>
                    <td>
                        <input type="text" name="T1" value="<%=sr.getString(11)%>" />
                    </td>
                </tr>
                 <tr>
                    <td>
                        ADMIT DATE:
                    </td>
                    <td>
                        <input type="text" name="T1" value="<%=sr.getString(12)%>" />
                    </td>
                </tr>
                 <tr>
                    <td>
                        DISCHARGE DATE:
                    </td>
                    <td>
                       <input type="text" name="T1" value="<%=sr.getString(13)%>" />
                    </td>
                </tr>
                 <tr>
                    <td>
                        ROOM ID:
                    </td>
                    <td>
                        <input type="text" name="T1" value="<%=sr.getString(14)%>" />
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

                    <a href="patientupdate.jsp"> update</a> 
               <input type="submit" value="SUBMIT" name="BUTTON" onclick="msg()"/>     
    </body>
</html>
    
        
    
