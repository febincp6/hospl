<%-- 
    Document   : doctorlogin
    Created on : Oct 6, 2018, 10:55:41 AM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-image: url(staff-3.jpg);background-repeat: no-repeat;"/>
        <form name="f1" action="doctorlogincode.jsp" method="POST">
            <center>
            <table border="1">
                <thead>DOCTOR LOGIN
                    
                                
                   
                </thead>
                <tbody>
                    <tr>
                        <td>ID:</td>
                        <td><input type="text" name="T1" value="" id="T1" /></td>
                    </tr>
                    <tr>
                        <td>DOCTOR NAME:</td>
                        <td><input type="text" name="T2" value="" id="T2"/></td>
                    </tr>
                    <tr>
                        <td>DEPARTMENT:</td>
                        <td><select name="T3" id="T3">
                                <option>pediatrician</option>
                                <option>gynacologist</option>
                                <option>cardiac</option>
                                <option>nueroligist</option>
                                <option>ortho</option>
                                <option>homeo</option>
                                <option>ayurveda</option>
                                <option>physician</option>
                                <option>dentist</option>
                                <option>surgen</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="SUBMIT" name="B1" /></td>
                                            </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>
