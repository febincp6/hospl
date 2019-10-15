<%-- 
    Document   : pharmacypanel
    Created on : Oct 14, 2018, 6:06:26 PM
    Author     : lenovo
--%>
         <%
    
	    String username = (String)session.getAttribute("user");
		String userType = (String)session.getAttribute("type");
		/*if((username!=null && userType.equals("pharmacy")))
			response.sendRedirect("pharmacycode.jsp");*/	
			%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

   

    <title>Pharmacist Panel</title>

    <!-- Bootstrap Core CSS -->
   
    <!-- Custom CSS -->
    <link href="../css/simple-sidebar.css" rel="stylesheet">
    
    

</head>

<body>

    <div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="pharmacy.jsp">
                        Pharmacist Menu
                    </a>
                </li>
                <li>
                    <a href="pharmacy.jsp">Dashboard</a>
                </li>
                <li>
                    <a href="pharmacyupdate.jsp">Data Management</a>
                </li>
                <li>
                    <a href="logout.jsp">Logout</a>
                </li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <%
        	if(request.getParameter("page")==null || request.getParameter("page").equals("dashboard")){
        	
        %>
        	<div id="page-content-wrapper">
	            <div class="container-fluid">
	                <div class="row">
	                    <div class="col-lg-12">
	                        <h1>Welcome Mr. <%= username %>.</h1>
	                        <a href="#menu-toggle" class="btn btn-default" id="menu-toggle"></a>
	                    </div>
	                </div>
	            </div>
	        </div>
        <% }
        else if(request.getParameter("page").equals("dataMgmt")){
        	
        %>
        	<div id="page-content-wrapper">
	            <div class="container-fluid">
	                <div class="row">
	                    <div class="col-lg-12">
	                        <h1>Data Management</h1>
                                <%@include file="pharmacy.jsp" %>
	                        <%@ include file="pharmacycode.jsp" %>
	                    </div>
	                </div>
	            </div>
	        </div>
        <% } %>
        <!-- /#page-content-wrapper -->

    </div>

    <!-- Menu Toggle Script -->
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>

</body>

</html>
