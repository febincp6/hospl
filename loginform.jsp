<%-- 
    Document   : loginform
    Created on : Oct 14, 2018, 12:15:17 PM
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
        <form name="f1" action="logincode.jsp">
            <table border="0" bgcolor="limegreen">
                <thead> LOGIN FORM
                    <tr>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    
                    <tr>
                        <td>USER NAME:</td>
                        <td><input type="text" name="T1" value="" /></td>
                    </tr>
                    <tr>
                        <td>PASSWORD:</td>
                        <td><input type="text" name="T2" value="" /></td>
                    </tr>
                   
                </tbody>
            </table>
            <input type="submit" value="SAVE" name="B1" />
        </form>
    </body>
</html>
