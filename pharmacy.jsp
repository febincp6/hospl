<%-- 
    Document   : pharmacy
    Created on : Oct 11, 2018, 9:17:02 PM
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
        <form name="f1" action="pharmacycode.jsp">
            <table border="0" bgcolor="grey">
                <thead>MEDICINE RECORD
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
                        <td>MEDICINE NAME: </td>
                        <td><input type="text" name="T2" value="" /></td>
                    </tr>
                    <tr>
                        <td>PRIZE:</td>
                        <td><input type="number" name="T3" value="" /></td>
                    </tr>
                    <tr>
                        <td>STOCK:</td>
                        <td><input type="number" name="T4" value="" /></td>
                    </tr>
                </tbody>
            </table>
            <input type="submit" value="ADD" name="B1" />
            <input type="submit" value="UPDATE" name="B2" />
            <input type="submit" value="GET DATA" name="B3" />
        </form>
    </body>
</html>
