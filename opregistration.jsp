<%-- 
    Document   : opregistration
    Created on : Oct 23, 2018, 9:14:51 AM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOSPITAL MANAGEMENT SYSTEM</title>
         <script>
        function validation()
            {
                var alpha=/^[a-z A-Z]+$/;
                var num=/^[0-9]+$/;
                var x=/^[! @ # % ^ & * ]+$/;
                               
                if(document.getElementById("T1").value.length===0)
                {
                    alert("Enter ID");
                    return false;
                }
                else if(document.getElementById("T1").value.match(alpha))
                {
                    alert("No characters in id feild");
                     return false;
                }
                 else if(document.getElementById("T1").value.match(x))
                {
                    alert("No special cherectrs");
                     return false;
                }
             
             
                if(document.getElementById("T2").value.length===0)
                {
                    alert("enter card no");
                     return false;
                }
                else if(document.getElementById("T2").value.match(alpha))
                    {
                        alert("Only numbers");
                         return false;
                    }
                  
                if(document.getElementById("T3").value.length===0)
                {
                    alert("ENTER NAME");
                     return false;
                }
                else if(document.getElementById("T3").value.match(num))
                {
                    alert("no numbers in name field");
                    return false;
                    
                }
                 else if(document.getElementById("T3").value.match(x))
                {
                    alert("No special cherectrs");
                     return false;
                }
                if(document.getElementById("g").value.length===0)
                {
                    alert("enter gender");
                    return false;
                }
                 if(document.getElementById("T0").value.length===0)
                {
                    alert("ENTER age");
                     return false;
                }
                else if(document.getElementById("T0").value.match(alpha))
                {
                    alert("no characters in age field");
                    return false;
                    
                }
                 else if(document.getElementById("T0").value.match(x))
                {
                    alert("No special characters");
                     return false;
                }
                
                if(document.getElementById("T4").value.length===0)
                {
                    alert("ENTER address");
                     return false;
                     
                }
                  if(document.getElementById("T5").value.length===0)
                {
                    alert("ENTER phone");
                     return false;
                 }
                else if(document.getElementById("T5").value.length<10)
                { 
                    alert("enter valid number");
                    return false;
                }
               /* else if(document.getElementById("T5").value.match(alpha))
                {
                    alert("no characters in this field");
                    return false;
                    
                }
                 else if(document.getElementById("T5").value.match(x))
                {
                    alert("No special characters");
                     return false;
                }*/
                
                 if(document.getElementById("T6").value.length===0)
                {
                    alert("ENTER relative name");
                     return false;
                }
                else if(document.getElementById("T6").value.match(num))
                {
                    alert("no numbers in this field");
                    return false;
                    
                }
                 else if(document.getElementById("T6").value.match(x))
                {
                    alert("No special characters");
                     return false;
                }
                  if(document.getElementById("T7").value.length===0)
                {
                    alert("ENTER relative address");
                     return false;
                }
               
              if(document.getElementById("T8").value.length===0)
                {
                    alert("ENTER department");
                     return false;
                }
                 if(document.getElementById("T9").value.length===0)
                {
                    alert("ENTER doctor name");
                     return false;
                }
                else if(document.getElementById("T9").value.match(num))
                {
                    alert("no numbers in name field");
                    return false;
                    
                }
                 if(document.getElementById("T10").value.length===0)
                {
                    alert("ENTER admit date");
                     return false;
                }
                else if(document.getElementById("T10").value.match(alpha))
                {
                    alert("enter valid date");
                    return false;
                    
                }
                  if(document.getElementById("T11").value.length===0)
                {
                    alert("ENTER discharge date");
                     return false;
                }
                else if(document.getElementById("T11").value.match(alpha))
                {
                    alert("enter valid date");
                    return false;
                    
                }
                  if(document.getElementById("T12").value.length===0)
                {
                    alert("ENTER room id");
                     return false;
                }
                
            } 
              /*  if(document.getElementById("text4").value.length==0)
                {
                    alert("enter email");
                     return false;
                }
                
                if(document.getElementById("text5").value.length==0)
                {
                    alert("enter phone");
                     return false;
                }
		else if(document.getElementById("text5").value.length<10)
                {
                    alert("not a valid number");
                     return false;
                }
                
                if(document.getElementById("text6").value.length==0)
                {
                    alert("enter username");
                     return false;
                }
                
                if(document.getElementById("text7").value.length==0)
                {
                    alert("enter password");
                     return false;
                }
		 else if(document.getElementById("text7").value.length<8)
                {
                    alert("password must have 8 digit");
                     return false;
                }
            }*/
            </script>
    </head>
    <body  bgcolor="limegreen">
    <form  action="opcode.jsp" method="POST" style="margin-left: 500px;margin-top:30px;" onsubmit="return validation();">
    
            <h3 Style="margin-left: 50px;">Register here!!!</h3>
            
    
        
        <h1 >OUTDOOR PATIENT REGISTRATION FORM</h1>
        <table BGCOLOR="SKYBLUE" border="1" >
            <thead>
                <tr>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>ID:</td>
                    <td><input type="number" name="T1" value="" id="T1" /></td>
                </tr>
                <tr>
                    <td>CARD NO:</td>
                    <td><input type="text" name="T2" value="" id="T2" />
                    </td>
                        
                    </tr>
                    <tr>
                    <td>NAME:</td>
                    <td><input type="text" name="T3" value="" id="T3"/></td>
                </tr>
                    <tr>
                    <td>GENDER:</td>
                    <td>female:<input type="radio" name="g" value="female" id="g" /></td>
                    <td>male:
                        <input type="radio" name="g" value="male" id="g"/>
                    </td>
                </tr>
                <tr>
                    <td>AGE:</td>
                    <td><input type="text" name="T0" id="T0" /></td>
                </tr>
                <tr>
                    <td>ADDRESS:</td>
                    <td><textarea name="T4" rows="4" cols="20" id="T4">
                        </textarea></td>
                </tr>
                <tr>
                    <td>PHONE:</td>
                    <td><input type="number" name="T5" id="T5" /></td>
                </tr>
                <tr>
                    <td>RELATIVE NAME:</td>
                    <td><input type="text" name="T6" value="" id="T6" /></td>
                </tr>
                <tr>
                    <td>RELATIVE ADDRESS:</td>
                    <td><textarea name="T7" rows="4" cols="20" id="T7">
                        </textarea></td>
                </tr>
                <tr>
                    <td>DEPARTMENT:</td>
                    <td><input type="text" name="T8" value="" id="T8" /></td>
                </tr>
                <tr>
                    <td>DOCTOR NAME:</td>
                    <td><input type="text" name="T9" value="" id="T9" /></td>
                </tr>
                 <tr>
                    <td>PATIENT TYPE:</td>
                    <td><select name="PTYPE">
                            <option>INDOOR</option>
                            <option>OUTDOOR</option>
                        </select></td>
                </tr>
                
                    <TD>
                        USER NAME:
                    </TD>
                    <TD>
                        <input type="text" name="T13" id="T13"/> 
                    </TD>
                </TR>
                <TR>
                    <TD>
                        PASSWORD:
                    </TD>
                    <TD>
                        <input type="password" name="T14" id="T14"/> 
                    </TD>
                </TR>
                <tr>
                    
                    <td>SUBMIT FORM</td>
                    <td><input type="submit" value="SUBMIT" name="BUTTON" /></td>
                </tr>
            </tbody>
        </table>
    </form>
    </body>
</html>
