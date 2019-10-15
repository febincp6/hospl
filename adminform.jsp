<%-- 
    Document   : adminform
    Created on : Sep 24, 2018, 8:37:57 AM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>HOSPITAL MANAGEMENT SYSTEM</h1>
        <form name="f2" action="adminlogincode.jsp">
            <CENTER>
        <table BGCOLOR="LIMEGREEN" border="1">
            
            <thead>ADMIN LOGIN
                <tr>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>ID:</td>
                    <td><input type="text" name="T1" value="" /></td>
                </tr>
                <tr>
                    <td>USERNAME:</td>
                    <td><input type="text" name="T2" value="" /></td>
                </tr>
                <tr>
                    <td>PASSWORD:</td>
                    <td><input type="password" name="T3" value="" /></td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" value="SUBMIT" name="button" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="listofdoctors.jsp">LISTOFDOCTORS</a>
                    </td>
                </tr>
            </tbody>
        </table>
            </CENTER>
        </form>
    </body>
</html>
