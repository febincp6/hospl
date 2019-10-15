<%-- 
    Document   : nursecode
    Created on : Oct 11, 2018, 10:52:16 AM
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
                
                confirm("successfully registered");
            }
        
        </script>
    </head>
    <body>
        <% 
            try
            {
        int id=Integer.parseInt((String)request.getParameter("T0"));
        String name=request.getParameter("T1");
        
       // String dischargedat=request.getParameter("T11");
        int age=Integer.parseInt((String)request.getParameter("T2"));
        String catagory=request.getParameter("T3");
        
                String address=request.getParameter("T4");
                 String phone=request.getParameter("T5");
         String emailid=request.getParameter("T6");
          String bloodgroup=request.getParameter("T7");
           String qualification=request.getParameter("T8");
            String joindate=request.getParameter("T9");
   //int departmntt=Integer.parseInt(de String address=request.getParameter("T3");pt);
         Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hms","root","root");
        Statement st=con.createStatement();
         int i=st.executeUpdate("insert into nurse(id,name,age,catagory,address,phone,emailid,bloodgroup,qualification,joindate) values('"+id+"','"+name+"','"+age+"','"+catagory+"','"+address+"','"+phone+"','"+emailid+"','"+bloodgroup+"','"+qualification+"','"+joindate+"')");
         ResultSet sr=st.executeQuery("select * from nurse where name='"+name+"'");
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
                           <%//while (sr.next())
                               //{
                            out.print(sr.getString(1));%> 
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        NAME:
                    </td>
                    <td>
                        <%out.print(sr.getString(2));%>
                    </td>
                </tr>
                <tr>
                    <td>   AGE:
                       </td>
                       <td>
                          <%out.print(sr.getString(3));%> 
                       </td>
                </tr>
                 <tr>
                    <td>CATAGORY:
                       </td>
                       <td>
                          <%out.print(sr.getString(4));%> 
                       </td>
                </tr>
                 <tr>
                    <td>ADDRESS:
                       </td>
                       <td>
                         <%out.print(sr.getString(5));%>  
                       </td>
                </tr>
                 <tr>
                    <td>PHONE:
                       </td>
                       <td>
                         <%out.print(sr.getString(6));%>  
                       </td>
                </tr>
                 <tr>
                    <td>EMAIL ID:
                       </td>
                       <td>
                         <%out.print(sr.getString(7));%>  
                       </td>
                </tr>
                 <tr>
                    <td>BLOOD GROUP:
                       </td>
                       <td>
                          <%out.print(sr.getString(8));%> 
                       </td>
                </tr>
                 <tr>
                    <td>QUALIFICATION:
                       </td>
                       <td>
                         <%out.print(sr.getString(9));%>  
                       </td>
                </tr>
                 <tr>
                    <td>JOIN DATE:
                       </td>
                       <td>
                          <%out.print(sr.getString(10));%> 
                       </td>
                      
                </tr>
                 <%
                }
                }
                catch(Exception e)
                {
                out.print(e);
                }%> 
            </tbody>
        </table> 
            
    </body>
</html>
