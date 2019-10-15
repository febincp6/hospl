<%-- 
    Document   : prescriptioncode
    Created on : Oct 3, 2018, 12:31:01 PM
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
        ResultSet rs=st.executeQuery("select * from prescription where id='"+id+"'");
if(rs.next())
{
    session.setAttribute("a", rs.getString(1));
   // response.sendRedirect("listofpatients.jsp");
   int id1=Integer.parseInt((String)session.getAttribute("a"));
       ResultSet sr=st.executeQuery("select * from prescription where doctorname='"+doctorname+"'and id='"+id1+"'");
       //if(sr.next())
      //{
       %>    
       <form name="f2" action="presupdate.jsp">
       
     
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
                           <%while(sr.next()){%>
                              <input type="text" name="T0" value="<%=sr.getString(1)%>" /> 
  
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        PATIENT NAME:
                    </td>
                    <td>
                        <%//out.print(sr.getString(2));%> 
                        <input type="text" name="T1" value="<%=sr.getString(2)%>" /> 

                    </td>
                </tr>
                 <tr>
                    <td>
                        AGE:
                    </td>
                    <td>
                        <%//out.print(sr.getString(3));%><input type="text" name="T2" value="<%=sr.getString(3)%>" /> 

                    </td>
                </tr>
                <tr>
                    <td>DOCTOR NAME:</td>
                    <td>
                        <%//out.print(sr.getString(4));%> <input type="text" name="T3" value="<%=sr.getString(4)%>" /> 

                    </td>
                </tr>
                <tr>
                    <td>
                        DEPARTMENT:
                    </td>
                    <td>
                        <%//out.print(sr.getString(5));%> <input type="text" name="T4" value="<%=sr.getString(5)%>" /> 

                    </td>
                </tr>
                <tr>
                    <td>
                        GENDER:
                    </td>
                    <td>
                        <%//out.print(sr.getString(6));%><input type="radio" name="G" value="<sr.getString(6)%>" />
                    </td>
                </tr>
                 <tr>
                    <td>
                        PATIENT TYPE:
                    </td>
                    <td>
                        <select name="T5">
                            <option>"<%=sr.getString(7)%>"</option>
                            <option>INDOOR</option>
                            <option>OUTDOOR</option>
                        </select>   
                    </td>
                </tr>
                <tr>
                    <td>
                        DISEASE:
                    </td>
                    <td>
                        <input type="text" name="T6" value="<%=sr.getString(8)%>" /> 
                    </td>
                </tr>
                 <tr>
                     
                    <td>
                        MEDICINE:
                    </td>
                    <td>
                        <select name="T7">
                            <option>"<%=sr.getString(9)%>"</option>
                            <option>med2</option>
                            <option></option>
                            <option></option>
                            <option></option>
                            <option></option>
                            <option></option>
                            <option></option>
                            <option></option>
                            <option></option>
                        </select>
                    </td>
                </tr>
                 <tr>
                    <td>
                        DOSAGE:
                    </td>
                    <td>
                        <input type="text" name="T8" value="<%=sr.getString(10) %>" /> 
                    </td>
                 <%}%>
                </tr>
                 
                
            </tbody>
        </table>
       
                   <%}}
                      catch(Exception e)
                        {
                out.print(e);
                }%>
            
                <input type="submit" value="UPDATE" name="B1" />
                      
    </form>
               
    </body>
</html>
    
   

    
