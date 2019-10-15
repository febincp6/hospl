<%-- 
    Document   : billcode
    Created on : Oct 20, 2018, 9:17:55 PM
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
              int id=Integer.parseInt((String)request.getParameter("T1"));
              String patientname=request.getParameter("T2");
              String gender=request.getParameter("G");
              String bloodgroup=request.getParameter("T3");
              String disease=request.getParameter("T4");
              String admitdate =request.getParameter("T5");
              String roomno=request.getParameter("T6");
              String doctorname=request.getParameter("T7");
              String department=request.getParameter("T8");
              String dischargedate=request.getParameter("T9");
              String roomcharge=request.getParameter("T11");
              String noofdays =request.getParameter("T12");
              String totalroomcharge=request.getParameter("T13");
              String servicecharge=request.getParameter("T14");
              String billingdate=request.getParameter("T15");
              String paymentmode=request.getParameter("T16");
              String paymentmodedetails=request.getParameter("T17");
              String totalcharge=request.getParameter("T18");

              String totalpaid=request.getParameter("T19");
              String duecharge=request.getParameter("T20");


          


          Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hms","root","root");
        Statement st=con.createStatement();
         int i=st.executeUpdate("insert into billroom(id,patientname,gender,bloodgroup,disease,admitdate,roomno,doctorname,department,dischargedate,roomcharge,noofdays,totalroomcharge,servicecharge,billingdate,paymentmode,paymentmodedetails,totalcharge,totalpaid,duecharge) values('"+id+"','"+patientname+"','"+gender+"','"+bloodgroup+"','"+disease+"','"+admitdate+"','"+roomno+"','"+doctorname+"','"+department+"','"+dischargedate+"','"+roomcharge+"','"+noofdays+"','"+totalroomcharge+"','"+servicecharge+"','"+billingdate+"','"+paymentmode+"','"+paymentmodedetails+"','"+totalcharge+"','"+totalpaid+"','"+duecharge+"')");
        ResultSet rs=st.executeQuery("select * from billroom where id='"+id+"'");
        if(rs.next())
        {
           session.setAttribute("e",rs.getString(1));
            //session.setAttribute("d",rs.getString(2));
            int id1=Integer.parseInt((String)session.getAttribute("e"));
           // int rn=Integer.parseInt((String)session.getAttribute("d"));
      ResultSet sr=st.executeQuery("select * from billroom where id='"+id1+"'"); 
     // if(sr.next())
      // {
        %>
                <form name="f2" action="billupdate.jsp">
        
        <table border="0">
            <thead>
                
                
                <tr>
                    <th>ID:</th>
                    <th>MEDICINE NAME:</th>
                    <th>PRIZE:</th>
                    <th>STOCK:</th>
                    
                </tr>
            </thead>
            <tbody>
                <% while(sr.next()){%>
                <tr>
                    <td><input type="text" name="T1" value="<%=sr.getString(1)%>" /></td>
                    <td><input type="text" name="T2" value="<%=sr.getString(2)%>"/></td>
                    <td><input type="text"  name="T3" value="<%=sr.getString(3)%>"/> </td>
                    <td><input type="text"  name="T4" value="<%=sr.getString(4)%>"/></td>
                    <td> </td>
                    <%}%>
                </tr>
                
            </tbody>
        </table>

                        
                        <%}}
                       catch(Exception e)
                        {
                out.print(e);
                }%>
                
                <input type="submit" value="update" name="B2"  /> 
        </form>
    </body>
</html>
  
      
   
