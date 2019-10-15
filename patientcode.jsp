<%-- 
    Document   : patientcode
    Created on : Sep 23, 2018, 2:34:03 PM
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
        String ptype=request.getParameter("PTYPE");
        String admitdate=request.getParameter("T10");
        String dischargedate=request.getParameter("T11");
        int roomid=Integer.parseInt(request.getParameter("T12"));
        String username=request.getParameter("T13");
        String password=request.getParameter("T14");
   //int departmntt=Integer.parseInt(dept);
    Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hms","root","root");
        Statement st=con.createStatement();
         int i=st.executeUpdate("insert into patient_table(id,card_no,name,gender,age,address,phone,relative_name,relative_address,department,doctor_name,admit_date,discharge_date,room_id,ptype,username,password) values('"+id+"','"+card+"','"+name+"','"+gender+"','"+age+"','"+address+"','"+phone+"','"+relname+"','"+reladdress+"','"+department+"','"+doctorname+"','"+admitdate+"','"+dischargedate+"','"+roomid+"','"+ptype+"','"+username+"','"+password+"')");
         ResultSet rs=st.executeQuery("select * from patient_table where card_no='"+card+"'and id='"+id+"'");
if(rs.next())
{
    session.setAttribute("a", rs.getString(1));
   // response.sendRedirect("listofpatients.jsp");
    int id1=Integer.parseInt((String)session.getAttribute("a"));
       ResultSet sr=st.executeQuery("select * from patient_table where card_no='"+card+"'and id='"+id1+"'");
      //if(sr.next())
      //{
      // session.setAttribute("b",rs.getString(15));
       %>    
       <form name="f2" action="patientupdate.jsp">
       
     
        <table border="1">
            <thead>
                <tr>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr><%while (sr.next()){%>
                    <td>
                        ID:
                    </td>
                    
                      <td><input type="text" name="T1" value="<%=sr.getString(1)%>" /></td>
                             
                      
                    
                </tr>
                <tr>
                    <td>
                        CARS_NO:
                    </td>
                    <td>
                        <%//out.print(sr.getString(2));%> <input type="text" name="T2" value="<%=sr.getString(2)%>" /></td>

                    
                </tr>
                 <tr>
                    <td>
                        NAME:
                    </td>
                    <td>
                        <%//out.print(sr.getString(3));%><input type="text" name="T3" value="<%=sr.getString(3)%>" /></td>

                    
                </tr>
                <tr>
                    <td>GENDER:</td>
                    <td>
                        <%//out.print(sr.getString(4));%>
                            <input type="text" name="g" value="<%=sr.getString(4)%>" /></td>

                    
                </tr>
                <tr>
                    <td>
                        AGE:
                    </td>
                    
                        <%//out.print(sr.getString(5));%> 
                    <td><input type="text" name="T0" value="<%=sr.getString(5)%>" /></td>

                    
                </tr>
                <tr>
                    <td>
                        ADDRESS:
                    </td>
                    <td>
                        <%//out.print(sr.getString(6));%>
                        <input type="text" name="T4" value="<%=sr.getString(6)%>" /></td>

                    
                </tr>
                 <tr>
                    <td>
                        PHONE:
                    </td>
                    <td>
                        <%//out.print(sr.getString(7));%> 
                        <input type="text" name="T5" value="<%=sr.getString(7)%>" /></td>

                    
                </tr>
                 <tr>
                    <td>
                        RELATIVE NAME:
                    </td>
                    <td>
                        <%//out.print(sr.getString(8));%> 
                        <input type="text" name="T6" value="<%=sr.getString(8)%>" /></td>

                    
                </tr>
                 <tr>
                    <td>
                        RELATIVE ADDRESS:
                    </td>
                    
                        <%//out.print(sr.getString(9));%>  <td><input type="text" name="T7" value="<%=sr.getString(9)%>" /></td>

                    
                </tr>
                 <tr>
                    <td>
                        DEPARTMENT:
                    </td>
                    <td>
                        <%//out.print(sr.getString(10));%> 
                        <input type="text" name="T8" value="<%=sr.getString(10)%>" /></td>

                    
                </tr>
                 <tr>
                    <td>
                        DOCTOR NAME:
                    </td>
                    <td>
                        <%//out.print(sr.getString(11));%> 
                        <input type="text" name="T9" value="<%=sr.getString(11)%>" /></td>

                    
                </tr>
                 <tr>
                    <td>
                        ADMIT DATE:
                    </td>
                    <td>
                        <%//out.print(sr.getString(12));%> 
                        <input type="text" name="T10" value="<%=sr.getString(12)%>" />

                    </td>
                </tr>
                 <tr>
                    <td>
                        DISCHARGE DATE:
                    </td>
                    <td>
                        <%//out.print(sr.getString(13));%> 
                        <input type="text" name="T11" value="<%=sr.getString(13)%>" /></td>

                    
                </tr>
                 <tr>
                    <td>
                        ROOM ID:
                    </td>
                    <td>
                        <%//out.print(sr.getString(14));%> <input type="text" name="T12" value="<%=sr.getString(14)%>" /></td>

                   
                </tr>
                 <tr>
                    <td>
                        PATIENT TYPE:
                    </td>
                    <td>
                        <%//out.print(sr.getString(15));%> <input type="text" name="PTYPE" value="<%=sr.getString(15)%>" /></td>

                   
                </tr>
                 <tr>
                    <td>
                        USER NAME:
                    </td>
                    <td>
                        <%//out.print(sr.getString(16));%><input type="text" name="T13" value="<%=sr.getString(16)%>" /></td>

                    
                </tr>
                 <tr>
                    <td>
                        PASSWORD:
                    </td>
                    <td>
                        <%//out.print(sr.getString(17));}%> <input type="text" name="T14" value="<%=sr.getString(17)%>" /></td>

                    
                </tr>
                <%}
                 }
                 }
                catch(Exception e)
                {
                out.print(e);
                }%>
            </tbody>
        </table>
            <input type="submit" value="update" name="b1" />
            <% %>
       </form>
    </body>
</html>
    
   
