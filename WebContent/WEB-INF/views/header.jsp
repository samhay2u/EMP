<%@page import="emp.pojo.User, emp.CommonServlet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<meta http-equiv="pragma" content="no-cache" />
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css"/>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/select/1.2.7/css/select.dataTables.min.css"/>
<link rel="stylesheet" href="/EMP/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="/EMP/css/site.css" type="text/css" />
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/select/1.2.7/js/dataTables.select.min.js"></script>
<title>Employee Data Management System</title>
</head>
<body>
   <a href="/EMP">Logout</a>
	<h1 align="center"><%=request.getAttribute(CommonServlet.TITLE)%></h1>
	  <section class="outer-wrapper">
	    <div class="inner-wrapper">
	      <div class="container">
	        <div class="row">
			<%
			    Object obj = session.getAttribute(CommonServlet.SESSION_USER_TOKEN);
				if (obj != null && obj instanceof User) {
					User user = (User) obj;
            %>
					<div class="success">Welcome <%=user.getName()%></div>
			<%
				}
				
				String message = (String) request.getAttribute(CommonServlet.MESSAGE); // Get the message from the request attribute
				
				if (message != null && !"".equals(message)) {
					String cssMessageClass = message.contains("successfully") ? "success" : "error";
			%>	        	        
				    <div class="<%=cssMessageClass%>"><%=message%></div>
			<%
				}
			%> 			 