<%-- 
    Document   : saveemp
    Created on : Oct 14, 2018, 6:21:53 AM
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
        <form name="f1" action="saveempcode.jsp">
            <table border="0">
                <thead>EMPLOYEE DETAILS
                    <tr>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody bgcolor="limegreen">
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
                        <td>TYPE:</td>
                        <td><input type="text" name="T4" value="" /></td>
                    </tr>
                    <tr>
                        <td>SALARY:</td>
                        <td><input type="number" name="T5" value="" /></td>
                    </tr>
                    <tr>
                        <td>PHONE:</td>
                        <td><input type="number" name="T6" value="" /></td>
                    </tr>
                </tbody>
            </table>
            <input type="submit" value="SAVE" name="B1" />
        </form>
    </body>
</html>
