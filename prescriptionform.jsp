<%-- 
    Document   : prescriptionform
    Created on : Oct 3, 2018, 11:47:25 AM
    Author     : lenovo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>
            PRESCRIPTION FORM
        </h3>
        <form action="prescriptioncode.jsp" name="f1">
        
    <center>
        <table  bgcolor="grey" border="0">
            <thead>
                <tr>PRESCRIPTION FORM
                    <th>PRESCRIPTION FORM</th>
                    
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        ID:
                    </td>
                    <td>
                        <input type="text" name="T0" value="" />
                    </td>
                </tr>
                <tr>
                    <td>PATIENT NAME:</td>
                    <td><input type="text" name="T1" value="" placeholder="patient name" required /></td>
                </tr>
                <tr>
                    <td>
                        AGE:
                    </td>
                    <td>
                        <input type="text" name="T2" value=""/>
                    </td>
                </tr>
                <tr>
                    <td>
                        DOCTOR NAME:
                    </td>
                    <td>
                        <input type="text" name="T3" value="" />
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        DEPARTMENT:
                    </td>
                    <td>
                        <input type="text" name="T4" value="" />
                    </td>
                </tr>
                <tr>
                    <td>GENDER:</td>
                    <td><input type="radio" name="G" value="female" />female</td>
                    <td> <input type="radio" name="G" value="male" />male
                    </td>
                    
                </tr>
                <tr>
                    <td>
                    PATIENT TYPE:
                    </td>
                
                
                    <td>
                        <select name="T5" >
                            <option>INDOOR</option>
                            <option>OUTDOOR</option>
                        </select>
                    </tr>
                
                <tr>
                    <td>
                        DISEASE:
                    </td>
                    <td>
                        <input type="text" name="T6" value="" />
                    </td>
                </tr>
                <tr>
                    <td>MEDICINE:</td>
                    <td><select name="T7">
                            <option></option>
                            <option>med2</option>
                            <option>med3</option>
                            <option>med4</option>
                            <option>med5</option>
                            <option>med6</option>
                            <option>med7</option>
                            <option>med8</option>
                            <option>med9</option>
                            <option>med10</option>
                        </select></td>
                </tr>
                <tr>
                    <td>DOSAGE:</td>
                    <td><input type="text" name="T8" value="" /></td>
                </tr>
                <tr>
                    <td><input type="submit" value="NEW" name="BUTTON" /></td>
                    <td><input type="submit" value="UPDATE" name="BUTTON" /></td>
                </tr>
                            </tbody>
        </table>

    </center>    

        </form>   
    </body>
</html>
