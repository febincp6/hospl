<%-- 
    Document   : bed_details
    Created on : Sep 25, 2018, 11:55:56 AM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="limegreen">
        <H1>HOSPITAL MANAGEMENT SYSTEM</H1>
        <H3>FULL AUTOMATION SYSTEM OF HOSPITAL MANAGEMENT</H3>
        
        <form name="formbed" action="beddetailscode.jsp">
        <CENTER>
            <table BGCOLOR="skyblue" border="1">
                <thead>
                <H2>BED DETAILS</H2>
                    <tr>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>ID:</td>
                        <td>
                            <input type="text" name="T1" value="" />
                        </td>
                    </tr>
                    <tr>
                        <td>BED_NO:</td>
                        <td><input type="text" name="T2" value="" /></td>
                    </tr>
                    <tr>
                        <td>STATUS:</td>
                        <td><input type="text" name="T3" value="" /></td>
                    </tr>
                    <tr>
                        <TD ALIGN="RIGHT">
                          <input type="submit" value="SUBMIT" name="BUTTON" />
                        </TD>
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>
