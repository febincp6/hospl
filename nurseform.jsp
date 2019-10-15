<%-- 
    Document   : nurse
    Created on : Oct 11, 2018, 9:07:27 AM
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
        <form name="f1" action="nursecode.jsp">
            <center>
            <table border="0">
                <thead><h2>Nurse registration</h2>
                    <tr>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody bgcolor="grey">
                    <tr>
                        <td>ID:</td>
                        <td><input type="text" name="T0" value="" /></td>
                    </tr>
                    <tr>
                        <td>NAME:</td>
                        <td><input type="text" name="T1" value="" /></td>
                    </tr>
                    <tr>
                        <td>AGE:</td>
                        <td><input type="text" name="T2" value="" /></td>
                    </tr>
                    <tr>
                        <td>CATAGORY:</td>
                        <td><select name="T3">
                                <option>nurse</option>
                                <option>wardboy</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td>ADDRESS:</td>
                        <td><textarea name="T4" rows="4" cols="20">
                            </textarea></td>
                    </tr>
                    <tr>
                        <td>CONTACT NO:</td>
                        <td><input type="number" name="T5" value="" /></td>
                    </tr>
                    <tr>
                        <td>EMAIL ID:</td>
                        <td><input type="text" name="T6" value="" /></td>
                    </tr>
                    <tr>
                        <td>BLOOD GROUP:</td>
                        <td><select name="T7">
                                <option>O+</option>
                                <option>A-</option>
                                <option>A+</option>
                                <option>B-</option>
                                <option>B+</option>
                                <option>AB+</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td>QUALIFICATION:</td>
                        <td><input type="text" name="T8" value="" /></td>
                    </tr>
                    <tr>
                        <td>DATE OF JOINING:</td>
                        <td><input type="date" name="T9" value="" /></td>
                    </tr>
                </tbody>
            </table>
                <input type="submit" value="SAVE" name="B1" />
            </center>
            <div align="right">
                <img src="staff-2.jpg" width="500" height="500" alt="staff-2"/>
            </div>
        </form>
    </body>
</html>
