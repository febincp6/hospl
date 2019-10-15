<%-- 
    Document   : billingroom
    Created on : Oct 12, 2018, 9:57:38 PM
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
        <form name="f1" action="billcode.jsp">
            <div>
                
            <table border="1" bgcolor="grey">
                <thead>BILL ROOM
                    <tr>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>PATIENT ID:</td>
                        <td><input type="text" name="T1" value="" /></td>
                    </tr>
                    <tr>
                        <td>PATIENT NAME:</td>
                        <td><input type="text" name="T2" value="" /></td>
                    </tr>
                    <tr>
                        <td>GENDER:</td>
                        <td>female:<input type="radio" name="G" value="female" /></td>
                        <td>male: <input type="radio" name="G" value="male" /></td>
                    </tr>
                    <tr>
                        <td>BLOOD GROUP:</td>
                        <td><select name="T3">
                                <option>O+</option>
                                <option>A+</option>
                                <option>A-</option>
                                <option>B+</option>
                                <option>B-</option>
                            </select>AB+</td>
                    </tr>
                    <tr>
                        <td>DISEASE:</td>
                        <td><input type="text" name="T4" value="" /></td>
                    </tr>
                    <tr>
                        <td>ADMIT DATE:</td>
                        <td><input type="text" name="T5" value="" /></td>
                    </tr>
                    <tr>
                        <td>ROOM/WARD NO:</td>
                        <td><input type="number" name="T6" value="" /></td>
                    </tr>
                    <tr>
                        <td>DOCTOR NAME:</td>
                        <td><input type="text" name="T7" value="" /></td>
                    </tr>
                    <tr>
                        <td>DEPARTMENT:</td>
                        <td><select name="T8">
                                <option>NUERO</option>
                                <option>ORTHO</option>
                                <option>CARDIAC</option>
                                <option>PEDIATRICIAN</option>
                                <option>PHYSICIAN</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td>DISCHARGE DATE:</td>
                        <td><input type="date" name="T9" value="" /></td>
                    </tr>
                </tbody>
                  </table>
                
            </div>
                <div>
                   
                    <table border="0" bgcolor="grey">
                        <thead>PAYMENT DETAILS
                            <tr>
                                <th></th>
                                <th></th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>ROOM/WARD CHARGES</td>
                                <td><input type="text" name="T11" value="" /></td>
                                <td>NO OF DAYS</td>
                                <td><input type="text" name="T12" value="" /></td>
                            </tr>
                            <tr>
                                <td>TOTAL ROOM CHARGE</td>
                                <td><input type="text" name="T13" value="" /></td>
                                                          
                                 <td>SERVICE CHARGE</td>
                                <td><input type="text" name="T14" value="" /></td>
                            </tr>
                            <tr>
                                <td>BILLING DATE</td>
                                <td><input type="text" name="T15" value="" /></td>
                            
                            
                                <td>PAYMENT MODE:</td>
                            </tr>
                            <tr>
                                <td><select name="T16">
                                        <option>BY CASH</option>
                                        <option>BY DD</option>
                                        <option>BY CHEQUE</option>
                                        <option>BY CREDITCARD</option>
                                        <option>BY DEBITCARD</option>
                                    </select></td>
                           
                            
                                <td>PAYMENT MODE DETAILS</td>
                                <td><input type="text" name="T17" value="" /></td>
                            </tr>
                                
                            
                            <tr>
                                <td>TOTAL CHARGE</td>
                                <td><input type="text" name="T18" value="" /></td></tr>
                            <tr>
                                <td>TOTAL PAID</td>
                                <td> <input type="text" name="T19" value="" /></td>
                            
                            
                                <td>DUE CHARGES</td>
                                <td><input type="text" name="T20" value="" /></td>
                              
                            </tr>
                        </tbody>
                    </table>
                    
                </div>
            <div align="right">
                                    <input type="submit" value="SAVE" name="B1" />
            </div>
        </form>
    </body>
</html>
