<%-- 
    Document   : doctorform
    Created on : Oct 4, 2018, 12:15:11 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOSPITAL MANAGEMENT SYSTEM</title>
    </head>
    <body style="background-image:url(staff-2.jpg)"/>
         
          
          
        <div>
            <form name="f1" action="doctorcode.jsp">
                <center>
                <table border="1">
                    <thead><h3>DOCTOR REGISTRATION FORM</h3>
                        <tr>
                            <th><h3>DOCTOR REGISTRATION FORM</h3></th>
                                                    </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>ID:</td>
                            <td><input type="text" name="T1" value="" id="T1"/></td>
                        </tr>
                        <tr>
                            <td>DOCTOR NAME:</td>
                            <td><input type="text" name="T2" value="" id="T2" /></td>
                        </tr>
                        <tr>
                            <td>AGE:</td>
                            <td><input type="text" name="T3" value="" id="T3" /></td>
                        </tr>
                        <tr>
                            <td>GENDER:</td>
                            <td>female<input type="radio" name="G" value="female" id="G" />
                                male<input type="radio" name="G" value="male" id="G" /></td>
                        </tr>
                        <tr>
                            <td>DEPARTMENT:</td>
                            <td><select name="T4" id="T4">
                                    <option>PEDIATRICIAN</option>
                                    <option>ORTHO</option>
                                    <option>NEURO</option>
                                    <option>GYNACOLOGIST</option>
                                    <option>PHYSICIAN</option>
                                    <option>AYURVEDA</option>
                                    <option>DENTISRY</option>
                                    <option>HOMEO</option>
                                    <option>GENERAL</option>
                                    <option>CARDIAC</option>
                                </select></td>
                        </tr>
                        <tr>
                            <td>DEGREE:</td>
                            <td><select name="T5" id="T5">
                                    <option>M.B.B.S,M.D</option>
                                    <option>MBBS,MS</option>
                                    <option>MBBS,DGO</option>
                                    <option>BPT</option>
                                    <option>BDS</option>
                                    <option>MBBS</option>
                                    <option>MDS</option>
                                    <option>MPT</option>
                                    <option>BOT</option>
                                    <option>BHMS</option>
                                </select></td>
                        </tr>
                        <tr>
                            <td>EMAIL ID:</td>
                            <td><input type="text" name="T6" value="" id="T6" /></td>
                        </tr>
                        <tr>
                            <td>ADDRESS:</td>
                            <td><textarea name="T7" rows="4" cols="20" id="T7">
                                </textarea></td>
                        </tr>
                        <tr>
                            <td>REGISTRATION DATE:</td>
                            <td><input type="date" name="T8" value="" id="T8" /></td>
                        </tr>
                        <tr>
                            <td>FEES:</td>
                            <td><input type="text" name="T9" value="" id="T9" /></td>
                        </tr>
                        </div>
    </tbody>
</table>
            </center>
                <div> 
                    <center>
            <table>
                  
                    <tr>
                            <td><input type="submit" value="NEW" name="B1" id="B1" /></td>
                            <td><input type="submit" value="SAVE" name="B2" id="B2"/></td>
                        
                        
                            <td><input type="submit" value="GET DATA" name="B3" id="B3" /></td>
                            <td><input type="submit" value="UPDATE" name="B4" id="B4"/></td>
                        </tr>
                        
                
                </table>
                    </center>
            
        </div>
                
            </form> 
    </body>
</html>
