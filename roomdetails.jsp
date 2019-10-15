<%-- 
    Document   : roomdetails
    Created on : Oct 8, 2018, 9:30:33 PM
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
        <form name="f1" action="roomcode.jsp">
            <center>
        <table border="0" style="background-color:limegreen">
            <thead style="color:red">ROOM DETAILS
                
            </thead>
            <tbody>
                <tr>
                    <td>ID:</td>
                    <td><input type="text" name="T0" value="" id="T0" /></td>
                </tr>
                <tr>
                    <td>ROOM NO:</td>
                    <td><input type="text" name="T1" value="" id="T1" /></td>
                </tr>
                
                    <td>ROOM TYPE:</td>
                    <td><select name="T2">
                            <option>GENERAL</option>
                            <option>DELUXE</option>
                        </select></td>
                </tr>
                <tr>
                    <td>ROOM CHARGES(per day):</td>
                    <td><select name="T3">
                            <option>2000</option>
                            <option>1500</option>
                            <option>1000</option>
                        </select></td>
                </tr>
                <tr>
                    <td>ROOM STATUS:</td>
                    <td><select name="T4">
                            <option>OCCUPIED</option>
                            <option>FREE</option>
                        </select></td>
                </tr>
                
            </tbody>
        </table>
            </center>
            <div align="center">
                
                <table border="1">
                    <thead>
                        <tr>
                            <th><input type="submit" value="UPDATE" name="B2" onclick="<a href="roomupdate.jsp">update</a>"/></th>
                            <th><input type="submit" value="GET DATA" name="B3" /></th>
                            <th><input type="submit" value="DELETE" name="B4" /></th>
                            <th><input type="submit" value="SAVE" name="B1" /></th>
                        </tr>
                    </thead>
                    <tbody>
               
                </table>

            </div>
            <div align="right">
                <img src="blog-4.jpg" width="500" height="433" alt="blog-4"/>

            </div>
    </body>
</html>
