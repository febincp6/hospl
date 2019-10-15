<%-- 
    Document   : adminpanel
    Created on : Oct 21, 2018, 11:17:16 AM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN PANEL</title>
    </head>
    <body style="background-image:url(staff-2.jpg)">
        <div id=wrapper">
                    <div id="sidebar-wrapper">
                        <ul class="sidebar-nav">
                            <li class="sidebar-brand">
                                <a href="doctorpanel.jsp">DOCTOR PANEL
                                
                                </a>
                            </li>
                            <li>
                                <a href="doctorform.jsp">DASHBOARD</a>
                                
                            </li>
                            <li>
                                <a href="patientpanel1.jsp">PATIENT PANEL</a>
                                
                            </li>
                            
                            <li>
                                <a href="opregistration.jsp">OUT PATIENTS REGISTRATION</a>
                                
                            </li>
                            <li>
                                <a href="admitedpatientform.jsp">ADMITTED PATIENTS REGISTRATION</a>
                                
                            </li>
                            
                            <li>
                                <a href="admittedpatients.jsp">ADMITTED PATIENTS</a>
                                
                            </li>
                            <li>
                                <a href="dischargedate.jsp">DISCHARGED PATIENTS</a>
                                
                            </li>
                            <li>
                                 <a href="pharmacy.jsp">PHARMACY PANEL</a>
                            </li>
                            <li>
                                 <a href="nurseform.jsp">NURSE PANEL</a>
                            </li>
                            <li>
                                 <a href="receptionistform.jsp">RECEPTIONIST PANEL</a>
                            </li>
                            <li>
                                 <a href="billroom.jsp">BILLING</a>
                            </li>
                            <li>
                                 <a href="roomdetails.jsp">ROOM DETALS</a>
                            </li>
                            <li>
                                 <a href="wardinfo.jsp">WARD DETAILS</a>
                            </li>
                            <li>
                                 <a href="saveemp.jsp">EMPLOYEE PANEL</a>
                            </li>
                            <li>
                                <a href="logout.jsp">LOGOUT</a>
                                
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
                                   <h1> WELCOME ADMIN</h1>
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
