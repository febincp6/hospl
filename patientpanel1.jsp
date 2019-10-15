<%-- 
    Document   : doctorpanel
    Created on : Oct 2, 2018, 3:12:49 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DOCTOR PANEL</title>
    </head>
    <body style="background-color: limegreen">
        <div id=wrapper">
                    <div id="sidebar-wrapper">
                        <ul class="sidebar-nav">
                            <li class="sidebar-brand">
                                <a href="listofpatients.jsp">LIST OF PATIENTS
                                
                                </a>
                            </li>
                            <li>
                                <a href="admitedpatientform.jsp">DASHBOARD</a>
                                <a href="opregistration.jsp">OP REGISTRATION</a>
                            </li>
                            <li>
                                 <a href="doctorlogin.jsp">LIST OF PATIENTS</a>
                            </li>
                            <li>
                                <a href="logout.jsp">logout</a>
                                
                            </li>
                            
                </ul>
                    </div>
        <% if(request.getParameter("file")==null||request.getParameter("file").equals("DASHBOARD"))
                {
                   %>
                   <div id="page-content-wrapper">
                       <div class="container-fluid">
                           <div class="row">
                               <div class="col-lg-12">
                                   <h1> welcome doctor</h1>
                                   <a href="#menu-toggle" class="btn btn-default" id="menu-toggle"></a>    
                                   
                               </div>
                           </div>
                       </div>
                       
                   </div>
               <% 
                }
        else if(request.getParameter("file")==null||request.getParameter("file").equals("LIST OF PATIENTS"))
                {
                   %>
                   <div id="page-content-wrapper">
                       <div class="container-fluid">
                           <div class="row">
                               <div class="col-lg-12">
                                   <h1> list f patients</h1>
                                   <%@ include file="listofpatients.jsp"%>    
                                   
                               </div>
                           </div>
                       </div>
                   </div>
                                   <% } %>
        </div>
        <script>
            $("#menu-toggle").click(function(e)
            {
                e.preventDefault();
                $("#wrapper").toggleClass("toggled");
            });
            
        </script>
                                   
        </body>
</html>
