<%-- 
    Document   : wardinfo
    Created on : Oct 11, 2018, 1:32:32 PM
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
        
        <form name="f1" action="wardcode.jsp">
           
            
            <center>
        <table border="0" bgcolor="grey" >
            <thead><h2>
            WARD INFO
            </h2>
            </thead>
            <tbody>
                <tr>
                    <td>ID:</td>
                    <td><input type="text" name="T0" value="" /></td>
                </tr>
                 <tr>
                    <td>WARD NAME:</td>
                    <td><input type="text" name="T1" value="" /></td>
                </tr>
                <tr>
                    <td>WARD TYPE:</td>
                    <td><select name="T2">
                            <option>GENERAL</option>
                            <option>SPECIAL</option>
                        </select></td>
                </tr>
                <tr>
                    <td>NO.OF BEDS</td>
                    <td><input type="number" name="T3" value="" /></td>
                </tr>
                <tr>
                    <td>CHARGE PER DAY</td>
                    <td><input type="text" name="T4" value="" /></td>
                </tr>
                
            </tbody>
            
        </table>
               <input type="submit" value="SAVE" name="B1" />
            <input type="submit" value="GET DATA" name="B2" /> 
        </center>
             <div align="right">
                <img src="blog-4.jpg" width="500" height="500" alt="blog-4"/>
            </div>  
        </form>
    </body>
</html>
